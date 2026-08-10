# frozen_string_literal: true

# Typed, bidirectional relationships. See .design/content-architecture.md §6.
#
# Edges are authored ONCE, on whichever side reads naturally — either direction
# of a predicate pair is a valid authoring form. This generator normalizes the
# edge, resolves the target, and writes both ends, so a process that declares
# `has_participant -> persona` makes the persona page list it under
# "Participates in" with no second edge to maintain.
#
# Hand-maintained bidirectional links are how knowledge graphs rot — and the
# toolkit deliverable is a traversal of this graph, so its integrity is
# load-bearing for the headline feature, not just for navigation.
module IndustryBlueprints
  class RelationshipGenerator < Jekyll::Generator
    safe true
    priority :high

    # forward predicate => [inverse, label at forward source, label at forward target]
    PREDICATES = {
      "contains"        => ["part_of",         "Contains",         "Part of"],
      "supports"        => ["supported_by",    "Supports",         "Supported by"],
      "assesses"        => ["assessed_by",     "Assesses",         "Assessed by"],
      "participates_in" => ["has_participant", "Participates in",  "Participants"],
      "uses_data"       => ["used_by",         "Uses data",        "Used by"],
      "measured_by"     => ["measures",        "Measured by",      "Measures"],
      "has_integration" => ["integration_for", "AI integrations", "Integration for"],
      "assists"         => ["assisted_by",     "Assists",          "Assisted by"],
      "automates"       => ["automated_by",    "Automates",        "Automated by"],
      "implements"      => ["implemented_by",  "Implements",       "Implemented by"],
      "realizes"        => ["realized_by",     "Realizes",         "Realized by"],
      "constrains"      => ["constrained_by",  "Constrains",       "Constrained by"],
      "transforms"      => ["transformed_by",  "Transforms",       "Transformed by"],
      "explains"        => ["explained_by",    "Explains",         "Explained by"],
      "demonstrated_by" => ["demonstrates",    "Demonstrated by",  "Demonstrates"],
      "maps_to"         => ["mapped_from",     "Maps to",          "Mapped from"],
      "supersedes"      => ["superseded_by",   "Supersedes",       "Superseded by"],
      # Blueprint composition (vision.md §5, §6). `composed_of` has a user today
      # — a blueprint declaring its domain modules; `covers` waits for the first
      # Blueprint artifact. Both are declared now so the vocabulary, the type
      # registry, and this table describe one model rather than three.
      "composed_of"     => ["composes",        "Composed of",      "Composes"],
      "covers"          => ["covered_by",      "Covers",           "Covered by"]
    }.freeze

    # Every authorable form => [canonical forward predicate, inverse?]
    RESOLVED = PREDICATES.each_with_object({}) do |(forward, (inverse, _o, _i)), acc|
      acc[forward] = [forward, false]
      acc[inverse] = [forward, true]
    end.freeze

    def generate(site)
      @strict = strict?(site)
      @errors = []
      @seen   = {}

      index = build_index(site)
      site.collections.each_value do |collection|
        collection.docs.each { |doc| link(doc, index) }
      end

      build_layer_index(site, index)

      # Bundle path => published URL, for templates that reference artifacts
      # outside the relationship graph — notably the capability map, where a
      # capability may be Named (no page) or Defined (a page to link to).
      site.data["bundle_urls"] = index.transform_values { |doc| doc.url }

      validate_map_targets(site, index)
      validate_body_links(site)
      validate_resource_urls(site)
      validate_facets(site)
      report
    end

    # Facets declared as controlled vocabularies in _config.yml. `ai_task_type`
    # was free text for its first twelve artifacts and had already drifted —
    # "image classification" alongside "classification" — which is invisible
    # until someone tries to group by it and gets two buckets meaning one thing.
    # A vocabulary nobody enforces is a suggestion.
    FACETS = {
      "ai_modality"  => "ai_modalities",
      "ai_task_type" => "ai_task_types"
    }.freeze

    def validate_facets(site)
      FACETS.each do |field, config_key|
        vocabulary = site.config[config_key]
        next unless vocabulary.is_a?(Hash)

        site.collections.each_value do |collection|
          collection.docs.each do |doc|
            value = doc.data[field]
            next if value.nil?
            next if vocabulary.key?(value)

            @errors << "#{doc.relative_path}: #{field} '#{value}' is not in " \
                       "#{config_key} (#{vocabulary.keys.sort.join(', ')})"
          end
        end
      end
    end

    # `resource` is the canonical published URL, authored by hand on every
    # artifact, and it drifts silently — a `.md` suffix copied from a bundle
    # path, or a stale slug after a rename. Unlike a broken link it renders
    # fine, and it is the identifier an OKF consumer keys on, so a wrong one
    # is worse than a dead href. Derived comparison, exact match.
    def validate_resource_urls(site)
      base = site.config["url"].to_s.chomp("/")
      return if base.empty?

      site.collections.each_value do |collection|
        collection.docs.each do |doc|
          declared = doc.data["resource"]
          next if declared.nil?

          expected = "#{base}#{doc.url}"
          next if declared == expected

          @errors << "#{doc.relative_path}: resource '#{declared}' " \
                     "does not match published URL '#{expected}'"
        end
      end
    end

    # Body prose uses ordinary site links in Phase 0; bundle paths (.md) are
    # produced at packaging time, not authored. An authored .md link renders as
    # a dead href, so catch it at build rather than after.
    # See .design/content-architecture.md §5.1, §7.3.
    BODY_MD_LINK = %r{\]\((/[a-z0-9-]+/[a-z0-9-]+\.md)\)}

    def validate_body_links(site)
      site.collections.each_value do |collection|
        collection.docs.each do |doc|
          doc.content.scan(BODY_MD_LINK).flatten.uniq.each do |link|
            site_url = link.sub(/\.md\z/, "/")
            @errors << "#{doc.relative_path}: body link '#{link}' uses a bundle path; " \
                       "use '#{site_url}' (bundle paths are generated at packaging)"
          end
        end
      end
    end

    # Capability map entries carry an optional `target`; a broken one silently
    # renders as plain text, which looks identical to a Named capability.
    def validate_map_targets(site, index)
      site.collections["domains"]&.docs&.each do |doc|
        Array(doc.data["capabilities"]).each do |cap|
          target = cap["target"]
          next if target.nil? || index.key?(target)

          @errors << "#{doc.relative_path}: capability map target '#{target}' does not resolve"
        end
      end
    end

    private

    def strict?(site)
      ENV["JEKYLL_STRICT_RELATIONSHIPS"] == "true" || site.config["strict_relationships"] == true
    end

    # Bundle path (/capabilities/x.md) => document. Same path rule used for
    # authoring relationship targets and, later, for toolkit packaging.
    def build_index(site)
      index = {}
      site.collections.each do |label, collection|
        dir = label.tr("_", "-")
        collection.docs.each do |doc|
          doc.data["outbound"] ||= []
          doc.data["inbound"]  ||= []
          doc.data["bundle_path"] = "/#{dir}/#{File.basename(doc.basename, '.*')}.md"
          index[doc.data["bundle_path"]] = doc
        end
      end
      index
    end

    def link(doc, index)
      Array(doc.data["relationships"]).each do |rel|
        predicate = rel["predicate"]
        target    = rel["target"]

        resolved = RESOLVED[predicate]
        unless resolved
          @errors << "#{doc.relative_path}: unknown predicate '#{predicate}'"
          next
        end

        other = index[target]
        unless other
          @errors << "#{doc.relative_path}: unresolvable target '#{target}'"
          next
        end

        forward, inverted = resolved
        _inv, source_label, target_label = PREDICATES[forward]

        # Normalize so the same logical edge declared from either end
        # collapses to one entry.
        from, to = inverted ? [other, doc] : [doc, other]
        key = "#{from.data['bundle_path']}|#{forward}|#{to.data['bundle_path']}"

        if @seen.key?(key)
          @errors << "#{doc.relative_path}: duplicate edge '#{forward}' to " \
                     "#{to.data['bundle_path']} (already declared in #{@seen[key]})"
          next
        end
        @seen[key] = doc.relative_path

        from.data["outbound"] << edge(forward, source_label, to, rel["note"])
        to.data["inbound"]    << edge(forward, target_label, from, rel["note"])
      end
    end

    # Plain hashes rather than Document objects: keeps Liquid simple and avoids
    # dragging whole documents (and their content) into another page's data.
    # What exists for a capability, across the four blueprint layers.
    #
    # One hop is not enough: a capability reaches its domain module directly,
    # but the running software and the platform mapping hang off the *module*,
    # so a one-hop view reports layers 3 and 4 as empty when they exist.
    #
    # Two unrestricted hops is too much, and in the opposite way — capability →
    # persona → every other process that persona touches drags in most of the
    # library sideways.
    #
    # Two rules, both needed:
    #
    #   1. The second hop may only travel to a DEEPER layer.
    #   2. The second hop may only START from a layer 2 artifact.
    #
    # Rule 1 alone is not enough, which cost a debugging pass to notice: a
    # persona sits at layer 1 and connects to everything, so "persona → AI
    # integration" satisfies "deeper" while being about a different capability
    # entirely. Layer 1 artifacts are shared hubs and are not routes downward.
    # Layer 2 artifacts — the module, the entity, the architecture — are
    # specific enough to carry the thread.
    #
    # Together they say exactly what the panel is for: how far down does this
    # capability actually go. Lateral sprawl is blocked by construction, and
    # the traversal is the one the toolkit build will need anyway.
    def build_layer_index(site, index)
      by_url = index.each_value.each_with_object({}) { |doc, acc| acc[doc.url] = doc }
      capabilities = site.collections["capabilities"]
      return unless capabilities

      capabilities.docs.each do |cap|
        found = {}

        neighbors(cap, by_url).each do |first|
          record(found, first, nil)

          first_layer = first.data["layer"]
          next unless first_layer && first_layer >= 2

          neighbors(first, by_url).each do |second|
            next if second.url == cap.url
            second_layer = second.data["layer"]
            next unless second_layer && second_layer > first_layer

            record(found, second, first.data["title"])
          end
        end

        entries = found.values.sort_by { |e| e["title"].to_s }
        cap.data["layer_index"] = entries

        # Per-layer counts and the deepest layer reached, so the coverage view
        # can sort and render without recomputing the traversal in Liquid.
        counts = (1..4).map { |n| entries.count { |e| e["layer"] == n } }
        cap.data["layer_counts"] = counts
        cap.data["layer_reach"]  = counts.rindex { |c| c > 0 }&.+(1) || 1
      end
    end

    def neighbors(doc, by_url)
      (Array(doc.data["outbound"]) + Array(doc.data["inbound"]))
        .filter_map { |e| by_url[e["url"]] }
    end

    # First sighting wins, so a directly-related artifact is never relabelled as
    # reached "via" something else.
    def record(found, doc, via)
      return if found.key?(doc.url)

      found[doc.url] = {
        "title"    => doc.data["title"],
        "okf_type" => doc.data["type"],
        "layer"    => doc.data["layer"],
        "url"      => doc.url,
        "summary"  => doc.data["description"],
        "via"      => via
      }
    end

    # `layer` is carried on the edge so a page can group its related content by
    # blueprint layer rather than by predicate. Grouping by predicate is precise
    # but asks the reader to know the vocabulary; grouping by layer answers the
    # question people actually arrive with — what exists for this, and how far
    # does it go.
    def edge(predicate, label, doc, note)
      {
        "predicate" => predicate,
        "label"     => label,
        "title"     => doc.data["title"],
        "okf_type"  => doc.data["type"],
        "layer"     => doc.data["layer"],
        "url"       => doc.url,
        "summary"   => doc.data["description"],
        "note"      => note
      }
    end

    def report
      return if @errors.empty?

      @errors.each { |e| Jekyll.logger.warn "Relationships:", e }

      if @strict
        raise Jekyll::Errors::FatalException,
              "#{@errors.length} relationship error(s). See warnings above."
      end

      Jekyll.logger.warn "Relationships:",
                         "#{@errors.length} error(s). Set strict_relationships to fail the build."
    end
  end
end
