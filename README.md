# Industry Blueprints

An open, vendor-neutral body of knowledge answering one question: **how should important
business systems actually work?**

Capabilities, processes, personas, domain models, architecture, governance, and AI — described
precisely enough to build from, and paired with running reference software. Public sector is
the content domain and the proving ground; the method is not specific to it.

## Design documents

- [.design/vision.md](.design/vision.md) — what this is and why (product)
- [.design/content-architecture.md](.design/content-architecture.md) — how it is built (implementation contract)
- [.design/new-vision.md](.design/new-vision.md) — the wider professional-platform strategy this site sits inside. Source material, not a spec for this repo.

## The companion repository

The executable half of the project lives in a sibling repo, **Industry Modules Platform** — a
composable application platform whose `core/` → `modules/` → `solutions/` layering is the
implementation of the model described here. Several solutions run today, including constituent
services, permitting, inspector general, and asset management.

Neither repo depends on the other. The site stays readable without the platform, the platform
stays runnable without the site, and the pairing is the value.

## Status

**Reframing in progress.** The vision was rewritten on 2026-08-10 around *blueprints* developed
through four layers — business, information & architecture, executable reference implementation,
and platform mappings. Site chrome, navigation, and the `layer` → `layer` rename are done.

**Not yet done:** the `Blueprint` and `Domain Module` artifact types, the `covers` and
`composed_of` predicates, and the first blueprint (Constituent Services). See vision.md §8 for
the change list and §10 for the blueprint roadmap.

The knowledge base itself is substantial and unaffected by the reframing: 113 capabilities
across 9 domains, with processes, personas, measures, controls, and AI integrations. Most
artifacts are marked `draft` and `unverified`, which is accurate rather than modest.

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
- **The maturity lens.** `from_level` / `to_level` on playbooks and `minimum_level` on
  patterns and AI integrations render as a level scale, so guidance can be filtered to what
  an organization can actually reach. Demoted from organizing spine to optional lens
  (vision.md §11); the fields stay because they cost nothing and the written rubric uses them.

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
