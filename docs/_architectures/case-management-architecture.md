---
id: case-management-architecture
title: Case Management Architecture
type: architecture
level: 2
version: "0.1"
status: draft
description: A vendor-neutral module reference for accountable case lifecycle, participants, assignment, activities, evidence, decisions, and outcomes.
last_updated: 2026-08-10
sources: []
reviewed: []
tracks: [information, architecture, trust-governance, ai-automation, executable]
relationships:
  builds_on:
    - case-management
    - person
    - organization
    - communication
    - task
  adds:
    - Case module boundary
    - Case command and query contract
    - Workflow guard contract
    - Case business-event contract
---

## Scope

This architecture covers a reusable module for matters that require continuing ownership, a
controlled lifecycle, coordinated activity, evidence, decisions, and a durable outcome. It is a
reference boundary rather than a required service topology.

The module does not own person master data, communications delivery, document storage, task
execution, or solution-specific policy. It links to those records and evaluates their evidence
through explicit contracts.

## Context

```text
Experience / API
       ↓
Case commands → Authorization → Workflow transition → Named guards
       ↓                               ↓                    ↓
Case record                     Activity history       Related modules
       ↓                               ↓                    ↓
Permission-aware queries          Business events       Notifications / search
```

Every state change enters through an intent-based command. The runtime evaluates actor permission,
current state, transition rules, and named guards before persisting the change and publishing an
event.

## Information model

| Concept | Ownership and relationships |
|---|---|
| Case | Owns type, reference, status, priority, owner, dates, and current summary |
| Case Party | Links a Person or Organization with a typed role and effective period |
| Case Activity | Records work, contact, decision, or system action in sequence |
| Case Evidence | Links a Communication, Document, observation, or external record |
| Case Outcome | Owns structured disposition, rationale, decision-maker, and effective time |
| Case Relationship | Connects related, parent, child, duplicate, or preceding matters |

Tasks remain separately assignable work. Documents and Communications remain independently
governed evidence. The case acts as the coordination boundary and timeline projection.

## Module boundaries

Case Management owns case identity, lifecycle, participant roles, activity history, evidence links,
and outcome. A solution supplies its case types, additional fields, lifecycle, guards, reference
format, and terminology through extension contracts.

Workflow evaluation is a shared runtime concern. Domain-specific guards retain names and reasons,
which makes blocked actions understandable and testable without embedding solution policy in a
generic state engine.

## Interfaces

| Surface | Reference operations |
|---|---|
| Commands | Open, assign, update permitted details, transition, add party, record activity, link evidence, resolve, close, reopen |
| Queries | By reference, timeline, parties, queue, assignment, status, related records, permitted search |
| Integrations | Person registry, organization directory, tasking, communications, documents, approvals, search, notifications |

The interface favors commands over unrestricted record updates. Commands support idempotency where
clients may retry. Query projections can combine module-owned data with permitted titles or summaries
from related modules without transferring ownership.

## Events

The reference event vocabulary includes `CaseOpened`, `CaseAssigned`, `CaseTransitioned`,
`CasePartyAdded`, `CaseActivityRecorded`, `CaseEvidenceLinked`, `CaseResolved`, `CaseClosed`, and
`CaseReopened`.

Events are published after durable state change. They identify the actor, case, transition or
change, and correlation context while leaving sensitive case detail behind protected queries.

## Security

Permissions separate opening, reading, assigning, working, transitioning, resolving, supervising,
and administering case types. Record access can additionally depend on case type, party role,
owner, team, sensitivity, jurisdiction, and lifecycle state.

Restricted cases are excluded from discovery as well as retrieval. Assignment, access, transitions,
guard results, evidence links, and outcomes remain auditable.

## Extensibility

Extension points cover case types, fields, full lifecycle definitions, transition guards, reference
formats, activity types, relationship types, search projections, and solution terminology.
Extensions enter through declared contracts so separate solutions can reshape the module without a
code fork.

## Nonfunctional considerations

Concurrent commands use optimistic concurrency or equivalent conflict detection. Timelines retain
stable ordering. Permission filtering applies before pagination. Retention and archival preserve
the legally or operationally required outcome and history while separately governed evidence can
follow its own schedule. Audit records distinguish human, service, and approved AI-assisted actions.
