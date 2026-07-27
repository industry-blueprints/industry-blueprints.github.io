---
type: KPI
title: Procurement Cycle Time
description: Requisition to executed contract — including the post-award stretch
  that almost nobody measures and that is frequently the longest.
resource: https://industry-blueprints.github.io/kpis/procurement-cycle-time/
tags: [kpi, procurement, cycle-time, process]

generated: { by: human:jhofmann, at: 2026-07-27T16:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
measure_class: process

relationships:
  - predicate: measures
    target: /capabilities/sourcing-and-solicitation.md
---

## Business purpose

Long procurement cycles are the reason departments route around the process — with purchasing
cards, with emergency justifications, with cooperative vehicles chosen for speed rather than
value. Every workaround erodes competition, and the erosion is a rational response to a real delay.

## Definition

> Calendar days from approved requisition to executed contract.

**Requisition, not solicitation publication.** Measuring from publication omits everything before
it — requirement definition, approvals, market research — which is frequently a third of the total
and is where the least visible delay lives.

**Execution, not award decision.** The stretch from preferred bidder to signed contract is
routinely weeks and is owned by nobody. Excluding it is how organizations report acceptable cycle
times that departments experience as unacceptable.

## Formula

```
Cycle time = median( execution_date − requisition_approved_date )  by procurement method
```

Median, and always segmented by method. A competitive solicitation and a purchase against an
existing vehicle are different processes and reporting them together is meaningless.

## Measure by stage

| Stage | Frequently |
|---|---|
| Requisition approved → requirement finalized | The largest hidden stage. Rewrites, approvals, waiting on a department |
| Requirement → solicitation published | Procurement review and legal clearance |
| Published → responses close | Fixed by the notice; the one stage that is deliberate |
| Close → evaluation complete | Panel scheduling, not scoring effort |
| Evaluation → award approved | Queueing for delegated authority, or for a council agenda |
| **Award → contract executed** | **The unowned stretch. Legal review, negotiation, countersignature** |

The last row is the one to instrument first. It is usually 15–25% of the total, it is invisible in
most reporting, and it has no accountable owner.

## Typical values by maturity level

Indicative, for a mid-value competitive solicitation:

| Level | Total | Character |
|---|---|---|
| 1 | Not measured | Anecdote and complaint |
| 2 | 150–240 days | Paper-driven, stages not visible |
| 3 | 90–150 days | Structured, measured by stage, bottleneck identifiable |
| 4 | 60–100 days | Requirement templates, structured responses, parallel legal review |
| 5 | 30–70 days | Pre-competed vehicles for common categories; competition reserved for where it adds value |

## Interpretation guidance

- **Segment by value band.** A low-value purchase moving through the same 120-day process as a
  major one is a proportionality failure, invisible in the aggregate, and the main driver of
  workarounds.
- **Read against [competition rate](/kpis/competition-rate/).** Fast cycles achieved by narrowing
  competition or over-using sole-source are not an improvement — they are a transfer of cost from
  the process to the price.
- **Watch emergency and sole-source share.** Rising alongside long cycle times, it is evidence
  the formal route is being avoided rather than fixed.
- **A suspiciously good number** usually means the clock starts at solicitation publication, or
  ends at award decision, or excludes purchases against vehicles that were competed years earlier.
- **Variance matters as much as the median.** A department that cannot predict the timeline plans
  around the worst case.

## Data required

Requisition approval dates · requirement finalization · publication · response close · evaluation
completion · award approval · execution dates · procurement method and value band

**Stage timestamps are the constraint**, as with [time to award](/kpis/time-to-award/). Most
organizations hold the endpoints and nothing between, which is exactly why the number gets
reported and never acted on.

## Common data-quality concerns

- Requisition date recorded as system entry rather than as approval
- Purchases against existing vehicles mixed with competitive solicitations
- Cancelled and re-run solicitations counted as one cycle or two, inconsistently
- Execution recorded at internal signature rather than at countersignature
- Emergency procurements excluded from the population, which flatters the median
