---
type: Capability
title: Maintenance Management
description: Preventive and corrective work — requests, orders, scheduling, parts, and
  completion — where reactive work crowds out the preventive work that would reduce it.
resource: https://industry-blueprints.github.io/capabilities/maintenance-management/
tags: [capability, maintenance, preventive, work-orders, reliability, backlog]

generated: { by: human:jhofmann, at: 2026-07-28T11:30:00Z }
status: draft
stale_after: 2027-07-28
depth: complete

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/build-and-operate.md
  - predicate: has_participant
    target: /personas/maintenance-planner.md
    note: Owns the programme, and watches reactive demand consume it
  - predicate: has_participant
    target: /personas/constituent.md
    note: Frequently the source of the corrective request, through a service request
---

## Purpose

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

## Processes

[Preventive Maintenance Planning](/processes/preventive-maintenance-planning/) ·
[Work Order Planning & Scheduling](/processes/work-order-planning-and-scheduling/) ·
[Field Execution & Completion](/processes/field-execution-and-completion/) ·
[Failure Analysis & Renewal Referral](/processes/failure-analysis-and-renewal-referral/)

Also: backlog management · parts and
[inventory](/capabilities/supply-and-inventory-management/) coordination · contractor maintenance
oversight

## Data

[Asset & Work Management Data Model](/data-models/asset-and-work-management-data-model/). The
entity that matters most here is [Work Order](/data-entities/work-order/) — specifically that
**completion requires actual labour, parts, findings, and condition observed.** Recorded as a
status flag, the asset accumulates no history, planning estimates from guesswork permanently, and
failure analysis is impossible.

## Key data

Preventive maintenance schedule by asset with interval and basis · work requests with source,
location, and description · work orders with asset, priority, planned labour and parts, and status
· completion records with actual labour, parts, and findings · maintenance history per asset ·
backlog with age and priority · failure records with cause · parts consumption and availability ·
crew capacity and assignment

## Measures

| Measure | Class |
|---|---|
| [Preventive-to-reactive ratio](/kpis/preventive-to-reactive-ratio/) | Outcome |
| Preventive work completed on schedule | Process |
| [Work backlog age](/kpis/work-backlog-age/) | Process |
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

## Where it goes wrong

**Preventive intervals set uniformly.** Every asset on an annual cycle regardless of criticality or
observed failure behaviour, which over-maintains the trivial and under-maintains the critical.

**Preventive deferred whenever reactive demand rises.** Individually rational each time, and it is
the mechanism by which the spiral starts.

**Triage by visibility.** The pothole photographed and posted jumps the valve that is about to
fail, because one generates pressure and the other does not.

**Work orders without asset context.** The crew arrives without knowing the model, the history, or
the parts required, and a second visit is needed.

**Completion recorded as a status, not as history.** "Closed" with no findings, no parts, no
labour, so the asset accumulates no usable record and failure analysis is impossible.

**Backlog absorbed rather than reported.** Held in the system, never aged or valued, so it is
invisible in the budget conversation where it would matter.

**Parts and maintenance planned separately.** Work scheduled, parts unavailable, crew stood down —
the coordination failure between this capability and
[supply and inventory](/capabilities/supply-and-inventory-management/).

**No failure analysis.** The same pump fails four times and is repaired four times.

## Governance

[Work Authorization & Safety Prerequisites](/governance/work-authorization-and-safety-prerequisites/)
· [Asset Data Integrity & Handover](/governance/asset-data-integrity-and-handover/)

## Patterns

[Criticality-Based Maintenance Strategy](/patterns/criticality-based-maintenance-strategy/) at
`minimum_level: 2` — deliberately the lowest bar available. Criticality tiering can be done in a
workshop with the people who know which failures hurt, recorded in a spreadsheet, and applied by
setting different intervals per class. **The step from uniform to tiered is where almost all the
value is**, and it does not require a system.

Run-to-failure is part of the pattern and the part most often omitted. Organizations already ration
preventive maintenance implicitly, under pressure, at seven in the morning; doing it explicitly
produces the same rationing with a basis that can be explained afterwards.

## AI opportunities

[Failure prediction from work history](/ai-opportunities/failure-prediction-from-work-history/) at
`minimum_level: 4`, and the prerequisite is the record rather than the model. An organization whose
completion is a status flag cannot do this, and no amount of modelling effort substitutes.

Two boundaries worth stating. **Criticality is not learnable from failure history** — an asset that
has never failed may be the one whose failure would be catastrophic, so prediction and consequence
stay independent inputs. And renewal driven by failure history concentrates investment where assets
have historically been maintained *and recorded*, which can systematically under-prioritize
neighbourhoods with poorer historical record-keeping. Compare predicted investment distribution
against population before acting on the ranking.
