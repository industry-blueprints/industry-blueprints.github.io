# Industry Blueprints

Industry Blueprints is a vendor-neutral body of knowledge for understanding and modernizing
important public-sector domains.

The organizing principle is **Blueprint first, platform second**. General business truth is
defined once, composed into recognizable solutions, specialized for real operating contexts,
demonstrated with concrete scenarios, and mapped to technology last.

The current product and implementation direction is defined in
[.design/public_sector_capability_modernization_framework_design.md](.design/public_sector_capability_modernization_framework_design.md)
and [.design/pscmf_jekyll_reference_implementation_specification.md](.design/pscmf_jekyll_reference_implementation_specification.md).

## Domain-first site structure

The primary reader experience begins with a Domain or one of its recognizable use cases:

| Entry point | Purpose |
|---|---|
| Domains | End-to-end guides to public-sector missions, operating models, use cases, modernization, architecture, and AI opportunities |
| Framework | The shared fourteen-stage method applied across Domains |
| Library | Reusable capabilities, personas, foundations, architectures, patterns, and examples |
| About | The purpose and intended use of Industry Blueprints |

Asset Management is the first reference Domain. It includes seven initial use cases and applies the
fourteen-stage framework through five reader-facing modernization phases. Investigations and Grants
Management are the next validation Domains.

Architecture, AI, training material, workshops, assessments, and platform examples are presented in
the context of a Domain. They do not compete with the Domain as separate primary experiences.

The hierarchy below remains a supporting authoring ontology and organizes the reusable Library.
Its level numbers are not presented as the site's primary navigation.

## Blueprint hierarchy

| Level | Collection | Purpose |
|---:|---|---|
| 0 | `docs/_system/` | Standards and metadata for the knowledge system |
| 1 | `docs/_foundations/` | Reusable business concepts |
| — | `docs/_personas/` | Supporting role-based portraits used across business artifacts |
| — | `docs/_capability_areas/` | Curated groupings for browsing related capabilities |
| 2 | `docs/_capabilities/` | Reusable business functions |
| — | `docs/_architectures/` | Supporting architecture artifacts attached to primary business artifacts |
| 3 | `docs/_solutions/` | Compositions that solve recognizable problems |
| 4 | `docs/_workloads/` | Mission-, industry-, or policy-specific specializations |
| 5 | `docs/_scenarios/` | Concrete end-to-end stories and traces |
| 6 | `docs/_realizations/` | Executable implementations and platform mappings |

The Library includes 113 public-sector capabilities organized into nine Capability Areas. Earlier
municipal constituent-service artifacts remain available there as reusable reference content while
the public entry experience is developed around Domains.

## Capability modernization framework

The Public Sector Capability Modernization Framework (PSCMF) supplies the common fourteen-stage
path used inside every Domain. The blueprint hierarchy classifies reusable Library content; PSCMF
organizes the learning and modernization journey. These models are linked rather than merged.

A Capability can remain a concise Library entry and link to a deeper Domain experience. Domains
specialize the canonical framework with a recognizable lifecycle, use cases, domain capabilities,
information, applications, measures, maturity criteria, and AI use cases. Asset Management is the
first reference Domain. Investigations and Grants Management will later test whether the
model generalizes without template forks or copied canonical prose.

Canonical stages live in `_data/framework/`. Structured domain overlays live in
`_data/domains/`. The routable domain landing pages and their thin stage manifests live in
`docs/_domains/`, `docs/_domain_use_cases/`, and `docs/_domain_stages/`.

## Content model

Every artifact uses the shared contract in [schemas/blueprint.schema.json](schemas/blueprint.schema.json).
Its required frontmatter includes:

```yaml
id: case-management
title: Case Management
type: capability
level: 2
version: "0.1"
status: draft
description: Coordinate extended, accountable work around a matter.
last_updated: 2026-08-10
tracks: [business, experience-process, information, architecture]
relationships:
  builds_on: [person, organization, communication, task]
  adds: [Case, Case Party, Case Activity, Case Outcome]
sources: []
reviewed: []
```

Stable IDs are global and kebab-cased. A more specific object authors `builds_on`; the build derives
`used_by` on its dependencies. A Platform Realization authors `realizes`; the build derives
`realized_by` on each demonstrated object. This keeps every edge single-authored.

Business artifacts author `personas` to identify the reusable roles involved. Persona pages derive
their `used_by` list from those links, keeping role definitions separate from the capabilities,
Solution Patterns, Workloads, and scenarios that use them.

Every Capability declares one `capability_area`. The build validates that reference and derives the
area's capability inventory, allowing a large catalog to remain browsable without treating the area
as another abstraction level.

Capabilities may declare `content_profile: educational` for a concise reader-facing structure:
Overview, public-sector importance, Personas, Common processes, and Outcomes and measures. Imported
capabilities without that profile retain their earlier section contract while they are refreshed.

`sources` and `reviewed` are optional editorial metadata. The validator checks their structure, but
the public templates do not render them. Platform Realizations also declare `realization_kind` as
either `sample` or `platform-mapping` so runnable examples remain distinct from product-specific guidance.

The seven available tracks are:

- `business`
- `experience-process`
- `information`
- `architecture`
- `trust-governance`
- `ai-automation`
- `executable`

## Authoring

Start from the matching file in `templates/`, place the new Markdown file in its collection, and
replace every placeholder. The templates mirror the v0.1 definition of done for each level.

The build fails when:

- an ID is duplicated or malformed;
- a collection, type, and level disagree;
- required metadata is absent;
- an artifact track is unknown;
- a relationship target does not exist;
- or `builds_on` points to a higher abstraction level.

## Styling and templates

- `_sass/` contains the design tokens, typography, layout, catalog, and blueprint styles.
- `_layouts/artifact.html` renders every blueprint object.
- `_layouts/collection-index.html` renders level indexes.
- `_includes/relationship-panel.html` renders the generated knowledge graph.
- `_plugins/blueprint_graph.rb` validates and connects artifacts during the build.

## Local development

```sh
bundle install
bundle exec jekyll serve
```

To run the same production build used by GitHub Actions:

```sh
bundle exec ruby scripts/validate_pscmf.rb
JEKYLL_ENV=production bundle exec jekyll build --trace
```

GitHub Actions handles deployment. In the repository settings, Pages must use **GitHub Actions**
as its build and deployment source.
