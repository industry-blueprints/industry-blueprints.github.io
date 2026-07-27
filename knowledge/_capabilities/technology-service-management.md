---
type: Capability
title: Technology Service Management
description: Service desk, incident and change management, and the operational running
  of technology — the internal equivalent of constituent service.
resource: https://industry-blueprints.github.io/capabilities/technology-service-management/
tags: [capability, itsm, service-desk, incident, change, problem-management]

generated: { by: human:jhofmann, at: 2026-07-27T23:45:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/inform.md
  - predicate: has_participant
    target: /personas/chief-information-officer.md
  - predicate: has_participant
    target: /personas/knowledge-manager.md
    note: The service desk is the clearest internal case for governed knowledge
---

## Purpose

To run technology as a service: take requests and incidents, restore service, control change,
eliminate recurring causes, and maintain a reliable picture of what exists.

**Structurally the same capability as [constituent service
management](/capabilities/constituent-service-management/), with staff as the constituents.** The
same triage, case record, knowledge, routing, and resolution problems apply, and the same maturity
progression describes it. An organization that has solved one has most of the answer to the other,
and almost never notices.

## Desired outcomes

- One route in, with requests and incidents distinguished and handled differently
- Restoration prioritized by service impact, not by who called
- Recurring incidents eliminated rather than efficiently repeated
- Change controlled proportionately — emergency changes possible without abandoning control
- An asset and configuration picture accurate enough to be relied on during an incident
- Knowledge governed, so the same answer is given twice

## Key processes

Service catalogue definition · request intake and fulfilment · incident logging, triage, and
escalation · major incident management and communication · problem investigation and known-error
management · change request, assessment, and approval · release and deployment · configuration and
asset management · service level definition and reporting · knowledge article creation and review ·
end-user device lifecycle

## Key data

Service catalogue with owners and service levels · request and incident records with category and
resolution · problem records linked to their incidents · change records with risk, approval, and
outcome · configuration items and their relationships · asset register with lifecycle state ·
knowledge articles with owners and review dates · service level attainment

## Measures

| Measure | Class |
|---|---|
| First-contact resolution at the service desk | Outcome |
| Time to restore, by priority | Process |
| Incidents linked to a known problem | Process |
| Repeat incidents from an unresolved cause | Outcome |
| Change success rate, and changes causing incidents | Outcome |
| Emergency changes as a share of total | Process |
| Configuration accuracy, sampled | Process |
| Knowledge articles used at the point of resolution | Process |

**Emergency change share is the diagnostic.** A high proportion means the standard change path is
too slow to use, and the answer is to fix the path rather than to police the exceptions — the same
logic as split purchases in
[purchasing and requisitioning](/capabilities/purchasing-and-requisitioning/).

## Level variance

- **Federal.** Large-scale service management, frequently delivered through shared service
  providers with formal service level agreements between agencies.
- **State.** Central technology service organizations serving agencies on a chargeback basis, which
  makes service level performance a billing conversation as well as an operational one.
- **County / municipal.** Small teams supporting an unusually wide estate — office systems,
  public safety, utilities, libraries, schools in some structures — with twenty-four-hour
  obligations for dispatch and emergency services and no round-the-clock staffing to match.

## Where it goes wrong

**Requests and incidents in one queue.** A password reset and a failed dispatch system prioritized
by arrival order.

**Priority set by the caller's seniority.** Rather than by service impact, which is measurable and
defensible.

**Problem management as a spare-time activity.** Incidents closed efficiently, causes never
investigated, and the same failure resolved two hundred times — the most expensive habit in this
capability.

**Change control that everyone routes around.** A weekly board with a five-day lead time, so real
work is classified as emergency and the control becomes theatre.

**A configuration database maintained by nobody.** Populated during an implementation, decayed
within a year, and consulted during a major incident when it is wrong.

**Knowledge in individual heads.** The same investigation repeated by whoever picks it up, and
resolution time determined by which technician answered — see [grounded knowledge
retrieval](/patterns/grounded-knowledge-retrieval/).

**Service levels measured on the desk only.** Response time reported, restoration owned by teams
outside the measure, so performance looks acceptable and the user's experience is not.

**Shadow IT treated as a discipline problem.** Departments buy their own systems when the central
route is slow — which is a signal about the central route.
