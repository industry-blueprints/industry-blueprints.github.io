---
type: KPI
title: Renewal Rate Against Replacement Value
description: What share of the estate is being renewed each year, against the rate at
  which it consumes its life — the number that tells the truth about the backlog.
resource: https://industry-blueprints.github.io/kpis/renewal-rate-against-replacement-value/
tags: [kpi, assets, renewal, capital, backlog, sustainability, outcome]

generated: { by: human:jhofmann, at: 2026-07-29T12:15:00Z }
status: draft
stale_after: 2027-07-29
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
measure_class: outcome

relationships:
  - predicate: measures
    target: /capabilities/asset-management.md
---

## Business purpose

**This is the single most diagnostic number in the physical domain**, and most organizations have
never computed it.

Assets consume their life at a rate set by their expected lives. If renewal spending is below that
rate, the estate is being consumed, and the deficit accumulates as deferred maintenance regardless
of what the operating budget looks like or how good this year's condition report is. The measure
converts a slow, invisible, politically easy decision into a number with a direction.

## Definition

> Annual renewal and replacement expenditure as a proportion of the current replacement value of
> the asset portfolio, compared against the rate implied by the portfolio's expected lives.

## Formula

```
Renewal rate       = annual renewal expenditure ÷ current replacement value
Consumption rate   = Σ (asset replacement value ÷ expected life) ÷ current replacement value
Sustainability gap = renewal rate − consumption rate
```

The **gap** is the output. A negative gap means the estate is being consumed faster than it is
renewed, and the annual shortfall is the amount by which the backlog grew.

| Parameter | Guidance |
|---|---|
| Renewal expenditure | Replacement and rehabilitation of existing assets. **Excludes new capacity** — a new facility is not renewal |
| Replacement value | Current cost to replace at today's prices, not historical cost and not depreciated book value |
| Expected life | From the asset class, adjusted by observed condition where assessment exists |

**Excluding new construction is the rule that gets broken**, usually not deliberately: capital
budgets frequently do not separate the two, and a large new facility can make a year of severe
under-renewal look like heavy investment.

## Reading it

| Renewal rate | Against consumption | Reading |
|---|---|---|
| Above consumption | Positive gap | Catching up on backlog, or over-renewing — check condition |
| At consumption | Zero | Steady state. The backlog is neither growing nor shrinking |
| Below consumption | Negative gap | **The estate is being consumed.** The gap is this year's addition to the backlog |
| Far below | Large negative | A network on a replacement cycle of many hundreds of years, which is common and rarely stated as such |

The **implied replacement cycle** is the most communicable form of this measure: replacement value
divided by annual renewal spend gives the number of years to replace the estate once. Where that
figure exceeds the assets' expected lives — and for buried infrastructure it routinely runs to
several hundred years — the conversation changes, because the arithmetic is obvious to anyone.

## Segment it

The aggregate conceals almost everything. Segment by:

- **Asset class** — roads, water mains, buildings, and fleet have very different lives and very different rates
- **Criticality tier** — under-renewal on low-consequence assets is a choice; on critical ones it is an exposure
- **Buried versus visible** — visible assets get renewed because failures are embarrassing; buried ones do not until they fail

## Companion measures

| Companion | What it adds |
|---|---|
| Deferred maintenance backlog value | The accumulated stock, where this is the annual flow |
| Assets past assessed useful life, by criticality | Which part of the gap actually matters |
| [Preventive-to-reactive ratio](/kpis/preventive-to-reactive-ratio/) | Whether the operating consequence has started |
| Failures per unit of network | The lagging confirmation, arriving years later |

## Data required

- Asset register with class, replacement value, and expected life — see [Asset](/data-entities/asset/)
- Capital expenditure classified as renewal versus new capacity
- Condition data to adjust expected lives, where it exists

**The prerequisite is the register.** Where replacement value is unknown for a material share of
the estate — which is normal for buried infrastructure — the measure can still be computed on the
known portion and reported with the coverage stated. That is far better than not computing it, and
the coverage figure itself makes a case for the register.

## Level variance

- **Federal / state.** Large portfolios with formal capital planning, and highway and bridge condition data mature enough to make this computable today.
- **County.** Bridges and roads well covered by federally driven inspection data; buildings and fleet usually not.
- **Municipal.** **Where the gap is largest and least visible.** Buried water and sewer networks with unknown install dates, renewal cycles routinely in the hundreds of years, and rates set below the renewal requirement — the decision described in [utility operations](/capabilities/utility-operations/) as the most consequential in that capability.
