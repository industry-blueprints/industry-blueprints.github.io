---
type: KPI
title: Competition Rate
description: How many credible suppliers actually respond — the health measure for
  a market the organization depends on and can damage without noticing.
resource: https://industry-blueprints.github.io/kpis/competition-rate/
tags: [kpi, procurement, competition, market, supplier-access, output]

generated: { by: human:jhofmann, at: 2026-07-27T16:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
measure_class: output

relationships:
  - predicate: measures
    target: /capabilities/sourcing-and-solicitation.md
---

## Business purpose

Competition is the mechanism by which public procurement obtains value. When it declines, prices
rise and quality falls — but slowly, invisibly, and with no single event to point at.

The decline is also **caused by the buyer far more often than by the market**: over-specified
requirements, disproportionate bid burden, slow payment, poor debriefs, and a reputation for
predetermined outcomes all reduce who bothers to respond. This measure is the feedback loop for
behaviour the organization controls.

## Definition

> The average number of responsive submissions per competitive solicitation, and the share of
> solicitations receiving fewer than a defined minimum.

Report both. The average conceals the tail, and the tail is the problem: an average of 3.4 is
consistent with half of all competitions receiving one bid.

## Formula

```
Competition rate      = responsive submissions ÷ competitive solicitations
Thin competition rate = solicitations with < 3 responsive submissions ÷ competitive solicitations
```

**Responsive submissions**, not submissions. A bid that fails a mandatory requirement did not
create competitive pressure.

## Companion measures

Competition rate alone can be gamed by counting weak bids. Read it with:

| Measure | Detects |
|---|---|
| Thin competition rate | The tail hidden by the average |
| Sole-source share of spend | Competition avoided rather than lost |
| First-time bidder share | Whether the pool is refreshing or ossifying |
| Incumbent win rate | Whether re-competition is genuine |
| Withdrawal rate after notice | Suppliers who looked, then declined — the clearest signal of a foreclosed spec |

**Incumbent win rate** deserves particular attention. A high rate is not automatically wrong —
incumbents genuinely have advantages, some legitimate — but a rate near 100% across a category
means re-competition is ceremonial.

## Typical values by maturity level

| Level | Character |
|---|---|
| 1 | Not measured; competition assessed impressionistically |
| 2 | Counted per solicitation, not trended; thin competitions unremarked |
| 3 | Trended by category; thin competitions trigger a requirement review |
| 4 | Outreach measured and managed; first-time bidder share tracked |
| 5 | Market health managed per category, with deliberate supplier development |

## Interpretation guidance

- **Segment by category.** Some markets genuinely have few suppliers. A specialized engineering
  service with two bidders is a market fact; office supplies with two bidders is a buyer problem.
- **Investigate every single-bid competition.** Not as an exception to be approved, but as a
  diagnostic. The requirement, the timeline, or the terms usually explain it.
- **Ask the non-bidders.** The suppliers who viewed and declined know exactly why, and almost
  nobody asks them. This is the highest-value and cheapest research available in the domain.
- **Read against [procurement cycle time](/kpis/procurement-cycle-time/).** Long cycles and thin
  competition together usually mean bid cost is too high relative to win probability.
- **A high number is not automatically good.** Many weak bids can mean the requirement is unclear,
  which pushes cost into evaluation.

## Data required

Solicitations with category, value band, and method · submissions with responsiveness
determination · supplier identity resolved across solicitations · notice views or downloads where
the platform captures them · incumbent flag per solicitation

**Notice views against submissions** is the most useful and least commonly held item: it separates
"nobody saw it" from "they saw it and declined," which are entirely different problems with
entirely different fixes.

## Common data-quality concerns

- Non-responsive bids counted, inflating the rate
- Supplier identity unresolved, so first-time bidder share is unreliable
- Cooperative purchases counted as competitions, when the competition happened years earlier
- Cancelled solicitations excluded, hiding the ones that failed for lack of interest
- Incumbency not flagged, so re-competition health is invisible
