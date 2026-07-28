---
type: Capability
title: Work Order & Field Service Management
description: Dispatching, equipping, and tracking crews doing work away from a desk —
  the shared operational spine under every field-based service.
resource: https://industry-blueprints.github.io/capabilities/work-order-and-field-service-management/
tags: [capability, work-orders, field-service, dispatch, mobile, crews, scheduling]

generated: { by: human:jhofmann, at: 2026-07-28T12:45:00Z }
status: draft
stale_after: 2027-07-28
depth: complete

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/build-and-operate.md
  - predicate: has_participant
    target: /personas/public-works-director.md
  - predicate: has_participant
    target: /personas/field-crew-lead.md
    note: Runs the crew, and is the last chance to capture what happened
  - predicate: uses_data
    target: /data-entities/location.md
---

## Purpose

To get the right crew, with the right equipment and information, to the right place — scheduling
and dispatching field work, supporting it while it is happening, and capturing what was done.

**This is the shared operational spine under
[maintenance](/capabilities/maintenance-management/),
[utilities](/capabilities/utility-operations/),
[inspections](/capabilities/inspections/),
[fleet](/capabilities/fleet-management/), and
[facilities](/capabilities/facilities-operations/).** Every one of them dispatches people to
locations and needs the work recorded against an asset or a case. Most organizations implement it
separately four or five times.

## Desired outcomes

- One work order model across field services, whatever the originating system
- Scheduling that accounts for skill, certification, equipment, and travel
- Crews arriving with the asset history, prior work, and safety information they need
- Work recorded at the point of work, not re-entered at the depot
- Field capture that works with no connectivity, and reconciles when it returns
- Location captured accurately and consistently against the authoritative
  [spatial data](/capabilities/geospatial-information-management/)
- Requesters able to see status without calling
- Actual labour, materials, and equipment captured for costing

## Processes

[Work Request Intake & Triage](/processes/work-request-intake-and-triage/) ·
[Work Order Planning & Scheduling](/processes/work-order-planning-and-scheduling/) ·
[Field Execution & Completion](/processes/field-execution-and-completion/)

Also: skill and certification matching · route optimization · locate request coordination · offline
synchronization · cost roll-up · timesheet integration

## Data

[Asset & Work Management Data Model](/data-models/asset-and-work-management-data-model/), extending
the [core model](/data-models/core-public-sector-model/). The structural decision:
[Work Order](/data-entities/work-order/) attaches to the
[Asset](/data-entities/asset/), not to an address — and **completion requires actual labour, parts,
and findings, not a status flag.** Everything downstream in this domain depends on those two.

Also held: crew skills, certifications, and availability · equipment and vehicle assignment ·
schedule and route plans · mobile capture with time and place · locate tickets and responses ·
requester contact and notification history

## Measures

| Measure | Class |
|---|---|
| Schedule adherence — work completed as planned | Process |
| [First-visit completion rate](/kpis/first-visit-completion-rate/) | Outcome |
| [Work backlog age](/kpis/work-backlog-age/) | Process |
| Travel time as a share of crew time | Input |
| Work recorded in the field versus re-entered later | Process |
| Wrench time — productive field hours per crew day | Input |
| Location accuracy of captured work | Process |
| Requesters notified on completion | Process |
| Safety prerequisites verified before work start | Process |

**First-visit completion is the measure that pays for everything else here.** A second visit costs
travel, scheduling, and equipment twice, and it is almost always caused by information the crew
could have had before leaving.

## Level variance

- **Federal.** Field operations in land management, facilities, and inspection functions, typically
  under agency-specific systems.
- **State.** Highway maintenance districts, environmental and health inspection, and facility crews
  operating across wide geographies where travel time dominates.
- **County / municipal.** **The densest field operation in government**: public works, water and
  sewer, parks, code enforcement, building inspection, and facilities, frequently sharing crews and
  equipment across functions. Small jurisdictions run all of this on paper and radio, which works
  and produces no data.

## Where it goes wrong

**A separate work order system per department.** Water, streets, parks, and facilities each with
their own, so a crew working across two carries two devices and the organization has no combined
view of field demand.

**Paper in the field, entry at the depot.** Detail lost, entry delayed by days, and the crew
spending productive time on transcription.

**Mobile tools that require connectivity.** Field work happens in basements, vaults, rural
stretches, and during outages. Anything requiring a live connection fails exactly when the work is
most urgent.

**Dispatch without asset history.** The crew arrives, discovers what was done last time from the
condition of the equipment, and returns for the right part.

**Scheduling that ignores travel.** Jobs assigned by geography-blind priority, so crews cross the
jurisdiction twice a day.

**Location captured as free text.** "Corner of Main and 3rd" rather than a coordinate or an asset
identifier, so the work cannot be mapped, aggregated, or matched to prior work.

**No completion notification.** The requester — resident or internal — calls to ask, generating
contact volume that counts against
[constituent service](/capabilities/constituent-service-management/) rather than against the
service that failed to close the loop.

**Actual cost never captured.** Labour, materials, and equipment estimated rather than recorded, so
no service can be costed and no comparison with contracting out is possible.

## Governance

[Work Authorization & Safety Prerequisites](/governance/work-authorization-and-safety-prerequisites/)
— and the distinction that carries it: **arranging a prerequisite during planning is not verifying
it at execution.** Locates expire, marks wash away, isolation gets reinstated by another crew.

## Patterns

[Offline-First Field Capture](/patterns/offline-first-field-capture/) at
`minimum_level: 2` — a design constraint rather than a technology tier, and the enabler for
everything above it. An organization at level 3 without offline capture accumulates no usable
history, and the analytical capabilities built on top underperform for reasons that get attributed
to the wrong cause.

## AI opportunities

[Work request triage and duplicate detection](/ai-opportunities/work-request-triage-and-duplicate-detection/)

The boundary here is narrow and specific: **classify and link, never merge or close.** A duplicate
link is reversible; a merge is not, and a wrongly merged report means a second real defect goes
unrecorded. Priority stays with the published rule rather than the model — a model that learns
priority from historical decisions learns triage-by-visibility and encodes it as policy.
