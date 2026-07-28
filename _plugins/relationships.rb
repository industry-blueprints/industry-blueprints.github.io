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
      "has_opportunity" => ["opportunity_for", "AI opportunities", "Opportunity for"],
      "assists"         => ["assisted_by",     "Assists",          "Assisted by"],
      "automates"       => ["automated_by",    "Automates",        "Automated by"],
      "implements"      => ["implemented_by",  "Implements",       "Implemented by"],
      "realizes"        => ["realized_by",     "Realizes",         "Realized by"],
      "constrains"      => ["constrained_by",  "Constrains",       "Constrained by"],
      "transforms"      => ["transformed_by",  "Transforms",       "Transformed by"],
      "explains"        => ["explained_by",    "Explains",         "Explained by"],
      "demonstrated_by" => ["demonstrates",    "Demonstrated by",  "Demonstrates"],
      "maps_to"         => ["mapped_from",     "Maps to",          "Mapped from"],
      "supersedes"      => ["superseded_by",   "Supersedes",       "Superseded by"]
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

      # Bundle path => published URL, for templates that reference artifacts
      # outside the relationship graph — notably the capability map, where a
      # capability may be Named (no page) or Defined (a page to link to).
      site.data["bundle_urls"] = index.transform_values { |doc| doc.url }

      validate_map_targets(site, index)
      validate_body_links(site)
      validate_resource_urls(site)
      report
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
    def edge(predicate, label, doc, note)
      {
        "predicate" => predicate,
        "label"     => label,
        "title"     => doc.data["title"],
        "okf_type"  => doc.data["type"],
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
