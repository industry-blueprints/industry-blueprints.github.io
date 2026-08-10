---
type: Domain Module
title: Case Management
description: The reusable engine beneath any matter carried from opening to
  disposition — the entity, its commands, its events, and the points where a
  solution is allowed to change it.
resource: https://industry-blueprints.github.io/domain-modules/case-management/
tags: [domain-module, case-management, composability, workflow, contract]

sources:
  - id: platform-module
    resource: https://github.com/industry-blueprints/platform/tree/main/modules/case-management
    title: "@industry-modules/module-case-management — module manifest and implementation"
  - id: platform-permits
    resource: https://github.com/industry-blueprints/platform/tree/main/solutions/public-sector-permits
    title: Public-sector permitting solution — case management reshaped by configuration

generated: { by: human:jhofmann, at: 2026-08-10T10:00:00Z }
status: draft
stale_after: 2027-08-10

industry: cross-industry
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: supports
    target: /capabilities/case-management.md
    note: The capability this module exists to realize
  - predicate: supports
    target: /capabilities/constituent-service-management.md
    note: Service requests are cases with a channel and a service-catalogue type
  - predicate: supports
    target: /capabilities/licensing-and-permitting.md
    note: Applications are cases with completeness state and a determination
  - predicate: supports
    target: /capabilities/investigations.md
    note: Investigations are cases with allegations, findings, and subject rights
  - predicate: supports
    target: /capabilities/appeals-and-grievance-handling.md
    note: Appeals are cases carrying the decision under appeal and its grounds
  - predicate: uses_data
    target: /data-entities/case.md
  - predicate: demonstrated_by
    target: /demonstrations/case-management-module.md
---

The most reused thing in government software, and the one most often rebuilt from scratch.

A **Domain Module** is a reusable domain concept with a lifecycle, a contract, and named places
where a consuming solution is allowed to change it. It is a specification; the
[running module](/demonstrations/case-management-module/) is its implementation.

## Three things share this name — deliberately

The overlap is real and worth stating before anything else, because collapsing these three is
the error the whole layered model exists to prevent.

| | What it is | Where |
|---|---|---|
| **Case Management** *(capability)* | Something an organization must be able to do | [capability](/capabilities/case-management/) — layer 1 |
| **Case Management** *(domain module)* | The reusable engine that realizes it | this page — layer 2 |
| **Case** *(data entity)* | The information model of the record itself | [entity](/data-entities/case/) — layer 2 |

The entity describes what a case *is*. This module describes what can be *done* to one, by whom,
under what conditions, and what a solution may change without forking the code.

## What the module owns

- The case record and its identity
- The commands that change it, each gated by a permission
- The events it emits when it changes
- The queries a consuming experience can ask
- A **default** lifecycle — states, transitions, and the guards on them
- Two named extension points, and nothing else

## The contract

| Command | Permission | Effect |
|---|---|---|
| `open-case` | `case:open` | Creates the record in the workflow's initial state |
| `assign-case` | `case:assign` | Sets owner. Ownership is a first-class command, not a field edit |
| `transition-case` | `case:transition` | Moves state, if the workflow allows it and the guards pass |
| `update-case` | `case:update` | Changes field values, not state |

**State changes are a separate command from field edits.** That split is the load-bearing
decision in the whole module. If `update-case` could set status, every guard, permission check,
and audit entry in the lifecycle would be bypassable by a field write — and the record would stop
being defensible, which is the entire point of a case.

Events are emitted per transition rather than per save, so a downstream consumer can react to
*what happened* (`case closed`) instead of inferring it from a diff.

## The lifecycle is a default, not a rule

The module ships a minimal lifecycle — `new → in-progress → closed` — and expects most solutions
to replace it. That is not an admission of incompleteness. A permitting workflow with eight
states and a plan-review guard is not a specialization of a three-state default; it is a
different lifecycle over the same record.

What the module holds constant is the *machinery*: transitions are named, guarded, permissioned,
and checked centrally. What varies is which states exist and what may move between them.

See [Case](/data-entities/case/) for the lifecycle this library recommends for public-sector
casework, including the two states organizations most often omit.

## Extension points

Exactly two, and the constraint is the feature:

**`case-custom-fields`** — a solution adds domain fields to the case entity. Permit number,
allegation category, eligibility period.

**`case-workflow`** — a solution replaces the lifecycle wholesale.

A solution that needs a third extension point is telling you something: either the need is
general and belongs in the module, or the solution is trying to become a fork. Both answers are
useful; adding a bespoke hook to avoid choosing is not.

## The reuse boundary

The question this module exists to answer is *what belongs to the engine and what belongs to the
domain* — and it has been tested against four solutions rather than reasoned about.

| Belongs to the module | Belongs to the solution |
|---|---|
| Identity, ownership, assignment | Which fields describe this kind of matter |
| Transition checking, guards, permissions | Which states exist and what may follow what |
| Event emission | What listens, and what it does next |
| Query surface | Which views a persona sees |
| Audit of every command | Retention and disposition policy |

The evidence: **permitting, constituent services, inspector general, and asset management run on
the same module code.** Permitting turns it into "Permit Applications" — six added fields, an
eight-state workflow, `PERMIT-YYYY-NNNN` reference numbers — through configuration and a handful
of guard functions, with no module or UI code changed.

That is why this module is documented before any blueprint that uses it. Under
[the extraction rule](/meta/type-registry/), an abstraction with one consumer is a guess; this one
survived four.

## What it deliberately does not own

**Documents, approvals, tasks, and people** are separate modules that attach to a case. The
temptation is to absorb them, because every case needs all four — but a case is not the only
thing that needs an approval, and a module that owns approvals makes approvals unavailable to
anything else.

**Correspondence, knowledge, and identity verification** are capabilities in their own right, not
case features.

**Retention and disposition** are modelled on the case record and enforced by policy, not by this
module. See [Case](/data-entities/case/).

## Where AI attaches

AI acts on a case through the same commands as anything else, which is the point — an agent that
writes state directly bypasses every guard the module exists to enforce.

Practically: classification proposes a case type on `open-case`, summarization drafts the
resolution field on `update-case`, and triage suggests a transition that a person commits. None
of them get a private path to the record, and everything they write is marked as machine-authored
under [AI disclosure and human review](/governance/ai-disclosure-and-human-review/).
