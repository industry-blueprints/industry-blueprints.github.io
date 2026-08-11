# frozen_string_literal: true

require "date"

module IndustryBlueprints
  class BlueprintGraph < Jekyll::Generator
    safe true
    priority :highest

    COLLECTIONS = {
      "system" => ["system", 0, "Blueprint System"],
      "foundations" => ["foundation", 1, "Foundation"],
      "personas" => ["persona", nil, "Persona"],
      "capability_areas" => ["capability-area", nil, "Capability Area"],
      "capabilities" => ["capability", 2, "Capability"],
      "architectures" => ["architecture", nil, "Architecture"],
      "solutions" => ["solution-pattern", 3, "Solution Pattern"],
      "workloads" => ["workload", 4, "Workload"],
      "scenarios" => ["reference-scenario", 5, "Reference Scenario"],
      "realizations" => ["platform-realization", 6, "Platform Realization"]
    }.freeze

    STATUSES = %w[draft stable deprecated].freeze
    REALIZATION_KINDS = %w[sample platform-mapping].freeze
    TRACKS = %w[
      business experience-process information architecture trust-governance
      ai-automation executable
    ].freeze
    REQUIRED_SECTIONS = {
      "foundation" => ["Definition", "Information model", "Architecture", "Trust and governance"],
      "persona" => ["Role", "Goals", "Responsibilities", "Needs", "Friction", "Variations"],
      "capability" => ["Business definition", "Lifecycle", "Domain model", "Architecture", "Trust and governance", "AI and automation"],
      "solution-pattern" => ["Business problem", "Composition map", "Cross-capability workflow", "Integrated information model", "Architecture", "Trust and governance", "AI and automation"],
      "workload" => ["Mission context", "Specialized process", "Information extensions", "Architecture", "Trust and governance", "AI and automation"],
      "reference-scenario" => ["Narrative", "Personas", "Journey", "Capability trace", "Data trace", "Event trace", "AI trace", "Architecture trace"],
      "architecture" => ["Scope", "Context", "Information model", "Module boundaries", "Interfaces", "Events", "Security", "Extensibility", "Nonfunctional considerations"]
    }.freeze
    CAPABILITY_SECTION_PROFILES = {
      "educational" => ["Overview", "Why it matters in the public sector", "Personas", "Common processes", "Outcomes and measures"]
    }.freeze
    REQUIRED = %w[id title type level version status description last_updated tracks relationships].freeze

    def generate(site)
      @errors = []
      documents = blueprint_documents(site)
      index = build_index(documents)

      documents.each { |doc| validate_and_decorate(doc) }
      documents.each { |doc| connect(doc, index) }
      documents.each { |doc| sort_relationships(doc) }

      site.data["blueprint_index"] = index.transform_values { |doc| entry(doc) }
      report_errors
    end

    private

    def blueprint_documents(site)
      COLLECTIONS.keys.flat_map { |label| site.collections[label]&.docs || [] }
    end

    def build_index(documents)
      documents.each_with_object({}) do |doc, index|
        id = doc.data["id"]
        next if id.nil? || id.to_s.empty?

        if index.key?(id)
          @errors << "#{doc.relative_path}: duplicate id '#{id}'"
        else
          index[id] = doc
        end
      end
    end

    def validate_and_decorate(doc)
      expected_type, expected_level, type_label = COLLECTIONS.fetch(doc.collection.label)
      REQUIRED.each do |field|
        @errors << "#{doc.relative_path}: missing required '#{field}'" if doc.data[field].nil?
      end

      id = doc.data["id"].to_s
      @errors << "#{doc.relative_path}: id '#{id}' must be kebab-case" unless id.match?(/\A[a-z0-9]+(?:-[a-z0-9]+)*\z/)
      @errors << "#{doc.relative_path}: type must be '#{expected_type}'" unless doc.data["type"] == expected_type
      if expected_level && doc.data["level"] != expected_level
        @errors << "#{doc.relative_path}: level must be #{expected_level}"
      end
      @errors << "#{doc.relative_path}: unknown status '#{doc.data['status']}'" unless STATUSES.include?(doc.data["status"])
      %w[title description].each do |field|
        unless doc.data[field].is_a?(String) && !doc.data[field].strip.empty?
          @errors << "#{doc.relative_path}: #{field} must be non-empty text"
        end
      end
      unless doc.data["version"].to_s.match?(/\A\d+\.\d+\z/)
        @errors << "#{doc.relative_path}: version must use major.minor format"
      end

      begin
        Date.parse(doc.data["last_updated"].to_s)
      rescue Date::Error
        @errors << "#{doc.relative_path}: last_updated must be a valid date"
      end

      tracks = doc.data["tracks"]
      unless tracks.is_a?(Array) && !tracks.empty?
        @errors << "#{doc.relative_path}: tracks must be a non-empty list"
      else
        unknown_tracks = tracks - TRACKS
        @errors << "#{doc.relative_path}: unknown tracks #{unknown_tracks.join(', ')}" unless unknown_tracks.empty?
        @errors << "#{doc.relative_path}: tracks contains duplicates" unless tracks.uniq.length == tracks.length
      end

      relationships = doc.data["relationships"]
      unless relationships.is_a?(Hash)
        @errors << "#{doc.relative_path}: relationships must be a mapping"
        relationships = {}
        doc.data["relationships"] = relationships
      end

      %w[builds_on adds].each do |key|
        validate_list(doc, relationships, key)
      end
      validate_list(doc, relationships, "personas") if relationships.key?("personas")

      if doc.collection.label == "realizations"
        validate_list(doc, relationships, "realizes")
        unless REALIZATION_KINDS.include?(doc.data["realization_kind"])
          @errors << "#{doc.relative_path}: realization_kind must be sample or platform-mapping"
        end
      elsif relationships.key?("realizes")
        @errors << "#{doc.relative_path}: only a platform realization may declare realizes"
      end

      unknown_relationships = relationships.keys - %w[builds_on adds personas realizes]
      unless unknown_relationships.empty?
        @errors << "#{doc.relative_path}: unknown relationship keys #{unknown_relationships.join(', ')}"
      end

      Array(relationships["adds"]).each do |addition|
        unless addition.is_a?(String) && !addition.strip.empty?
          @errors << "#{doc.relative_path}: every relationships.adds value must be text"
        end
      end

      validate_sources(doc)
      validate_reviews(doc)
      validate_content_profile(doc, expected_type)
      validate_sections(doc, expected_type)

      doc.data["type_label"] = type_label
      doc.data["level_label"] = COLLECTIONS.fetch(doc.collection.label)[2]
      doc.data["builds_on_entries"] = []
      doc.data["persona_entries"] = []
      doc.data["capability_entries"] = []
      doc.data["capability_area_entry"] = nil
      doc.data["used_by_entries"] = []
      doc.data["realized_by_entries"] = []
      doc.data["realizes_entries"] = []
    end

    def validate_sections(doc, type)
      headings = REQUIRED_SECTIONS.fetch(type, [])
      if type == "capability" && doc.data["content_profile"]
        headings = CAPABILITY_SECTION_PROFILES.fetch(doc.data["content_profile"], [])
      end
      if type == "platform-realization"
        headings = if doc.data["realization_kind"] == "platform-mapping"
                     ["Mapping scope", "Concept mapping", "Architecture mapping", "Security and governance mapping", "Tradeoffs and caveats"]
                   else
                     ["What runs", "Architecture mapping", "What this proves", "Limits"]
                   end
      end

      headings.each do |heading|
        pattern = /^##\s+#{Regexp.escape(heading)}\s*$/i
        @errors << "#{doc.relative_path}: missing required section '#{heading}'" unless doc.content.match?(pattern)
      end
    end

    def validate_content_profile(doc, type)
      profile = doc.data["content_profile"]
      return if profile.nil?

      if type != "capability"
        @errors << "#{doc.relative_path}: content_profile is only available for a Capability"
      elsif !CAPABILITY_SECTION_PROFILES.key?(profile)
        @errors << "#{doc.relative_path}: unknown Capability content_profile '#{profile}'"
      end
    end

    def validate_sources(doc)
      return unless doc.data.key?("sources")

      sources = doc.data["sources"]
      unless sources.is_a?(Array)
        @errors << "#{doc.relative_path}: sources must be a list"
        return
      end

      sources.each do |source|
        unless source.is_a?(Hash) && source["title"].to_s.strip != "" && source["url"].to_s.strip != ""
          @errors << "#{doc.relative_path}: every source requires title and url"
        end
      end
    end

    def validate_reviews(doc)
      return unless doc.data.key?("reviewed")

      reviews = doc.data["reviewed"]
      unless reviews.is_a?(Array)
        @errors << "#{doc.relative_path}: reviewed must be a list"
        return
      end

      reviews.each do |review|
        unless review.is_a?(Hash) && review["by"].to_s.strip != "" && review["at"].to_s.strip != ""
          @errors << "#{doc.relative_path}: every review requires by and at"
        end
      end
    end

    def validate_list(doc, relationships, key)
      values = relationships[key]
      unless values.is_a?(Array)
        @errors << "#{doc.relative_path}: relationships.#{key} must be a list"
        return
      end

      @errors << "#{doc.relative_path}: relationships.#{key} contains duplicates" unless values.uniq.length == values.length
      values.each do |value|
        unless value.is_a?(String) && !value.strip.empty?
          @errors << "#{doc.relative_path}: every relationships.#{key} value must be text"
        end
      end
    end

    def connect(doc, index)
      relationships = doc.data["relationships"] || {}

      if doc.data["type"] == "capability"
        area_id = doc.data["capability_area"].to_s
        if area_id.empty?
          @errors << "#{doc.relative_path}: capability_area is required for a Capability"
        else
          area = resolve(doc, area_id, index, "capability_area")
          if area && area.data["type"] != "capability-area"
            @errors << "#{doc.relative_path}: capability_area '#{area_id}' does not point to a Capability Area"
          elsif area
            doc.data["capability_area_entry"] = entry(area)
            area.data["capability_entries"] << entry(doc)
          end
        end
      end

      Array(relationships["builds_on"]).each do |target_id|
        target = resolve(doc, target_id, index, "builds_on")
        next unless target

        if target.equal?(doc)
          @errors << "#{doc.relative_path}: an artifact cannot build on itself"
          next
        end

        if target.data["level"].to_i > doc.data["level"].to_i
          @errors << "#{doc.relative_path}: builds_on '#{target_id}' points to a higher level"
        end

        doc.data["builds_on_entries"] << entry(target)
        target.data["used_by_entries"] << entry(doc)
      end

      Array(relationships["personas"]).each do |target_id|
        target = resolve(doc, target_id, index, "personas")
        next unless target

        unless target.data["type"] == "persona"
          @errors << "#{doc.relative_path}: personas '#{target_id}' does not point to a Persona"
          next
        end

        doc.data["persona_entries"] << entry(target)
        target.data["used_by_entries"] << entry(doc)
      end

      Array(relationships["realizes"]).each do |target_id|
        target = resolve(doc, target_id, index, "realizes")
        next unless target

        if doc.collection.label != "realizations"
          @errors << "#{doc.relative_path}: only platform realizations may declare realizes"
        end

        doc.data["realizes_entries"] << entry(target)
        target.data["realized_by_entries"] << entry(doc)
      end
    end

    def resolve(doc, target_id, index, relationship)
      target = index[target_id]
      return target if target

      @errors << "#{doc.relative_path}: #{relationship} target '#{target_id}' does not exist"
      nil
    end

    def sort_relationships(doc)
      %w[builds_on_entries persona_entries capability_entries used_by_entries realized_by_entries realizes_entries].each do |key|
        doc.data[key].sort_by! { |item| item["title"] }
      end
    end

    def entry(doc)
      {
        "id" => doc.data["id"],
        "title" => doc.data["title"],
        "type" => doc.data["type"],
        "type_label" => doc.data["type_label"] || COLLECTIONS.fetch(doc.collection.label)[2],
        "level" => doc.data["level"],
        "capability_area" => doc.data["capability_area"],
        "status" => doc.data["status"],
        "version" => doc.data["version"],
        "realization_kind" => doc.data["realization_kind"],
        "url" => doc.url,
        "description" => doc.data["description"]
      }
    end

    def report_errors
      return if @errors.empty?

      @errors.each { |error| Jekyll.logger.error "Blueprint model:", error }
      raise Jekyll::Errors::FatalException, "#{@errors.length} blueprint model error(s)"
    end
  end
end
