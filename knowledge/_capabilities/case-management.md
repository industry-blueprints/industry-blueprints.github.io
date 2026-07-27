---
type: Capability
title: Case Management
description: Carrying a matter from opening to disposition with an owner, a history,
  and a record that holds up afterwards.
resource: https://industry-blueprints.github.io/capabilities/case-management/
tags: [capability, case-management, workflow, casework]

generated: { by: human:jhofmann, at: 2026-07-27T11:30:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/serve.md
  - predicate: has_participant
    target: /personas/caseworker.md
  - predicate: has_participant
    target: /personas/program-manager.md
    note: Owns caseload distribution and the aging backlog
  - predicate: uses_data
    target: /data-entities/case.md
---

## Purpose

To manage discrete matters — applications, complaints, investigations, service requests, appeals —
through to a defined outcome, with clear ownership, a complete history, and a record that
withstands review.

The most reused capability in government. A service request, a benefit application, a code
enforcement action, and an appeal are structurally the same thing, which is why
[Case](/data-entities/case/) is a core entity and why organizations that model it once can serve
across departments.

## Desired outcomes

- Every matter has an accountable owner, not just a queue
- Work moves without anyone having to remember what happens next
- Aging is visible before someone escalates
- The record answers who decided what, when, and on what basis
- A person dealing with the organization does not have to re-explain

## Key processes

Case creation and classification · assignment and reassignment · task generation and tracking ·
evidence and document collection · decision and disposition · notification of outcome ·
appeal or reopen handling · closure and records disposition · caseload balancing and backlog
management

## Key data

[Case](/data-entities/case/) with parties, ownership, lifecycle, and disposition · tasks ·
documents · interactions · related cases · audit events

## Measures

| Measure | Class |
|---|---|
| Cases within target cycle time, by type | Process |
| Case age distribution, not average age | Process |
| Reopen rate | Process |
| Cases with a named owner | Process |
| Disposition mix | Output |
| Matter resolved to the person's satisfaction | Outcome |

**Age distribution rather than average age.** An average hides the tail, and the tail is where
the complaints, appeals, and statutory breaches come from.

## Level variance

- **Federal.** Very high volume, program-specific, with statutory processing timelines and formal
  appeal rights attached to most case types.
- **State.** Administers federally designed programs while running its own; often defines the case
  model that counties execute.
- **County / municipal.** Widest variety of case types per organization, from a pothole to a child
  welfare matter, frequently in unconnected systems.

## Where it goes wrong

**Case per department for one matter.** The same issue opened three times because three units
touched it. Related-case linking mitigates; it does not fix.

**Queue ownership without individual ownership.** Everyone can see it; nobody is accountable.
This is precisely how cases age invisibly.

**Status with no modelled transitions.** Any state to any state, so the record shows where a case
is and not how it got there — which is the question audit and appeal both ask.

**No "awaiting requester" state.** The clock runs while the organization is not the blocker, so
staff close prematurely to protect their numbers, and it returns as a reopen.

**Disposition as free text.** Makes every meaningful measure uncomputable, which is why so many
organizations report resolution from a checkbox instead.

**Backlog discovered by escalation.** The first signal a queue is aging is a complaint to an
elected official — see [Elected Official](/personas/elected-official/).
