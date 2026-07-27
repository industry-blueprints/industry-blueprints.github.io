---
type: Capability
title: Position & Classification Management
description: Defining positions, grading them, and maintaining the classification
  structure that pay, budget, and workforce reporting all depend on.
resource: https://industry-blueprints.github.io/capabilities/position-and-classification-management/
tags: [capability, position, classification, job-evaluation, establishment, hr]

generated: { by: human:jhofmann, at: 2026-07-27T22:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/staff.md
  - predicate: has_participant
    target: /personas/hr-director.md
  - predicate: has_participant
    target: /personas/budget-director.md
    note: A position is a funded slot before it is a job, which makes this a budget artifact
---

## Purpose

To define what positions exist, what work each one covers, how it is graded, and whether it is
funded — independently of whoever currently occupies it.

**The position is separate from the employee, and this is the structural decision the whole domain
rests on.** A position is funded, classified, and budgeted whether or not anyone is in it. Vacancy,
reclassification, and workforce planning are properties of the position. Collapse the two — as
downstream reporting routinely does — and the organization loses the ability to say what it is
establishment-funded to do.

## Desired outcomes

- An authoritative establishment: every position, its funding, and its status
- Classification applied consistently across departments for comparable work
- Grading decisions defensible on the work, not on the incumbent
- Class specifications current enough to describe the work as it is now performed
- Reclassification as a deliberate process rather than a route to a pay rise
- Position data reliable enough for [payroll](/capabilities/payroll/), budget, and workforce
  planning to share it

## Key processes

Position creation, funding, and authorization · job analysis and documentation · classification
and grading determination · class specification maintenance · reclassification request and review ·
salary schedule assignment · establishment control and vacancy tracking · organizational structure
maintenance · classification appeal · periodic classification review and audit

## Key data

Position register with number, class, grade, funding source, and status ·
[Position](/data-models/core-public-sector-model/) to incumbent assignment history · class
specifications with essential functions and requirements · classification decisions and their
rationale · salary schedules and effective dates · reporting relationships · reclassification
requests and outcomes

## Measures

| Measure | Class |
|---|---|
| Positions with current funding status recorded | Process |
| Class specifications reviewed within the standard interval | Process |
| Reclassification requests, and share approved | Process |
| Time to classify a new position | Process |
| Comparable work graded consistently across departments | Outcome |
| Classification appeals upheld | Outcome |
| Vacancy rate by class and by department | Output |

Consistency across departments is the measure of whether classification is a system or a series of
negotiations.

## Level variance

- **Federal.** A government-wide classification system with published standards, occupational
  series, and grade criteria applied across agencies, with formal appeal rights.
- **State.** A statewide classification plan administered centrally, with agencies requesting
  positions and reclassifications against it.
- **County / municipal.** Locally maintained plans, frequently reviewed by an external
  compensation study every five to ten years and drifting in between. Small jurisdictions have
  many single-incumbent classes, which makes the classification-versus-person distinction hardest
  to maintain precisely where it matters most.

## Where it goes wrong

**Positions tracked in the payroll system only.** Unfunded and vacant positions become invisible,
so the establishment cannot be reported and workforce planning has no baseline — the failure
[workforce planning](/capabilities/workforce-planning/) inherits.

**Class specifications describing work nobody does.** Written fifteen years ago, still requiring
skills that are obsolete and omitting the ones now essential. Recruitment then screens on the wrong
criteria.

**Reclassification as a pay mechanism.** The market rate has moved, the salary schedule has not, so
the position is reclassified upward to fix pay. It works, and it corrupts the classification system
permanently.

**Grading the incumbent.** A strong performer's position graded up, then filled at that grade by
someone doing narrower work.

**Classification drift between studies.** Every new position placed by comparison to the nearest
existing one, so error compounds until an external review resets it.

**No establishment control.** Departments create positions within their budget, and nobody holds
the enterprise view until a hiring freeze requires one.

**Organizational structure maintained in a drawing.** The chart in a slide deck, the reporting
relationships in the system, and the two disagreeing.
