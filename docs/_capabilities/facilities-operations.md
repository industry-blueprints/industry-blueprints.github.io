---
id: facilities-operations
title: Facilities Operations
type: capability
level: 2
version: '0.1'
status: draft
description: Running buildings — space, security, energy, cleaning, and occupant services
  — for an estate that is often older than anyone working in it.
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

## Lifecycle
Occupant Request Intake and Resolution — how
a report gets from an occupant to whoever can act on it, and why safety and comfort can't share a
queue.

Compliance Inspection Scheduling and Certification Tracking —
keeping fire, elevator, backflow, and accessibility certifications current across every building
the organization runs.

Also: space inventory and allocation · utilization measurement · move, add, and change management ·
security operations, access control, and screening · energy and utility management and procurement
· cleaning and janitorial service delivery · grounds and snow operations · building systems
operation · emergency preparedness for the building · lease administration in coordination with
[property management](/capabilities/right-of-way-and-property-management/)

## Domain model
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
