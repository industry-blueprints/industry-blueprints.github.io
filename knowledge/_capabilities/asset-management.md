---
type: Capability
title: Asset Management
description: Knowing what is owned, its condition, its remaining life, and what it will
  cost to keep serviceable — the evidence base the rest of the domain depends on.
resource: https://industry-blueprints.github.io/capabilities/asset-management/
tags: [capability, asset-management, condition, lifecycle, infrastructure, criticality]

generated: { by: human:jhofmann, at: 2026-07-28T11:15:00Z }
status: draft
stale_after: 2027-07-28
depth: complete

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/build-and-operate.md
  - predicate: has_participant
    target: /personas/asset-manager.md
    note: Owns the register and the reconciliation between three views of it
  - predicate: has_participant
    target: /personas/budget-director.md
    note: Asset condition is a financial position, and is reported as one or not at all
  - predicate: has_participant
    target: /personas/chief-data-officer.md
    note: The asset register is master data with the same ownership problems as any other
  - predicate: uses_data
    target: /data-entities/location.md
---

## Purpose

To maintain an authoritative record of the physical assets the organization owns — what they are,
where they are, their condition, their remaining useful life, their criticality, and the cost of
keeping them serviceable.

**This capability supplies the evidence for
[capital planning](/capabilities/capital-planning-and-programming/),
[maintenance](/capabilities/maintenance-management/), and the financial statements simultaneously,
and is usually maintained for none of them.** Where it exists at all it is frequently three
registers — finance's, engineering's, and the maintenance system's — that disagree.

## Desired outcomes

- One asset register, reconciled across financial, operational, and spatial views
- Condition assessed on a defined cycle using a consistent rating method
- Criticality assigned by consequence of failure, not by replacement value
- Remaining useful life estimated and updated from observed condition
- Renewal need forecast over a horizon long enough to plan against
- Asset data captured at construction handover rather than reconstructed later
- Disposal recorded, so the register reflects what is actually owned

## Processes

[Asset Inventory & Condition Assessment](/processes/asset-inventory-and-condition-assessment/) ·
[Failure Analysis & Renewal Referral](/processes/failure-analysis-and-renewal-referral/)

Also: valuation and depreciation for financial reporting · level-of-service linkage · data capture
at handover from [construction](/capabilities/project-delivery-and-construction-management/) ·
disposal and retirement · register audit

## Data

[Asset & Work Management Data Model](/data-models/asset-and-work-management-data-model/), extending
the [core model](/data-models/core-public-sector-model/).
[Asset](/data-entities/asset/) is promoted from a core definition to a full entity here, because
this is the capability that needs its attributes — and the modelling decision that matters most is
that **Condition Assessment is a dated entity, not a field.** Overwritten each survey, deterioration
rate is invisible and the rating cannot be compared against the failure that followed it.

## Key data

Asset register with hierarchy, class, install date, cost, and
[location](/data-entities/location/) · condition ratings with assessment date and method ·
criticality tier with the consequence assessment behind it · remaining useful life and replacement
cost estimates · maintenance history linked from the work management system · valuation and
accumulated depreciation · warranty and manufacturer data · spatial geometry from
[GIS](/capabilities/geospatial-information-management/) · disposal records

## Measures

| Measure | Class |
|---|---|
| [Condition assessment currency](/kpis/condition-assessment-currency/) | Process |
| [Renewal rate against replacement value](/kpis/renewal-rate-against-replacement-value/) | Outcome |
| Register reconciliation variance between financial and operational views | Process |
| Assets past assessed useful life, by criticality | Outcome |
| Replacement value of assets in poor or failed condition | Outcome |
| New assets registered at handover rather than later | Process |
| Failures on assets rated good condition | Outcome |

**Failures on assets rated in good condition is the measure that validates the condition method.**
A high rate means the ratings are not predictive, and every plan built on them is unreliable.

## Level variance

- **Federal.** Extremely large real property and infrastructure portfolios with formal inventory
  and disposal requirements, and considerable excess property.
- **State.** Highway and bridge inventories under federally mandated inspection and condition
  reporting regimes — the most mature asset condition data in government, by a wide margin.
- **County.** Bridges, roads, and facilities under the same federal bridge inspection regime, with
  much less capacity to act on what it reports.
- **Municipal.** **The largest hidden exposure is buried infrastructure**: water and sewer mains
  whose condition can only be inferred, whose install dates are frequently unknown, and whose
  failure is the most disruptive event a small jurisdiction faces.

## What good looks like here

**Reconcile the three registers into one.** Finance tracks capitalized assets over a threshold,
engineering tracks what it maintains, GIS tracks what has geometry. Left unreconciled, none is
complete.

**Reassess condition on a defined cycle, not once.** An initial survey followed by nothing lets
ratings age until the plan built on them describes a decade ago.

**Set criticality by consequence of failure, not by cost.** A cheap valve whose failure floods a
district needs to be treated as high-priority regardless of its small replacement value.

**Invest in real data on buried assets rather than treating estimates as permanent.** Install
dates unknown, material unknown, condition inferred from age alone is defensible only as an
interim measure.

**Capture handover data at construction completion.** A new facility missing from the register is
not maintained and not depreciated correctly — the failure described in
[project delivery](/capabilities/project-delivery-and-construction-management/).

**Record disposals as they happen.** A register listing assets sold or demolished years ago makes
counts and valuations both wrong and turns the annual reconciliation into a large adjustment.

**Treat asset management as a data discipline, not a software purchase.** A system procured and
populated during implementation decays within two years if nobody owns the data afterward — the
same pattern as the configuration database in [technology service
management](/capabilities/technology-service-management/).

**Link condition to level of service.** Reporting condition only in engineering terms, with no
statement of what it means for the service the public receives, leaves it unable to compete for
funding.

## Governance

[Asset Data Integrity & Handover](/governance/asset-data-integrity-and-handover/) — which assigns
the accountability nobody currently holds, and states the sharpest requirement in the cluster:
**a capital project is not complete when the facility opens, it is complete when the asset data is
in the register.** Where that data is a payment milestone with retainage attached, it arrives.

## AI integrations

[Condition assessment from imagery](/ai-integrations/condition-assessment-from-imagery/) ·
[Failure prediction from work history](/ai-integrations/failure-prediction-from-work-history/)

**The order matters more than either technique.** Register, then condition, then prediction — which
is the reverse of the order it is usually attempted in. A model over a register nobody trusts
produces confident wrong answers, and the resulting initiative discredits the approach locally for
years. Imagery addresses surface and linear assets only; it does not touch buried infrastructure,
which is where the largest renewal exposure sits.
