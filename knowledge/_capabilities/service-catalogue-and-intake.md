---
type: Capability
title: Service Catalogue & Intake
description: Defining what the organization offers and the channels through which it
  is requested — the front door, and the thing nobody owns.
resource: https://industry-blueprints.github.io/capabilities/service-catalogue-and-intake/
tags: [capability, service-catalogue, intake, channels, forms, front-door]

generated: { by: human:jhofmann, at: 2026-07-28T09:00:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/serve.md
  - predicate: has_participant
    target: /personas/constituent.md
    note: Arrives with a problem, not with the name of a service
  - predicate: has_participant
    target: /personas/contact-center-director.md
  - predicate: has_participant
    target: /personas/knowledge-manager.md
    note: The catalogue is content with owners and review dates, or it decays
  - predicate: uses_data
    target: /data-entities/case.md
---

## Purpose

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
- Every request producing a [case](/data-entities/case/) with a reference the person can quote
- Eligibility and requirements visible before someone invests effort in applying

## Key processes

Service definition and cataloguing · service owner assignment · eligibility and requirement
documentation · channel design and parity review · form design and rationalization · intake
routing and case creation · reference number issue and acknowledgement · service level publication
· catalogue review and retirement · demand analysis by service and channel

## Key data

Service catalogue with owner, description, eligibility, requirements, fee, and service level ·
[Service](/data-models/core-public-sector-model/) to organizational unit mapping · form inventory
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
  know and should not need to know which department owns what.

## Where it goes wrong

**No catalogue at all.** Services exist as departmental knowledge. Nobody can enumerate them, so
nobody can improve the set, and every channel invents its own list.

**Catalogue written in organizational language.** Named after the statute or the internal team, so
search fails for everyone who does not already know the answer.

**A form per service, designed independently.** The same identity and contact details requested
repeatedly, each collection creating another record and another chance for the
[identity resolution](/data-models/core-public-sector-model/) problem.

**Fields collected because they might be useful.** Every unnecessary field costs completion and
creates a retention obligation — see [privacy management](/capabilities/privacy-management/).

**Channel disparity.** The online route resolves in two days, the phone route in three weeks, so
the channel someone can use determines the outcome they get.

**No acknowledgement or reference.** The person has no way to follow up, so they call again — which
is counted as new demand.

**Catalogue published once.** Fees, timelines, and requirements from four years ago, still on the
site, still quoted back by residents.

**Retirement never happens.** Services listed that the organization stopped providing, discovered
when someone requests one.
