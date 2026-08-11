---
id: position-and-classification-management
title: Position & Classification Management
type: capability
level: 2
version: '0.1'
status: draft
description: Defining positions, grading them, and maintaining the classification
  structure that pay, budget, and workforce reporting all depend on.
last_updated: '2026-08-11'
capability_area: staff
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

## Lifecycle
Position creation, funding, and authorization · job analysis and documentation · classification
and grading determination · class specification maintenance · reclassification request and review ·
salary schedule assignment · establishment control and vacancy tracking · organizational structure
maintenance · classification appeal · periodic classification review and audit

## Domain model
Position register with number, class, grade, funding source, and status ·
Position to incumbent assignment history · class
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

## What to get right

**Track positions in the establishment, not just the payroll system.** Payroll alone leaves unfunded
and vacant positions invisible, so the establishment cannot be reported and workforce planning has
no baseline — the gap [workforce planning](/capabilities/workforce-planning/) inherits.

**Keep class specifications current with the work actually performed.** Written fifteen years ago
and left alone, they require obsolete skills and omit the ones now essential, and recruitment then
screens on the wrong criteria.

**Fix pay through the salary schedule, not through reclassification.** Reclassifying a position
upward because the market rate has moved and the schedule has not works once, and corrupts the
classification system permanently.

**Grade the work, not the incumbent.** A strong performer's position graded up gets filled at that
grade by someone doing narrower work once they leave.

**Anchor new positions to the classification standard, not the nearest existing one.** Placing by
comparison to a neighbour lets error compound until an external review resets it.

**Hold an enterprise view of establishment control.** Without one, departments create positions
within their own budget and nobody sees the whole picture until a hiring freeze forces the
question.

**Keep the organizational chart and the system's reporting relationships as one source.** A chart
maintained separately in a slide deck will disagree with the system sooner or later.
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
