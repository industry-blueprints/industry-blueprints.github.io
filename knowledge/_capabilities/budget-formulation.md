---
type: Capability
title: Budget Formulation
description: Turning competing requests, revenue forecasts, and political priorities
  into a proposed budget that can be adopted.
resource: https://industry-blueprints.github.io/capabilities/budget-formulation/
tags: [capability, budget, finance, planning]

generated: { by: human:jhofmann, at: 2026-07-27T11:30:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/fund.md
  - predicate: has_participant
    target: /personas/budget-director.md
    note: Owns the cycle and the recommendation
  - predicate: has_participant
    target: /personas/agency-director.md
    note: Submits and defends the departmental request
  - predicate: has_participant
    target: /personas/elected-official.md
    note: Adopts, amends, or rejects
---

## Purpose

To allocate finite public money across obligations that exceed it, on a statutory timetable, in
a way the adopting body will approve and the public can scrutinize.

## Desired outcomes

- A balanced, adopted budget by the statutory deadline
- Allocations that reflect stated priorities rather than last year plus an increment
- Revenue forecasts accurate enough that mid-year correction is not routine
- Departments able to see the consequence of what they were given
- A public document someone outside finance can actually read

## Key processes

Budget call and instructions · revenue forecasting · departmental request preparation · request
review and analysis · executive recommendation · public hearing and deliberation · adoption ·
initial appropriation load

## Key data

Fund and appropriation structure · position and salary detail · revenue estimates by source ·
historical actuals · capital project pipeline · grant funding schedules with end dates

## Measures

| Measure | Class |
|---|---|
| Adopted on statutory timetable | Process |
| Revenue forecast variance | Process |
| Share of budget allocated against stated priorities | Output |
| Number of mid-year supplemental requests | Process |
| Public comprehension of the published budget | Outcome |

## Level variance

- **Federal.** Multi-year formulation with a formal executive submission, apportionment, and
  strict anti-deficiency constraints.
- **State.** Annual or biennial, often against a constitutional balance requirement, with
  substantial pass-through to local government.
- **County / municipal.** Annual, adopted in public session, heavily constrained by state law on
  what may be taxed and at what rate. Frequently prepared by two or three people.

## Where it goes wrong

**Incrementalism disguised as analysis.** Last year's base is rarely re-examined, so the entire
argument happens over the marginal few percent while the bulk of spending goes unquestioned.

**Requests as narrative, decisions as numbers.** Departments describe need in prose. The budget
office needs comparability and does not get it, so cuts land where they are easiest to defend
rather than where they cost least.

**No outcome information.** Cost per unit is known; whether the program works is not. See the
[measurement framework](/meta/measurement-framework/).

**The spreadsheet is the real system.** The financial system models the adopted budget; the
negotiation happens elsewhere, and the reconciliation between them is manual and fragile.

**Grant cliffs unmodelled.** Externally funded positions with an end date the budget does not
represent, which arrives later as an unavoidable base increase.
