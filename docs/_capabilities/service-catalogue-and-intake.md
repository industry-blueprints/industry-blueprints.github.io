---
id: service-catalogue-and-intake
title: Service Catalogue & Intake
type: capability
level: 2
version: '0.1'
status: draft
description: Defining what the organization offers and the channels through which
  it is requested — the front door, and the thing nobody owns.
last_updated: '2026-08-11'
capability_area: serve
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
To maintain an authoritative definition of every service the organization offers — what it is, who
is eligible, what it requires, what it costs, how long it takes — and to operate the channels
through which people request them.

**People arrive with a problem, not a service name.** The catalogue exists so the organization can
map an expressed need onto something it actually provides, and the commonest reason it cannot is
that no single list of services exists anywhere.

## Desired outcomes

- One authoritative service definition, reused by every channel rather than restated per channel
- Services described in the words people use, not in the organization's terminology
- Intake capturing what is needed once, not the same details three times
- Channel choice belonging to the person, with parity of outcome across channels
- Every request producing a case with a reference the person can quote
- Eligibility and requirements visible before someone invests effort in applying

## Lifecycle
Service definition and cataloguing · service owner assignment · eligibility and requirement
documentation · channel design and parity review · form design and rationalization · intake
routing and case creation · reference number issue and acknowledgement · service level publication
· catalogue review and retirement · demand analysis by service and channel

## Domain model
Service catalogue with owner, description, eligibility, requirements, fee, and service level ·
Service to organizational unit mapping · form inventory
with fields and their justification · channel availability per service · intake records creating
cases · demand volume by service, channel, and segment · service level attainment per service

## Measures

| Measure | Class |
|---|---|
| Services with a named owner and a current definition | Process |
| Services requestable through more than one channel | Process |
| Outcome parity across channels for the same service | Outcome |
| Requests arriving at the wrong unit | Process |
| Fields collected that are never used | Process |
| Time from request to acknowledgement with a reference | Process |
| Contacts asking "who do I talk to" rather than making a request | Outcome |

The last measure is the honest test of the catalogue. Volume there means the front door is not
working, and it is usually attributed to the contact centre instead.

## Level variance

- **Federal.** High-impact service providers with designated service owners and published service
  standards, and a statutory push toward digital-by-default forms.
- **State.** Large programme-specific intake systems — benefits, licensing, tax — each with its own
  channel estate, rarely sharing a catalogue.
- **County / municipal.** The widest service range per capita and the strongest case for a single
  catalogue: hundreds of distinct services across dozens of departments, with residents who do not
  know—and do not need to know—which department owns what.

## What to get right

**Build one catalogue that enumerates every service.** Without it, services exist only as
departmental knowledge, nobody can improve the set, and every channel invents its own list.

**Write the catalogue in the words people use.** Naming a service after the statute or the
internal team makes search fail for everyone who does not already know the answer.

**Design one form per service centrally, not independently per department.** Requesting the same
identity and contact details repeatedly creates another record each time and another chance for
the identity resolution problem.

**Collect only the fields a service actually needs.** Every unnecessary field costs completion
and creates a retention obligation — see [privacy management](/capabilities/privacy-management/).

**Hold channels to the same outcome.** When the online route resolves in two days and the phone
route in three weeks, the channel someone can use ends up determining the outcome they get —
parity closes that gap.

**Acknowledge every request with a reference.** Without one, the person has no way to follow up,
so they call again — which then gets counted as new demand.

**Keep the catalogue current.** Fees, timelines, and requirements need updating so residents
aren't quoting back information from four years ago.

**Retire services when they stop being offered.** Otherwise they stay listed until someone
requests one that no longer exists.
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
