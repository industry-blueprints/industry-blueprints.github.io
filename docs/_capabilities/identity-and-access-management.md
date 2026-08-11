---
id: identity-and-access-management
title: Identity & Access Management
type: capability
level: 2
version: '0.1'
status: draft
description: Establishing who someone is, at what assurance level, and what they may
  do — for staff and for the public, which are different problems.
last_updated: '2026-08-11'
capability_area: inform
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

## Lifecycle
Identity proofing and evidence validation · credential issuance and lifecycle · authentication
service operation · role definition and entitlement design · access request and approval ·
provisioning and deprovisioning · privileged access management · periodic access review and
recertification · federation and single sign-on · session and device management · alternative
verification routes · account recovery

## Domain model
Identity records with assurance level and evidence relied on · credentials with status and expiry ·
role-to-entitlement mapping · access assignments per party per system · privileged account
inventory · access review results and revocations · authentication and authorization event logs ·
identity assertions linked to Party

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

## What to get right

**Provision access by role, not by copying a colleague.** Provisioning against a defined role,
rather than copying whatever a colleague holds, is what keeps entitlement from accumulating
unchecked. See [onboarding](/capabilities/onboarding/).

**Make access reviews substantive, not a rubber stamp.** A manager who actually reads the list
before approving is what turns the review into a real control instead of just its paperwork.

**Make separation reach every system, not just the main account.** Disabling access everywhere, not
only in the primary directory, is the measure in
[offboarding](/capabilities/offboarding-and-knowledge-transfer/) that most often needs the most
attention.

**Time-box privileged access.** Issuing administrative rights for the project and revisiting them on
a schedule keeps a temporary grant from quietly becoming permanent.

**Design proofing so it doesn't exclude.** Requiring a credit file, a smartphone, or a driving
licence each fails for a predictable and already-disadvantaged population, so building in
alternatives keeps abandonment from being misread as low demand.

**Provide an alternative route when automated proofing fails.** A supported path — in person, by
phone, through a trusted intermediary — keeps the service open to whoever the algorithm cannot
place.

**Offer multi-factor options beyond SMS.** Additional factors reach people without reliable mobile
service and strengthen the weakest common option.

**Resolve to one identity per person, not one per system.** A single identity, rather than the same
person holding eleven accounts, is what makes
identity resolution achievable everywhere downstream.
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
