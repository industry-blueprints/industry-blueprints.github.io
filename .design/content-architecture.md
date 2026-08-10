# Content Architecture

**Status:** Draft, mid-transition · **Last revised:** 2026-08-10 · **Targets:** Jekyll 4.x, OKF v0.2

Implementation contract for [vision.md](vision.md). Covers the content model, how OKF is adopted, and what the build produces.

> **Transition note.** [vision.md](vision.md) was rewritten on 2026-08-10 around blueprints and four layers. This document has had its cross-references, predicate vocabulary, and layer assignments reconciled, and its demoted sections (§5.2 maturity, §7 toolkits, §4b conversation layer) annotated in place. The `Domain Module` type and the `composed_of` / `covers` predicates landed on 2026-08-10 with the first domain module. **Not yet done:** the `Blueprint` type (§4), and per-type field schemas — which lived in the previous vision §7 and belong here now. Recover them with `git show HEAD:.design/vision.md`.

---

## 1. Sequencing

The governing constraint: **content is the long pole, and content is format-independent.** Phase 0 exists only to make sure the writing doesn't have to be redone. Everything else waits.

| | Phase 0 — Foundation | Phase 2 — Packaging |
|---|---|---|
| **Do now** | Frontmatter vocabulary · collections · typed relationships · maturity tagging · shared layout with derived badges · ordinary site links in prose | Toolkit bundle generation · link rewriting · conformance validator · index generation · discovery metadata · Actions build |
| **Why** | Expensive to retrofit — changing field names or link conventions later means touching every file | Build-time output. Doesn't touch authoring. Lands without content rework |

Phase 1 (between them) is writing. Phase 3 adds the graph export and machine-runnable KPI definitions.

### 1.1 What Phase 0 does *not* require

An earlier draft claimed the approach forces a move off GitHub Pages' built-in Jekyll pipeline. That was wrong in a way that matters for sequencing:

* The Actions migration is forced by **custom plugins**, not by OKF.
* The only Phase 0 plugin is the inverse-relationship generator (§6.3), and even that can be done in slow, ugly Liquid if needed.
* Everything genuinely requiring Actions — validator, bundle build, link checking, accessibility testing — is Phase 2.

Move to Actions when convenient. It's a thirty-line workflow and worth doing eventually, but it is not a prerequisite for starting.

---

## 2. The core idea

An OKF bundle is *a directory of markdown files with YAML frontmatter*. A Jekyll collection is *a directory of markdown files with YAML frontmatter*. They are the same artifact viewed from two ends, and the architecture follows from refusing to maintain them separately.

```
                 ┌─────────────────────┐
                 │  knowledge/_*/x.md  │  authored once,
                 │  OKF frontmatter    │  OKF field names
                 └──────────┬──────────┘  are the native vocabulary
                            │
        ┌───────────────────┼───────────────────┐
        ▼                   ▼                   ▼
 ┌─────────────┐  ┌───────────────────┐  ┌──────────────┐
 │  _site/     │  │ _site/toolkits/   │  │ _site/api/   │
 │  HTML site  │  │ per-capability    │  │ graph.json   │
 │  (humans)   │  │ OKF bundles       │  │ (integrators)│
 │  Phase 0    │  │ Phase 2           │  │ Phase 3      │
 └─────────────┘  └───────────────────┘  └──────────────┘
```

Three properties make this nearly frictionless:

1. **OKF requires exactly one field** (`type`) and forbids consumers from rejecting bundles over unknown extra keys. Our additions are conformant by construction.
2. **Jekyll ignores frontmatter it doesn't recognize** and exposes it to templates. OKF fields become page data for free.
3. **Jekyll-only keys can be eliminated from content files** by pushing `layout` and `permalink` into config defaults.

Result: content files carry *no* Jekyll-specific frontmatter. Open one in an editor and it's a plain OKF concept document.

---

## 3. Directory layout

```
knowledge/                          # collections_dir
  _capabilities/
  _maturity_rubrics/
  _personas/
  _processes/
  _patterns/
  _ai_integrations/
  _ai_agents/
  _architectures/
  _data_entities/
  _kpis/
  _governance/
  _playbooks/
  _decision_guides/
  _vendor_implementations/
  _demonstrations/
  _videos/
  _meta/                            # type registry, predicate vocabulary
_layouts/  _includes/  _sass/
_plugins/
  okf_type_alias.rb                 # Phase 0 — §5.4
  relationships.rb                  # Phase 0 — inverse-edge generator
  toolkit_links.rb                  # Phase 2 — link rewriting
tools/
  build-toolkits.rb                 # Phase 2
  validate.rb                       # Phase 2
  build-graph.rb                    # Phase 3
```

Toolkits are **not** a collection — they're generated from the graph (§7).

### 3.1 The path rule

One mechanical rule connects every representation:

| Representation | Form | Example |
|---|---|---|
| Source path | `knowledge/_<label>/<slug>.md` | `knowledge/_capabilities/case-management.md` |
| Site URL | `/<dir>/<slug>/` | `/capabilities/case-management/` |
| Bundle path | `/<dir>/<slug>.md` | `/capabilities/case-management.md` |

where `<dir>` = the collection label with the leading underscore stripped and remaining underscores converted to hyphens (`_ai_integrations` → `ai-integrations`). Jekyll collection labels must be valid Liquid identifiers, so they use underscores; URLs and bundle paths use hyphens. The mapping is total and reversible, which is what makes §7.3 mechanical.

---

## 4. Collection ↔ OKF type registry

Each collection holds exactly one OKF `type`. OKF doesn't centrally register type values, so this table *is* the registry, and it's published to `/meta/type-registry.md` in every bundle so consumers can read the vocabulary from the content itself.

| Collection | OKF `type` | Layer | Phase |
|---|---|---|---|
| `industries` | `Industry` | 1 | 1 |
| `domains` | `Capability Domain` | 1 | 1 |
| `capabilities` | `Capability` | 1 | 0 |
| `maturity_rubrics` | `Maturity Rubric` | 1 | 0 |
| `personas` | `Persona` | 1 | 0 |
| `processes` | `Process` | 1 | 0 |
| `kpis` | `KPI` | 1 | 1 |
| `governance` | `Governance Control` | 1 | 1 |
| `domain_modules` | `Domain Module` | 2 | 1 |
| `data_models` | `Data Model` | 2 | 1 |
| `data_entities` | `Data Entity` | 2 | 1 |
| `patterns` | `Solution Pattern` | 2 | 1 |
| `architectures` | `Reference Architecture` | 2 | 1 |
| `ai_integrations` | `AI Integration` | 2 | 1 |
| `ai_integration_catalogs` | `AI Integration Catalog` | 2 | 1 |
| `ai_agents` | `AI Agent` | 2 | 1 |
| `demonstrations` | `Demonstration` | 3 | 1 |
| `vendor_implementations` | `Vendor Implementation` | 4 | 1 |
| `playbooks` | `Playbook` | — | 1 |
| `guides` | `Guide` | — | 0 |
| `decision_guides` | `Decision Guide` | — | 1 |
| `videos` | `Video` | — | 1 |
| `meta` | `Meta` | — | 0 |
| *(generated)* | `Attested Computation` | 1 | 3 |

**Layer** is the blueprint layer from vision.md §5.1, extended from three values to four (§8.2). Three assignments changed with it: the domain model moved from 1 to 2, because entities and state models describe how the system is structured rather than how the business runs; vendor implementations moved from 3 to 4; and the conversation types — `playbooks`, `guides`, `decision_guides` — lost their layer entirely, because layers measure blueprint depth and facilitation is orthogonal to it.

The rule the column enforces is unchanged in substance: **no layer 1 or 2 artifact holds an outbound edge to a layer 4 artifact.** Enforced in CI from Phase 2, honored by convention before that. Values are injected from `_config.yml` defaults; no author restates one.

## 4a. Named concepts and the capability map

The depth ladder (vision.md §8.1) needs a way to represent a concept that is **Named but has no page**. Creating ~90 near-empty capability files would be worse than the problem: they pollute search, the graph, and every directory listing.

Instead, Named concepts live as structured lists in the frontmatter of their parent:

```yaml
# knowledge/_domains/serve.md
capabilities:
  - title: Constituent Service Management
    definition: Receiving, understanding, resolving, and accounting for requests from the public.
    target: /capabilities/constituent-service-management.md   # has a page
  - title: Case Management
    definition: Carrying a matter from opening to disposition with a defensible record.
                                                              # Named only
```

`_includes/capability-map.html` renders the whole map; entries with a resolvable `target` link and are visually distinct from those without. `_includes/entity-list.html` does the same for the core data model's entities.

Two properties make this work:

* **Promotion is one file plus one line.** Write the capability, add a `target`. No restructuring, no migration.
* **Broken targets fail the build.** A `target` that does not resolve renders as plain text — indistinguishable from a Named concept — so the relationship generator validates them alongside relationship edges (`validate_map_targets`). Without that check, a typo silently downgrades a written capability back to Named.

`site.data.bundle_urls` (bundle path → published URL, built by the relationship generator) is what lets templates resolve these targets, since map entries are not relationship edges and do not belong in the graph.

**Map entries are not relationships.** A domain `contains` its capabilities as a matter of taxonomy, and where both have pages that edge is authored normally. The frontmatter list is a rendering concern for concepts that do not yet exist as nodes.

---

## 4b. The conversation layer — curated traversals for a reader goal

The library is authored for correctness, not for reading order. Someone about to run a discovery session with a customer needs the same 30 artifacts a browsing reader does, but sequenced, with the ones that matter in a first meeting separated from the ones that matter in month three. That sequence is real editorial work and it does not belong anywhere in a graph organized by subject.

**A `Guide` is that sequence, as an artifact.** It is Layer 2 — it is advice about how to use the knowledge, not knowledge about how government works.

### Readers versus personas

A `Persona` is a **subject**; a `Guide` addresses a **reader**. A CIO is both, which is exactly why the distinction has to be explicit: without it, `/personas/chief-information-officer/` accretes site-usage advice and stops being an operating-model artifact.

Reader roles are therefore *not* a collection and *not* nodes in the graph. They are an attribute of a guide (`audience`) and a navigational concern of the site chrome.

### `shape` declares when it is used relative to the room

Five shapes, one type. The distinction that changes how one is written is *before the room* versus *in it* — a page read alone at a desk and a page worked through by six people around a table are different artifacts even when they cover identical subject matter.

| `shape` | When | Scoped to | Produces |
|---|---|---|---|
| `engagement` | Before — one reader | One capability (or a tight cluster) | Preparation |
| `briefing` | Before — an executive | An office's remit, spanning domains | Orientation |
| `discovery` | In the room | One capability | Understanding — where they actually are |
| `workshop` | In the room | One capability or a decision | Decisions the group will stand behind |
| `canvas` | In the room | One session | A record the customer keeps |

The three in-room shapes divide by **output**, not by subject. Two shapes claiming the same output would be one shape, and that is the test to apply before adding a sixth.

An executive's surface is **not** a domain — a CFO spans Fund, Acquire, and part of Govern — which is why `briefing` is scoped to a remit rather than reusing the domain page.

### Conversation artifacts add no facts

Every substantive claim in a conversation artifact belongs to a reference artifact it links to. It may sequence, frame, time-box, and say which of two things to do first; it may not introduce a process step, a measure, or a control that exists nowhere else. Without that rule, curated paths become a second copy of the library that diverges silently — the same failure mode hand-maintained bidirectional edges have, one layer up.

The failure is asymmetric, which is why the rule is structural rather than editorial. Restating is *easier* than linking when writing an agenda at speed, and the restating copy is the one people actually read — so left to drift, the wrong copy wins.

The practical test: **deleting every conversation artifact must lose facilitation and lose nothing else.**

### Reference and conversation is a facet, not a hierarchy

`Guide` is not the only conversational type. A `Maturity Rubric` is scored out loud with the people who do the work; a `Playbook` carries a workshop agenda. Both were conversation artifacts before the distinction was named.

The split is therefore recorded as a **`Use` column in the type registry** and surfaced as a `/conversations/` front door that spans collections. Nothing moves. Filing conversational types into a collection of their own would break the subject organization that makes the graph navigable, in order to restate something a facet already says — and it would make `Guide` the name of a subset while the layer needs the general noun.

This is also why the site keeps `/guides/` rather than renaming the collection: the word *conversation* belongs to the layer, which is wider than any one type.

### Prerequisite: `depth: complete`

An engagement guide for a Defined capability would be a sequence through material that does not exist. Guides are written only against capabilities whose supporting processes, model, measures, and controls are all present.

### Why an artifact and not a site page

Bundles are scoped per capability so an implementor can download a toolkit (§7, §12). A guide is the first file that reader opens, and a guide that lives in the site chrome is absent from the folder they are actually working from. Being in the graph also means its links are validated and its inverses generated like everything else — a guide that references a renamed process fails the build rather than rotting quietly.

---

## 5. Frontmatter contract

### 5.1 Anatomy of a concept file

```yaml
---
# ── OKF required ──────────────────────────────────────
type: Process

# ── OKF recommended ───────────────────────────────────
title: Triage, Classification and Routing
description: How an inbound constituent contact is classified,
  prioritized, and assigned to the right queue or owner.
resource: https://industry-blueprints.github.io/processes/triage-and-routing/
tags: [constituent-service, routing, case-management]

# ── OKF provenance ────────────────────────────────────
sources:
  - id: a11-280
    resource: https://www.whitehouse.gov/omb/information-for-agencies/circulars/
    title: OMB Circular A-11 Section 280
    last_modified: 2025-08-01
  - id: open311
    resource: https://wiki.open311.org/GeoReport_v2/
    title: Open311 GeoReport v2

# ── OKF trust ─────────────────────────────────────────
generated: { by: human:jhofmann, at: 2026-07-26T14:00:00Z }
verified:
  - { by: human:jhofmann, at: 2026-07-26T14:00:00Z }

# ── OKF lifecycle ─────────────────────────────────────
status: draft                    # draft | stable | deprecated
stale_after: 2027-01-31

# ── Industry Blueprints extensions ────────────────────
industry: public-sector
government_levels: [federal, state, county, municipal]
relationships:
  - predicate: supports
    target: /capabilities/constituent-service-management.md
  - predicate: has_participant
    target: /personas/customer-service-representative.md
    note: Performs classification when automated confidence is low
  - predicate: measured_by
    target: /kpis/first-contact-resolution.md
---

Body markdown, with ordinary site links: [case management](/capabilities/case-management/).

## Current State

How this typically runs today, and why it works that way ...

## Level Variance

Federal instances route against agency program structures ...
```

Everything above the extensions block is standard OKF. Everything below is an unknown key that conformant consumers must tolerate.

Note the asymmetry that keeps Phase 0 cheap: **relationship targets use bundle paths** (`.md`) because they're structured data the build controls, while **body prose uses ordinary site links** because those are hand-written and must work in the browser without a plugin. Bundle generation reconciles them in §7.3.

### 5.2 Maturity fields

Maturity is demoted from organizing spine to optional lens (vision.md §11). These fields stay — they cost nothing, the one written rubric uses them, and removing them would rewrite artifacts for no gain — but nothing new is required to carry them:

| Field | On type | Example |
|---|---|---|
| `assesses` *(relationship)* | Maturity Rubric | → the capability it scores |
| `from_level` / `to_level` | Playbook | `2` / `3` |
| `minimum_level` | AI Integration, Solution Pattern | `3` |

`minimum_level` is deliberately one field across both types rather than the
`minimum_level` / `presumes_level` pair an earlier draft proposed. They meant the same
thing, and two names for one concept is exactly the sort of decision that becomes
expensive after sixty artifacts exist.

KPI values by level live in the body as a table, not frontmatter — they're prose-adjacent and vary by segment.

These five fields are what let the site filter all content to what's reachable from a user's current level. No scoring engine required.

### 5.3 Field requirements

| Field | OKF says | We require |
|---|---|---|
| `type` | required | required |
| `title` | recommended | required |
| `description` | recommended | required, single sentence |
| `resource` | recommended | required — canonical published URL |
| `tags` | recommended | required, ≥1 |
| `generated` | optional | required |
| `status` | optional (defaults `stable`) | required, explicit |
| `stale_after` | optional | required for Governance and Vendor Implementation |
| `sources` | optional | required for Governance; required for any claim about statute, standard, or product |
| `verified` | optional | optional — its *absence* is meaningful and rendered |
| `industry` | — | required |
| `government_levels` | — | required for public-sector artifacts |
| `relationships` | — | required, ≥1 — an unconnected artifact is a defect |

Freshness windows: vendor implementations 6 months · governance 6 months · everything else 12 months.

### 5.4 The `type` collision

`Jekyll::Document` has its own `type` method returning the collection label, and Liquid drops resolve defined methods before falling back to frontmatter. Whether `page.type` yields `Process` or `:processes` is version-dependent and not worth betting on.

**Mitigation:** a `:documents, :post_init` hook copies `data['type']` into `data['okf_type']`; templates read `page.okf_type`. The file keeps the OKF-correct field name, templates use an unambiguous alias. Verify the actual behavior once during setup rather than assuming either outcome.

### 5.5 Keys that stay out of content files

```yaml
collections_dir: knowledge

collections:
  capabilities:
    output: true
    permalink: /capabilities/:name/
  # ... one block per collection

defaults:
  - scope: { path: "", type: "capabilities" }
    values:
      layout: blueprint
      layer: 1
```

`layer` is injected the same way so it can be enforced without authors restating it per file.

---

## 6. Relationships

### 6.1 Authoring

Edges are authored **once**, as structured frontmatter. The `target` is a bundle path (§3.1), resolvable to a site URL mechanically.

**Either direction of a predicate pair is a valid authoring form.** A process may declare `has_participant → persona`, or a persona may declare `participates_in → process`; the generator normalizes both to the same edge. This matters more than it sounds — forcing authors onto the "forward" side produces unnatural frontmatter (every persona restating which of a dozen processes it appears in) and, in practice, produces authoring errors instead.

House convention where both read equally well: **the process enumerates its participants and its AI integrations**, because adding a process should be a single-file change rather than an edit across five persona files. The note text also belongs there — it describes the persona's role *in that process*.

### 6.2 Predicate vocabulary

**This table is normative.** It moved here from the product vision, because a vocabulary the generator enforces and the build publishes belongs with the machinery that does both — and because two copies of a controlled vocabulary is the failure this whole section exists to prevent. It is published to `/meta/relationship-predicates.md` so agents can learn the graph schema from the content, and it must stay identical to `PREDICATES` in [`_plugins/relationships.rb`](../_plugins/relationships.rb).

Any predicate outside it is rejected — the vocabulary grows by deliberate addition, not by typo.

| Predicate | Inverse | Example |
|---|---|---|
| `contains` | `part_of` | An industry contains capabilities |
| `supports` | `supported_by` | A process supports a capability |
| `assesses` | `assessed_by` | A maturity rubric assesses a capability |
| `participates_in` | `has_participant` | A persona participates in a process |
| `uses_data` | `used_by` | A process uses data entities |
| `measured_by` | `measures` | A process is measured by KPIs |
| `has_integration` | `integration_for` | A process contains AI integrations |
| `assists` | `assisted_by` | An AI agent assists a persona |
| `automates` | `automated_by` | An AI agent performs part of a process |
| `implements` | `implemented_by` | An architecture implements patterns |
| `realizes` | `realized_by` | A platform mapping realizes an architecture |
| `constrains` | `constrained_by` | A governance control constrains an AI agent |
| `transforms` | `transformed_by` | A playbook transforms a capability |
| `explains` | `explained_by` | A video explains an artifact |
| `demonstrated_by` | `demonstrates` | A pattern is demonstrated by running software |
| `maps_to` | `mapped_from` | A data entity maps to an external standard |
| `supersedes` | `superseded_by` | A revised artifact replaces a deprecated one |

| `composed_of` | `composes` | A blueprint is composed of domain modules |
| `covers` | `covered_by` | A blueprint covers business capabilities |

The last two were added with the `Domain Module` type. `covers` has no author yet — it waits for the first `Blueprint` artifact — but both are declared together because a predicate pair introduced one half at a time is how a vocabulary acquires an asymmetry nobody meant.

### 6.3 Inverse generation *(implemented — `_plugins/relationships.rb`)*

A Jekyll `Generator` runs before rendering:

1. Walk every document's `relationships`
2. Resolve the predicate to its canonical forward form, flipping source and target if the author used the inverse
3. Resolve the `target` document; error if unresolvable
4. Reject the edge if the same logical edge was already declared from the other end
5. Write the outbound edge on the source and the inbound edge on the target
6. Group both sets by label for rendering

A process declaring `supports → capability` makes the capability page display it under "Supported by," with no second edge to maintain.

Step 4 is not optional. Once both directions are authorable, the same edge *will* get declared twice — it happened seven times in the first content pass. Silent duplication would render the same relationship twice on both pages and double-count it in any future graph export.

Errors warn locally and fail the build when `strict_relationships` is set or `JEKYLL_STRICT_RELATIONSHIPS=true` — the CI workflow sets the latter, so authoring stays fast while `main` stays clean.

This is the single most important piece of machinery on the site. Hand-maintained bidirectional links are how knowledge graphs rot — and the toolkit deliverable (§7) is a traversal of this graph, so its integrity is load-bearing for the headline feature, not just for navigation.

---

## 7. Toolkits *(Phase 2)*

A capability, downloadable as a self-contained folder someone can open, edit, commit, or hand to an AI assistant.

**Re-motivated and lowered in priority** by vision.md §11: the reason is now "hand it to an agent, or drop it into a project repo" rather than "carry it into a workshop." Scoping likely moves from per-capability to **per-blueprint** once that type exists, which is a better bundle — a blueprint is already the composition a reader wants. Everything below still holds; the traversal root changes.

### 7.1 A toolkit is a graph slice

Not a directory — a bounded traversal outward from one capability:

```
capability C
├── assessed_by       → maturity rubric              (always)
├── supported_by      → processes                    (hop 1)
│   ├── has_participant → personas                   (hop 2)
│   ├── measured_by     → KPIs                       (hop 2)
│   ├── has_integration → AI integrations           (hop 2)
│   ├── uses_data       → data entities              (hop 2)
│   └── constrained_by  → governance controls        (hop 2)
├── implemented_by    → patterns, architectures      (hop 1)
├── transformed_by    → playbooks                    (hop 1)
└── realized_by       → vendor implementations       (hop 1, optional)
```

**Depth cap of 2 hops from the capability.** Without it every toolkit becomes the whole library, since the graph is densely connected by design.

Artifacts appear in multiple toolkits — a persona serves several capabilities. That's correct; bundles are copies, not references.

### 7.2 Variants

Each capability produces two downloads:

* **Full** — includes layer 4 platform mappings
* **Vendor-neutral** — layers 1–2 only

The second exists because vision.md §12 promises layer 4 is removable, and a reader who has already picked a stack — or deliberately hasn't — needs to be able to prove the neutral core stands alone.

### 7.3 Link reconciliation

Slicing breaks links, and the two link styles from §5.1 must converge. `build-toolkits.rb`:

1. Converts relationship frontmatter into a generated `## Relationships` section of ordinary markdown links, grouped by predicate — so a consumer reading only OKF's link convention still traverses the graph
2. Rewrites body prose links from site form to bundle form: `](/capabilities/x/)` → `](/capabilities/x.md)`
3. For targets **outside** the slice, rewrites to absolute canonical URLs instead: `](https://industry-blueprints.github.io/capabilities/x/)`

Step 3 is the important one. OKF says consumers must tolerate broken links, but a toolkit full of dangling paths is a bad artifact — pointing out to the live site degrades gracefully and gives the download a route home.

### 7.4 Bundle contents

```
constituent-service-management/
  index.md                  # okf_version: "0.2", grouped listing, how to use this
  capabilities/
  maturity-rubrics/
  processes/
  personas/
  kpis/
  governance/
  patterns/
  architectures/
  playbooks/
  vendor-implementations/   # full variant only
  meta/
    type-registry.md
    relationship-predicates.md
```

`/meta/*` is generated from the tables in §4 and §6.2 so the registries can't drift from the validator that enforces them.

`log.md` is skipped. It's optional in OKF, and git-derived changelogs are noise until there's a reason for them.

---

## 8. Machine-runnable KPIs *(Phase 3)*

OKF's `Attested Computation` type lets a metric be published as a sanctioned, parameterized, runnable definition rather than a paragraph — so "First Contact Resolution" means one computable thing rather than one of six vendor interpretations.

````markdown
---
type: Attested Computation
title: First Contact Resolution
description: Share of constituent contacts resolved without a subsequent
  related contact within the follow-up window.
runtime: sql
parameters:
  - { name: period_start, type: date, required: true }
  - { name: period_end, type: date, required: true }
  - { name: followup_days, type: integer, required: false }
  - { name: channel, type: string, required: false }
status: draft
---

# Computation

```sql
-- portable ANSI SQL against the constituent service data model
SELECT ...
```
````

Computations target the vendor-neutral domain model (vision.md §5.1, layer 2), not any vendor's schema — platform bindings belong in layer 4. Two or three KPIs prove the pattern before it's worth extending.

Deferred to Phase 3 deliberately: it's the most distinctive thing the format enables and the least useful before the KPI definitions themselves are settled.

---

## 9. Rendering

The `blueprint` layout **derives** display state rather than reading hand-set badge fields:

| Rendered | Derived from |
|---|---|
| Trust badge | presence and actor kind in `verified` — `human:` prefix means human-reviewed |
| Lifecycle badge | `status` |
| Freshness badge | `stale_after` vs. build date |
| Last verified | max `verified[].at` |
| Sources list | `sources[]`, with footnote backlinks |
| Government level badges | `government_levels` |
| Maturity position | `assesses` / `from_level` / `minimum_level` / `presumes_level` |
| Related components | generated inbound + outbound edges (§6.3) |
| Download toolkit | capability slug → `/toolkits/<slug>/` *(Phase 2)* |

Because badges are derived, an author can't mark something reviewed by editing a badge. They mark it reviewed by adding a `verified` entry, which is the auditable act. With single authorship (vision.md §15) this is self-attestation — honest labeling, not a control.

---

## 10. Build pipeline

**Phase 0** — `jekyll build`. Built-in Pages pipeline or a minimal Actions workflow, either is fine.

**Phase 2** — GitHub Actions:

```
1. bundle install
2. jekyll build                    → _site/
3. ruby tools/build-toolkits.rb    → _site/toolkits/<capability>/
                                     + .tar.gz per capability, per variant
4. ruby tools/validate.rb          → conformance + house rules   [blocking]
5. pa11y-ci                        → WCAG 2.2 AA                 [blocking]
6. htmlproofer                     → link integrity              [blocking]
7. deploy
```

**Phase 3** adds `build-graph.rb` → `_site/api/graph.json`, plus `llms.txt` pointing agents at the toolkit index.

### 10.1 What `validate.rb` enforces

**OKF conformance:** every non-reserved `.md` has parseable frontmatter with a non-empty `type`; reserved filenames follow their structures.

**House rules, stricter than the spec:**

* required fields present per §5.3
* `type` appears in the registry (§4)
* every `predicate` appears in the vocabulary (§6.2)
* every relationship target and every body link resolves
* `status` ∈ `draft | stable | deprecated`
* `stale_after` in the future — a stale artifact warns; a stale *governance* artifact fails
* actor strings match OKF's convention (`human:<id>`, `<producer>/<version>`, `process:<id>`)
* **layering:** no layer 1 or 2 artifact holds an outbound edge to a layer 4 artifact
* every artifact has ≥1 relationship
* every capability has exactly one maturity rubric
* every AI integration declares a `minimum_level`

---

## 11. Migrating the placeholder site

| Existing | Disposition |
|---|---|
| `_personas` | → `knowledge/_personas`, reframed to constituent service, OKF frontmatter |
| `_processes` | → `knowledge/_processes`, plus required current-state sections |
| `_use_cases` | No equivalent type. Folds into Capability and Process; retired |
| `_agent_skills` | → `knowledge/_ai_agents`, expanded to the fuller schema |
| `_app_experiences` | Held. Reconsider against the platform repo's `experiences/` layer, which is the same idea implemented |
| `related:` frontmatter | → `relationships:` with predicates and bundle-path targets |
| `platform_ref` / `platform_url` | → `demonstrations` collection + `demonstrated_by` edges |
| `_layouts/blueprint.html` | Extended: derived badges, grouped bidirectional relationships, maturity position, sources, level variance, toolkit download |

Existing content is placeholder and gets replaced rather than migrated. The value is in the collection and layout structure, not the prose.

---

## 12. Resolved decisions

| # | Decision |
|---|---|
| 1 | **`resource` for abstract concepts.** Use the canonical published URL. Our interpretation of the field, not the spec's stated intent; revisit if v0.3 clarifies. |
| 2 | **`log.md`.** Skipped. Optional in OKF; git-derived logs are noise. |
| 3 | **Bundle scoping.** Per capability, two variants (§7.2). Not per industry. |
| 4 | **OKF version.** Pin `0.2`. Review minor bumps deliberately. |
| 5 | **Verification workflow.** None. Single author; `verified` is self-attestation. |
| 6 | **Adoption split.** Vocabulary in Phase 0, machinery in Phase 2 (§1). |
| 7 | **Body link style.** Ordinary site links when authoring; converted to bundle paths at packaging time (§7.3). Reverses the earlier draft, which would have required a plugin before any content existed. |
| 8 | **`minimum_level`, one field.** Replaces the proposed `minimum_level` / `presumes_level` pair (§5.2). |
| 9 | **Bidirectional authoring.** Either direction of a predicate pair is valid, with duplicate detection (§6.1, §6.3). The forward-only rule produced unnatural frontmatter and, on first contact with real content, twelve authoring errors. |
| 10 | **Jekyll 4 + Actions, now rather than Phase 2.** Moving off the `github-pages` gem turned out to cost one Gemfile change and a thirty-line workflow, and it unblocks the relationship generator — which is Phase 0 machinery, not Phase 2. Deferring it would have meant a Liquid workaround with a known replacement date. |

### Still open

* **Toolkit depth cap.** Two hops is a guess. Validate against the constituent service capability now that it exists — if the toolkit comes out at 12 files it's too tight, at 80 too loose.
* **Whether personas should ever author outbound edges.** Under the §6.1 convention they mostly don't, so their graph position is entirely inbound. That reads fine and keeps authoring cheap, but it means a persona page's "related" panel is built entirely from other people's decisions. Worth revisiting once there are enough personas to tell whether it feels thin.
