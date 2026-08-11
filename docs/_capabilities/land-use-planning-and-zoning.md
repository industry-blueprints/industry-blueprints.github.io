---
id: land-use-planning-and-zoning
title: Land Use Planning & Zoning
type: capability
level: 2
version: '0.1'
status: draft
description: Comprehensive planning, zoning administration, and development review
  — where the timeline is the policy, whatever the plan says.
last_updated: '2026-08-11'
capability_area: build-and-operate
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
To set long-range policy for how land is used, administer the zoning that implements it, and review
development proposals against both — issuing entitlements, conditions, and approvals.

**Review timelines are land use policy in practice.** A jurisdiction whose comprehensive plan
encourages housing and whose review process takes eighteen discretionary months has a housing
policy of eighteen months. The written plan and the operating process are frequently at odds, and
the process wins.

## Desired outcomes

- A comprehensive plan that is current and actually referenced in decisions
- Zoning that implements the plan, rather than contradicting it
- Clear distinction between what is permitted by right and what requires discretion
- Predictable, published review timelines with a visible clock
- Concurrent rather than sequential review across departments
- Conditions of approval tracked to completion
- Participation that reaches future residents, not only current neighbours

## Lifecycle
Comprehensive and area plan development · zoning ordinance drafting and amendment · zoning map
maintenance · pre-application consultation · completeness review · concurrent multi-department
review · staff report and recommendation · public notice and hearing · variance, conditional use,
and rezoning decisions · subdivision and plat review · site plan approval · condition of approval
tracking · development agreement negotiation · impact fee assessment · zoning verification and
enforcement referral · buildable land and capacity monitoring

## Domain model
Comprehensive plan policies with adoption dates · zoning map and ordinance text with amendment
history · parcel attributes — zoning, overlays, constraints ·
application records with review clock and status · department review comments and resolution ·
notice and hearing records · decisions with findings and conditions · condition compliance tracking
· entitlement inventory — approved but unbuilt · impact fee schedules and collections · buildable
land inventory

## Measures

| Measure | Class |
|---|---|
| Time from complete application to decision, by application type | Process |
| Applications requiring discretionary review versus permitted by right | Outcome |
| Review cycles before approval | Process |
| Departments reviewing concurrently rather than in sequence | Process |
| Conditions of approval verified as satisfied | Process |
| Housing units entitled against housing need | Outcome |
| Decisions consistent with the comprehensive plan | Outcome |
| Appeals and litigation on land use decisions | Outcome |

**The share of development requiring discretion is the structural measure.** Every discretionary
review adds time, cost, and uncertainty; moving common, plan-consistent development to by-right
approval is the highest-leverage change available and the hardest politically.

## Level variance

- **State.** Enabling legislation defining what local governments may regulate; in some states
  growth management frameworks, housing element requirements, and state review of local plans.
- **County.** Land use authority in unincorporated areas, plus regional coordination on
  transportation and watershed matters.
- **Municipal.** **Where this capability principally lives.** Zoning, subdivision, and site plan
  review, decided by planning commissions and councils. Small jurisdictions frequently have one
  planner or a contracted consultant, and the review timeline is bounded by how often the
  commission meets.

## What to get right

**Amend the zoning ordinance to implement the adopted plan.** When the plan and the ordinance
disagree, decisions are made under the ordinance, and the plan stops governing anything.

**Review concurrently across departments rather than in sequence.** Planning, engineering, fire,
and utilities reviewing in turn, each returning comments and each cycle restarting the clock, is
the single largest recoverable source of delay.

**Reserve discretionary review for development that actually needs it.** Requiring a hearing for
common, plan-consistent development adds months and makes the outcome depend on who attends.

**Extend notice beyond immediate neighbours.** The people who would live in the housing are not
notified under a neighbours-only notice model, and are absent from every hearing — a structural
asymmetry worth designing around, not just an oversight to note.

**Verify conditions of approval to completion.** Attached to the decision and recorded in the
minutes is not the same as checked by someone. This is the
obligation tracking discipline again, in a fifth domain.

**Keep the zoning map and GIS as one authoritative source.** Maintained separately, the official
map and the parcel layer disagree, and zoning verification depends on which one someone
consulted — a [geospatial](/capabilities/geospatial-information-management/) authority problem.

**Review impact fees against actual infrastructure cost.** Set once and left alone, they either
under-fund capacity or block development on stale figures.

**Maintain a buildable land inventory.** Without one, the jurisdiction cannot say where growth can
physically be accommodated, and plan and capacity conversations proceed without evidence.
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
