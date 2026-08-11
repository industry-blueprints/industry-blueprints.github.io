---
id: legislative-and-council-affairs
title: Legislative & Council Affairs
type: capability
level: 2
version: '0.1'
status: draft
description: Managing the relationship with the body that appropriates, legislates,
  and asks questions the organization is obliged to answer.
last_updated: '2026-08-11'
capability_area: govern
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
To manage the organization's relationship with the body that funds it and makes the law it
operates under — tracking what is proposed, assessing what it would cost and require, supplying
testimony and information, and implementing what passes.

**The asymmetry defines the work.** The legislative body sets the timetable, and its deadlines are
short and non-negotiable. An organization without a standing capability here improvises against
every one of them.

## Desired outcomes

- Proposed legislation affecting the organization identified early enough to respond
- Fiscal and operational impact assessed honestly rather than defensively
- One organizational position per issue, rather than several by department
- Information requests answered accurately, on time, and consistently
- Enacted mandates implemented on their statutory schedule
- The relationship durable enough to survive a disagreement

## Lifecycle
Bill tracking and triage · impact and fiscal note preparation · position development and clearance ·
testimony preparation and delivery · constituent-referral casework · information and inquiry
response · commitment tracking after hearings · mandate implementation planning · post-session
analysis

## Domain model
Bill register with status and sponsor · position record with clearance history · fiscal notes and
their assumptions · inquiry log with due dates and owners · commitments made in testimony ·
enacted mandate register with effective dates and implementation owners

## Measures

| Measure | Class |
|---|---|
| Bills affecting the organization identified before first hearing | Process |
| Information requests answered by the deadline | Process |
| Fiscal note accuracy against later actuals | Process |
| Commitments made in testimony subsequently tracked to completion | Process |
| Mandates implemented by statutory effective date | Output |
| Consistency of position across departments on the same issue | Outcome |

Fiscal note accuracy is the measure nobody keeps and the one that determines whether the
organization is believed the next time.

## Level variance

- **Federal.** Congressional oversight with subpoena power, formal appropriations and
  authorization cycles, and a dedicated legislative affairs function with statutory reporting
  obligations attached.
- **State.** Sessions that may be part-time and highly compressed, so months of work land in
  weeks. Bill volume per staff member is at its highest here.
- **County / municipal.** An elected board or council meeting in public, often part-time, with
  members who take individual constituent cases directly to departments. The "legislative"
  relationship and the constituent-service relationship blur, and the referral is frequently the
  most common transaction.

## What to get right

**Track bills systematically rather than by someone reading a list manually.** Reliable tracking
catches a bill before it moves, instead of after it has already passed committee.

**Write fiscal notes to the honest number, not to a conclusion.** Understating cost to avoid
opposing a popular bill, or overstating it to kill one, is detected eventually, and the credibility
loss applies to every subsequent note.

**Clear one organizational position before testimony, not two.** Two departments testifying
differently on the same bill happens whenever position clearance is informal, and it is remembered.

**Record commitments made in a hearing and track them to follow-up.** "We'll get back to you with
that figure" needs an owner, or the follow-up never comes and the next hearing opens with it still
outstanding.

**Assign implementation ownership as soon as a mandate passes.** A six-month effective date with
nobody assigned until month five leaves too little runway.

**Route council referrals through the case system.** An elected member emailing a director directly
bypasses [constituent service](/solutions/constituent-management/) entirely and becomes
invisible to any measure of demand or resolution.
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
