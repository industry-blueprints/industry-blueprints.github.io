---
type: KPI
title: Repeat Finding Rate
description: The share of findings that recur at the same recipient — the sharpest
  available test of whether oversight actually changes anything.
resource: https://industry-blueprints.github.io/kpis/repeat-finding-rate/
tags: [kpi, grants, monitoring, oversight, assurance, process]

generated: { by: human:jhofmann, at: 2026-07-27T14:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county]
measure_class: process

relationships:
  - predicate: measures
    target: /capabilities/internal-audit.md
---

## Business purpose

Almost every oversight function reports findings issued and corrective actions accepted. Both
numbers go up when oversight is working and also when it is theatre. **Repeat findings distinguish
them.**

A finding that recurs means one of two things, and both are actionable: the corrective action was
cosmetic and nobody verified it, or the root cause was never identified. Neither is visible in
the headline oversight statistics.

## Definition

> The proportion of findings issued in a period that are substantively the same as a finding
> previously issued to the same recipient and formally closed.

## Formula

```
Repeat finding rate = repeat findings in period ÷ total findings in period
```

Two parameters carry the whole measure:

| Parameter | Guidance |
|---|---|
| "Substantively the same" | Same underlying requirement and same failure mode. Not the same wording, and not merely the same category |
| "Previously closed" | Only counts if the prior finding was formally resolved. A finding that recurs while its predecessor is still open is one continuing finding, not two |

That second rule matters. Without it, slow remediation looks identical to failed remediation, and
the measure loses its diagnostic power.

## What makes it the sharp one

Read against its companions, it separates cases that otherwise look the same:

| Findings issued | Corrective actions accepted | Repeat rate | Reading |
|---|---|---|---|
| High | High | **Low** | Oversight working — problems found and fixed |
| High | High | **High** | **Closure is cosmetic.** Plans accepted, nothing verified |
| Low | High | Low | Either genuinely clean, or monitoring is too shallow to find anything |
| Low | Low | High | Few findings, and the same ones. Monitoring is looking in one place |

The second row is the common failure and the one no other measure exposes.

## Typical values by maturity level

| Level | Rate | Character |
|---|---|---|
| 1 | Not computable | Findings not tracked to a recipient over time |
| 2 | Unknown, often reported as 0 | Prior findings not linked; each cycle starts fresh |
| 3 | 25–40% | Measured honestly for the first time, and the number is uncomfortable |
| 4 | 10–20% | Verification required before closure; root cause recorded |
| 5 | Under 10% | Risk signals detect the pattern before the finding recurs |

**Expect the level 2 → 3 jump to look like deterioration.** It is the same reporting artefact as
[first contact resolution](/kpis/first-contact-resolution/): the rate did not rise, the ability to
see it did. Warn the audit committee before the first honest report, not after.

## Interpretation guidance

- **A zero repeat rate is almost always a linkage failure**, not excellence. Check whether prior
  findings are linked to the recipient at all.
- **Segment by finding type.** Repeats concentrated in one requirement usually mean the requirement
  is unclear or the guidance is missing — a funder problem, not a recipient problem.
- **Segment by recipient size.** Repeats concentrated among small recipients suggest the conditions
  exceed their capacity, which is a program design finding.
- **Cross-program is the real measure.** A recipient repeating a finding in a different department
  of the same funder is invisible unless risk attaches to the
  [Party rather than the award](/data-models/grants-data-model/).

## Data required

Findings with recipient, requirement, failure mode, and issue date · corrective actions with
verification state and closure date · recipient identity resolved across programs and departments

The last item is the binding constraint, and it is a data governance problem rather than a
monitoring one.

## Common data-quality concerns

- Findings recorded as free text, so "substantively the same" cannot be evaluated
- Recipient identity unresolved across programs, so cross-program repeats never surface
- Findings closed on receipt of a plan, so "previously closed" means nothing
- Single-audit findings held separately from monitoring findings, splitting the population
