---
type: Capability
title: Records & Information Management
description: Keeping what must be kept for as long as required, disposing of the rest
  defensibly, and being able to find any of it.
resource: https://industry-blueprints.github.io/capabilities/records-and-information-management/
tags: [capability, records, retention, disposition, information-management]

generated: { by: human:jhofmann, at: 2026-07-27T11:30:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/inform.md
  - predicate: has_participant
    target: /personas/records-manager.md
  - predicate: has_participant
    target: /personas/privacy-officer.md
  - predicate: has_participant
    target: /personas/internal-auditor.md
---

## Purpose

To manage government information as a record: classified, retained for its required period,
protected, findable, and disposed of at the end of its life under authority.

## Desired outcomes

- Every record type mapped to a retention class
- Retention applied in the systems that hold the records, not on paper only
- Legal holds applied reliably and lifted deliberately
- Disposition that is authorized and documented, not merely deletion
- Responsive material findable within a statutory response period

## Key processes

Retention schedule development and approval · record type identification and classification ·
retention application in systems · legal hold placement and release · disposition review and
authorization · destruction certification · system decommissioning and content transfer ·
staff training on what constitutes a record

## Key data

Retention schedule · record type register · classification and disposition state on
[Document](/data-models/core-public-sector-model/) and [Case](/data-entities/case/) · hold
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
