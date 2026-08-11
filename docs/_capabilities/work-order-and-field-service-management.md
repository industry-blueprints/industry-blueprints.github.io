---
id: work-order-and-field-service-management
title: Work Order & Field Service Management
type: capability
level: 2
version: '0.1'
status: draft
description: Dispatching, equipping, and tracking crews doing work away from a desk
  — the shared operational spine under every field-based service.
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

## Lifecycle
Work Request Intake & Triage ·
Work Order Planning & Scheduling ·
Field Execution & Completion

Also: skill and certification matching · route optimization · locate request coordination · offline
synchronization · cost roll-up · timesheet integration

## Domain model
Asset & Work Management Data Model, extending
the core model. The structural decision:
Work Order attaches to the
Asset, not to an address — and **completion requires actual labour, parts,
and findings, not a status flag.** Everything downstream in this domain depends on those two.

Also held: crew skills, certifications, and availability · equipment and vehicle assignment ·
schedule and route plans · mobile capture with time and place · locate tickets and responses ·
requester contact and notification history

## Measures

| Measure | Class |
|---|---|
| Schedule adherence — work completed as planned | Process |
| First-visit completion rate | Outcome |
| Work backlog age | Process |
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

## What to get right

**Share one work order system across departments.** A single system for water, streets, parks,
and facilities is what lets a crew working across two carry one device and gives the organization
a combined view of field demand.

**Capture work in the field, at the point of work.** Recording detail as it happens, rather than
on paper transcribed later at the depot, keeps detail intact and frees up crew time.

**Choose mobile tools that work offline.** Field work happens in basements, vaults, rural
stretches, and during outages — tools that work without a live connection are what keep capture
working exactly when it's most needed.

**Dispatch with asset history in hand.** Giving the crew what was done last time before they
arrive is what lets them bring the right part the first time.

**Schedule with travel time in view.** Assigning jobs with geography in mind is what keeps crews
from crossing the jurisdiction twice a day.

**Capture location as a coordinate or asset identifier.** Recording it that way, rather than as
free text like "corner of Main and 3rd," is what lets the work be mapped, aggregated, and matched
to prior work.

**Notify the requester on completion.** Closing the loop proactively is what keeps the requester —
resident or internal — from calling to ask, which otherwise counts as contact volume against
[constituent service](/solutions/constituent-management/) rather than against the
service that closed the loop.

**Capture actual cost as the work happens.** Recording labour, materials, and equipment as used,
rather than estimating them, is what makes a service costable and comparable against contracting
out.

## Trust and governance
Work Authorization & Safety Prerequisites
— and the distinction that carries it: **arranging a prerequisite during planning is not verifying
it at execution.** Locates expire, marks wash away, isolation gets reinstated by another crew.

## Patterns

Offline-First Field Capture at
`minimum_level: 2` — a design constraint rather than a technology tier, and the enabler for
everything above it. An organization at level 3 without offline capture accumulates no usable
history, and the analytical capabilities built on top underperform for reasons that get attributed
to the wrong cause.

## AI and automation
Work request triage and duplicate detection

The boundary here is narrow and specific: **classify and link, never merge or close.** A duplicate
link is reversible; a merge is not, and a wrongly merged report means a second real defect goes
unrecorded. Priority stays with the published rule rather than the model — a model that learns
priority from historical decisions learns triage-by-visibility and encodes it as policy.
## Architecture

The architecture boundary for this capability follows the responsibilities, lifecycle, and
information described above. A dedicated architecture artifact has not yet been developed for
this inventory entry.
