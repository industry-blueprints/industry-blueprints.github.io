---
type: Capability
title: Emergency Communications & Dispatch
description: Answering the emergency call, determining what is needed, and sending it —
  the single front door to every response service.
resource: https://industry-blueprints.github.io/capabilities/emergency-communications-and-dispatch/
tags: [capability, 911, dispatch, psap, call-taking, triage, interoperability]

generated: { by: human:jhofmann, at: 2026-07-28T17:15:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [state, county, municipal, tribal]

relationships:
  - predicate: part_of
    target: /domains/justice-and-public-safety.md
  - predicate: has_participant
    target: /personas/constituent.md
    note: The caller, frequently in the worst moment of their life and unable to describe a location
  - predicate: has_participant
    target: /personas/customer-service-representative.md
    note: The telecommunicator — the same discipline as contact centre work, at a far higher stake
  - predicate: has_participant
    target: /personas/contact-center-director.md
  - predicate: uses_data
    target: /data-entities/location.md
---

## Purpose

To answer emergency and non-emergency calls, establish what is happening and where, determine what
response is required, dispatch it, and support responders until the incident is resolved.

**This is the single front door to every response service, and the only one operating every hour of
every day.** It is also, structurally, a
[contact centre](/capabilities/constituent-service-management/) — the same intake, triage, routing,
knowledge, and workforce problems apply, with a consequence structure that makes each of them
harder.

## Desired outcomes

- Calls answered within the standard, at every hour including the worst
- Location established reliably, including for callers who cannot say where they are
- Response determined by need rather than by the caller's framing
- Alternative responses available for calls that do not need police, fire, or an ambulance
- Responders dispatched with the information they need before arrival
- Interoperable communications with mutual aid and neighbouring agencies
- Telecommunicators supported through cumulative exposure, and retained

## Key processes

Call answering and initial interrogation · location determination and verification · caller triage
by protocol — medical, fire, police · emergency medical dispatch pre-arrival instruction · call
prioritization and unit recommendation · dispatch and unit status management · alternative response
routing — behavioural health, non-emergency, online reporting · responder support and information
relay during the incident · mutual aid and interoperable communications · text, video, and data
intake · abandoned and misdial handling · language interpretation on the line · quality assurance
review · critical incident support for staff

## Key data

Call records with time stamps at each stage · caller
[location](/data-entities/location/) — reported, device-derived, and verified · incident records
with type, priority, and disposition · unit status and availability · dispatch and arrival times ·
protocol determinants and pre-arrival instructions given · premise history and hazard flags ·
recordings and transcripts under retention · staffing against demand by hour · quality review
findings

## Measures

| Measure | Class |
|---|---|
| Calls answered within the standard, including at peak | Process |
| Time from answer to dispatch, by call type | Process |
| Location accuracy, especially for wireless and indoor calls | Process |
| Calls diverted to an alternative response | Outcome |
| Protocol compliance on medical calls, sampled | Process |
| Interoperability verified by exercise with mutual aid partners | Process |
| Telecommunicator vacancy and turnover rate | Input |
| Repeat calls to the same address or person | Outcome |

**Telecommunicator vacancy is the measure that determines every other measure on this list.** The
role has among the highest turnover in government, mandatory overtime is routine, and a centre
below staffing cannot meet an answer standard however good its technology is.

## Level variance

- **State.** Coordinates the statewide emergency number programme, funding mechanisms, and
  next-generation network deployment, and sets training and certification standards.
- **County.** **Frequently operates the consolidated centre** serving municipalities, fire
  districts, and EMS across the county — consolidation being the dominant structural trend, driven
  by cost and by interoperability.
- **Municipal.** Operates its own centre in larger cities; smaller jurisdictions are usually served
  by the county or a regional authority. **Fragmentation is the historic problem**: adjacent
  centres on different systems, transferring callers between them during the incident.
- **Tribal.** Own dispatch or served by county, with jurisdictional determination adding a step at
  exactly the wrong moment.

## Where it goes wrong

**Location as the first failure.** Wireless and indoor calls where the device location is imprecise
and the caller cannot say where they are. Everything else is downstream of establishing it, and it
depends on the authoritative address and parcel data described in
[geospatial information management](/capabilities/geospatial-information-management/).

**One response type for every call.** Behavioural health crisis, welfare check, and non-injury
report all dispatched as a police response because that is what exists — which consumes field
capacity and produces poor outcomes at both ends.

**Transfer between centres mid-call.** The caller repeats everything, having already waited, and
the clock has been running throughout.

**Interoperability assumed.** Radio systems that cannot talk to the neighbouring agency, discovered
during the mutual aid incident rather than during an exercise — the same untested-assumption
pattern as backup power in
[critical infrastructure resilience](/capabilities/critical-infrastructure-resilience/).

**Staffing modelled on average demand.** Demand is peaked and non-negotiable; a centre staffed to
the mean fails at exactly the times it matters.

**Cumulative exposure unaddressed.** Telecommunicators experience the worst calls repeatedly with
no scene resolution and no closure, are frequently classified administratively rather than as first
responders, and leave — see [employee health, safety and
wellbeing](/capabilities/employee-health-safety-and-wellbeing/).

**Language capability on the emergency line treated as an enhancement.** Interpretation that takes
minutes to reach is not available in the calls that need it — see
[language access](/capabilities/language-access/).

**Premise hazard flags never reviewed.** Warnings attached years ago, never revalidated, biasing
the response to an address indefinitely.
