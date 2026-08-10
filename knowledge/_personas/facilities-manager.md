---
type: Persona
title: Facilities Manager
description: Runs one or more buildings day to day — space, occupant requests, the trades
  that keep systems running, and the certifications that lapse if nobody watches them.
resource: https://industry-blueprints.github.io/personas/facilities-manager/
tags: [persona, facilities, buildings, operations, space, compliance]

generated: { by: human:jhofmann, at: 2026-07-29T16:00:00Z }
status: draft
stale_after: 2027-07-29
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
persona_type: specialist
---

Also: Building Manager, Facility Operations Supervisor, Plant Manager. In a small municipality
this is one person covering every building the organization owns, plus whatever they lease.

## Role summary

Owns the building as a working environment: who sits where, what's broken, whether the elevator
certificate is current, and whether the cleaning contractor actually showed up last night. Not a
tradesperson — coordinates trades, contractors, and internal crews, and is the person who gets
called first regardless of whether the problem is actually theirs to fix.

**The job is coordination under a shortage of everything** — budget, staff, and information about
the building's own condition. A repair request, a lease renewal, an accessibility complaint, and a
fire inspector all compete for the same afternoon.

## Goals

- Every occupant request handled through one route, with a visible status
- Certifications and inspections current, before anyone asks
- Space matched to how it's actually used, not to who has always had it
- Energy and service contracts costed and reviewed, not renewed on autopilot
- Nothing found out about the building from an occupant or an inspector first

## Decisions made

| Decision | Constrained by |
|---|---|
| Whether a request goes to an internal crew, a contractor, or gets deferred | Staffing, contract terms, and how much budget is left this quarter |
| Which compliance item gets chased this week | Whichever has the nearest due date or the worst consequence for missing it |
| Whether a space request gets granted | Available footprint, and who else is asking |
| Whether a repeat repair becomes a bigger capital ask | Failure history, if anyone kept it |
| Whether to renew a lease or push for owned space | Numbers the finance side usually holds, not facilities |

## Pain points

**Everything arrives through a different door.** Email, a phone call, a hallway conversation, a
work order system nobody else uses. There is no single place that shows what the building actually
needs this week.

**No usable history on the building itself.** A recurring HVAC failure looks like three unrelated
complaints because nothing connects them — see
[compliance inspection scheduling and certification tracking](/processes/compliance-inspection-scheduling-and-certification-tracking/)
for the same problem applied to certifications.

**Personal relationships decide who gets served first.** Whoever has the manager's cell number
gets their office fixed today; everyone else waits, and there's no record that they did.

**Certifications tracked on a calendar, a spreadsheet, or in someone's memory.** Discovered lapsed
during an incident, not before one.

**Deferred renewal is invisible until it fails.** A roof or a system nearing the end of its life
sits in nobody's budget conversation until it actually gives out — see
[facilities operations](/capabilities/facilities-operations/) on deferred renewal.

**Blamed for the building's age.** A structure decades past its design life is judged against the
standard of a new one, by people who approved neither the building nor its funding.

## Typical questions

- Who actually asked for this, and when?
- Has this happened before, and what did it take last time?
- What's due this month, and what happens if it slips?
- Is this space actually being used, or just held?
- Whose budget does this repair come out of — mine, or capital's?
