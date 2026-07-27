---
type: Meta
title: Artifact Type Registry
description: The controlled vocabulary of artifact types, their vendor-neutrality
  layer, and what each one is for.
resource: https://industry-blueprints.github.io/meta/type-registry/
tags: [meta, schema, types]

generated: { by: human:jhofmann, at: 2026-07-26T15:00:00Z }
status: stable
industry: public-sector

relationships:
  - predicate: contains
    target: /meta/relationship-predicates.md
---

Every artifact declares a `type`. The Open Knowledge Format requires the field but does not
register values centrally, so this table is the registry — published as part of the library
so a consumer can learn the vocabulary from the content itself.

| Type | Layer | Answers |
|---|---|---|
| `Capability` | 1 | What must the organization be able to do? |
| `Maturity Rubric` | 1 | Where is it today, and where could it get to? |
| `Persona` | 1 | Who does the work, and what do they need? |
| `Process` | 1 | How does work move from trigger to outcome? |
| `Data Entity` | 1 | What information exists, and who owns it? |
| `KPI` | 1 | How is performance measured, precisely? |
| `Governance Control` | 1 | What constraints apply, and what evidence is required? |
| `Solution Pattern` | 2 | What is a reusable approach to this recurring problem? |
| `AI Opportunity` | 2 | Where could AI help, and what does it presuppose? |
| `AI Agent` | 2 | What is this assistant allowed and not allowed to do? |
| `Reference Architecture` | 2 | What is the vendor-neutral solution design? |
| `Playbook` | 2 | How do we get from one maturity level to the next? |
| `Decision Guide` | 2 | How do we choose between approaches? |
| `Guide` | 2 | Which of this, in what order, for what I am here to do? |
| `Vendor Implementation` | 3 | How does one vendor realize this design? |
| `Demonstration` | — | Where can I see this running? |
| `Video` | — | Where can I watch an explanation? |
| `Meta` | — | How is this library itself structured? |

## Layers

**Layer 1 — operating-model knowledge.** How government works. Changes slowly. The most
durable content in the library.

**Layer 2 — vendor-neutral design.** How a solution could be shaped, without naming products.

**Layer 3 — vendor implementation.** How one ecosystem realizes it. Shorter freshness window
than everything above, because product names and licensing change far faster than government
operating models.

Layers 1 and 2 must stand alone as a coherent whole. See the layering rule in
[relationship predicates](/meta/relationship-predicates/).

## Readers are not personas

A `Persona` is a **subject**: someone the blueprints describe, whose work, frustrations, and
information needs are part of the operating-model knowledge. A `Guide` addresses a **reader**:
someone using this library to do a job of their own.

The two overlap — a CIO is both — and collapsing them is the error this distinction exists to
prevent. `/personas/chief-information-officer/` describes what a government CIO does. It does not
tell you how to use this site, and a page attempting both would do neither well.

Guides carry a `shape` declaring how they traverse the graph:

| Shape | Traversal | For |
|---|---|---|
| `engagement` | Deep and ordered — one capability, everything, in sequence | Someone starting a piece of work with a customer |
| `briefing` | Wide and shallow — a whole remit, comparatively | Someone asking what else they could be doing |

Guides add no facts. Every claim in one belongs to an artifact it links to, which is what keeps a
curated path from silently becoming a second, diverging copy of the library.

## Shared frontmatter

Every artifact carries the same base fields, in Open Knowledge Format v0.2 vocabulary:

| Field | Purpose |
|---|---|
| `type` | This registry |
| `title`, `description` | Display and summary |
| `resource` | Canonical published URL |
| `tags` | Free-form categorization |
| `sources` | Citations, with credibility signals |
| `generated` | Who wrote it, when — human, agent, or automated process |
| `verified` | Who reviewed it, when. Its **absence** is meaningful and displayed |
| `status` | `draft` · `stable` · `deprecated` |
| `stale_after` | When it needs review |
| `industry`, `government_levels` | Applicability facets |
| `relationships` | Typed edges |

## Derived, never hand-set

Three page badges are computed from the fields above rather than written by an author:

- **Trust tier** — from `verified`: absent → unverified; machine actors only →
  machine-confirmed; any `human:` actor → human-reviewed.
- **Lifecycle** — from `status`.
- **Freshness** — from `stale_after` against today.

An author cannot mark something reviewed by editing a badge. They mark it reviewed by adding
a `verified` entry, which is the auditable act. Content nobody stands behind is labeled as
such rather than hidden.