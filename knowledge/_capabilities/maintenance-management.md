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
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/build-and-operate.md
  - predicate: has_participant
    target: /personas/program-manager.md
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

## Key processes

Preventive maintenance programme definition · maintenance strategy selection by asset criticality ·
work request intake from staff, public, and condition monitoring · triage and prioritization · work
order planning — labour, parts, access, permits · scheduling and crew assignment · dispatch and
execution · completion recording and asset history update · backlog management · failure analysis ·
parts and [inventory](/capabilities/supply-and-inventory-management/) coordination · contractor
maintenance oversight

## Key data

Preventive maintenance schedule by asset with interval and basis · work requests with source,
location, and description · work orders with asset, priority, planned labour and parts, and status
· completion records with actual labour, parts, and findings · maintenance history per asset ·
backlog with age and priority · failure records with cause · parts consumption and availability ·
crew capacity and assignment

## Measures

| Measure | Class |
|---|---|
| Preventive versus reactive work, as a share of labour hours | Outcome |
| Preventive work completed on schedule | Process |
| Backlog size and age, by priority | Outcome |
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
