---
type: Capability
title: Land Use Planning & Zoning
description: Comprehensive planning, zoning administration, and development review —
  where the timeline is the policy, whatever the plan says.
resource: https://industry-blueprints.github.io/capabilities/land-use-planning-and-zoning/
tags: [capability, planning, zoning, development-review, entitlement, housing]

generated: { by: human:jhofmann, at: 2026-07-28T12:15:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/build-and-operate.md
  - predicate: has_participant
    target: /personas/constituent.md
    note: Applicant, neighbour, and future resident — three constituencies with different interests
  - predicate: has_participant
    target: /personas/program-manager.md
  - predicate: has_participant
    target: /personas/elected-official.md
    note: Decides discretionary applications, in public, on a case-by-case basis
  - predicate: uses_data
    target: /data-entities/location.md
---

## Purpose

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

## Key processes

Comprehensive and area plan development · zoning ordinance drafting and amendment · zoning map
maintenance · pre-application consultation · completeness review · concurrent multi-department
review · staff report and recommendation · public notice and hearing · variance, conditional use,
and rezoning decisions · subdivision and plat review · site plan approval · condition of approval
tracking · development agreement negotiation · impact fee assessment · zoning verification and
enforcement referral · buildable land and capacity monitoring

## Key data

Comprehensive plan policies with adoption dates · zoning map and ordinance text with amendment
history · [parcel](/data-entities/location/) attributes — zoning, overlays, constraints ·
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

## Where it goes wrong

**Comprehensive plan and zoning contradicting each other.** The plan adopted, the ordinance never
amended to implement it, and decisions made under the ordinance.

**Sequential department review.** Planning, engineering, fire, and utilities each reviewing in turn,
each returning comments, and each cycle restarting the clock — the single largest recoverable
source of delay.

**Everything discretionary.** Common development requiring a hearing, which adds months and makes
the outcome depend on who attends.

**Notice reaching only immediate neighbours.** The people who would live in the housing are not
notified, cannot be, and are absent from every hearing — a structural asymmetry, not an oversight.

**Conditions of approval never verified.** Attached to the decision, recorded in the minutes, and
checked by nobody. The [obligation tracking](/patterns/obligation-tracking/) failure again, in a
fifth domain.

**Zoning map maintained separately from GIS.** The official map and the parcel layer disagree, and
zoning verification depends on which one someone consulted — a
[geospatial](/capabilities/geospatial-information-management/) authority problem.

**Impact fees unreviewed.** Set once, never updated against actual infrastructure cost, either
under-funding capacity or blocking development on stale figures.

**No buildable land inventory.** The jurisdiction cannot say where growth can physically be
accommodated, so plan and capacity conversations proceed without evidence.
