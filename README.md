# Public Sector Blueprints

A Jekyll and GitHub Pages site for a living public-sector capability and solution knowledge system.

## Run locally

```powershell
bundle install
bundle exec jekyll serve
```

Open `http://localhost:4000`.

## Content model

Content is organized into Jekyll collections:

- `_workloads`
- `_capabilities`
- `_architectures` (Reference Architectures)
- `_patterns` (Solution Patterns)
- `_implementation_patterns`
- `_tools`

Each collection entry is a Markdown file with YAML front matter. Shared presentation is handled by `_layouts/knowledge.html`.

Use Case is still one of the six modeled components, but for the moment it is not a standalone collection — it renders as an in-page subsection on its parent Capability's page (one subsection per use case). See `.design/content-schemas.md` for the reasoning.

