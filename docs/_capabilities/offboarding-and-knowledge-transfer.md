---
id: offboarding-and-knowledge-transfer
title: Offboarding & Knowledge Transfer
type: capability
level: 2
version: '0.1'
status: draft
description: Separation, clearance, benefit transition, and capturing what the departing
  person knew — the last one almost never happens.
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

## Lifecycle
Resignation, retirement, or termination intake · offboarding checklist initiation · knowledge
transfer planning and capture · handover to a named successor or interim owner · records and
mailbox transfer · asset and credential return · access revocation across systems · final pay and
leave settlement · benefit continuation and retirement processing · exit interview · post-departure
access verification · rehire eligibility determination

## Domain model
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

## What to get right

**Start knowledge transfer well before the final week.** A request to "write up" a role held for
twenty years in the last week produces a task list, not the judgment; capture needs the runway a
real transfer takes.

**Use the notice period to teach a successor, not just clear the queue.** The departing person
finishing their own work is understandable, but it is the wrong use of the only window available
for transfer.

**Drive access revocation from one authoritative trigger, not a manual notification.** HR emailing
IT to disable the main account leaves eleven peripheral systems with access indefinitely; one
trigger reaching every system closes all of them.

**Define a separation event for contractors, seasonal staff, and interns too.** Without one, the
person simply stops coming and nothing fires to revoke access or start knowledge capture.

**Track asset return rather than writing it off.** Nobody wants to chase a former colleague for a
laptop, but tracking keeps it from being silently absorbed.

**Act on exit interview themes, not just collect them.** Collected without action, the same reasons
recur; acted on, they change something for the people still there.

**Give retiring employees a guided path through the process.** Multiple systems, elections with
deadlines, and irreversible consequences are a lot to navigate alone after decades of service.

**Preserve the mailbox as an organizational record, not a personal one.** Disposing of it at
separation is a retention failure created by an HR process. See [records and information
management](/capabilities/records-and-information-management/).
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
