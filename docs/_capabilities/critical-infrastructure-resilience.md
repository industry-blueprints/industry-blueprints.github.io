---
id: critical-infrastructure-resilience
title: Critical Infrastructure Resilience
type: capability
level: 2
version: '0.1'
status: draft
description: Identifying dependencies and hardening the systems whose failure would
  cascade — most of which the government does not own.
last_updated: '2026-08-11'
capability_area: protect
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
To identify the infrastructure whose failure would cascade across the community, understand the
dependencies between systems, and work with owners — mostly private — to reduce the likelihood and
consequence of failure.

**Most critical infrastructure is not government-owned, and the government's instrument is
relationship rather than authority.** Power, telecommunications, hospitals, fuel, and food
distribution are privately operated. Regulation covers some of it; the coordination that matters
during an event runs on relationships established beforehand.

## Desired outcomes

- Critical assets and systems identified by consequence of failure, not by ownership
- Dependencies mapped between systems, including the second-order ones
- Single points of failure known, with the ones that are correctable prioritized
- Relationships with private operators established before an event
- Restoration priorities agreed in advance, across sectors
- Government-owned critical assets hardened where the analysis supports it
- Backup and redundancy tested rather than assumed

## Lifecycle
Critical asset and system identification · consequence-of-failure assessment · dependency and
interdependency mapping · single point of failure analysis · cascading failure scenario development
· private operator engagement and information sharing · restoration priority negotiation across
sectors · hardening and redundancy investment for owned assets · backup power and communications
provision and testing · supply chain dependency assessment · operational technology security
coordination with
[cybersecurity operations](/capabilities/cybersecurity-operations/) · exercise participation with
operators · post-event dependency review

## Domain model
Critical asset and system register with owner, sector, and consequence rating · dependency map
across power, water, telecommunications, transport, health, and fuel · single point of failure
register with mitigation status · operator contacts verified on a schedule · restoration priority
agreements · backup power inventory with fuel duration and test records · redundant communication
paths and test results · supply chain dependencies for essential functions · scenario analyses and
findings

## Measures

| Measure | Class |
|---|---|
| Critical systems with dependencies mapped, including second-order | Process |
| Single points of failure identified, and mitigated | Outcome |
| Operator contacts verified within the period | Process |
| Restoration priorities agreed in advance across sectors | Process |
| Backup power tested under load, not just started | Process |
| Backup power fuel duration against likely outage length | Process |
| Redundant communications tested end to end | Process |
| Cascading failures in real events that were not anticipated | Outcome |

**Backup power tested under load is the measure that repeatedly surprises.** Generators start
monthly and fail under actual load, and fuel contracts frequently assume a resupply that will not
happen in a regional event.

## Level variance

- **Federal.** Sector-based critical infrastructure framework, national risk analysis, information
  sharing arrangements with owners, and sector-specific regulation.
- **State.** Coordination with utilities and telecommunications operators at scale, regulatory
  authority over some sectors, and the fusion and information sharing structures locals connect to.
- **County / municipal / tribal.** **Where the dependencies are concrete and local.** The
  wastewater plant depends on one substation; the emergency operations centre depends on one fibre
  route; the hospital depends on a fuel supplier with no local storage. Local government owns some
  of this and has no authority over most of it, which makes standing relationships with operators
  the actual capability.

## Getting this right

**Map dependencies past the first order.** The hospital has backup power; the fuel supplier that
refills the tank may not, and neither may the road that reaches it — worth tracing further.

**Hold operator relationships institutionally, not through one person.** A utility liaison who
knows who to call and then retires takes the relationship along — the failure noted in
[intergovernmental relations](/capabilities/intergovernmental-relations/), applied to private
operators.

**Agree restoration priorities before the outage.** Negotiated during the event, every entity
claims priority simultaneously, with no prior agreement about sequence.

**Load-test generators, not just start them.** A monthly start proves the engine runs and nothing
about whether it carries the building.

**Calculate fuel duration rather than assume it.** Seventy-two hours of fuel and a resupply
contract that competes with every other customer in a regional event may not hold up under
calculation.

**Route communications redundancy through separate physical paths.** Two providers on one conduit
is a common and invisible dependency until the conduit is cut.

**Own operational technology jointly across infrastructure and cyber.** If the
[cybersecurity](/capabilities/cybersecurity-operations/) team does not own the treatment plant
controls and the engineering team does not track vulnerabilities, nobody does.

**Connect analysis to investment.** Dependencies mapped and single points of failure listed need a
route into the [capital
programme](/capabilities/capital-planning-and-programming/) — which is where the finding becomes a
fix.
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
