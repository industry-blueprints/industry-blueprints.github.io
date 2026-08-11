---
id: victim-services-and-notification
title: Victim Services & Notification
type: capability
level: 2
version: '0.1'
status: draft
description: Rights, information, notification, and compensation for people harmed
  by crime — inside a process built around the defendant.
last_updated: '2026-08-11'
capability_area: justice-and-public-safety
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
To ensure people harmed by crime receive the rights they are entitled to, are informed of what is
happening in their case, are notified of custody changes, can access compensation and support
services, and are treated in a way that does not compound the harm.

**The criminal process is structured around the defendant, because it is the defendant's liberty at
stake.** That structure is correct and it leaves the victim as a participant with information needs
and no standing to direct anything. Everything in this capability exists to close that gap, and
almost all of it depends on other agencies passing on information they were not built to pass on.

## Desired outcomes

- Rights explained early, in plain language, in the person's language
- Notification of case events and custody changes that actually reaches the person
- One point of contact rather than separate advocates at each agency
- Compensation accessible without documentation the person cannot obtain
- Services available regardless of whether the person reports or participates
- Contact information protected from disclosure to the defendant
- Consultation before decisions that affect the person — plea, release, disposition
- Trauma-informed practice throughout, including at first contact

## Lifecycle
Rights notification at first contact · needs assessment · advocacy assignment and case support ·
case status and event notification · custody status and release notification · court accompaniment
and preparation · compensation application support and claim processing · emergency financial
assistance · relocation and safety planning · protective order support · restitution determination
support and collection follow-up · service referral — counselling, housing, medical · consultation
before plea and disposition · impact statement support · post-disposition notification through
supervision and release · confidentiality protection

## Domain model
Victim record with contact details **flagged as protected from disclosure** · rights notification
record · needs assessment and safety plan · notification preferences and delivery confirmation ·
case event and custody event notifications sent · compensation claims with status and outcome ·
restitution ordered, collected, and disbursed · service referrals and take-up · protective orders
and service status · consultation records before plea and disposition · advocacy contact history

## Measures

| Measure | Class |
|---|---|
| Victims receiving rights notification at first contact | Process |
| Notification delivery confirmed, not merely sent | Process |
| Custody release notifications delivered before release | Process |
| Compensation claims filed as a share of likely eligible victims | Outcome |
| Compensation claim processing time and denial reasons | Process |
| Restitution ordered versus restitution actually collected | Outcome |
| Victims consulted before a plea resolution | Process |
| Contact information disclosed in error | Outcome |
| Service take-up among victims who did not participate in prosecution | Outcome |

**Restitution ordered versus collected is the honest measure**, and the gap is usually very large.
Ordering restitution that is never collected creates an expectation the system does not meet, which
is worse for the victim than a candid statement at the outset.

## Level variance

- **Federal.** Statutory victim rights with enforceable provisions, federal victim-witness
  programmes, and the federal fund that supports much of the state and local service infrastructure.
- **State.** State constitutional or statutory victim rights, the state compensation programme, the
  automated custody notification service, and administration of federal victim assistance funding to
  local providers.
- **County.** **Where most victim services are delivered** — prosecutor-based victim-witness
  units, sheriff and jail notification, and community-based providers funded through the county.
- **Municipal.** Police-based advocates and first-contact rights notification, which is the earliest
  and most consequential point of contact.
- **Tribal.** Tribal victim services with jurisdictional complexity affecting which system responds
  at all — a particular concern in cases involving non-tribal offenders.

## What to get right

**Confirm delivery, not just sending.** A notification sent to a stale address or a disconnected
number with no delivery confirmation can fail at the moment it matters most — confirming delivery
catches that in time.

**Give the person one point of contact across agencies.** Police, prosecutor, court, and
corrections each holding their own piece leaves the person repeating their account to each one —
a single point of contact closes the
[referral and coordination](/capabilities/referral-and-cross-agency-coordination/) gap for
someone who has just been harmed.

**Make compensation reachable with the documentation people actually have.** Police reports,
medical records, and employer letters within a filing deadline, plus cooperation requirements,
exclude people with good reasons not to participate — designing around that keeps the programme
reachable.

**Follow through on restitution after it's ordered.** A collection mechanism, active follow-up,
and a clear explanation to the victim of what to expect turn restitution into more than an order
on paper — otherwise it becomes a
[receivables](/capabilities/billing-and-receivables/) problem nobody owns.

**Keep contact details out of discovery.** Victim address and phone remain outside the case file
provided to the defendant; protecting that information is a routine safety requirement, not an edge case.

**Make services available regardless of participation.** Support offered only to victims who
cooperate with prosecution withholds help from the people most at risk — decoupling the two
reaches them.

**Consult before the decision, not after.** Being told about a plea once it is agreed is
notification, not consultation — real consultation happens before.

**Explain rights in a way people can actually absorb, and revisit them.** A leaflet handed over at
a moment when nobody can absorb written information needs to be followed up, not treated as
one-and-done.

**Carry notification across the case's full lifecycle.** Registering someone once needs to follow
the case between agencies, so custody, supervision, and release events years later still reach
them.
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
