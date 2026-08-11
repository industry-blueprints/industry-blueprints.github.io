# Industry Blueprints

Industry Blueprints is being rebuilt one reader-facing page at a time. The current site begins
with a public-sector Capability catalog.

## Capabilities

The catalog contains 113 mission workloads and use cases organized into nine categories:

- Govern
- Serve
- Fund
- Acquire
- Staff
- Inform
- Build & Operate
- Protect
- Justice & Public Safety

Capability source files live in `_capabilities/`. Each page uses the same concise educational
structure: Overview, Why it matters in the public sector, Personas, Common processes, and Outcomes
and measures. `_data/capability_areas.yml` controls category order and descriptions.

Design documents remain in `.design/` as private working material and are excluded from the
generated site.

## Local development

```sh
bundle install
bundle exec jekyll serve
```

To run the production build used by GitHub Actions:

```sh
JEKYLL_ENV=production bundle exec jekyll build --trace
```
