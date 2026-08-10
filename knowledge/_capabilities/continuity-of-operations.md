---
type: Capability
title: Continuity of Operations
description: Keeping essential government functions running when normal conditions do
  not hold — which is a service question before it is a technology one.
resource: https://industry-blueprints.github.io/capabilities/continuity-of-operations/
tags: [capability, continuity, coop, resilience, essential-functions, succession]

generated: { by: human:jhofmann, at: 2026-07-28T14:45:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal, tribal]

relationships:
  - predicate: part_of
    target: /domains/protect.md
  - predicate: has_participant
    target: /personas/agency-director.md
    note: Owns the determination of which functions are essential, which is a policy judgment
  - predicate: has_participant
    target: /personas/chief-information-officer.md
  - predicate: has_participant
    target: /personas/hr-director.md
    note: Continuity is mostly about people — who can do the work, and from where
---

## Purpose

To ensure that essential government functions continue through a disruption — identifying which
functions are essential, establishing what they depend on, and arranging alternatives for
facilities, staff, systems, and records.

**Essential-function identification is a policy judgment, and it is the whole capability.**
Everything downstream — recovery objectives, alternate sites, delegations, system priorities —
follows from that list. Organizations that skip it and start with IT disaster recovery are
protecting the systems somebody happened to ask about.

## Desired outcomes

- Essential functions identified deliberately, with the criteria stated
- Recovery time objectives set by service consequence, then validated by test
- Dependencies mapped — staff, systems, data, facilities, suppliers, other agencies
- Orders of succession and delegations of authority pre-established and legally sound
- Vital records identified and accessible from an alternate location
- Alternate facilities and remote working arrangements tested
- Plans exercised alongside emergency response, not separately

## Key processes

Essential function identification and prioritization · business impact analysis · recovery time and
recovery point objective setting · dependency mapping · order of succession establishment ·
delegation of authority documentation · vital records identification and protection · alternate
facility designation and readiness · remote and dispersed operation planning · devolution planning
to another location or entity · supplier and third-party continuity assessment · plan testing and
exercise · reconstitution planning · plan maintenance

## Key data

Essential function register with priority, owner, and criteria applied · business impact analysis
results with tolerable downtime · recovery objectives per function and per supporting system ·
dependency map covering staff, systems, data, facilities, and suppliers · orders of succession by
position with named incumbents · delegations of authority with legal basis and triggers · vital
records inventory with location and access method · alternate facility inventory with readiness
status · test and exercise results

## Measures

| Measure | Class |
|---|---|
| Essential functions with a documented business impact analysis | Process |
| Recovery objectives validated by test rather than asserted | Process |
| Dependencies mapped, including third parties | Process |
| Succession positions with a named, briefed alternate | Process |
| Vital records accessible from the alternate location, tested | Process |
| Continuity plans exercised in the period | Process |
| Actual recovery time in real disruptions against objective | Outcome |

**Recovery objectives validated by test is the measure that separates a continuity plan from a
continuity capability.** An asserted four-hour objective on a system nobody has attempted to
restore is a number, not a commitment — the same point as untested backups in
[cybersecurity operations](/capabilities/cybersecurity-operations/).

## Level variance

- **Federal.** Formal continuity directives with mandated essential function identification,
  succession requirements, alternate facilities, and regular national-level exercises.
- **State.** Agency continuity plans under state emergency management coordination, with statutory
  succession provisions for constitutional offices.
- **County / municipal / tribal.** **Continuity is thinnest exactly where single points of failure
  are most common** — one certified water operator, one payroll administrator, one person who knows
  the permitting system. Succession provisions for elected officials frequently exist in charter;
  operational succession usually does not exist at all.

## Getting this right

**Address staff, facility, and paper-process dependencies, not just IT recovery.** Recovering
systems alone leaves the function stopped even when the system is available.

**Prioritize the essential-function list, don't just declare everything essential.** A list that
includes most of what the organization does provides no prioritization, which is the only thing
the list is for.

**Set recovery objectives from evidence, then validate them by test.** Times chosen because they
sound responsible, and never tested, tend to turn out impossible during the actual event.

**Record known single points of failure with a named alternate.** One person able to perform a
function, recognized by everyone but never logged as a continuity risk, stays a silent
vulnerability until it is written down.

**Make vital records reachable from the alternate location, not just listed in the plan.** Held on
a network share reachable only from the office that is unavailable, they are not actually
accessible when needed.

**Equip and visit alternate facilities before they're needed.** Designated on paper with no
connectivity, no equipment, and no access arrangement, they don't function as alternates when
called on.

**Assess third-party dependencies rather than assuming continuity.** A plan that assumes suppliers
and other agencies keep operating is assuming away exactly what fails in a regional event.

**Exercise continuity and emergency response together.** Two plans and two exercise programmes that
never test the situation where both apply at once miss every real disruption, since that is what a
real disruption looks like.
