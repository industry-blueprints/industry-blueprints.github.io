---
type: KPI
title: Condition Assessment Currency
description: What share of the estate has a condition rating recent enough to plan
  from — and whether those ratings predict the failures that follow.
resource: https://industry-blueprints.github.io/kpis/condition-assessment-currency/
tags: [kpi, assets, condition, assessment, data-quality, process]

generated: { by: human:jhofmann, at: 2026-07-29T12:30:00Z }
status: draft
stale_after: 2027-07-29
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
measure_class: process

relationships:
  - predicate: measures
    target: /capabilities/asset-management.md
---

## Business purpose

Every renewal decision, criticality tier, and capital ranking rests on condition data. Where that
data is eight years old, the plan describes a different estate — and nothing in the report says so,
because a rating from 2018 looks exactly like a rating from last month.

This measure makes the age of the evidence visible alongside the evidence.

## Definition

> The proportion of assets, weighted by replacement value, whose most recent condition assessment
> falls within the assessment interval defined for their criticality tier.

## Formula

```
Currency = replacement value of assets assessed within interval ÷ total replacement value assessed
```

**Weight by replacement value, not by asset count.** A count treats a bollard and a treatment plant
identically, and since small assets are numerous, a count-based figure is dominated by items whose
condition barely matters.

| Parameter | Guidance |
|---|---|
| Interval | Defined per criticality tier, not uniformly. A critical asset assessed annually and a low-consequence one assessed every ten years can both be current |
| Most recent assessment | Requires a recorded date **and** method. A rating with neither is treated as absent, not as old |
| Denominator | Assets in scope for assessment. Run-to-failure assets excluded deliberately, and the exclusion stated |

## The companion that matters more

Currency tells you the data is fresh. It does not tell you the data is any good.

> **Failures on assets rated in good condition** — the share of failures occurring on assets whose
> most recent rating was in the top two condition bands.

**This is the only validation condition ratings ever get**, and it is essentially never performed.
A high rate means the rating method is not predictive, and every plan built on it — renewal
priority, maintenance strategy, capital ranking — is unreliable regardless of how current the data
is.

| Currency | Predictive validity | Reading |
|---|---|---|
| High | High | The assessment programme is working |
| High | Low | Fresh data, wrong method. Assessing more often will not help |
| Low | High | Method is sound; the programme is under-resourced |
| Low | Low | The plan is not evidence-based, whatever it says |

That second row is the one worth looking for, because it is the case where an organization is
spending real money on assessment and getting nothing from it.

## Segment it

- **By criticality tier** — currency on critical assets is the number that matters; the aggregate is dominated by everything else
- **By asset class** — buried assets will be structurally worse, and saying so is more useful than an average that hides it
- **By assessment method** — inspection, imagery-derived, age-inferred. **Age-inferred is not an assessment** and should be reported separately, not counted as current
- **By source** — assets never assessed at all, distinct from assets assessed long ago

## Reading it honestly

Report **coverage alongside currency**. An organization with condition data on 30% of its estate,
all current, has a currency figure of 100% and knows almost nothing. Coverage and currency together
are the honest statement:

> "We hold condition data on 62% of replacement value. Of that, 71% is within interval. Buried
> assets are 8% covered and are inferred from age."

That sentence is worth more than any single percentage, and it makes its own case for the
assessment budget.

## Data required

- Condition assessments as dated records with method and assessor — see the modelling note in the [data model](/data-models/asset-and-work-management-data-model/)
- Criticality tier and its defined assessment interval
- Replacement value per asset
- Failure records joined to the condition rating held **at the time of failure**, not the current one

That last requirement is why
[Condition Assessment is modelled as an entity rather than a field](/data-entities/asset/). Where
the rating is overwritten each assessment, the predictive validity check cannot be computed at all.

## Level variance

- **Federal / state.** Bridge and pavement condition under federally mandated inspection cycles — the most current and best-validated condition data in government, and a reasonable model for other classes.
- **County.** Bridges covered by the same regime; buildings, fleet, and drainage usually not assessed at all.
- **Municipal.** **Buried infrastructure is the structural exception.** Condition cannot be observed without inspection technology that small systems cannot fund, so age-inference dominates — which is defensible, and only if it is reported as inference rather than as assessment.
