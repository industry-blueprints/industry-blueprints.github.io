---
id: debt-and-capital-financing
title: Debt & Capital Financing
type: capability
level: 2
version: '0.1'
status: draft
description: Issuing and servicing debt to fund long-lived assets, and managing the
  continuing obligations that arrive with the money.
last_updated: '2026-08-11'
capability_area: fund
industries:
- public-sector
tracks:
- business
- experience-process
- information
- architecture
- trust-governance
- ai-automation
relationships:
  builds_on: []
  personas: []
  adds: []
---

## Business definition
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

## Lifecycle
Capital planning and prioritization · affordability analysis · financing method selection ·
authorization and, where required, referendum · rating agency engagement · official statement
preparation and due diligence · pricing and issuance · proceeds management and spend-down
tracking · debt service budgeting and payment · continuing disclosure · arbitrage rebate
compliance · refunding analysis · post-issuance compliance monitoring

## Domain model
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

## What to watch for

**Keep continuing disclosure current across staff turnover.** The obligation persists for decades;
the staff do not, and missed filings surface at the next issuance, when they are expensive.

**Give every obligation a named owner.** Covenants, rebate calculations, and spend-down deadlines
recorded in the official statement and nowhere operational are the
obligation tracking problem with a thirty-year tail and
securities-law consequences.

**Match borrowing term to asset life.** Twenty-year debt on equipment replaced in eight has the
jurisdiction paying for two generations of the asset at once.

**Fund upkeep from operations rather than bonding deferred maintenance as new capital.** Bonding a
replacement is cheaper in the moment than funding upkeep, which is a rational response to budget
structure and a poor outcome — see [build and operate](/capability-areas/build-and-operate/).

**Spend proceeds within the required period.** Left unspent past it, they trigger rebate liability
nobody anticipated.

**Maintain the rating narrative continuously, not just at issuance.** Contact only when issuing
means the narrative gets assembled under deadline rather than maintained.

**Assess affordability at the aggregate level, not just per issuance.** Each issuance can look
affordable alone while the aggregate position goes unexamined until a rating agency examines it.
## Architecture

The architecture boundary for this capability follows the responsibilities, lifecycle, and
information described above. A dedicated architecture artifact has not yet been developed for
this inventory entry.

## Trust and governance

Trust concerns include authority to act, access to operational records, accountable decisions,
retention, and an auditable history. Applicable controls vary with the workload, jurisdiction,
and information sensitivity; a dedicated trust model has not yet been developed for this draft.

## AI and automation

AI and automation opportunities have not yet been evaluated for this capability. Future
patterns remain bounded by the authority, access, decision, and audit controls of the
underlying work.
