# Industry Blueprints

A vendor-neutral blueprint toolkit for public-sector transformation — work out where an
organization is today, where it could go, and what it takes to get there. Federal, state,
county, and municipal.

Built to be used in a working session, not read like a blog.

## Design documents

- [.design/vision.md](.design/vision.md) — what this is and why (product)
- [.design/content-architecture.md](.design/content-architecture.md) — how it is built (implementation contract)

## Status

**Phase 0 complete.** The scaffolding is in place and one capability — constituent service
and case management — is threaded end to end to prove the model. Most artifacts are marked
`draft` and `unverified`, which is accurate rather than modest.

Next is Phase 1: content depth. See vision.md §14.2 for the inventory and §15 for the phasing.

## How the content model works

Content lives in `knowledge/_<collection>/` as markdown with
[Open Knowledge Format](https://github.com/GoogleCloudPlatform/knowledge-catalog/tree/main/okf)
v0.2 frontmatter. Content files carry no Jekyll-specific keys — `layout` and `permalink` are
injected from `_config.yml` defaults — so a concept file is a plain OKF document you can open
in any editor.

Three things are computed rather than hand-written:

- **Trust, lifecycle, and freshness badges** are derived from `verified`, `status`, and
  `stale_after` (`_plugins/okf.rb`). An author cannot mark something reviewed by editing a
  badge; they add a `verified` entry, which is the auditable act.
- **Inverse relationships.** Edges are authored once, in either direction, and both ends are
  generated (`_plugins/relationships.rb`). Declaring the same edge twice is a build error.
- **The maturity spine.** `from_level` / `to_level` on playbooks and `minimum_level` on
  patterns and AI opportunities render as a level scale, so guidance can be filtered to what
  an organization can actually reach.

## Local development

```
bundle install
bundle exec jekyll serve
```

Relationship errors warn locally so authoring stays fast. To get the CI behaviour — errors
fail the build — run:

```
JEKYLL_STRICT_RELATIONSHIPS=true bundle exec jekyll build
```

## Deployment

GitHub Actions, not the built-in Pages Jekyll pipeline — see
[.github/workflows/build.yml](.github/workflows/build.yml). The built-in pipeline ignores
`_plugins/`, and the relationship generator is not optional.

**One-time repo setting:** Settings → Pages → Build and deployment → Source must be set to
**GitHub Actions**.
