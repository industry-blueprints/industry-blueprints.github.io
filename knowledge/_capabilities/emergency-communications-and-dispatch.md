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

## What to get right

**Nail location first — everything else depends on it.** Wireless and indoor calls where the device
location is imprecise and the caller cannot say where they are put the whole response downstream of
establishing it, and doing so depends on the authoritative address and parcel data described in
[geospatial information management](/capabilities/geospatial-information-management/).

**Match the response to the need, not just to what exists.** Behavioural health crisis, welfare
check, and non-injury report deserve a response suited to them rather than a default police
response — dispatching all three as police consumes field capacity and produces poor outcomes at
both ends.

**Keep the caller with one centre, not transferred mid-call.** A transfer means the caller repeats
everything, having already waited, while the clock keeps running.

**Test interoperability with an exercise, not with the incident.** Radio systems that cannot talk to
the neighbouring agency need to be discovered during an exercise, not during the mutual aid incident
— the same untested-assumption pattern as backup power in
[critical infrastructure resilience](/capabilities/critical-infrastructure-resilience/).

**Staff to peak demand, not the average.** Demand is peaked and non-negotiable; a centre staffed to
the mean fails at exactly the times it matters.

**Address cumulative exposure directly.** Telecommunicators experience the worst calls repeatedly
with no scene resolution and no closure, and are frequently classified administratively rather than
as first responders; supporting them and classifying the role accurately helps retention — see
[employee health, safety and
wellbeing](/capabilities/employee-health-safety-and-wellbeing/).

**Treat language capability on the emergency line as core, not an enhancement.** Interpretation
needs to reach the call in seconds, not minutes, for the calls that need it — see
[language access](/capabilities/language-access/).

**Revalidate premise hazard flags on a schedule.** Warnings attached years ago and never
revalidated bias the response to an address indefinitely.
