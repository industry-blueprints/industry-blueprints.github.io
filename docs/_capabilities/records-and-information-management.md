---
id: records-and-information-management
title: Records & Information Management
type: capability
level: 2
version: '0.1'
status: draft
description: Keeping what must be kept for as long as required, disposing of the rest
  defensibly, and being able to find any of it.
last_updated: '2026-08-11'
capability_area: inform
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
To manage government information as a record: classified, retained for its required period,
protected, findable, and disposed of at the end of its life under authority.

## Desired outcomes

- Every record type mapped to a retention class
- Retention applied in the systems that hold the records, not on paper only
- Legal holds applied reliably and lifted deliberately
- Disposition that is authorized and documented, not merely deletion
- Responsive material findable within a statutory response period

## Lifecycle
Retention schedule development and approval · record type identification and classification ·
retention application in systems · legal hold placement and release · disposition review and
authorization · destruction certification · system decommissioning and content transfer ·
staff training on what constitutes a record

## Domain model
Retention schedule · record type register · classification and disposition state on
Document and Case · hold
register · destruction certificates · system inventory with content mapping

## Measures

| Measure | Class |
|---|---|
| Record types mapped to a retention class | Process |
| Systems with retention actually enforced | Process |
| Volume disposed under authority per period | Process |
| Records past retention still held | Process |
| Holds applied within target of notification | Process |
| Time to locate responsive material | Outcome |

"Records past retention still held" is the measure most organizations avoid computing, and the
one that best describes actual exposure.

## Level variance

- **Federal.** Government-wide schedules with agency-specific additions, and formal disposition
  authority granted by the national archives.
- **State.** State archives set schedules; local governments apply them, frequently without ever
  mapping them to the systems in use.
- **County / municipal.** Same obligations, typically no dedicated records manager, and schedules
  inherited from the state that nobody has reconciled with reality.

## What to get right

**Attach retention to the record, not the system it happens to sit in.** Migrating the data
without carrying the schedule is the most common way retention obligations break, and it
surfaces years later during a records request or litigation.

**Dispose of what has met its schedule.** Deletion feels risky and retention feels safe, so
volume grows and every extra year of retained email enlarges the disclosure and breach surface.

**Bring new tools under a schedule before adoption spreads.** When a department adopts a
collaboration platform without governance, two years of records can exist outside any schedule
with nobody aware of it.

**Give staff a definition they can actually apply.** "Is this a record?" gets answered
inconsistently by everyone when the guidance is written for records professionals rather than for
the people who have to use it.

**Transfer content before decommissioning a system.** Retiring a system without moving its
records first lets the records go with it while the obligation stays behind.

**Track holds in a register, not by email.** A register with confirmation is what lets you
demonstrate a hold was effective — exactly what gets tested when it matters.
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
