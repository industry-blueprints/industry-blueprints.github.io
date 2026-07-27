---
type: KPI
title: Subrecipient Monitoring Coverage
description: Whether the monitoring that was planned actually happened — measured
  against assessed risk rather than against a headcount of visits.
resource: https://industry-blueprints.github.io/kpis/subrecipient-monitoring-coverage/
tags: [kpi, grants, monitoring, risk, oversight, process]

generated: { by: human:jhofmann, at: 2026-07-27T14:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county]
measure_class: process
---

## Business purpose

A pass-through entity remains accountable for funds it did not spend. Monitoring is the mechanism.
This measure asks whether the mechanism was actually operated — and, critically, **whether it was
operated where the risk was.**

## Definition

> The proportion of planned monitoring activities completed within the period, weighted by the
> assessed risk tier of the recipient.

The weighting is the point. A raw completion percentage is easily satisfied by doing all the easy
low-risk desk reviews and none of the high-risk site visits, which produces a healthy number and
no assurance.

## Formula

```
Coverage = Σ (completed activities × tier weight) ÷ Σ (planned activities × tier weight)
```

Report it **alongside the unweighted rate and a per-tier breakdown**, because the aggregate can
conceal exactly the failure it is designed to detect:

| | Planned | Completed | Rate |
|---|---|---|---|
| High risk | 12 | 5 | **42%** |
| Medium risk | 30 | 27 | 90% |
| Low risk | 95 | 93 | 98% |
| **Unweighted total** | 137 | 125 | **91%** |

91% looks like a functioning oversight programme. It is not.

## What it does not measure

**Coverage is not effectiveness.** A completed desk review that read nothing meaningful counts
identically to one that found a material problem. Read this measure against
[repeat finding rate](/kpis/repeat-finding-rate/), which is the effectiveness companion — high
coverage with high repeats means monitoring is happening and not working.

## Typical values by maturity level

| Level | Character |
|---|---|
| 1 | No monitoring plan; coverage undefined |
| 2 | Uniform calendar-driven monitoring; coverage reported as a raw count, usually high |
| 3 | Risk tiers assigned and a plan exists; weighted coverage measured, and high-risk gaps become visible |
| 4 | Risk reassessed on signals during the period; plan adjusts and coverage follows |
| 5 | Continuous signal monitoring; scheduled activity concentrates where signals warrant |

The level 2 → 3 transition again produces an apparent decline: uniform monitoring reports ~95%
coverage; risk-weighted coverage against a real plan reveals the high-risk gap.

## Interpretation guidance

- **Per-tier reporting is mandatory**, not optional. The aggregate is misleading by construction.
- **Check when in the period activity happened.** Monitoring concentrated at period end finds
  problems after the money is spent, when the only remedy is repayment.
- **A coverage rate near 100% with few findings** usually means the activities are shallow, not
  that recipients are compliant.
- **Watch plan revisions.** A plan quietly reduced mid-period produces excellent coverage against
  a target that moved. Measure against the plan as it stood at the start.

## Data required

Recipient risk assessments with tier and date · monitoring plan with planned activity type and
target date · completed activities with date and scope · plan revision history

**Plan revision history is the item most often missing** and the one that makes the measure
gameable without it.

## Common data-quality concerns

- Risk tiers assigned at award and never revisited, so the weighting reflects stale assessment
- Monitoring activities recorded only when a finding results, understating completed work
- Single-audit review counted as monitoring without its scope being recorded
- Desk review and site visit weighted equally despite very different assurance value
