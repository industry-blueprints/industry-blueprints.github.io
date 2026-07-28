---
type: KPI
title: First-Visit Completion Rate
description: The share of jobs finished without a return trip — the measure that pays
  for planning, and the one that exposes what the crew was not given.
resource: https://industry-blueprints.github.io/kpis/first-visit-completion-rate/
tags: [kpi, field-service, planning, productivity, work-orders, outcome]

generated: { by: human:jhofmann, at: 2026-07-29T12:00:00Z }
status: draft
stale_after: 2027-07-29
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
measure_class: outcome

relationships:
  - predicate: measures
    target: /capabilities/work-order-and-field-service-management.md
---

## Business purpose

A second visit costs travel, scheduling, and equipment twice, and it is almost always caused by
information or materials the crew could have had before leaving the yard.

**This is the measure that pays for the planner.** Where
[work order planning](/processes/work-order-planning-and-scheduling/) is unstaffed, the cost does
not disappear — it reappears here, distributed across every crew's day, in a form nobody attributes
to the missing role.

## Definition

> The proportion of work orders completed on the first site visit, of those where completion on
> the first visit was possible.

## Formula

```
First-visit completion = jobs completed on first visit ÷ jobs where first-visit completion was achievable
```

The denominator carries the whole measure:

| Excluded from the denominator | Why |
|---|---|
| Multi-visit by design | A three-stage job is one work order with three planned executions, not a failure |
| Blocked by a third party | Utility locate not returned, tenant refused access, another authority's asset |
| Emergency make-safe followed by permanent repair | Two visits is the correct response |
| Weather or site conditions preventing work | Not a planning defect |

**Everything else stays in.** In particular, "we did not have the part" and "it was not what the
work order said" stay in, because those are exactly what the measure exists to expose.

## Reading it

Read the **reason codes**, not the rate. The rate tells you there is a problem; the reasons tell
you which one:

| Reason for return | Points at |
|---|---|
| Wrong or missing parts | Planning, or parts reservation not enforced |
| Job not as described | Intake — location or asset wrong, or condition changed since reporting |
| Insufficient information | Asset history not delivered to the field |
| Wrong skills or crew size | Planning, or an asset class nobody has worked before |
| Access not available | Planning, or an access requirement nobody recorded on the asset |
| Safety prerequisite absent | [Work authorization](/governance/work-authorization-and-safety-prerequisites/) — and this one is a good outcome; the crew stopped |

That last row matters. **A crew that leaves site because a locate is missing has done the right
thing**, and a measure that penalizes it teaches crews to dig anyway. Safety stops are counted
separately and reported as a positive.

## What good looks like

No universal target — the achievable rate depends heavily on asset mix and on whether the
organization has asset history at all. But the distribution is diagnostic:

- **High and stable** with few parts-related returns: planning is working
- **Falling** while work volume is flat: usually parts availability or a data quality decline
- **High but with rising "job not as described"**: an [intake](/processes/work-request-intake-and-triage/) problem, not a field one
- **Very high** with no reason codes recorded at all: suspect the measure before believing it

## Segment it

- **By work type** — preventive should be near-total; corrective and emergency will not be
- **By crew** — variation is a training or information signal
- **By asset class** — a class with persistently low first-visit completion usually lacks history or has an unclear specification
- **By whether the job was planned** — the comparison between planned and self-dispatched work is the direct evidence for the planner's value

## Data required

- Site visits per work order, distinguishable from status changes
- Return reason codes, applied consistently
- Multi-visit-by-design flag set at planning, not retrospectively
- Planned versus unplanned classification on the work order
- Asset and asset class via the [work order](/data-entities/work-order/) join

## Level variance

- **Federal / state.** Long travel distances make each return expensive, and contracted maintenance may report this as a service level — which requires the exclusion rules to be contractually defined rather than assumed.
- **County.** Rural travel time dominates; a return visit can consume most of a crew-hour budget for a job worth minutes.
- **Municipal.** Shorter travel makes each return cheaper and the volume much higher, so the aggregate cost is comparable and much less visible.
