---
type: KPI
title: Work Backlog Age
description: How old the outstanding work is, by priority — the measure that turns an
  absorbed problem into a number somebody has to answer for.
resource: https://industry-blueprints.github.io/kpis/work-backlog-age/
tags: [kpi, backlog, maintenance, work-orders, capacity, process]

generated: { by: human:jhofmann, at: 2026-07-29T12:15:00Z }
status: draft
stale_after: 2027-07-29
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
measure_class: process

relationships:
  - predicate: measures
    target: /capabilities/work-order-and-field-service-management.md
---

## Business purpose

Backlog is normally **absorbed rather than reported** — held in the work management system, never
aged, never valued, and therefore invisible in the budget conversation where it would matter.

Aging it does two things. It converts "we are behind" into a defensible number, and it separates
the backlog that is a capacity problem from the backlog that is a decision nobody made.

## Definition

> The distribution of open work order age, in days since authorization, segmented by priority and
> work type — reported as median, ninetieth percentile, and oldest.

## Formula

```
Age = today − date authorized (not date reported, not date last touched)
```

Report the **distribution**, never the mean. A mean backlog age is uninformative in a population
where most items are days old and a tail is years old — and that tail is the entire finding.

| Parameter | Guidance |
|---|---|
| Clock starts | At authorization to a work order, not at request. Intake delay is a separate measure |
| Clock does not stop | For planned-not-ready, on-hold, or awaiting-parts. Those are reasons, not pauses |
| Terminal states | Aged out only on completion or on a recorded decision to cancel |

**The second rule is the one that gets argued about.** Excluding on-hold work makes the number
look better and destroys the measure, because "awaiting parts since 2022" is precisely what needs
to be visible.

## Reading it

| Pattern | Reading |
|---|---|
| Short median, long tail | Normal and healthy-ish — but the tail needs a decision, not more time |
| Median rising steadily | Capacity below demand. This is arithmetic, not a management problem |
| Long at high priority | The most serious signal on this page — priority is not driving sequence |
| Large volume at low priority, never moving | Work that will never be done. It should be cancelled with a reason, not carried |
| Sudden drop | Check for a bulk closure before celebrating |

That fourth row is worth acting on. A backlog containing thousands of items nobody will ever do is
not a backlog; it is a filing cabinet, and it makes the real backlog impossible to see. Cancelling
with a recorded reason is the honest move and is usually resisted because cancellation looks like
failure.

## Segment it

- **By priority** — the only segmentation that makes the number actionable
- **By work type** — preventive backlog aging is the [spiral](/kpis/preventive-to-reactive-ratio/) becoming visible
- **By asset criticality** — old work on critical assets is a risk position, not a queue
- **By hold reason** — parts, access, permits, funding. Each points at a different upstream fix
- **By crew or district** — variation is a capacity or management signal

## Value it, not just count it

**Backlog age becomes a budget conversation when it carries an estimated cost to clear.** A count
of 4,200 open work orders is easy to ignore; "$3.1m to clear, of which $600k is on critical assets
and is more than a year old" is not.

The estimate does not need to be precise. It needs to exist, and it needs to be segmented by
criticality so the conversation is about the part that matters.

## Companion measures

| Companion | What it adds |
|---|---|
| [Preventive-to-reactive ratio](/kpis/preventive-to-reactive-ratio/) | Whether the backlog is being created by deferral |
| Work created versus completed per period | Whether the trend is capacity or a one-off |
| Planned-not-ready count | How much of the backlog is blocked rather than queued |
| Deferred preventive work, with reason | The leading indicator |

## Data required

- Authorization date on every work order, distinct from request date and status-change dates
- Priority and asset criticality on the work order
- Hold state with reason, without stopping the clock
- Cancellation as a terminal state with a recorded reason
- Estimated cost per work order — even roughly, for the valuation

## Level variance

- **Federal / state.** Facility and highway backlogs are frequently reported publicly as deferred maintenance, which makes the valuation discipline established practice at this level and worth borrowing.
- **County / municipal.** **Backlog is almost never aged or valued**, and is the largest unstated liability in most public works departments — carried in a system, known anecdotally, and absent from every budget document until a failure makes part of it urgent.
