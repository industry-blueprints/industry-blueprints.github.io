---
id: case-management
title: Case Management
type: capability
level: 2
version: "0.1"
status: draft
description: Coordinate extended, accountable work around a matter that requires lifecycle, ownership, evidence, decisions, and a durable outcome.
last_updated: 2026-08-10
capability_area: serve
tracks: [business, experience-process, information, architecture, trust-governance, ai-automation, executable]
relationships:
  builds_on:
    - person
    - organization
    - communication
    - task
  personas:
    - service-seeker
    - intake-worker
    - service-coordinator
    - service-worker
    - service-supervisor
  adds:
    - Case
    - Case Party
    - Case Activity
    - Case Outcome
---

## Business definition

Case Management enables an organization to coordinate work around a matter that persists beyond a
single transaction. A case establishes a durable boundary for responsibility, participants,
activities, evidence, decisions, and outcome.

Use a case when work needs continuing ownership, controlled lifecycle, multiple activities, or an
auditable resolution. Do not create a case merely because a system needs somewhere to store a form.
A request may be resolved without a case, produce one case, contribute to an existing case, or—when
several independent matters are discovered—produce several cases.

Common failure modes are an all-purpose case type with hundreds of conditional fields, status used
as a substitute for work history, silent reassignment, closure without an outcome, and permissions
derived only from the owning team.

## Actors and outcomes

| Actor | Responsibility |
|---|---|
| Case participant | Supplies information, receives communication, or is affected by the matter |
| Intake or triage worker | Establishes that a case is needed and captures the initial boundary |
| Case owner | Remains accountable for progression and outcome |
| Assigned worker | Performs activities and tasks within their authority |
| Reviewer or approver | Makes a required independent decision |
| Supervisor | Reassigns, escalates, monitors, and resolves exceptions |

A successful case has explicit ownership, a valid lifecycle, an intelligible history, controlled
evidence, and a structured outcome. Participants receive the communication appropriate to their
role. Supervisors can distinguish slow work, blocked work, reopened work, and poor-quality closure.

## Lifecycle

```text
Intake → Triage → Assignment → Work → Review → Resolution → Closure
                     ↑          ↓
                     └──── Reassignment

Closed → Reopened → Work
```

Each case type may specialize this lifecycle. Every transition has a named business
meaning, allowed actors, entry conditions, exit evidence, and emitted event. “Open” and “closed”
alone are insufficient for accountable work.

## Domain model

| Concept | Responsibility |
|---|---|
| Case | Type, status, priority, owner, dates, and current summary |
| Case Party | Person or Organization and their role in the matter |
| Case Activity | Immutable account of work, contact, decision, or system action |
| Case Task | Assignable work needed to advance the case |
| Case Evidence | Linked communication, document, observation, or external record |
| Case Outcome | Structured disposition, rationale, and effective date |

The case is the coordination boundary, not the owner of every linked record. Person,
Organization, Communication, and Task retain their reusable definitions.

## Architecture

The dedicated [Case Management Architecture](/architecture/case-management-architecture/) defines
the module boundary, workflow and guard contract, commands, queries, events, permissions,
integrations, extension points, and nonfunctional considerations. This capability page retains the
business meaning and conceptual model those technical contracts implement.

## Trust and governance

Authorization may depend on case type, party role, owner, team, sensitivity, jurisdiction, and
specific lifecycle stage. Sensitive-case handling includes restricted discovery as well as
restricted opening. Assignment, access, transition, evidence, and outcome changes require an audit
trail. Retention begins from a defined business event, not necessarily creation or closure.

## AI and automation

Appropriate patterns include intake summarization, classification suggestions, related-case search,
timeline generation, routing recommendations, and correspondence drafting. The model receives no
more access than the user invoking it. Proposed actions pass through the same command,
permission, guard, and audit pipeline as a human action.

Evaluation tests factual grounding against the case record, omission of material events,
permission leakage, inappropriate action proposals, and human override—not only writing quality.
