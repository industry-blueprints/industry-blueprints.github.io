---
type: Capability
title: Facilities Operations
description: Running buildings — space, security, energy, cleaning, and occupant
  services — for an estate that is often older than anyone working in it.
resource: https://industry-blueprints.github.io/capabilities/facilities-operations/
tags: [capability, facilities, buildings, space, energy, security, operations]

generated: { by: human:jhofmann, at: 2026-07-28T11:30:00Z }
status: draft
stale_after: 2027-07-28
depth: detailed

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/build-and-operate.md
  - predicate: has_participant
    target: /personas/public-works-director.md
    note: Buildings sit in the same estate and compete for the same renewal funding
  - predicate: has_participant
    target: /personas/constituent.md
    note: Public buildings are service locations, and their accessibility is a service attribute
  - predicate: has_participant
    target: /personas/facilities-manager.md
    note: Owns the building day to day, across nearly every process on this page
  - predicate: has_participant
    target: /personas/building-occupant.md
    note: Reports what's wrong before anyone else notices it
---

## Purpose

To operate the building estate — allocating and configuring space, providing security, managing
energy and utilities, delivering cleaning and occupant services, and keeping buildings usable and
compliant.

**Public buildings are simultaneously workplaces and service locations.** A county building houses
staff and receives the public, which means accessibility, wayfinding, security screening, and
opening hours are all service design decisions as much as facilities ones.

## Desired outcomes

- Space allocated against actual utilization, measured rather than assumed
- Buildings accessible in practice, not only conformant on paper
- Security proportionate — screening that protects without deterring lawful use
- Energy consumption measured per building and managed against a target
- Occupant requests handled through one route with a visible status
- Compliance obligations — fire, accessibility, air quality, elevators — tracked with dates
- Leased and owned space decisions made on total cost, not on capital availability

## Processes

[Occupant Request Intake and Resolution](/processes/occupant-request-intake-and-resolution/) — how
a report gets from an occupant to whoever can act on it, and why safety and comfort can't share a
queue.

[Compliance Inspection Scheduling and Certification Tracking](/processes/compliance-inspection-scheduling-and-certification-tracking/) —
keeping fire, elevator, backflow, and accessibility certifications current across every building
the organization runs.

Also: space inventory and allocation · utilization measurement · move, add, and change management ·
security operations, access control, and screening · energy and utility management and procurement
· cleaning and janitorial service delivery · grounds and snow operations · building systems
operation · emergency preparedness for the building · lease administration in coordination with
[property management](/capabilities/right-of-way-and-property-management/)

## Key data

Space inventory by building, floor, and room with use and occupancy · utilization measurements ·
occupant request records with status · access control system entitlements · energy consumption by
building and meter, with cost · service contracts for cleaning, security, and building systems ·
compliance inspection register with due dates and results · accessibility audit findings and
remediation status · building condition linked to the
[asset register](/capabilities/asset-management/)

## Measures

| Measure | Class |
|---|---|
| Space utilization against allocated area | Outcome |
| Cost per square foot, by building and by function | Input |
| Energy use intensity, and its trend against target | Outcome |
| Occupant requests resolved within target | Process |
| Compliance inspections completed by due date | Process |
| Accessibility findings open past their remediation date | Outcome |
| Unplanned building system outages affecting service delivery | Outcome |

Energy use intensity is worth tracking per building rather than in aggregate — the distribution is
usually extremely uneven, and two or three buildings account for most of the opportunity.

## Level variance

- **Federal.** Very large owned and leased portfolios managed centrally, with federal building
  standards, security level designations, and formal space allocation policy.
- **State.** Agency office space plus specialized estates — corrections, hospitals, laboratories,
  universities — each with distinct operating requirements.
- **County / municipal.** The most heterogeneous estate relative to size: administrative buildings,
  courthouses, jails, libraries, fire stations, treatment plants, recreation centres, and historic
  structures. **Many are decades past their design life and hold no replacement funding**, and
  historic status frequently constrains the cheapest accessibility and efficiency remedies.

## What to get right

**Allocate space against measured utilization, not history.** Departments holding the footprint
they had before a reorganization, with utilization never measured, leave the estate simultaneously
over-occupied and half empty — measuring it lets allocation catch up.

**Make accessibility work in practice, not just on paper.** A compliant ramp at a locked side
entrance, or an accessible counter used for storage, passes the audit while the building still
doesn't work for the people who need it.

**Size security to an actual threat assessment.** Screening backed by a real threat assessment
protects without suppressing lawful use of a public building.

**Meter energy per building.** Per-building metering, rather than one aggregated utility bill, is
what lets anyone identify the buildings worth acting on.

**Route occupant requests through one visible system.** A single route with a visible status, not
personal relationships with the facilities manager, gives every request a fair place in line and
gives the organization a record of demand.

**Track compliance inspections in a system, not a wall calendar.** A tracked system catches
elevator, fire, and backflow certifications before they lapse, instead of during an incident.

**Feed deferred renewal into the capital programme as a quantified backlog.** Roof and system
replacement needs need to reach the [capital
programme](/capabilities/capital-planning-and-programming/) as a number, not stay invisible inside
facilities.

**Decide lease versus own on total cost.** Basing the decision on total cost, rather than on
capital availability alone, avoids leasing long-term at a cost well above ownership without
recording the tradeoff.
