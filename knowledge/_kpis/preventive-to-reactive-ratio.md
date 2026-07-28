---
type: KPI
title: Preventive-to-Reactive Ratio
description: The share of maintenance labour spent on planned work — the health measure
  for the whole physical domain, and the one that detects the spiral.
resource: https://industry-blueprints.github.io/kpis/preventive-to-reactive-ratio/
tags: [kpi, maintenance, preventive, reactive, capacity, outcome]

generated: { by: human:jhofmann, at: 2026-07-29T12:00:00Z }
status: draft
stale_after: 2027-07-29
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
measure_class: outcome

relationships:
  - predicate: measures
    target: /capabilities/maintenance-management.md
---

## Business purpose

**Reactive work crowds out preventive work, and the ratio is self-reinforcing.** Every deferred
preventive task raises the probability of a failure that consumes the capacity that would have
performed the next one. Organizations enter this spiral gradually, and the ratio is the only
measure that detects it while it is still cheap to reverse.

It is also the measure that makes the case for the maintenance budget, because it converts
"we are firefighting" into a trend line.

## Definition

> The proportion of maintenance labour hours spent on planned work — preventive, condition-based,
> and scheduled corrective — as a share of total maintenance labour hours.

## Formula

```
Preventive-to-reactive ratio = planned labour hours ÷ total maintenance labour hours
```

**Measure labour hours, not work order counts.** A count treats a fifteen-minute filter change and
a two-day main break as equivalent, and since reactive work is systematically larger, a count-based
ratio flatters the position — often by a wide margin.

Three parameters decide what the number means:

| Parameter | Guidance |
|---|---|
| What counts as planned | Work released from a schedule with resources committed in advance. **Work planned this morning for this afternoon is not planned work** |
| Scheduled corrective | Counts as planned. Corrective work that was identified, planned, and scheduled is the desired outcome of condition-based maintenance, not a failure |
| Emergency | Always reactive, regardless of how well it was executed |

That first rule is the one organizations get wrong, and it is the difference between measuring a
maintenance programme and measuring paperwork.

## Reading it

There is no universal target, and any figure quoted as one should be treated with suspicion — the
right level depends on asset mix, criticality, and how much run-to-failure is deliberate.

**The trend is the signal, not the level.**

| Level | Trend | Reading |
|---|---|---|
| Low | Falling | The spiral. Reactive demand is consuming the capacity that would prevent it |
| Low | Stable | Possibly deliberate, if run-to-failure is the chosen strategy for most of the estate. Check that it was chosen |
| High | Stable | Working — or over-maintaining. Check against failure rates and cost |
| High | Rising sharply | Frequently a definition problem, not an improvement. Check what is being counted as planned |

## Segment it

The aggregate hides the finding. Segment by:

- **Asset class** — the estate is rarely uniform, and one class usually accounts for most reactive hours
- **Crew or district** — variation here is a management signal, not an asset signal
- **Criticality tier** — reactive work on critical assets is a different problem from reactive work on low-consequence ones
- **Season** — winter operations distort the annual figure in most jurisdictions

## Companion measures

Read alone it can be gamed by reclassification. Read with these, it cannot easily be:

| Companion | What it catches |
|---|---|
| [Work backlog age](/kpis/work-backlog-age/) | A ratio improved by deferring preventive work into backlog |
| Failure rate by asset class | A ratio improved by reclassification rather than by prevention |
| Total maintenance cost | Over-maintenance masquerading as a healthy ratio |
| **Preventive work deferred, with reason** | The leading indicator — deferral shows up here before it shows up in the ratio |

That last one is the reason
[preventive maintenance planning](/processes/preventive-maintenance-planning/) requires deferral to
be recorded as a decision. Silently absorbed deferral is invisible until the ratio has already
moved.

## Data required

- Work order `work_type` distinguishing preventive, condition-based, scheduled corrective, corrective, and emergency
- **Actual labour hours** on every work order — the reason completion cannot be a status flag
- Asset class and criticality on the work order, via the asset
- Deferral events with reason

The dependency is [field execution](/processes/field-execution-and-completion/) capturing actuals.
Without labour hours the measure cannot be computed at all, which is why most organizations quote a
count-based version instead.

## Level variance

- **Federal / state.** Large facility and highway portfolios, frequently under performance-based maintenance contracts where the contractor reports the ratio — which makes independent verification of the classification necessary.
- **County / municipal.** **Where the spiral is most common and least measured.** Small crews covering many asset classes, with winter and storm response dominating whole quarters, so segmenting by season is not optional.
