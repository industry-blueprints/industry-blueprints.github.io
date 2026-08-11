---
id: budget-formulation
title: Budget Formulation
type: capability
level: 2
version: '0.1'
status: draft
description: Turning competing requests, revenue forecasts, and political priorities
  into a proposed budget that can be adopted.
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
To allocate finite public money across obligations that exceed it, on a statutory timetable, in
a way the adopting body will approve and the public can scrutinize.

## Desired outcomes

- A balanced, adopted budget by the statutory deadline
- Allocations that reflect stated priorities rather than last year plus an increment
- Revenue forecasts accurate enough that mid-year correction is not routine
- Departments able to see the consequence of what they were given
- A public document someone outside finance can actually read

## Lifecycle
Budget call and instructions · revenue forecasting · departmental request preparation · request
review and analysis · executive recommendation · public hearing and deliberation · adoption ·
initial appropriation load

## Domain model
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

## Getting this right

**Re-examine the base, not just the increment.** Skipping that re-examination confines the whole
argument to the marginal few percent while the bulk of spending goes unquestioned.

**Give the budget office numbers it can compare, not just narrative.** Departments describing need
in prose leave cuts landing where they are easiest to defend rather than where they cost least.

**Pair cost with outcome information.** Cost per unit is easy to know; whether the program works
takes more effort to establish and is often skipped. See the
measurement framework.

**Keep the financial system as the real system, not a shadow spreadsheet.** When the financial
system only models the adopted budget while the actual negotiation happens elsewhere, the
reconciliation between them is manual and fragile.

**Model grant cliffs before they arrive.** Externally funded positions with an end date the budget
does not represent turn into an unavoidable base increase later.
## Architecture

The architecture boundary for this capability follows the responsibilities, lifecycle, and
information described above. A dedicated architecture artifact has not yet been developed for
this inventory entry.

## Trust and governance

Trust concerns include authority to act, access to operational records, accountable decisions,
retention, and an auditable history. Applicable controls vary with the workload, jurisdiction,
and information sensitivity; a dedicated trust model has not yet been developed for this draft.

## AI and automation

AI and automation opportunities have not yet been evaluated for this capability. Future
patterns remain bounded by the authority, access, decision, and audit controls of the
underlying work.
