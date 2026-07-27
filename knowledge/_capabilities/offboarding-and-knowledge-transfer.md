---
type: Capability
title: Offboarding & Knowledge Transfer
description: Separation, clearance, benefit transition, and capturing what the
  departing person knew — the last one almost never happens.
resource: https://industry-blueprints.github.io/capabilities/offboarding-and-knowledge-transfer/
tags: [capability, offboarding, separation, knowledge-transfer, access-revocation, retirement]

generated: { by: human:jhofmann, at: 2026-07-27T22:30:00Z }
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
    target: /personas/knowledge-manager.md
    note: The only function positioned to capture undocumented knowledge before it leaves
  - predicate: has_participant
    target: /personas/records-manager.md
    note: A departing employee's records are organizational records, including their mailbox
---

## Purpose

To separate an employee cleanly — final pay and leave settlement, benefit and retirement
transition, asset return, access revocation, records transfer — and to capture what they knew
before they go.

**The knowledge component is the part that is always cut, and government is unusually exposed to
it.** Long tenure, deep undocumented process knowledge, and a retirement-heavy age profile mean
each departure takes more with it than in most sectors. The capability that would address this is
[knowledge management](/capabilities/knowledge-management/), and offboarding is where its absence
becomes a loss.

## Desired outcomes

- Notice used as a transfer window rather than a countdown
- Access revoked on the last day, across every system
- Assets, keys, credentials, and devices returned and verified
- Final pay, leave settlement, and benefit continuation correct first time
- Retirement transition supported through a process the employee did not have to navigate alone
- Critical undocumented knowledge captured and given an owner
- Exit information collected honestly and acted on

## Key processes

Resignation, retirement, or termination intake · offboarding checklist initiation · knowledge
transfer planning and capture · handover to a named successor or interim owner · records and
mailbox transfer · asset and credential return · access revocation across systems · final pay and
leave settlement · benefit continuation and retirement processing · exit interview · post-departure
access verification · rehire eligibility determination

## Key data

Separation record with type, dates, and reason · offboarding checklist with per-item status and
owner · access inventory across systems, with revocation evidence · asset assignment and return
confirmation · knowledge capture artifacts and their new owners · records and mailbox disposition ·
final settlement calculation · exit interview themes · retirement election records

## Measures

| Measure | Class |
|---|---|
| Access fully revoked by the last working day | Process |
| Accounts still active after departure, found in review | Process |
| Assets returned and verified | Process |
| Final pay correct without subsequent adjustment | Process |
| Departures with a documented knowledge transfer | Process |
| Critical roles vacated with no identified successor | Outcome |
| Exit interviews conducted, and themes acted upon | Process |
| Regretted attrition, by role and tenure | Outcome |

**Accounts active after departure is the measure that appears in nearly every access review** and
is the easiest of these to fix — it requires one authoritative separation trigger reaching every
system, which is an [identity and access
management](/capabilities/identity-and-access-management/) capability rather than an HR one.

## Level variance

- **Federal.** Formal separation clearance, credential retrieval, and post-employment restriction
  briefings, with retirement processing through a central system.
- **State.** Agency offboarding within statewide systems, with retirement handled by a separate
  system on its own timeline — frequently the source of a gap between final pay and first pension
  payment.
- **County / municipal.** The most acute knowledge exposure: single-incumbent roles where one
  person holds a process entirely, and no successor. Also the level with the most physical assets
  to recover — keys, radios, vehicles, uniforms — and the least systematic tracking of them.

## Where it goes wrong

**Knowledge transfer as a document request.** Asked in the final week to "write up" a role held for
twenty years. What gets produced is a task list, not the judgment.

**Notice period spent finishing work.** The departing person clears their own queue instead of
teaching someone else to. Understandable, and the wrong use of the only window available.

**Access revocation dependent on a manual notification.** HR emails IT, IT disables the main
account, and eleven peripheral systems retain access indefinitely.

**Departure trigger that never fires.** For contractors, seasonal staff, and interns especially,
there is often no separation event at all — the person simply stops coming.

**Assets written off silently.** Nobody wants to chase a former colleague for a laptop, so it is
absorbed.

**Exit interviews by HR at the end.** The honest answer is rarely given to the organization being
left; themes are collected and not acted on, so nothing changes and the same reasons recur.

**Retirement navigated alone.** Multiple systems, elections with deadlines, and irreversible
consequences — for people who have given decades of service and get a packet.

**Mailbox deleted.** Organizational records disposed of at separation because the mailbox was
treated as personal — a retention failure created by an HR process. See [records and information
management](/capabilities/records-and-information-management/).
