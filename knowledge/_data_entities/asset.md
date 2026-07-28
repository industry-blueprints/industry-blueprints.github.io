---
type: Data Entity
title: Asset
description: A discrete thing that is owned, maintained, and eventually renewed — held
  in three registers that disagree, for three audiences that want different answers.
resource: https://industry-blueprints.github.io/data-entities/asset/
tags: [entity, asset, condition, criticality, lifecycle, reconciliation]

generated: { by: human:jhofmann, at: 2026-07-29T11:15:00Z }
status: draft
stale_after: 2027-07-29
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /data-models/asset-and-work-management-data-model.md
  - predicate: used_by
    target: /capabilities/asset-management.md
  - predicate: used_by
    target: /capabilities/capital-planning-and-programming.md
  - predicate: used_by
    target: /capabilities/accounting-and-financial-reporting.md
    note: The financial view — capitalized, valued, depreciated
  - predicate: maps_to
    target: /data-entities/location.md
    note: Every physical asset resolves to a place, and frequently to a network position
---

Defined in the [core model](/data-models/core-public-sector-model/) as "something owned or
maintained, with condition, lifecycle, and location." This page is the full treatment, because
Asset is where the core definition stops being sufficient.

## The three-register problem

**Asset is the clearest example in the library of one entity serving three audiences who each hold
a complete and incompatible answer.**

| View | Holds | Excludes | Because |
|---|---|---|---|
| **Financial** | Capitalized assets above a threshold, with cost, depreciation, and useful life | Anything below the threshold; condition | The purpose is the balance sheet |
| **Operational** | Everything maintained, including low-value items | Non-maintained assets; valuation | The purpose is work management |
| **Spatial** | Everything with geometry — mostly networks and land | Equipment, mechanical plant, contents | The purpose is mapping |

None is wrong for its purpose. The failure is that **nobody owns the difference**, so any figure —
asset count, replacement value, deferred maintenance — can be challenged and none can be defended.

The resolution is not one register serving all three. It is **one authoritative source per asset,
recorded on the asset**, with the other views derived and reconciled on a schedule.

## Attributes that carry weight

| Attribute | Why it matters |
|---|---|
| `asset_id` | The join. Work attaches here, or the asset has no history. |
| `asset_class` | Carries the [maintenance strategy](/processes/preventive-maintenance-planning/) and expected life |
| `parent_asset` | Composition — a pump station contains pumps, which contain motors |
| `authoritative_source` | Which system owns this record; the reconciliation depends on it |
| `install_date`, `material` | The basis for age-derived life where condition cannot be observed |
| `criticality_tier` | Consequence of failure — **not** replacement cost |
| `condition` | Latest rating, with its date and method; history held separately |
| `remaining_life` | Updated from condition, not only decremented by time |
| `replacement_cost` | Current cost to replace, not historical cost |
| `location` | Coordinate, network position, or facility and room |
| `in_service_date`, `disposal_date` | The lifecycle bounds that make counts correct |

## Modelling notes

**Composition matters and is usually flattened.** A treatment plant is an asset; so are its pumps,
and their motors. Work happens at different levels, condition is assessed at different levels, and
renewal is funded at different levels. A flat register forces every question to the wrong altitude.

**Linear assets are not point assets.** A water main is a length with segments, materials that
change along it, and failures at positions. Modelling it as a single asset makes segment-level
renewal impossible; modelling every metre as an asset makes the register unusable. Segmentation by
material and install period is the usual compromise and should be a deliberate decision.

**Buried assets carry an honesty problem.** Install date, material, and condition are frequently
unknown, and the register will contain estimates. Recording them as estimates rather than as
values — with a confidence flag — is what stops a renewal forecast being built on fiction.

**Disposal is a state, not a deletion.** The asset persists with a disposal date, because the work
history, the failures, and the cost attached to it remain evidence about its class.

**Contents are not the building.** Facilities registers routinely blur the structure, its systems,
and the equipment inside it, which makes both maintenance and valuation wrong.

## Where it goes wrong

**No authoritative source recorded.** Three systems, no statement of which one owns the record, so
reconciliation is unresolvable by construction.

**Criticality proxied by replacement cost.** Discussed in the
[data model](/data-models/asset-and-work-management-data-model/), and the most consequential
modelling error in the domain.

**Condition as a field.** Overwritten each assessment, so deterioration rate is invisible and the
rating cannot be compared against the failure that followed it.

**Assets that were never registered.** Delivered by
[construction handover](/capabilities/project-delivery-and-construction-management/) and added at
first failure — so they are unmaintained, undepreciated, and absent from the renewal forecast for
their first several years.

**Disposals unrecorded.** The register lists assets demolished years ago; counts and valuations are
both wrong and the annual reconciliation is a large unexplained adjustment.
