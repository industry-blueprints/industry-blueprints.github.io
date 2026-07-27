---
type: Capability
title: Referral & Cross-Agency Coordination
description: Getting a person to the organization that actually owns their problem,
  and tracking that it happened — rather than handing them a phone number.
resource: https://industry-blueprints.github.io/capabilities/referral-and-cross-agency-coordination/
tags: [capability, referral, coordination, no-wrong-door, warm-handoff, case-conferencing]

generated: { by: human:jhofmann, at: 2026-07-28T10:15:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/serve.md
  - predicate: has_participant
    target: /personas/caseworker.md
  - predicate: has_participant
    target: /personas/constituent.md
    note: Carries the coordination burden themselves whenever the organizations do not
  - predicate: has_participant
    target: /personas/privacy-officer.md
    note: Referral is disclosure, and needs a lawful basis before it needs a workflow
---

## Purpose

To route a person to the organization that can actually help — inside the same government, across
levels, or to a community provider — and to confirm that the connection was made.

**The person's problem does not respect the organizational boundary.** Housing instability,
domestic violence, substance use, and unemployment arrive together and are administered by four
organizations with four intakes. Whoever the person reaches first is where the coordination has to
start, and "no wrong door" is a design commitment rather than a slogan.

## Desired outcomes

- A current directory of what other organizations do and who they serve
- Warm handoff rather than a phone number, wherever the consequence justifies it
- Consent obtained once, at the right scope, and honoured across the referral
- The referring party knowing whether the referral connected
- Repeated referral patterns understood as a service design signal
- Shared case coordination for the small number of people with the most complex needs
- No requirement for the person to retell their situation at every door

## Key processes

Service directory maintenance across agencies and providers · needs identification at first contact
· eligibility pre-screening for the receiving service · consent capture with defined scope · warm
handoff and appointment scheduling · referral transmission and acknowledgement · outcome
confirmation and loop closure · multi-agency case conferencing for complex cases · data sharing
agreement establishment · unmet-need recording and escalation · directory accuracy verification

## Key data

Directory of services with eligibility, capacity, catchment, and current contact ·
[Consent and authorization](/data-models/core-public-sector-model/) records with scope and expiry ·
referral records with source, destination, date, and outcome · acknowledgement and connection
confirmation · shared care or coordination plans for multi-agency cases · unmet need register where
no service exists · data sharing agreements with permitted purposes

## Measures

| Measure | Class |
|---|---|
| Referrals with confirmed connection, not just transmission | Outcome |
| Time from referral to first contact by the receiving service | Process |
| Warm handoffs as a share of referrals, for high-consequence needs | Process |
| Directory entries verified within the review period | Process |
| Referral loops closed back to the referrer | Process |
| People referred more than twice without resolution | Outcome |
| Unmet needs recorded where no service exists | Output |

**Confirmed connection is the whole measure.** A referral counted at the point of transmission
records that the organization stopped being responsible, not that the person got help.

## Level variance

- **Federal.** Cross-programme coordination requirements and national information and referral
  infrastructure, with strong statutory constraints on sharing data between programmes.
- **State.** Coordinates between agencies administering related programmes and funds much of the
  local provider network, which gives it the leverage to require interoperable referral and rarely
  uses it.
- **County.** **Where this capability actually lives.** Health, human services, behavioural health,
  housing, courts, and justice-involved populations converge at county level, and multi-agency case
  coordination for high-need individuals is a county function almost everywhere.
- **Municipal.** Frequently the first point of contact through
  [constituent service](/capabilities/constituent-service-management/) and a community information
  line, holding a directory of services it does not itself provide.

## Where it goes wrong

**Referral as a phone number.** The person is given a number and the case is closed. Counted as a
successful referral, and the connection rate for cold referrals is poor.

**No loop closure.** The referring worker never learns whether it worked, so they cannot tell a
good destination from a bad one and the directory never improves.

**Directory maintained by nobody.** Contacts, eligibility, and capacity out of date, so people are
sent to programmes that closed or are full.

**Consent as an obstacle rather than a design input.** Either sharing is blocked entirely, or it
happens informally without a basis. The answer is a scoped, time-limited consent captured once —
which is a [privacy](/capabilities/privacy-management/) design decision, not a workflow one.

**The person as the integration layer.** Told to contact four organizations, repeat their situation
four times, and reconcile four sets of conflicting advice themselves.

**Case conferencing without a shared record.** A meeting where everyone brings their own partial
view and nothing agreed is recorded anywhere all parties can see.

**Unmet need unrecorded.** The most valuable data this capability generates — where people
repeatedly need something that does not exist — is discarded because there is no field for it.

**Coordination depending on individual relationships.** Two workers who know each other make it
work; both leave, and it stops.
