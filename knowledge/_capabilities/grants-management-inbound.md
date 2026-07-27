---
type: Capability
title: Grants Management (Inbound)
description: Pursuing, receiving, and administering funds from another level of
  government — including every condition that arrives attached to them.
resource: https://industry-blueprints.github.io/capabilities/grants-management-inbound/
tags: [capability, grants, funding, compliance, reporting]

sources:
  - id: ug
    resource: https://www.ecfr.gov/current/title-2/subtitle-A/chapter-II/part-200
    title: 2 CFR Part 200 — Uniform Administrative Requirements, Cost Principles, and Audit Requirements for Federal Awards

generated: { by: human:jhofmann, at: 2026-07-27T14:00:00Z }
status: draft
stale_after: 2027-01-27
depth: complete

industry: public-sector
government_levels: [state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/fund.md
  - predicate: has_participant
    target: /personas/grants-manager.md
    note: Administers conditions, drawdowns, and reporting
  - predicate: has_participant
    target: /personas/program-manager.md
    note: Delivers the funded programme and reports on it
  - predicate: has_participant
    target: /personas/budget-director.md
    note: Owns matching, cash flow, and the funding cliff
  - predicate: uses_data
    target: /data-entities/agreement.md
---

## Purpose

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

## Processes

[Grant Pursuit & Acceptance Decision](/processes/grant-pursuit-and-acceptance/) ·
[Drawdown, Reporting & Closeout](/processes/drawdown-reporting-and-closeout/) ·
[Subrecipient Risk Assessment & Monitoring](/processes/subrecipient-risk-and-monitoring/) *(where
the organization also passes funds through)*

## Data

[Grants Management Data Model](/data-models/grants-data-model/). The entity that matters most here
is [Grant Award](/data-entities/grant-award/) — specifically that **award amount, obligated,
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
| [Repeat finding rate](/kpis/repeat-finding-rate/) | Process |
| Administrative cost as share of award | Input |
| Service sustained after the funding period | Outcome |

That last measure is the one nobody tracks and the one that matters most.

## Governance

[Subrecipient Monitoring & Pass-Through Responsibility](/governance/subrecipient-monitoring/) —
applies to this capability whenever the organization passes funds down, which for a state is
always and for a county is often.

## AI opportunities

[Cross-report consistency](/ai-opportunities/cross-report-consistency/) — catching the same figure
disagreeing between two submissions before an auditor does. Also condition and obligation
extraction from award documents; see [Grant Award](/data-entities/grant-award/).

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

## Where it goes wrong

**Accepting funding without pricing the obligation.** Net cost is sometimes negative and rarely
calculated.

**The cliff.** A three-year award creates a service and a team. Year four arrives. Either the
general fund absorbs it unplanned, or the service ends and the staff leave.

**Chasing money away from mission**, so the organization delivers the funder's priorities.

**Compliance knowledge in one person** who is not the one delivering the programme, and is often
nearing retirement.

**Reporting assembled by hand** from systems that do not share definitions.

**Match by in-kind that was never free.** Staff time counted as match is staff time not spent on
something else.

---

*Paired with [Grants Management (Outbound)](/capabilities/grants-management-outbound/). A state
agency is both simultaneously, which is exactly why
[Grant Award](/data-entities/grant-award/) is modelled as self-referential.*
