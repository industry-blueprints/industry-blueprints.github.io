source "https://rubygems.org"

# Jekyll 4, not the github-pages gem: we run custom plugins in _plugins/,
# which GitHub's built-in Pages build ignores. Deploys via Actions instead —
# see .github/workflows/build.yml.
gem "jekyll", "~> 4.3"

group :jekyll_plugins do
  gem "jekyll-sitemap"
  gem "jekyll-seo-tag"
end

# Windows / JRuby timezone data. Linux ships its own zoneinfo, so this stays
# platform-scoped rather than becoming an unconditional dependency in CI.
gem "tzinfo-data", platforms: [:windows, :jruby]
