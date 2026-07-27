# frozen_string_literal: true

require "date"

# Derives display state from OKF v0.2 frontmatter so that templates never
# read hand-set badge fields. See .design/content-architecture.md §5, §9.
#
# An author cannot mark something reviewed by editing a badge. They mark it
# reviewed by adding a `verified` entry, which is the auditable act.
module IndustryBlueprints
  class OkfMetadata < Jekyll::Generator
    safe true
    priority :highest

    # Days before `stale_after` at which we start nudging.
    REVIEW_WINDOW_DAYS = 60

    # Sortable form of the depth ladder, so listings can float finished work
    # above stubs. Coverage is partial by design and the library is broad —
    # without this, five Complete capabilities sit alphabetically among a
    # hundred Defined ones. Artifacts with no depth sort last.
    DEPTH_RANK = { "complete" => 0, "detailed" => 1, "defined" => 2, "named" => 3 }.freeze

    def generate(site)
      site.collections.each_value do |collection|
        collection.docs.each { |doc| annotate(doc) }
      end
    end

    private

    def annotate(doc)
      data = doc.data

      # `Jekyll::Document#type` returns the collection label, and Liquid drops
      # resolve defined methods before frontmatter. Alias to something
      # unambiguous rather than betting on which one wins.
      data["okf_type"] = data["type"]

      verified = normalize_verified(data["verified"])
      data["verified_list"] = verified
      data["trust_tier"]    = trust_tier(verified)
      data["last_verified"] = verified.map { |v| v["at"] }.compact.max

      generated = data["generated"]
      data["author"] = generated.is_a?(Hash) ? generated["by"] : nil

      data["depth_rank"] = DEPTH_RANK.fetch(data["depth"], 9)

      annotate_freshness(data)
    end

    # OKF permits `verified` as either a bare mapping or a list of them.
    # Consumers must treat the bare form as a one-element list.
    def normalize_verified(value)
      case value
      when nil  then []
      when Hash then [value]
      when Array then value.select { |v| v.is_a?(Hash) }
      else []
      end
    end

    def trust_tier(verified)
      return "unverified" if verified.empty?

      if verified.any? { |v| v["by"].to_s.start_with?("human:") }
        "human-reviewed"
      else
        "machine-confirmed"
      end
    end

    def annotate_freshness(data)
      date = to_date(data["stale_after"])
      return unless date

      days = (date - Date.today).to_i
      data["stale_after_date"] = date.to_s
      data["days_until_stale"] = days
      data["freshness"] =
        if days.negative?              then "stale"
        elsif days < REVIEW_WINDOW_DAYS then "review-due"
        else "current"
        end
    end

    def to_date(value)
      case value
      when nil    then nil
      when Date   then value
      when Time   then value.to_date
      when String then (Date.parse(value) rescue nil)
      else (value.respond_to?(:to_date) ? value.to_date : nil)
      end
    end
  end
end
