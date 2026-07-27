---
type: KPI
title: First-Time Applicant Share
description: Whether the funding programme reaches beyond the organizations that
  already know how to apply — the clearest available equity-of-access measure.
resource: https://industry-blueprints.github.io/kpis/first-time-applicant-share/
tags: [kpi, grants, equity, access, competition, output]

generated: { by: human:jhofmann, at: 2026-07-27T14:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county]
measure_class: output
---

## Business purpose

Grant programmes reliably drift toward funding the organizations best at applying rather than
best at delivering. The drift is gradual, invisible in any per-cycle report, and rational at every
individual step — a known applicant is a lower-risk award.

This measure makes the drift visible.

## Definition

> The proportion of applications received, and separately of awards made, from organizations that
> have not previously applied to this funder within a defined lookback period.

**Both numerators matter, and the gap between them is the finding.**

| Pattern | Reading |
|---|---|
| Low application share | The notice is not reaching new organizations. An outreach problem |
| High application share, low award share | New applicants apply and lose. A criteria or capacity-proxy problem |
| Both healthy | The programme is genuinely open |

The second row is the common and most instructive case: outreach worked, and the evaluation
criteria reward prior grant experience — often implicitly, through requirements for audited
financials, evaluation plans, or letters of commitment.

## Formula

```
First-time application share = first-time applicants ÷ total applicants
First-time award share       = first-time awardees   ÷ total awardees
```

Lookback of three to five years is typical. State it, because the number is meaningless without it.

## Typical values by maturity level

Indicative, and highly programme-dependent:

| Level | Character |
|---|---|
| 1 | Not measured; applicant identity not resolved across cycles |
| 2 | Computable in principle, not computed. The same organizations recur and nobody has noticed |
| 3 | Measured; the concentration becomes visible and is usually higher than expected |
| 4 | Deliberate outreach and proportionate requirements; application share rises |
| 5 | Award share approaches application share — new entrants win on merit |

## Interpretation guidance

- **Segment by award size.** New applicants concentrating in small awards while large awards go
  to incumbents is a specific and addressable pattern.
- **Segment by organization size and geography**, which is where access problems actually live.
- **A high first-time share is not automatically good.** If first-time awardees subsequently
  generate disproportionate findings, the programme is admitting organizations without the support
  to comply — an argument for technical assistance, not for tightening criteria.
- **Read against [time to award](/kpis/time-to-award/).** Fast cycles achieved by funding known
  applicants are not an improvement.
- **The measure this pairs with is completeness rejection rate by applicant history.** If
  first-time applicants are screened out administratively at a higher rate, the cure period is the
  fix — see [funding notice and application intake](/processes/funding-notice-and-application-intake/).

## Data required

Applicant organizations resolved to a stable identity across cycles and programmes · application
and award history with dates · organization size and location · award amounts

**Identity resolution is the binding constraint.** An applicant recorded as free text cannot be
recognized as a returning organization, so this measure is uncomputable in most systems — the
same [data governance](/capabilities/data-governance-and-stewardship/) problem that blocks
[repeat finding rate](/kpis/repeat-finding-rate/).

## Common data-quality concerns

- Applicant name variations counted as distinct organizations, inflating first-time share
- Organizations that applied to a different programme within the same funder counted as first-time
- Fiscal sponsors recorded as the applicant, masking the actual delivering organization
- Lookback period changed without restating the series
