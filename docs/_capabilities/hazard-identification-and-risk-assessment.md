---
id: hazard-identification-and-risk-assessment
title: Hazard Identification & Risk Assessment
type: capability
level: 2
version: '0.1'
status: draft
description: Understanding what could go wrong locally, how likely it is, and who
  would be most affected — the last part being the one usually omitted.
last_updated: '2026-08-11'
capability_area: protect
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

## Lifecycle
Hazard identification and screening · historical event research · likelihood and frequency
estimation · consequence and loss estimation modelling · exposure analysis against assets and
population · social vulnerability assessment · critical facility exposure review · climate
projection incorporation · risk ranking and prioritization · mitigation strategy identification and
benefit-cost analysis · hazard mitigation plan development and adoption · plan update on the
required cycle · public and stakeholder engagement

## Domain model
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

## What to get right

**Write the assessment to be used, not just to keep grant eligibility.** Referencing it in actual
decisions is what makes every other item on this list matter.

**Weigh changing hazard frequency, not just the historical record.** Reading a short or absent local
record alongside changing hazard frequency, rather than treating no-precedent as low risk, keeps
the likelihood estimate current.

**Assess vulnerability alongside exposure.** Flood extent mapping paired with which households have
no vehicle, no insurance, no savings, or limited English gives the full picture of who is actually
harmed.

**Check critical facilities against the hazard area explicitly.** The wastewater plant, the
emergency operations centre, and the shelter were often sited for other reasons decades ago, so
checking them against current hazard maps catches exposure early.

**Trace cascading dependencies.** The hospital being outside the flood zone doesn't help if its
access road and power feed are inside it — tracing the dependency is the gap that
[critical infrastructure resilience](/capabilities/critical-infrastructure-resilience/) addresses.

**Connect the plan to land use decisions.** Having emergency management's risk assessment and
planning's development approvals reference each other keeps future exposure from growing
unchecked.

**Use benefit-cost analysis to choose between mitigation actions.** Funding requires it; using it to
compare actions, not just to complete the application, gets the most value from it.

**Treat the update as a chance to revise, not reformat.** Revisiting the action list against current
conditions each cycle keeps the plan from just reissuing the same actions with new dates.
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
