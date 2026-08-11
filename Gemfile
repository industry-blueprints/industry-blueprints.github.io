source "https://rubygems.org"

# Jekyll is versioned directly so local and GitHub Actions builds use the same toolchain.
gem "jekyll", "~> 4.3"

group :jekyll_plugins do
  gem "jekyll-sitemap"
  gem "jekyll-seo-tag"
end

# Windows / JRuby timezone data. Linux ships its own zoneinfo, so this stays
# platform-scoped rather than becoming an unconditional dependency in CI.
gem "tzinfo-data", platforms: [:windows, :jruby]
