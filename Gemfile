source "https://rubygems.org"

# Jekyll 4, not the github-pages gem: we run custom plugins in _plugins/,
# which GitHub's built-in Pages build ignores. Deploys via Actions instead —
# see .github/workflows/build.yml.
gem "jekyll", "~> 4.3"

group :jekyll_plugins do
  gem "jekyll-sitemap"
  gem "jekyll-seo-tag"
end

# Windows / JRuby timezone data
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
