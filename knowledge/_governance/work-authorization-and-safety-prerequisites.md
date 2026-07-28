---
type: Governance Control
title: Work Authorization & Safety Prerequisites
description: The checks that must be verified on site before physical work starts —
  where arranging is not verifying, and the consequence of assuming is physical.
resource: https://industry-blueprints.github.io/governance/work-authorization-and-safety-prerequisites/
tags: [governance, safety, locates, permits, isolation, field-work, authorization]

generated: { by: human:jhofmann, at: 2026-07-29T13:00:00Z }
status: draft
stale_after: 2027-07-29
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: constrains
    target: /capabilities/work-order-and-field-service-management.md
  - predicate: constrains
    target: /capabilities/utility-operations.md
  - predicate: constrains
    target: /capabilities/maintenance-management.md
---

## What this control exists for

Physical work carries physical consequences. Excavating without a current utility locate strikes a
gas main. Entering a vault without atmospheric testing kills people, and frequently kills the
second person who goes in after the first. Working on energized plant without isolation does the
same.

**Every one of these has a procedure, and the procedure is not the control.** The control is that
the prerequisite is **verified on site, by the person about to do the work, at the time of the
work** — and that the verification is recorded.

## The distinction that carries the whole control

**Arranging a prerequisite during planning is not verifying it at execution.**

[Planning](/processes/work-order-planning-and-scheduling/) requests the locate, obtains the permit,
and schedules the traffic control. Between planning and execution the ticket can expire, the marks
can be washed away, the isolation can be reinstated by another crew, and the site can change.

A system that records "locate requested" and treats the job as ready has satisfied a workflow and
provided no protection. The control requires two separate records: **arranged** at planning, and
**verified** at the site.

## Required controls

| Control | Verified by | Evidence |
|---|---|---|
| Utility locate current and marks present | The crew, at the site, before breaking ground | Ticket number, expiry, and positive confirmation of marks |
| Permits present and in scope | Crew lead | Permit reference and scope check against the work |
| Energy isolation and lockout applied | The person performing the work | Lock and tag record, with the applier named |
| Confined space atmospheric test | Entrant and attendant | Test readings with time, and continuous monitoring where required |
| Traffic control established to plan | Crew lead | Setup confirmation before work begins |
| Competency and certification current for the task | Assignment, checked at planning and at dispatch | Certification record with expiry |
| Excavation support where depth requires | Crew lead | Method confirmation |

## Rules

- **Work stops where a prerequisite is absent, expired, or unverifiable.** No exception for schedule
  pressure, and none for "it was fine last week."
- The stop is recorded as a work order outcome with a reason, and is **reported as a positive
  outcome**, not as a failed job — see
  [first-visit completion](/kpis/first-visit-completion-rate/), which excludes safety stops from
  its failure reasons deliberately.
- Verification is performed by the person exposed to the hazard, not by a supervisor remotely and
  not by a planner in advance.
- Isolation is applied and removed by named individuals, with the record showing both.
- Emergency work is not exempt from the prerequisites; it is exempt from the *planning* that
  normally arranges them, which makes on-site verification more important, not less.
- Certification expiry is monitored actively, not checked at hire — see
  [learning and development](/capabilities/learning-and-development/).
- Prerequisite failures are analysed for pattern, not only resolved individually.

## What automation may and may not do

**May:** prompt for the prerequisite, retrieve and display the locate ticket and its expiry, block
a work order from reaching dispatch while a prerequisite is unconfirmed, monitor certification
expiry, and detect that a ticket will expire before the scheduled date.

**May not:** confirm that the marks are physically present, that the atmosphere is safe, or that
the isolation holds. **These are observations of the physical world by the person at risk**, and no
system record substitutes for them.

The failure mode worth naming: a well-designed prerequisite workflow can create false assurance. A
green checkmark indicating "locate obtained" invites a crew to skip looking for the marks. The
interface should present the ticket as information requiring confirmation, never as a completed
step.

## Evidence required

- Prerequisite arranged, with reference and expiry, at planning
- Prerequisite **verified on site**, with the verifier named and the time recorded
- Work stops with reason, aggregated and reviewed
- Isolation records with applier and remover
- Atmospheric test readings retained for the required period
- Certification currency for every person assigned to a task requiring it

## Level variance

- **Federal / state.** Occupational safety programmes with formal permit-to-work systems and
  documented procedures, and contractor safety requirements flowed through the contract.
- **County / municipal.** **The same hazards with far less infrastructure around them.** Locate
  request obligations apply identically to a two-person crew and a large agency, confined space
  entry happens routinely in water and sewer work, and there is frequently no dedicated safety
  function — the duty sits with the crew lead and with
  [risk management](/capabilities/risk-management-and-insurance/). Where the jurisdiction is a
  member of a risk pool, the pool's loss-control requirements often function as the operative
  standard.
