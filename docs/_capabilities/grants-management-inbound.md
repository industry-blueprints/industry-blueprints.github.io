---
id: grants-management-inbound
title: Grants Management (Inbound)
type: capability
level: 2
version: '0.1'
status: draft
description: Pursuing, receiving, and administering funds from another level of government
  — including every condition that arrives attached to them.
last_updated: '2026-08-11'
capability_area: fund
industries:
- public-sector
tracks:
- business
- experience-process
- information
- architecture
- trust-governance
- ai-automation
relationships:
  builds_on: []
  personas: []
  adds: []
---

## Business definition
To secure external funding for services the organization could not otherwise afford, and to
administer it in compliance with conditions written by a funder with different priorities and no
knowledge of local circumstances.

The recurring failure is upstream of all the administration: **grant funding is treated as free
money, and it is not.** The award covers the programme. It does not cover the reporting, the
audit, the procurement constraints, the match, the indirect costs the funder disallows, or the
general fund liability created when the funding ends and the service does not.

## Desired outcomes

- Funding pursued where it advances the mission, rather than because it is available
- Matching and maintenance-of-effort obligations understood **before** acceptance
- Compliance maintained across every condition, including the ones nobody read
- Reporting produced accurately without consuming the programme
- Funding cliffs planned for rather than discovered

## Current state: how this typically runs today

An opportunity is spotted with three weeks to the deadline. Someone writes the application in
evenings. The match requirement is noticed during drafting and satisfied with "in-kind staff
time," which is real but unbudgeted. Indirect recovery is capped below actual overhead and the
difference is absorbed silently. Nobody computes the administrative burden.

Acceptance is a formality once the award arrives, because declining money is politically difficult
regardless of the arithmetic — and the conditions in the executed agreement are frequently not the
conditions assumed at application.

Then: expenditure coded to the general ledger without grant-aware categories, reconstructed at
reporting time. Reimbursement requested, thirty to sixty days of waiting. Three funders, three
periods, three category schemes, three reports assembled by hand from the same activity. Closeout
when someone notices.

### Why it works that way

- **Declining money looks like failure.** Explaining a refusal to a governing body is a hard
  conversation.
- **Deadlines are short and unpredictable**, which makes deliberate assessment structurally
  difficult.
- **Nobody owns the total cost.** Programme sees funding, finance sees match, HR sees temporary
  posts. No single view.
- **Reimbursement protects the funder** and transfers a real cost to the recipient, invisibly.

## Lifecycle
Grant Pursuit & Acceptance Decision ·
Drawdown, Reporting & Closeout ·
Subrecipient Risk Assessment & Monitoring *(where
the organization also passes funds through)*

## Domain model
Grants Management Data Model. The entity that matters most here
is Grant Award — specifically that **award amount, obligated,
disbursed, and expended are four different numbers**, and systems holding one of them cannot
answer what is committed or what is at risk.

## Business rules

- Pursuit decision recorded, including declines and their reason.
- Full cost assessment — match, in-kind, administrative hours, indirect gap, compliance capacity —
  completed before application.
- Sustainability position stated on every application: sustain from base, sunset, or absorb.
- Award conditions reviewed against application assumptions before acceptance, with declining
  still available at that point.
- Expenditure coded to award and cost category when incurred, not reconstructed.
- Advances liquidated within the period specified.
- Reports produced from the accounting record, not a parallel spreadsheet.
- Closeout initiated automatically at end of period of performance.

## Measures

| Measure | Class |
|---|---|
| Award-to-application success rate | Output |
| Funds drawn as share of funds awarded | Process |
| Reporting submitted on time and accepted without revision | Process |
| Repeat finding rate | Process |
| Administrative cost as share of award | Input |
| Service sustained after the funding period | Outcome |

That last measure is the one nobody tracks and the one that matters most.

## Trust and governance
Subrecipient Monitoring & Pass-Through Responsibility —
applies to this capability whenever the organization passes funds down, which for a state is
always and for a county is often.

## AI and automation
Cross-report consistency — catching the same figure
disagreeing between two submissions before an auditor does. Also condition and obligation
extraction from award documents; see Grant Award.

## Standards and external mappings

| Concept | Maps toward |
|---|---|
| Administrative requirements, cost principles, audit | 2 CFR Part 200 for federal funds received directly or as pass-through |
| Cost categories | Funder-prescribed schemes, mapped from the local chart of accounts |
| Recipient identity | Entity identifiers required for federal award reporting |

The chart-of-accounts mapping is the recurring integration problem: one local ledger, several
funder category schemes. Modelling the mapping explicitly rather than re-deriving it each period
is what makes *code once, report many* achievable.

## Level variance

- **State.** Both recipient and pass-through — receives, administers, and subawards, inheriting
  the obligation to flow conditions down and monitor those it passes to.
- **County.** Substantial federal and state funding, usually administering programmes designed
  elsewhere with limited discretion.
- **Municipal.** Grant-dependent for much discretionary activity and least equipped for the
  compliance burden. Small jurisdictions routinely decline funding they qualify for because they
  cannot carry the administration — a rational decision that looks like a failure.

## What to get right

**Price the full obligation before accepting funding.** Net cost is sometimes negative, and
calculating it before acceptance is what makes that visible in time to matter.

**Plan for the cliff before the award, not at year four.** A three-year award that creates a service
and a team needs a year-four plan from the outset, so the general fund isn't absorbing it unplanned
and the service isn't ending unexpectedly.

**Pursue funding that advances the mission.** Weighing fit against mission, not just availability,
keeps the organization delivering its own priorities rather than the funder's.

**Spread compliance knowledge beyond one person.** Documenting it and involving the people
delivering the programme protects against the knowledge leaving with one retirement.

**Build reporting from the accounting record, shared definitions and all.** Producing reports
directly from the ledger, rather than assembling them by hand, keeps three funders' reports
consistent with each other.

**Budget in-kind match as a real cost.** Staff time counted as match is staff time not spent on
something else, so budgeting for it as a real cost keeps the match honest.

---

*Paired with [Grants Management (Outbound)](/capabilities/grants-management-outbound/). A state
agency is both simultaneously, which is exactly why
Grant Award is modelled as self-referential.*
## Architecture

The architecture boundary for this capability follows the responsibilities, lifecycle, and
information described above. A dedicated architecture artifact has not yet been developed for
this inventory entry.
