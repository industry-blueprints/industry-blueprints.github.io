---
id: emergency-preparedness-and-planning
title: Emergency Preparedness & Planning
type: capability
level: 2
version: '0.1'
status: draft
description: Plans, exercises, training, mutual aid, and stockpiles held against future
  need — where the exercise is worth more than the plan.
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
To prepare the organization and the community for the hazards identified — writing and maintaining
plans, training the people who will execute them, exercising them, establishing mutual aid, and
holding the resources that cannot be procured during an event.

**The exercise is worth more than the plan.** Plans are written to be adopted and are read by few
people; exercises reveal that the contact list is stale, two agencies interpret the same annex
differently, and the decision nobody assigned is the one that matters first.

## Desired outcomes

- Plans that assign decisions to roles, not just tasks to agencies
- Everyone with a role in the plan trained to perform it
- Exercises that are allowed to fail, with findings that produce corrective action
- Mutual aid agreements executed in advance, with cost and liability settled
- Stockpiles sized deliberately and rotated through normal use
- Whole-community planning that includes people with disabilities, no transport, and no English
- Plans maintained continuously rather than revised on the audit cycle

## Lifecycle
Emergency operations plan development and maintenance · hazard-specific and functional annex
development · continuity linkage with
[continuity of operations](/capabilities/continuity-of-operations/) · role assignment and position
task books · training programme delivery · exercise design — discussion, functional, full-scale ·
exercise conduct and evaluation · after-action reporting and corrective action tracking · mutual
aid agreement negotiation and maintenance · resource typing and inventory · stockpile management
and rotation · shelter planning and agreement · access and functional needs planning · community
preparedness outreach

## Domain model
Emergency operations plan with annexes and revision history · role assignments with named
incumbents and alternates · training records against required competencies · exercise schedule,
scenarios, and evaluation reports · corrective action register with owners and due dates · mutual
aid agreements with terms, reimbursement basis, and expiry · typed resource inventory · stockpile
inventory with expiry and rotation status · shelter inventory with capacity and accessibility ·
contact rosters with verification dates

## Measures

| Measure | Class |
|---|---|
| Plan sections reviewed within the required cycle | Process |
| People with a plan role who are trained for it | Process |
| Exercises conducted, by type, in the period | Process |
| Corrective actions from exercises completed | Outcome |
| Corrective actions recurring across successive after-action reports | Outcome |
| Contact rosters verified within the period | Process |
| Stockpile rotated rather than expired | Process |
| Shelters meeting accessibility requirements | Process |

**Corrective actions recurring across after-action reports is the measure that matters most.** The
same finding appearing three exercises running means the exercise programme is generating documents
rather than change — the same pattern as
repeat findings in audit.

## Level variance

- **Federal.** National planning frameworks, preparedness grant programmes, and the standards that
  state and local planning is built against.
- **State.** State emergency operations plan, statewide mutual aid compacts, training delivery to
  locals, and administration of preparedness funding.
- **County.** **The operational planning level in most states**, holding the emergency management
  agency, the emergency operations centre, and the multi-jurisdictional plan.
- **Municipal / tribal.** Local plans nested within the county's, with mutual aid between
  neighbouring jurisdictions as the primary surge mechanism. Small jurisdictions frequently have an
  emergency manager who holds the role alongside a full-time job elsewhere in the organization.

## What to get right

**Write plans the named people actually read.** A plan drafted by a consultant, adopted to satisfy
a requirement, and comprehensive on paper still needs to be known to the people named in it.

**Design exercises that are allowed to fail.** A scenario scoped so the plan works produces a good
report and no learning; scope it to find the gaps instead.

**Assign an owner and a due date to every after-action finding.** A finding recorded and published
without an owner surfaces again at the next exercise.

**Verify contact rosters on a schedule, before the activation.** Almost every real activation
discovers the list is out of date, because verifying it was nobody's scheduled task.

**Negotiate mutual aid in advance, not during the event.** Settling cost, liability, and command
relationships ahead of time avoids delaying help and producing reimbursement disputes for years.

**Rotate stockpiles through normal use.** Purchased, stored, and discarded without rotation repeats
the problem described in
[supply and inventory management](/capabilities/supply-and-inventory-management/).

**Design for access and functional needs from the start, not as an annex.** Planning for people with
disabilities, no transport, or limited English as a core design input, rather than a supplement,
makes evacuation and shelter plans work for them too.

**Fund preparedness capacity to match risk, not just grant cycles.** A programme that scales with
grant availability rather than with risk contracts when the grant ends.
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
