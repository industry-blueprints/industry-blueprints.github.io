---
type: Governance Control
title: Asset Data Integrity & Handover
description: Who owns the asset record, how three registers stay reconciled, and the
  obligation that a new asset arrives with its data.
resource: https://industry-blueprints.github.io/governance/asset-data-integrity-and-handover/
tags: [governance, assets, data-quality, handover, reconciliation, stewardship]

generated: { by: human:jhofmann, at: 2026-07-29T13:00:00Z }
status: draft
stale_after: 2027-07-29
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: constrains
    target: /capabilities/asset-management.md
  - predicate: constrains
    target: /capabilities/project-delivery-and-construction-management.md
  - predicate: constrains
    target: /capabilities/capital-planning-and-programming.md
---

## What this control exists for

The asset register underwrites the capital programme, the maintenance programme, and the financial
statements. When it is wrong, all three are wrong in ways nobody can detect from inside them — and
because three functions each hold a partial version, **no one is accountable for the whole record
being right.**

This control assigns that accountability and sets the two obligations that keep the register from
decaying: reconciliation on a schedule, and data delivered at handover.

## The stewardship assignment

| Concern | Owner | Accountable for |
|---|---|---|
| The asset record as a whole | Asset steward — a named role, not a committee | The register being correct and reconciled |
| Financial view | Finance | Capitalization, valuation, depreciation |
| Operational view | Maintenance | What is maintained, condition, work history |
| Spatial view | GIS | Geometry, network position, spatial accuracy |
| Each individual asset | One authoritative source system, **recorded on the asset** | Being the answer when the views disagree |

The last row is the operative one. Reconciliation is only decidable when each asset states which
system owns it. Without it, disagreement between registers has no resolution procedure and is
settled by whoever is in the room.

## Rules

- Every asset records its authoritative source system.
- The three views are reconciled on a defined cycle, with the variance reported rather than
  silently corrected.
- **Reconciliation variance is a reported measure**, not an internal housekeeping task — an
  unexplained gap between the financial and operational registers is a finding.
- Condition ratings carry a date, a method, and an assessor. A rating missing any of the three is
  treated as absent rather than as old.
- Criticality is assigned from consequence of failure and **may not** be derived from replacement
  cost.
- Assets enter the register at handover, before the warranty period begins.
- Disposals are recorded at disposal, as a state change rather than a deletion.
- Estimated attributes — install date, material, condition inferred from age — are flagged as
  estimates and are not presented as assessments. See
  [condition assessment currency](/kpis/condition-assessment-currency/).

## The handover obligation

**A capital project is not complete when the facility opens. It is complete when the asset data is
in the register.**

This is the control's sharpest requirement and the one most often absent, because handover is
treated as a construction milestone rather than a data obligation. The consequence is described in
[project delivery](/capabilities/project-delivery-and-construction-management/): the facility opens
and the maintenance team has no equipment list, no serial numbers, no warranty dates, and no
manuals.

Required at handover, as a condition of final acceptance:

- Asset list to the agreed hierarchy, with classes assigned
- Identifiers, manufacturers, models, serial numbers
- Location and, for linear and buried assets, geometry and network position
- Warranty terms and **expiry dates**, tracked as obligations — see
  [obligation tracking](/patterns/obligation-tracking/)
- Manuals, as-builts, and maintenance requirements
- Recommended maintenance strategy and initial intervals per asset class
- Spare parts list

**Make the data a payment milestone.** Where asset data is a deliverable with retainage attached,
it arrives. Where it is a request after final payment, it does not — which is the same lesson as
[acceptance authorizing payment](/data-models/procurement-data-model/) in the procurement model,
applied to information rather than to goods.

## Evidence required

- Named asset steward, with the assignment recorded
- Reconciliation performed on cycle, with variance reported
- Handover data packages accepted against a checklist, before final payment
- Condition ratings complete with date, method, and assessor
- Criticality assessments with the consequence basis recorded
- Estimated attributes flagged as estimates
- Disposal records for assets no longer held

## Level variance

- **Federal / state.** Formal inventory and reporting requirements, with capital asset reconciliation
  examined during the annual audit — which gives the financial view an enforcement mechanism the
  operational view lacks.
- **County / municipal.** **No enforcement mechanism on the operational register at all.** The
  financial view is audited; the maintenance and spatial views are not, so they decay first and
  the reconciliation is discovered to be impossible during the next asset management
  implementation. Small jurisdictions frequently have no asset steward, which is the gap this
  control exists to name.
