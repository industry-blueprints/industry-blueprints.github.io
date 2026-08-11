---
id: employee-performance-management
title: Employee Performance Management
type: capability
level: 2
version: '0.1'
status: draft
description: Setting expectations, appraising against them, and handling underperformance
  within due-process rules that make the last part genuinely hard.
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
To establish what is expected of each employee, assess how they are doing against it, recognize
strong performance, and address underperformance through a process that will hold if challenged.

**Distinct from [organizational performance
management](/capabilities/performance-management/)**, which measures whether the organization is
achieving its objectives. The two share a name and almost nothing else.

**Due process is the defining constraint.** Public employees typically hold property interests in
continued employment, so adverse action requires notice, evidence, and an opportunity to respond.
This is a feature — it protects against politicized dismissal — and it means underperformance must
be documented contemporaneously or it cannot be acted on at all.

## Desired outcomes

- Expectations set at the start of the cycle, in terms the employee can act on
- Feedback continuous rather than annual
- Ratings that distinguish, rather than clustering at one point on the scale
- Underperformance documented as it occurs, not reconstructed later
- Improvement plans that are genuine attempts at improvement
- Adverse actions that survive grievance, arbitration, or appeal
- Recognition available that does not depend on money

## Lifecycle
Expectation setting and work planning · ongoing feedback and coaching · mid-cycle review · annual
appraisal and rating · calibration across supervisors · recognition and award administration ·
performance improvement planning · progressive discipline · adverse action with due process ·
grievance and appeal response · probationary evaluation

## Domain model
Performance plan per employee with measurable expectations · feedback and coaching records with
dates · appraisal ratings and narrative · rating distribution by supervisor and department ·
improvement plans with milestones and outcomes · disciplinary record with the evidence relied on ·
grievance and appeal outcomes · recognition record

## Measures

| Measure | Class |
|---|---|
| Performance plans in place at cycle start | Process |
| Appraisals completed by the deadline | Process |
| Rating distribution — and its spread | Outcome |
| Documented feedback events between formal reviews | Process |
| Improvement plans resulting in sustained improvement | Outcome |
| Adverse actions overturned on appeal | Outcome |
| Supervisors trained in documentation and due process | Process |

**Rating distribution is the diagnostic.** Where nearly everyone receives the same rating, the
system is not assessing performance, and every subsequent use of the rating — promotion, pay,
retention decisions — is corrupted.

## Level variance

- **Federal.** Statutory performance management requirements with defined rating systems, formal
  performance improvement periods, and appeal routes to an independent merit protection body.
- **State.** Civil service rules governing appraisal and discipline, with progressive discipline
  requirements and appeal to a personnel board.
- **County / municipal.** Civil service protections combined, in many jurisdictions, with
  collective bargaining agreements that add grievance and arbitration procedures. The practical
  effect is that documentation quality determines outcomes, and supervisors are frequently promoted
  from the ranks with no training in it.

## What to get right

**Let ratings actually distinguish performance.** Rating inflation is rational for
supervisors — a lower rating invites a grievance and a difficult conversation — but a distribution
that spreads out is what keeps the instrument useful for everyone.

**Document as problems occur, not at the point of action.** Three years of problems behind an
unblemished file makes the first adverse action fail, reinstating the employee with back pay. The
due-process rule isn't the obstacle; contemporaneous documentation is what makes it work.

**Use improvement plans as genuine attempts at improvement.** A plan everyone, including the
employee, recognizes as a formality becomes a procedural step instead of a real chance to improve.

**Give feedback continuously, not just annually.** A surprise in the annual review signals that
supervision missed the issue months earlier.

**Write expectations for this person and this year, not the class specification.** Specific,
achievable duties give the employee something to act on; generic ones don't.

**Calibrate ratings across supervisors.** Without it, one supervisor's "exceeds" is another's
"meets," making cross-department comparison meaningless and perceived unfairness well founded.

**Use probation deliberately.** The period with the fewest constraints is the easiest time to
address a poor fit — passing through it automatically hands the organization a permanent problem it
could have avoided — see
[onboarding](/capabilities/onboarding/).
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
