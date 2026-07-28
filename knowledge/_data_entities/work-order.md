---
type: Data Entity
title: Work Order
description: An authorized job against an asset — and the completion record that is the
  only evidence anything was learned from doing it.
resource: https://industry-blueprints.github.io/data-entities/work-order/
tags: [entity, work-order, maintenance, completion, field-service, history]

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
    target: /capabilities/work-order-and-field-service-management.md
  - predicate: used_by
    target: /capabilities/maintenance-management.md
  - predicate: used_by
    target: /capabilities/facilities-operations.md
  - predicate: used_by
    target: /capabilities/fleet-management.md
---

The unit of work in the physical domain, and the record that determines whether the organization
learns anything from performing it.

## Completion is not a status

**The single most consequential attribute decision in this entity is what "complete" requires.**

Where completion is a status flag, the work order records that a job finished and nothing else.
Where completion requires **actual labour, parts consumed, findings, and condition observed**, the
same job produces the evidence that makes planning, costing, failure analysis, and renewal
forecasting possible.

The difference in field effort is a few minutes. The difference in what the organization can answer
a year later is total.

| Without | With |
|---|---|
| "Pump 3 repaired, closed" | 4.5 hours, two crew, seal kit and bearing, cause coded as bearing failure, adjacent coupling showing wear |
| No duration history → estimates from guesswork | Estimates from actuals |
| No cost per asset | Cumulative repair cost against replacement cost |
| No failure pattern | Class-level cause analysis |
| No renewal trigger | Automatic referral at threshold |

## Attributes that carry weight

| Attribute | Why it matters |
|---|---|
| `asset_id` | **The join.** Without it the work has no history and the asset has no record. |
| `work_request_id` | Links back to the reports that triggered it, for notification and de-duplication |
| `work_type` | Preventive, corrective, emergency, capital, inspection — the basis of the [preventive-to-reactive ratio](/kpis/preventive-to-reactive-ratio/) |
| `priority` | Derived from consequence and asset criticality, not from the reporting channel |
| `status` | Including **planned-not-ready** as a real state, distinct from scheduled |
| `planned_*` vs `actual_*` | Labour, parts, duration — both, or estimates never improve |
| `findings` | What was actually found, distinct from what was done |
| `condition_observed` | Recorded even when unchanged, because absence of change is evidence |
| `cause_code` | On corrective work — the input to [failure analysis](/processes/failure-analysis-and-renewal-referral/) |
| `location` | Coordinate or asset reference, never free text |
| `safety_prerequisites` | Locates, permits, isolation — verified on site, with the verification recorded |

## Modelling notes

**Planned versus actual on every resource field.** Two columns rather than one is what turns the
work order from a dispatch instruction into a feedback mechanism. Systems that overwrite the plan
with the actual lose the comparison, which is the whole value.

**Work type drives the most-used measure in the domain**, so its taxonomy needs deciding
deliberately. Emergency corrective and scheduled corrective are different things; capital work
performed by maintenance crews should be separable from maintenance.

**Findings are not the resolution.** "Replaced seal" is the resolution. "Seal failed early, shaft
scoring present, likely misalignment" is the finding — and only the second one is useful to anyone
later.

**A work order can exist without a work request** (preventive, inspection-generated) and a work
request can close without a work order (duplicate, referred, no action). The relationship is
optional in both directions and modelling it as mandatory breaks both cases.

**Multi-visit jobs need a parent.** A job requiring three visits is one work order with three
executions, not three work orders — otherwise first-visit completion is unmeasurable and the asset
history triple-counts.

## Where it goes wrong

**No asset on the work order.** The defect that makes the whole domain's data unusable, and it is
usually optional at the point of capture.

**Actuals never captured**, so [planning](/processes/work-order-planning-and-scheduling/) estimates
from guesswork permanently.

**Status recorded, findings not.** Discussed above.

**Free-text location.** Work that cannot be mapped, aggregated, or matched to prior work at the
same place.

**Safety prerequisites recorded at planning only.** Arranged is not verified; verification happens
on site, by the crew, at the time — see
[work authorization and safety prerequisites](/governance/work-authorization-and-safety-prerequisites/).

**Separate work order entities per department.** Water's, streets', facilities', and fleet's, with
different fields and no shared history — which is why a crew working across two carries two devices.
