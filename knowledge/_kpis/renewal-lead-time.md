---
type: KPI
title: Renewal Lead Time
description: How long before expiry the renewal decision is actually made — the
  measure that determines whether the organization has options or only a default.
resource: https://industry-blueprints.github.io/kpis/renewal-lead-time/
tags: [kpi, contracts, renewal, planning, process]

generated: { by: human:jhofmann, at: 2026-07-27T16:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
measure_class: process

relationships:
  - predicate: measures
    target: /capabilities/contract-administration.md
---

## Business purpose

A renewal decision made three weeks before expiry is not a decision. There is no time to compete,
so the only available action is extension — and the supplier knows it.

**The negotiating position is set entirely by lead time.** This measure is the cheapest available
lever on contract value, and almost nobody tracks it.

## Definition

> Days between the recorded renewal decision and the contract expiry date, measured against the
> lead time that category actually requires to compete.

The comparison is the point. A number in isolation means nothing: 60 days is comfortable for a
purchase against an existing vehicle and hopeless for a competitive service contract.

## Formula

```
Renewal lead time = decision_date − expiry_date          (negative days before expiry)
Adequacy          = actual lead time ÷ required lead time for that category
```

Report **adequacy below 1.0** as the headline: the share of renewals decided with less time than
competing would take.

## Why the decision date is derived, not chosen

The renewal decision date is **expiry minus the time a competition takes** — not a date someone
picks. If competing takes four months, the decision point is five months before expiry.

Systems that store only the expiry date guarantee this failure structurally. The derived decision
date, in a queue, with an owner, is the entire fix. See
[Contract](/data-entities/contract/).

## Typical values by maturity level

| Level | Character |
|---|---|
| 1 | Renewals discovered at or after expiry; extensions retroactive |
| 2 | Expiry dates known; decision typically 0–60 days out. Extension is the default outcome |
| 3 | Derived decision dates in a queue; adequacy measured; most renewals decided in time |
| 4 | Performance evidence assembled automatically for the decision; recompete is a real option |
| 5 | Category strategies mean the renewal decision is made against a plan, not per contract |

## Interpretation guidance

- **Segment by value and category.** Short lead time on a low-value vehicle purchase is fine;
  on a major service contract it is a material loss of leverage.
- **Track extension rate alongside.** Rising extensions with falling lead time is the signature
  pattern — the organization is not choosing to extend, it is running out of time to do anything
  else.
- **Watch the decision, not the paperwork.** Recording the date the amendment executed rather than
  the date the decision was made hides the problem.
- **A suspiciously good number** usually means renewal decisions are recorded at the moment they
  are documented, not when they were genuinely made — or that "decision" means "someone confirmed
  we're renewing," which was never in question.
- **Read against supplier performance records.** A renewal decided with adequate lead time and no
  performance evidence is only marginally better than one decided late.

## Data required

Contract expiry dates · derived decision dates · recorded renewal decisions with date and outcome ·
category-level required lead time · extension records · contract value band

**Category-level required lead time is the item nobody holds.** It has to be established once,
per category, from actual cycle-time data — see
[procurement cycle time](/kpis/procurement-cycle-time/). Without it, adequacy cannot be computed
and the measure degrades to a raw day count.

## Common data-quality concerns

- Only expiry stored; no derived decision date, so lead time is unmeasurable
- Auto-renewing contracts excluded from the population entirely — these are the highest-risk ones
- Decision date recorded as execution date
- Multi-option contracts counted once rather than per option period
- Required lead time asserted rather than derived from observed cycle times
