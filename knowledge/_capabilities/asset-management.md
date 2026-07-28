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

## Where it goes wrong

**Three registers that disagree.** Finance tracks capitalized assets over a threshold, engineering
tracks what it maintains, GIS tracks what has geometry. None is complete and no reconciliation
exists.

**Condition assessed once.** An initial survey, then nothing, so ratings age and the plan built on
them is describing a decade ago.

**Criticality proxied by cost.** A cheap valve whose failure floods a district treated as
low-priority because its replacement value is small.

**Buried assets estimated.** Install dates unknown, material unknown, condition inferred from age
alone — which is defensible only as an interim measure and becomes permanent.

**Handover data never captured.** The new facility is not in the register, so it is not maintained
and not depreciated correctly — the failure described in
[project delivery](/capabilities/project-delivery-and-construction-management/).

**Disposals unrecorded.** The register lists assets sold or demolished years ago, so counts and
valuations are both wrong and the annual reconciliation is a large adjustment.

**Asset management confused with software.** A system procured, populated during implementation,
and decayed within two years because nobody owns the data — the same pattern as the configuration
database in [technology service
management](/capabilities/technology-service-management/).

**No link to level of service.** Condition reported in engineering terms with no statement of what
it means for the service the public receives, so it cannot compete for funding.

## Governance

[Asset Data Integrity & Handover](/governance/asset-data-integrity-and-handover/) — which assigns
the accountability nobody currently holds, and states the sharpest requirement in the cluster:
**a capital project is not complete when the facility opens, it is complete when the asset data is
in the register.** Where that data is a payment milestone with retainage attached, it arrives.

## AI opportunities

[Condition assessment from imagery](/ai-opportunities/condition-assessment-from-imagery/) ·
[Failure prediction from work history](/ai-opportunities/failure-prediction-from-work-history/)

**The order matters more than either technique.** Register, then condition, then prediction — which
is the reverse of the order it is usually attempted in. A model over a register nobody trusts
produces confident wrong answers, and the resulting initiative discredits the approach locally for
years. Imagery addresses surface and linear assets only; it does not touch buried infrastructure,
which is where the largest renewal exposure sits.
