---
type: Capability
title: Identity & Access Management
description: Establishing who someone is, at what assurance level, and what they may
  do — for staff and for the public, which are different problems.
resource: https://industry-blueprints.github.io/capabilities/identity-and-access-management/
tags: [capability, identity, access, authentication, authorization, assurance]

generated: { by: human:jhofmann, at: 2026-07-27T23:30:00Z }
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
    target: /personas/privacy-officer.md
    note: Identity proofing collects sensitive data and creates a durable record of it
  - predicate: has_participant
    target: /personas/constituent.md
    note: External identity, where the barrier to proving who you are excludes people from services
---

## Purpose

To establish and verify identity, authenticate on each access, and authorize what a party may do —
for employees, contractors, and members of the public, at an assurance level proportionate to the
risk of the transaction.

**Workforce and constituent identity are different problems with different failure modes.** Getting
workforce access wrong creates an insider risk. Getting constituent identity wrong **excludes
someone from a service they are entitled to** — and the people excluded are disproportionately
those without stable addresses, credit histories, or documentation.

## Desired outcomes

- Assurance level matched to transaction risk, not applied uniformly
- Access granted by role, reviewed periodically, and revoked on separation the same day
- Privileged access identified, minimized, and monitored
- Multi-factor authentication where risk warrants it, in usable forms
- Constituent identity proofing with alternative routes for people the standard route fails
- One identity per person where lawful, rather than one per system
- Access decisions evidenced for audit without a manual collection exercise

## Key processes

Identity proofing and evidence validation · credential issuance and lifecycle · authentication
service operation · role definition and entitlement design · access request and approval ·
provisioning and deprovisioning · privileged access management · periodic access review and
recertification · federation and single sign-on · session and device management · alternative
verification routes · account recovery

## Key data

Identity records with assurance level and evidence relied on · credentials with status and expiry ·
role-to-entitlement mapping · access assignments per party per system · privileged account
inventory · access review results and revocations · authentication and authorization event logs ·
[identity assertions](/data-models/core-public-sector-model/) linked to Party

## Measures

| Measure | Class |
|---|---|
| Accounts active after separation date | Process |
| Access reviews completed on schedule, with actual revocations | Process |
| Privileged accounts, and their trend | Process |
| Multi-factor coverage on high-risk access | Process |
| Constituent proofing success rate, disaggregated by segment | Outcome |
| Applicants abandoning at the identity step | Outcome |
| Time to provision and to deprovision | Process |

**Proofing success disaggregated by segment is the equity measure**, and an aggregate pass rate
hides exactly the population the service most needs to reach.

## Level variance

- **Federal.** Standardized personnel credentials for staff, assurance-level frameworks defining
  identity and authentication requirements by risk, and shared public-facing sign-in services used
  across agencies.
- **State.** Statewide workforce directories, and increasingly a single constituent sign-in shared
  across agency services — which is the highest-leverage identity investment at this level.
- **County / municipal.** Fragmented workforce identity across departments with separate systems,
  public safety systems under their own access requirements, and constituent identity typically
  reinvented per service.

## Where it goes wrong

**Access copied from a colleague.** The fastest way to provision and the origin of most
accumulated entitlement. See [onboarding](/capabilities/onboarding/).

**Reviews that certify without reading.** Managers approving long lists to clear the task, which
produces the evidence of a review and none of the effect.

**Separation not reaching every system.** The main account disabled, peripheral systems retaining
access indefinitely — the measure in
[offboarding](/capabilities/offboarding-and-knowledge-transfer/) that fails most often.

**Privileged access as a permanent grant.** Administrative rights issued for a project and held for
years.

**Proofing that excludes.** Requiring a credit file, a smartphone, or a driving licence, each of
which fails for a predictable and already-disadvantaged population — and the abandonment shows up
as low demand rather than as a barrier.

**No alternative route.** When automated proofing fails there must be a supported path — in person,
by phone, through a trusted intermediary — or the service is closed to whoever the algorithm
cannot place.

**Multi-factor by SMS only.** Excludes people without reliable mobile service and is the weakest
common factor.

**Identity per system.** The same person with eleven accounts, which makes
[identity resolution](/data-models/core-public-sector-model/) unachievable everywhere downstream.
