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

## Where it goes wrong

**Retention attached to systems, not records.** Migrate the data and the schedule is silently
lost — the most common way retention obligations break, and it surfaces years later during a
records request or litigation.

**Keep everything, dispose of nothing.** Deletion feels risky and retention feels safe, so
volume grows and every extra year of retained email enlarges the disclosure and breach surface.

**Records created in tools nobody governs.** A department adopts a collaboration platform; two
years of records exist outside any schedule and nobody knows.

**No definition staff can apply.** "Is this a record?" answered inconsistently by everyone,
because the guidance is written for records professionals.

**Decommissioning without content transfer.** A system is retired; its records go with it, and
the obligation does not.

**Holds applied by email.** No register, no confirmation, no way to demonstrate the hold was
effective — which is exactly what gets tested when it matters.
