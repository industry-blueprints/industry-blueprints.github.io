# frozen_string_literal: true

require "yaml"

ROOT = File.expand_path("..", __dir__)
FRAMEWORK_DIR = File.join(ROOT, "_data", "framework")
DOMAINS_DIR = File.join(ROOT, "_data", "domains")
DOMAIN_STAGES_DIR = File.join(ROOT, "docs", "_domain_stages")
DOMAIN_USE_CASES_DIR = File.join(ROOT, "docs", "_domain_use_cases")

REQUIRED_DOMAIN_FILES = %w[
  domain.yml lifecycle.yml capabilities.yml information.yml applications.yml
  risks-controls.yml measures.yml maturity.yml ai-use-cases.yml
].freeze

HUMAN_INVOLVEMENT_MODES = %w[
  inform assist approve-to-act bounded-automation prohibited-human-only
].freeze

errors = []

def load_yaml(path, errors)
  YAML.safe_load_file(path, aliases: true) || {}
rescue Psych::SyntaxError => e
  errors << "#{path}: invalid YAML (#{e.problem})"
  {}
end

def frontmatter(path, errors)
  text = File.read(path, encoding: "UTF-8")
  match = text.match(/\A---\s*\n(.*?)\n---\s*\n/m)
  unless match
    errors << "#{path}: missing YAML frontmatter"
    return {}
  end

  YAML.safe_load(match[1], aliases: true) || {}
rescue Psych::SyntaxError => e
  errors << "#{path}: invalid frontmatter (#{e.problem})"
  {}
end

layers = load_yaml(File.join(FRAMEWORK_DIR, "layers.yml"), errors)
stages = load_yaml(File.join(FRAMEWORK_DIR, "stages.yml"), errors)
phases = load_yaml(File.join(FRAMEWORK_DIR, "phases.yml"), errors)

layer_ids = Array(layers).map { |layer| layer["id"] }
stage_ids = Array(stages).map { |stage| stage["id"] }
stage_numbers = Array(stages).map { |stage| stage["number"] }

errors << "_data/framework/layers.yml: layer IDs must be unique" unless layer_ids.uniq.length == layer_ids.length
errors << "_data/framework/stages.yml: expected 14 stages, found #{stage_ids.length}" unless stage_ids.length == 14
errors << "_data/framework/stages.yml: stage IDs must be unique" unless stage_ids.uniq.length == stage_ids.length
errors << "_data/framework/stages.yml: stage numbers must be 1 through 14" unless stage_numbers == (1..14).to_a

phase_stage_ids = Array(phases).flat_map { |phase| Array(phase["stage_ids"]) }
errors << "_data/framework/phases.yml: every canonical stage must appear exactly once and in sequence" unless phase_stage_ids == stage_ids

Array(stages).each do |stage|
  id = stage["id"] || "(missing id)"
  errors << "_data/framework/stages.yml: #{id} references unknown layer '#{stage['layer']}'" unless layer_ids.include?(stage["layer"])
  %w[short_title title core_question].each do |field|
    errors << "_data/framework/stages.yml: #{id}.#{field} must be non-empty text" if stage[field].to_s.strip.empty?
  end
  errors << "_data/framework/stages.yml: #{id}.outputs must be a non-empty list" unless stage["outputs"].is_a?(Array) && !stage["outputs"].empty?
  %w[where when how].each do |question|
    errors << "_data/framework/stages.yml: #{id}.ai_prompt.#{question} is required" if stage.dig("ai_prompt", question).to_s.strip.empty?
  end
end

Dir.glob(File.join(DOMAINS_DIR, "*", "domain.yml")).sort.each do |profile_path|
  domain_dir = File.dirname(profile_path)
  domain = load_yaml(profile_path, errors)
  domain_id = domain["id"].to_s

  REQUIRED_DOMAIN_FILES.each do |filename|
    path = File.join(domain_dir, filename)
    errors << "#{path}: required domain file is missing" unless File.file?(path)
  end

  errors << "#{profile_path}: id must be kebab-case" unless domain_id.match?(/\A[a-z0-9]+(?:-[a-z0-9]+)*\z/)
  %w[name summary mission_statement catalog_capability_id].each do |field|
    errors << "#{profile_path}: #{field} must be non-empty text" if domain[field].to_s.strip.empty?
  end

  capability_ids = Array(load_yaml(File.join(domain_dir, "capabilities.yml"), errors)).map { |item| item["id"] }
  information_ids = Array(load_yaml(File.join(domain_dir, "information.yml"), errors)).map { |item| item["id"] }
  ai_use_cases = Array(load_yaml(File.join(domain_dir, "ai-use-cases.yml"), errors))

  ai_use_cases.each do |use_case|
    id = use_case["id"] || "(missing id)"
    errors << "#{domain_id}/ai-use-cases.yml: #{id} references unknown stage '#{use_case['stage_id']}'" unless stage_ids.include?(use_case["stage_id"])
    Array(use_case["capability_ids"]).each do |reference|
      errors << "#{domain_id}/ai-use-cases.yml: #{id} references unknown capability '#{reference}'" unless capability_ids.include?(reference)
    end
    Array(use_case["information_ids"]).each do |reference|
      errors << "#{domain_id}/ai-use-cases.yml: #{id} references unknown information '#{reference}'" unless information_ids.include?(reference)
    end
    unless HUMAN_INVOLVEMENT_MODES.include?(use_case["human_involvement"])
      errors << "#{domain_id}/ai-use-cases.yml: #{id} has unknown human_involvement '#{use_case['human_involvement']}'"
    end
    %w[accountable_role value_hypothesis disposition].each do |field|
      errors << "#{domain_id}/ai-use-cases.yml: #{id}.#{field} must be non-empty text" if use_case[field].to_s.strip.empty?
    end
    %w[controls measures].each do |field|
      errors << "#{domain_id}/ai-use-cases.yml: #{id}.#{field} must be a non-empty list" unless use_case[field].is_a?(Array) && !use_case[field].empty?
    end
  end

  manifest_dir = File.join(DOMAIN_STAGES_DIR, domain_id)
  manifests = Dir.glob(File.join(manifest_dir, "*.md")).sort
  errors << "#{manifest_dir}: expected 14 stage manifests, found #{manifests.length}" unless manifests.length == 14

  manifest_data = manifests.map { |path| [path, frontmatter(path, errors)] }
  manifest_stage_ids = manifest_data.map { |_path, data| data["stage_id"] }
  manifest_orders = manifest_data.map { |_path, data| data["order"] }
  errors << "#{manifest_dir}: stage manifests must reference every canonical stage exactly once" unless manifest_stage_ids == stage_ids
  errors << "#{manifest_dir}: manifest order must be 1 through 14" unless manifest_orders == (1..14).to_a

  manifest_data.each do |path, data|
    errors << "#{path}: domain_id must be '#{domain_id}'" unless data["domain_id"] == domain_id
    errors << "#{path}: data_key must be '#{domain['data_key']}'" unless data["data_key"] == domain["data_key"]
  end

  use_case_dir = File.join(DOMAIN_USE_CASES_DIR, domain_id)
  use_case_files = Dir.glob(File.join(use_case_dir, "*.md")).sort
  use_case_data = use_case_files.map { |path| [path, frontmatter(path, errors)] }
  expected_use_case_ids = Array(domain["use_case_ids"])
  actual_use_case_ids = use_case_data.map { |_path, data| data["id"] }
  unless actual_use_case_ids == expected_use_case_ids
    errors << "#{use_case_dir}: use cases must match domain.yml use_case_ids in order"
  end

  use_case_data.each_with_index do |(path, data), index|
    errors << "#{path}: domain_id must be '#{domain_id}'" unless data["domain_id"] == domain_id
    errors << "#{path}: data_key must be '#{domain['data_key']}'" unless data["data_key"] == domain["data_key"]
    errors << "#{path}: order must be #{index + 1}" unless data["order"] == index + 1
    Array(data["stage_ids"]).each do |reference|
      errors << "#{path}: unknown stage_id '#{reference}'" unless stage_ids.include?(reference)
    end
    Array(data["information_ids"]).each do |reference|
      errors << "#{path}: unknown information_id '#{reference}'" unless information_ids.include?(reference)
    end
    measure_ids = Array(load_yaml(File.join(domain_dir, "measures.yml"), errors)).map { |item| item["id"] }
    Array(data["measure_ids"]).each do |reference|
      errors << "#{path}: unknown measure_id '#{reference}'" unless measure_ids.include?(reference)
    end
    %w[title description architecture ai].each do |field|
      errors << "#{path}: #{field} must be non-empty text" if data[field].to_s.strip.empty?
    end
    %w[outcomes people flow information_ids measure_ids stage_ids].each do |field|
      errors << "#{path}: #{field} must be a non-empty list" unless data[field].is_a?(Array) && !data[field].empty?
    end
  end
end

if errors.empty?
  use_case_count = Dir.glob(File.join(DOMAIN_USE_CASES_DIR, "*", "*.md")).length
  puts "PSCMF validation passed: #{stage_ids.length} canonical stages, #{Dir.glob(File.join(DOMAINS_DIR, '*', 'domain.yml')).length} domain(s), and #{use_case_count} use case(s)."
  exit 0
end

warn "PSCMF validation failed with #{errors.length} error(s):"
errors.each { |error| warn "- #{error}" }
exit 1
