---
type: Capability
title: Debt & Capital Financing
description: Issuing and servicing debt to fund long-lived assets, and managing the
  continuing obligations that arrive with the money.
resource: https://industry-blueprints.github.io/capabilities/debt-and-capital-financing/
tags: [capability, debt, bonds, capital, financing, disclosure]

generated: { by: human:jhofmann, at: 2026-07-27T20:15:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/fund.md
  - predicate: has_participant
    target: /personas/budget-director.md
    note: Owns the debt position and the affordability envelope
  - predicate: has_participant
    target: /personas/elected-official.md
    note: Authorizes issuance, and in many jurisdictions the voters do
---

## Purpose

To finance long-lived assets over a period resembling their useful life, at the lowest sustainable
cost, and to meet every continuing obligation that attaches to the debt for as long as it is
outstanding.

**Issuance is a project; servicing is a thirty-year operating commitment.** The continuing
disclosure and use-of-proceeds obligations run for the life of the bonds, long after the team that
issued them has dispersed.

## Desired outcomes

- Capital plan driving issuance, rather than issuance driving the capital plan
- Debt affordability assessed against a stated policy limit before authorization
- Structure matched to asset life, with no borrowing beyond the life of what it buys
- Proceeds spent on the stated purpose and within any required timeframe
- Continuing disclosure filed accurately and on time, every period
- Refunding opportunities identified rather than discovered

## Key processes

Capital planning and prioritization · affordability analysis · financing method selection ·
authorization and, where required, referendum · rating agency engagement · official statement
preparation and due diligence · pricing and issuance · proceeds management and spend-down
tracking · debt service budgeting and payment · continuing disclosure · arbitrage rebate
compliance · refunding analysis · post-issuance compliance monitoring

## Key data

Debt register with series, structure, covenants, and maturities · debt service schedule by fund ·
authorization and referendum record · official statements and their assumptions · proceeds
accounts with spend-down status by project · covenant and disclosure obligation calendar with
owners · rating history and agency correspondence · capital plan with funding source per project

## Measures

| Measure | Class |
|---|---|
| Debt service as a share of operating revenue, against policy limit | Input |
| True interest cost against comparable issuances | Outcome |
| Continuing disclosure filings submitted on time | Process |
| Proceeds spent within the required period | Process |
| Weighted average maturity against weighted asset life | Process |
| Covenant obligations with a named current owner | Process |
| Refunding savings captured | Outcome |

## Level variance

- **Federal.** Borrowing occurs at the national level; agencies do not issue. The relevant
  capability here is loan and credit programme administration rather than own-account financing.
- **State.** General obligation and revenue debt, frequently with a state bond bank or authority
  that issues on behalf of local entities and pools smaller issuances.
- **County / municipal.** The principal issuers of public debt. Voter authorization is commonly
  required for general obligation debt, statutory debt limits apply, and continuing disclosure to
  the municipal securities market is a federal securities obligation despite being a local
  activity — a mismatch that is the single most common source of trouble.

## Where it goes wrong

**Continuing disclosure lapsing quietly.** The obligation persists for decades; the staff do not.
Missed filings surface at the next issuance, when they are expensive.

**Obligations with no owner.** Covenants, rebate calculations, and spend-down deadlines recorded
in the official statement and nowhere operational. This is the
[obligation tracking](/patterns/obligation-tracking/) problem with a thirty-year tail and
securities-law consequences.

**Borrowing past the asset life.** Twenty-year debt on equipment replaced in eight, so the
jurisdiction pays for two generations of the asset at once.

**Deferred maintenance financed as new capital.** Cheaper to bond a replacement than to fund
upkeep from operations, which is a rational response to budget structure and a poor outcome — see
[build and operate](/domains/build-and-operate/).

**Proceeds unspent past the required period**, triggering rebate liability nobody anticipated.

**Rating engagement as a one-off.** Contact only when issuing, so the narrative is assembled under
deadline rather than maintained.

**Affordability assessed per issuance.** Each one affordable alone; the aggregate position
unexamined until a rating agency examines it.
