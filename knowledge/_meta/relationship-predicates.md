---
type: Meta
title: Relationship Predicates
description: The controlled vocabulary of typed edges between blueprint artifacts,
  and their inverses.
resource: https://industry-blueprints.github.io/meta/relationship-predicates/
tags: [meta, schema, relationships]

generated: { by: human:jhofmann, at: 2026-07-26T15:00:00Z }
status: stable
industry: public-sector
---

Relationships are the core of the library. Without them it is a folder of documents.

Edges are authored **once**, on whichever artifact reads naturally, as structured frontmatter.
The build resolves each target and writes the inverse onto it, so a process that declares
`supports → capability` makes the capability page list it under "Supported by" with no second
edge to maintain. Hand-maintained bidirectional links are how knowledge graphs rot.

**Either column below is a valid authoring form.** A process may declare
`has_participant → persona`, or a persona may declare `participates_in → process` — both
normalize to the same edge. Declaring it from both ends is a build error, not a duplicate
rendering.

Any predicate outside this table is also rejected at build time. The vocabulary grows by
deliberate addition, not by typo.

| Predicate | Inverse | Reads as |
|---|---|---|
| `contains` | `part_of` | An industry contains capabilities |
| `supports` | `supported_by` | A process supports a capability |
| `assesses` | `assessed_by` | A maturity rubric assesses a capability |
| `participates_in` | `has_participant` | A persona participates in a process |
| `uses_data` | `used_by` | A process uses data entities |
| `measured_by` | `measures` | A process is measured by KPIs |
| `has_opportunity` | `opportunity_for` | A process contains AI opportunities |
| `assists` | `assisted_by` | An AI agent assists a persona |
| `automates` | `automated_by` | An AI agent performs part of a process |
| `implements` | `implemented_by` | An architecture implements patterns |
| `realizes` | `realized_by` | A vendor implementation realizes an architecture |
| `constrains` | `constrained_by` | A governance control constrains an AI agent |
| `transforms` | `transformed_by` | A playbook transforms a capability |
| `explains` | `explained_by` | A video or guide explains an artifact |
| `demonstrated_by` | `demonstrates` | A pattern is demonstrated by a platform sample |
| `maps_to` | `mapped_from` | A data entity maps to an external standard |
| `supersedes` | `superseded_by` | A revised artifact replaces a deprecated one |

## Authoring form

```yaml
relationships:
  - predicate: supports
    target: /capabilities/constituent-service-management.md
    note: Optional context, shown on both sides of the edge
```

`target` is a bundle-relative path: the collection directory with hyphens, then the filename
with its `.md` extension. It resolves mechanically to the published URL.

## The layering rule

Artifacts belong to one of three layers: operating-model knowledge (1), vendor-neutral design
(2), vendor implementation (3).

**No layer 1 or 2 artifact may hold an outbound edge to a layer 3 artifact.** The `realizes`
edge always points upward, and vendor listings on vendor-neutral pages render from inbound
edges. This is what makes the vendor layer removable rather than merely separable in principle.

## The maturity spine

Maturity is not a predicate — it is an axis running through the graph, expressed as fields:

| Field | On | Meaning |
|---|---|---|
| `assesses` | Maturity Rubric | The capability this rubric scores |
| `from_level` / `to_level` | Playbook | The transition this playbook delivers |
| `minimum_level` | AI Opportunity, Solution Pattern | The level below which this is not viable |

## Authoring conventions

Where both directions read equally well, the house convention is:

- **The process enumerates its participants and its AI opportunities.** Adding a process
  should be a single-file change, not an edit across five persona files — and the note text
  describes the persona's role *in that process*, so it belongs on the process.
- **The playbook owns its own transition** (`transforms → capability`), not the capability.
- **Governance declares what it constrains**, since a single control typically constrains
  several things.
- **A guide points only at what it is a guide *to*** (`explains → capability`), never at
  everything it references. A guide that sequences thirty artifacts would otherwise put an
  "Explained by" entry on all thirty, and the graph would fill with navigation. The sequence
  lives in the guide's prose; the edge records its subject.

Once a user locates their organization on a rubric, every other artifact can be filtered to
what is actually reachable from there.
