---
type: Meta
title: Artifact Type Registry
description: The controlled vocabulary of artifact types, the blueprint layer each
  sits in, and what each one is for.
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

| Type | Layer | Use | Answers |
|---|---|---|---|
| `Industry` | 1 | Reference | What is the whole territory, and how much of it exists? |
| `Capability Domain` | 1 | Reference | What groups these capabilities, and what makes the grouping distinct? |
| `Capability` | 1 | Reference | What must the organization be able to do? |
| `Persona` | 1 | Reference | Who does the work, and what do they need? |
| `Process` | 1 | Reference | How does work move from trigger to outcome? |
| `KPI` | 1 | Reference | How is performance measured, precisely? |
| `Governance Control` | 1 | Reference | What constraints apply, and what evidence is required? |
| `Maturity Rubric` | 1 | **Conversation** | Where is it today, and where could it get to? |
| `Domain Module` | 2 | Reference | What is the reusable engine, and what may a solution change? |
| `Data Model` | 2 | Reference | What is the shape of the information in this domain? |
| `Data Entity` | 2 | Reference | What information exists, who owns it, and how does it change state? |
| `Solution Pattern` | 2 | Reference | What is a reusable approach to this recurring problem? |
| `Reference Architecture` | 2 | Reference | What is the vendor-neutral solution design? |
| `AI Integration` | 2 | Reference | Where could AI help, and what does it presuppose? |
| `AI Integration Catalog` | 2 | Reference | What's the fuller range of ways AI could help this specific capability? |
| `AI Agent` | 2 | Reference | What is this assistant allowed and not allowed to do? |
| `Demonstration` | 3 | Reference | Where can I see this running, and how do I run it myself? |
| `Vendor Implementation` | 4 | Reference | How does one platform realize this design? |
| `Guide` | — | **Conversation** | Which of this, in what order, for what I am here to do? |
| `Playbook` | — | **Conversation** | How do we get from one maturity level to the next? |
| `Decision Guide` | — | **Conversation** | How do we choose between approaches? |
| `Video` | — | Reference | Where can I watch an explanation? |
| `Meta` | — | — | How is this library itself structured? |

## Reference and conversation

**`Use` is a reading of the registry, not a second hierarchy.** Nothing moves; the column
records which types are written to be *worked through with other people* and which are written
to be *consulted*.

Reference types are the library and the reason to come here. Conversation types sequence and
frame them for a session — useful, retained, and deliberately secondary: they are a by-product
of describing the domain well, not the thing being built.

The split is deliberately cross-cutting rather than a collection of its own. A
[Maturity Rubric](/maturity-rubrics/constituent-service/) is scored out loud by the people who
do the work; a [Playbook](/playbooks/constituent-service-level-2-to-3/) carries a workshop
agenda. Both were conversation artifacts before the distinction was named, and filing them
somewhere new would break the subject organization that makes the graph navigable in order to
restate something a facet already says.

**Conversation types assert no facts of their own.** Every substantive claim in one belongs to
a reference artifact it links to. A conversation artifact may sequence, frame, time-box, and say
which of two things to do first; it may not introduce a process step, a measure, or a control
that exists nowhere else. Without that rule, curated paths become a second copy of the library
that diverges silently — and the diverging copy is the one people actually read, so the wrong
copy wins.

The practical test: **deleting every conversation artifact must lose facilitation and lose
nothing else.**

## Layers

A blueprint answers how a class of business system should work, and develops through four
layers. The layers are a depth ladder, not a pipeline: a blueprint is publishable at layer 1 and
improves outward.

**Layer 1 — business blueprint.** The domain, independent of technology: the problem, the people,
the terminology, the processes, the rules, the policy constraints. How the work actually runs.
Changes slowly, and the most durable content in the library.

**Layer 2 — information & architecture.** How the system should be structured: domain model,
entities and relationships, state models, business events, security concepts, integration
patterns, and the points where AI touches the system.

**Layer 3 — executable reference implementation.** Working software that makes the architecture
concrete, explorable, and testable. Not production software to deploy unchanged — something you
can run, inspect, and read.

**Layer 4 — platform mappings.** How the architecture maps onto a specific implementation
platform. Shorter freshness window than everything above, because product names and licensing
change far faster than government operating models.

Layers 1 and 2 must stand alone as a coherent whole: **no layer 1 or 2 artifact holds an outbound
edge to a layer 4 artifact.** Platform listings on a neutral page render from inbound edges only,
which is what makes layer 4 removable rather than merely separable. See the layering rule in
[relationship predicates](/meta/relationship-predicates/).

Conversation types carry no layer. Layers describe how deep a blueprint goes; facilitation is
orthogonal to that, and giving it a number would imply it sits in the stack.

## Domain modules and the extraction rule

Three things in this library can be called a capability, and keeping them apart is what makes the
model work:

| Concept | Grain | Example |
|---|---|---|
| **Business Capability** | Something an organization must be able to do | Licensing and Permitting |
| **Domain Module** | A reusable domain concept with a lifecycle and a contract | Case Management |
| *Platform module* | The code that implements one | `modules/case-management` |

A `Domain Module` is a **specification**; the platform module is its implementation, and the two
share a slug so the pairing is mechanical rather than remembered.

**The extraction rule: a domain module is extracted, never designed.** It earns its place by
surviving more than one consumer — where a concept works across domains it is promoted, and where
it does not the abstraction is revised or written back into the one blueprint that needed it. A
module with a single consumer is a guess wearing the costume of an abstraction, and the cost of
being wrong is paid by everything built on top of it.

The evidence may come from either direction. [Case Management](/domain-modules/case-management/)
was documented before any blueprint consumed it, because four running solutions had already
proven the boundary in code — which satisfies the rule rather than bending it.

## Readers are not personas

A `Persona` is a **subject**: someone the blueprints describe, whose work, frustrations, and
information needs are part of the operating-model knowledge. A `Guide` addresses a **reader**:
someone using this library to do a job of their own.

The two overlap — a CIO is both — and collapsing them is the error this distinction exists to
prevent. `/personas/chief-information-officer/` describes what a government CIO does. It does not
tell you how to use this site, and a page attempting both would do neither well.

Guides carry a `shape`. It declares **when the artifact is used relative to the room**, which is
the distinction that actually changes how one is written:

| Shape | When | Does what |
|---|---|---|
| `engagement` | Before — one reader | Deep and ordered through one capability. Preparation. |
| `briefing` | Before — an executive | Wide and shallow across a remit. Orientation. |
| `discovery` | **In the room** | Questions that establish where the organization actually is. |
| `workshop` | **In the room** | A timed agenda that moves a group from options to a decision. |
| `canvas` | **In the room** | One sheet the group fills in together and takes away. |

The three in-room shapes divide by output, not by subject: `discovery` produces
**understanding**, `workshop` produces **decisions**, `canvas` produces **a record the customer
keeps**. Two shapes claiming the same output would be one shape.

An executive's surface is **not** a domain — a CFO spans Fund, Acquire, and part of Govern —
which is why `briefing` is scoped to a remit rather than reusing the domain page.

## AI integrations carry two orthogonal facets

`ai_modality` describes **how the integration is deployed**, on the two axes that determine
governance, data requirements, and accountability — who initiates it, and who commits the effect.

|  | Person commits | System commits |
|---|---|---|
| **Person initiates** | `assist` | `delegate` |
| **Event initiates** | `queue` | `autonomous` |

`ai_task_type` describes **what the model does** — classification, extraction, summarization,
generation, prediction, anomaly detection.

**These compose; they do not substitute.** The same prediction model is a materially different
proposition in `queue` than in `autonomous`, and a taxonomy that mixes technique with deployment
produces categorization arguments instead of decisions. Both vocabularies are declared in
`_config.yml` and enforced at build — `ai_task_type` was free text for its first twelve artifacts
and had already drifted to "image classification" alongside "classification", which is invisible
until someone groups by it and gets two buckets meaning one thing.

Modality interacts with the maturity lens rather than being independent of it: `assist` is
reachable at level 2 because it requires no integration, `queue` requires level 3 because
detection requires integrated data, and `autonomous` requires the governance discipline of the
3 → 4 barrier. See [the AI landscape workshop](/guides/ai-landscape-workshop/).

## AI Integration Catalog — a capability's own child page

An `AI Integration` is one specific, fully-fielded idea — prerequisites, oversight, failure
modes, the works. An `AI Integration Catalog` is different in kind, not just in size: it is a
**single narrative page per capability**, living at a nested URL under that capability
(`/capabilities/<slug>/ai-integration/` rather than a flat `/ai-integrations/<slug>/`), written
to help a reader *imagine* the range of ways AI could assist across that capability — some
ideas linked out to full `AI Integration` pages where the depth already exists, others still
just a paragraph because nobody has written the full version yet.

It is `Reference`, not `Conversation` — unlike a `Guide`, a Catalog is allowed to introduce an
idea that exists nowhere else, because introducing ideas is exactly what it is for.

The capability declares nothing extra to get one: the Catalog declares `part_of → capability`
(inverse `contains`), and the capability page's "Contains" panel picks it up automatically. The
Catalog in turn declares `has_integration` to whichever full `AI Integration` pages it links —
the same predicate a capability used to carry directly, moved one level down now that there is
somewhere for it to live. This is also the pattern a future sibling — a solution-pattern catalog,
an architecture catalog — would reuse: one child page per capability, declaring `part_of` up and
`has_x` down.

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