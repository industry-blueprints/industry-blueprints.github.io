---
type: KPI
title: Time to Award
description: Elapsed days from the close of a funding opportunity to executed award —
  the delay recipients feel and funders rarely measure by stage.
resource: https://industry-blueprints.github.io/kpis/time-to-award/
tags: [kpi, grants, cycle-time, process]

generated: { by: human:jhofmann, at: 2026-07-27T14:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county]
measure_class: process

relationships:
  - predicate: measures
    target: /capabilities/grants-management-outbound.md
---

## Business purpose

The elapsed time between an applicant submitting and being able to start work. Long cycles are
not merely inefficiency: staff who would have delivered the program take other jobs, matching
commitments expire, partners withdraw, and the need the program addressed has moved on.

## Definition

> Calendar days from the funding opportunity closing date to the date the award agreement is fully
> executed, measured across all successful applications in a cycle.

Three parameters to pin down, because disagreements about this measure are usually about one of them:

| Parameter | Common choice | Why it matters |
|---|---|---|
| End point | Executed agreement | "Announced" flatters by weeks; the recipient cannot spend on an announcement |
| Population | Successful applications | Including unsuccessful ones mixes two different processes |
| Clock pauses | None | Pausing for applicant response hides a delay the applicant also experiences |

## Formula

```
Time to award = median( execution_date − opportunity_close_date )  over awards in cycle
```

**Median, not mean.** One award delayed nine months by a protest or a funding hold distorts a mean
and tells you nothing about the typical experience.

## Measure by stage or do not bother

The total is a diagnosis-free number. The actionable version splits it:

| Stage | Typical share | Usually |
|---|---|---|
| Close → eligibility and completeness screened | 10–20% | Manual document checking |
| Screened → reviews returned | 30–45% | **Usually the largest, and volunteer-constrained** |
| Reviews returned → panel concluded | 10–20% | Scheduling |
| Panel → approval per delegated authority | 10–20% | Queueing for a signature |
| Approval → agreement executed | 15–25% | Legal review and countersignature |

Organizations that measure only the total tend to optimize the visible stages rather than the
binding one.

## Typical values by maturity level

Indicative, for workshop orientation — not benchmarks:

| Level | Total | Character |
|---|---|---|
| 1 | Not measured | Anecdote |
| 2 | 120–180 days | Paper or email-based, unpredictable |
| 3 | 75–120 days | Structured intake, measured, stages visible |
| 4 | 45–80 days | Automated screening; review is the remaining constraint |
| 5 | 30–60 days | Standing reviewer pools, rolling or staged windows |

## Interpretation guidance

- **Segment by award size.** A small award going through the same 100-day process as a large one
  is a proportionality failure, and it is invisible in the aggregate.
- **Read alongside [first-time applicant share](/kpis/first-time-applicant-share/).** Fast cycles
  achieved by funding only known applicants are not an improvement.
- **A suspiciously good number** usually means the population excludes something — non-competitive
  or continuation awards counted alongside competed ones, or the clock started at "review begins"
  rather than at close.
- **Watch the variance, not just the median.** Predictability matters to a recipient planning
  hiring almost as much as speed.

## Data required

Opportunity close dates · application submission and screening timestamps · review assignment and
return dates · panel and approval dates · agreement execution dates · award size and type

Stage timestamps are the constraint. Most organizations have the endpoints and nothing between,
which is why the measure is reported as a total and never acted on.

## Common data-quality concerns

- Execution date recorded as the signature date on the document rather than when it was countersigned
- Continuation and non-competitive awards mixed into a competitive population
- Cycles with a funding hold or protest not flagged, so they distort the distribution
- Re-opened opportunities counted as one cycle or two, inconsistently
