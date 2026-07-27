---
type: Capability
title: Hazard Identification & Risk Assessment
description: Understanding what could go wrong locally, how likely it is, and who would
  be most affected — the last part being the one usually omitted.
resource: https://industry-blueprints.github.io/capabilities/hazard-identification-and-risk-assessment/
tags: [capability, hazard, risk-assessment, mitigation, vulnerability, planning]

generated: { by: human:jhofmann, at: 2026-07-28T14:00:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal, tribal]

relationships:
  - predicate: part_of
    target: /domains/protect.md
  - predicate: has_participant
    target: /personas/program-manager.md
  - predicate: has_participant
    target: /personas/constituent.md
    note: Social vulnerability determines who is harmed, and is knowable before the event
  - predicate: uses_data
    target: /data-entities/location.md
---

## Purpose

To identify the hazards that could affect the jurisdiction, assess their likelihood and
consequence, understand who and what is exposed, and produce the evidence that mitigation and
preparedness decisions are made from.

**Exposure and vulnerability are different, and the second is the one that is skipped.** Two
neighbourhoods in the same flood zone have the same exposure and very different capacity to
evacuate, absorb loss, and recover. Assessment that stops at hazard extent describes the water and
not the harm.

## Desired outcomes

- All plausible hazards considered, including the ones with no local precedent
- Likelihood and consequence assessed on a consistent, documented basis
- Exposure mapped against the actual asset and population distribution
- Social vulnerability assessed alongside physical exposure
- Critical facility and infrastructure exposure identified specifically
- Assessment refreshed as conditions and climate projections change
- Findings actually used in [land use](/capabilities/land-use-planning-and-zoning/),
  [capital](/capabilities/capital-planning-and-programming/), and preparedness decisions

## Key processes

Hazard identification and screening · historical event research · likelihood and frequency
estimation · consequence and loss estimation modelling · exposure analysis against assets and
population · social vulnerability assessment · critical facility exposure review · climate
projection incorporation · risk ranking and prioritization · mitigation strategy identification and
benefit-cost analysis · hazard mitigation plan development and adoption · plan update on the
required cycle · public and stakeholder engagement

## Key data

Hazard inventory with type, extent, and source · historical event record with impacts and costs ·
hazard extent [geography](/capabilities/geospatial-information-management/) — flood, wildfire,
seismic, storm surge · exposed asset inventory from the
[asset register](/capabilities/asset-management/) · population and social vulnerability indicators
by area · critical facility locations and dependencies · loss estimates by scenario · mitigation
action register with cost, benefit, and status

## Measures

| Measure | Class |
|---|---|
| Hazards assessed against those plausible for the jurisdiction | Process |
| Assessment currency against the required update cycle | Process |
| Exposed critical facilities identified, with mitigation status | Process |
| Mitigation actions from the plan that were funded and completed | Outcome |
| Risk findings reflected in land use and capital decisions | Outcome |
| Vulnerability assessed, not only exposure | Process |
| Estimated avoided loss from completed mitigation | Outcome |

**Mitigation actions completed is the measure that distinguishes a plan from a document.** Hazard
mitigation plans are frequently adopted to maintain grant eligibility, and their action lists carry
forward unchanged through several update cycles.

## Level variance

- **Federal.** National risk assessment, hazard mapping, loss estimation tools, and the mitigation
  grant programmes that make local mitigation affordable — with plan adoption as an eligibility
  condition.
- **State.** State hazard mitigation plan, coordination and technical support to locals, and
  administration of federal mitigation funding.
- **County.** **Usually the level at which the multi-jurisdictional plan is produced**, covering
  municipalities within the county — which makes county capacity the binding constraint on local
  eligibility.
- **Municipal / tribal.** Participates in or adopts the plan, holds the land use authority that
  determines future exposure, and owns the critical facilities most at risk.

## Where it goes wrong

**Assessment written for grant eligibility.** Adopted, filed, and never referenced in a decision —
which is the most common outcome and makes every other item here moot.

**History as the sole basis for likelihood.** No local precedent read as low risk, in a period when
hazard frequency is changing and the record is short.

**Exposure without vulnerability.** Flood extent mapped, and no assessment of which households have
no vehicle, no insurance, no savings, and limited English — the information that determines who is
actually harmed.

**Critical facility exposure unexamined.** The wastewater plant, the emergency operations centre,
and the shelter located in the hazard area, which is common because those sites were chosen for
other reasons decades ago.

**Cascading dependencies ignored.** The hospital is outside the flood zone and its access road and
power feed are not — the gap that
[critical infrastructure resilience](/capabilities/critical-infrastructure-resilience/) addresses.

**Plan and land use decisions disconnected.** Risk assessed by emergency management, development
approved by planning, and neither referencing the other.

**Mitigation benefit-cost analysis skipped.** Funding requires it, so it is produced for
applications rather than used to choose between actions.

**Updates as reformatting.** The five-year update reissuing the same actions with new dates.
