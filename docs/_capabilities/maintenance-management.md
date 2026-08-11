---
id: maintenance-management
title: Maintenance Management
type: capability
level: 2
version: '0.1'
status: draft
description: Preventive and corrective work — requests, orders, scheduling, parts,
  and completion — where reactive work crowds out the preventive work that would reduce
  it.
last_updated: '2026-08-11'
capability_area: build-and-operate
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
To keep assets serviceable through planned preventive work and timely corrective response —
planning the work, scheduling crews and parts, executing it, and recording what was done against
the asset.

**Reactive work crowds out preventive work, and the ratio is self-reinforcing.** Every deferred
preventive task raises the probability of a failure that consumes the capacity that would have
performed the next preventive task. Organizations enter this spiral gradually and cannot exit it
without temporarily funding both.

## Desired outcomes

- Preventive programme derived from criticality and failure consequence, not from a uniform interval
- Reactive work triaged by consequence rather than by who reported it
- Work orders carrying enough asset context that the crew arrives prepared
- Parts available when the work is scheduled
- Completion recorded against the asset, building a usable history
- Backlog measured, aged, and reported rather than absorbed
- Failure causes analysed for the recurring ones

## Lifecycle
Preventive Maintenance Planning ·
Work Order Planning & Scheduling ·
Field Execution & Completion ·
Failure Analysis & Renewal Referral

Also: backlog management · parts and
[inventory](/capabilities/supply-and-inventory-management/) coordination · contractor maintenance
oversight

## Data

Asset & Work Management Data Model. The
entity that matters most here is Work Order — specifically that
**completion requires actual labour, parts, findings, and condition observed.** Recorded as a
status flag, the asset accumulates no history, planning estimates from guesswork permanently, and
failure analysis is impossible.

## Domain model
Preventive maintenance schedule by asset with interval and basis · work requests with source,
location, and description · work orders with asset, priority, planned labour and parts, and status
· completion records with actual labour, parts, and findings · maintenance history per asset ·
backlog with age and priority · failure records with cause · parts consumption and availability ·
crew capacity and assignment

## Measures

| Measure | Class |
|---|---|
| Preventive-to-reactive ratio | Outcome |
| Preventive work completed on schedule | Process |
| Work backlog age | Process |
| Time from request to completion, by priority | Process |
| Work orders completed on first visit | Process |
| Repeat failures on the same asset | Outcome |
| Parts availability at the scheduled start | Process |
| Emergency work as a share of total | Outcome |

**The preventive-to-reactive ratio is the health measure for the whole domain.** Below roughly
even, the organization is managing failures rather than assets, and the
[deferred maintenance backlog](/capabilities/capital-planning-and-programming/) is growing whatever
the capital budget shows.

## Level variance

- **Federal.** Large facility portfolios maintained under contract, with performance-based service
  agreements and formal condition reporting.
- **State.** Highway maintenance at scale — pavement, bridges, signals, winter operations — with
  district-based crews and seasonal demand swings.
- **County / municipal.** The broadest asset mix per crew: roads, water and sewer, buildings,
  parks, fleet, and signals, frequently maintained by the same small workforce. Public reporting
  channels feed corrective work directly, which makes visible problems outrank consequential ones
  unless triage is deliberate.

## What to get right

**Set preventive intervals by criticality and observed failure behaviour, not a uniform cycle.** A
single annual cycle for every asset over-maintains the trivial and under-maintains the critical.

**Protect the preventive schedule when reactive demand rises.** Deferring it is individually
rational each time, and it is the mechanism by which the reactive spiral starts.

**Triage by consequence, not visibility.** A photographed and widely posted pothole does not
automatically outrank a valve that is about to fail merely because one generates pressure and the
other does not.

**Give work orders enough asset context to be actionable on the first visit.** Without the model,
the history, and the parts required, the crew arrives unprepared and a second visit is needed.

**Record completion as history, not just a status.** "Closed" with findings, parts, and labour
attached gives the asset a usable record and makes failure analysis possible.

**Report and age the backlog rather than absorbing it.** Valued and visible, it becomes part of the
budget conversation where it matters; held only in the system, it stays invisible there.

**Coordinate parts availability with maintenance scheduling.** Planned separately, work gets
scheduled with parts unavailable and the crew stood down — the coordination point between this
capability and [supply and inventory](/capabilities/supply-and-inventory-management/).

**Analyse recurring failures, not just repair them.** The same pump failing four times calls for
root-cause analysis, not a fifth repair.

## Trust and governance
Work Authorization & Safety Prerequisites
· Asset Data Integrity & Handover

## Patterns

Criticality-Based Maintenance Strategy at
`minimum_level: 2` — deliberately the lowest bar available. Criticality tiering can be done in a
workshop with the people who know which failures hurt, recorded in a spreadsheet, and applied by
setting different intervals per class. **The step from uniform to tiered is where almost all the
value is**, and it does not require a system.

Run-to-failure is part of the pattern and the part most often omitted. Organizations already ration
preventive maintenance implicitly, under pressure, at seven in the morning; doing it explicitly
produces the same rationing with a basis that can be explained afterwards.

## AI and automation
Failure prediction from work history at
`minimum_level: 4`, and the prerequisite is the record rather than the model. An organization whose
completion is a status flag cannot do this, and no amount of modelling effort substitutes.

Two boundaries worth stating. **Criticality is not learnable from failure history** — an asset that
has never failed may be the one whose failure would be catastrophic, so prediction and consequence
stay independent inputs. And renewal driven by failure history concentrates investment where assets
have historically been maintained *and recorded*, which can systematically under-prioritize
neighbourhoods with poorer historical record-keeping. Compare predicted investment distribution
against population before acting on the ranking.
## Architecture

The architecture boundary for this capability follows the responsibilities, lifecycle, and
information described above. A dedicated architecture artifact has not yet been developed for
this inventory entry.
