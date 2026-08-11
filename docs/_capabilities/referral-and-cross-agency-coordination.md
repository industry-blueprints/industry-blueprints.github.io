---
id: referral-and-cross-agency-coordination
title: Referral & Cross-Agency Coordination
type: capability
level: 2
version: '0.1'
status: draft
description: Getting a person to the organization that actually owns their problem,
  and tracking that it happened — rather than handing them a phone number.
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

## Lifecycle
Service directory maintenance across agencies and providers · needs identification at first contact
· eligibility pre-screening for the receiving service · consent capture with defined scope · warm
handoff and appointment scheduling · referral transmission and acknowledgement · outcome
confirmation and loop closure · multi-agency case conferencing for complex cases · data sharing
agreement establishment · unmet-need recording and escalation · directory accuracy verification

## Domain model
Directory of services with eligibility, capacity, catchment, and current contact ·
Consent and authorization records with scope and expiry ·
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
  [constituent service](/solutions/constituent-management/) and a community information
  line, holding a directory of services it does not itself provide.

## What to get right

**Make the handoff warm, not a phone number.** Given a number instead of a connection, the case
still gets closed and counted as a successful referral, even though the connection rate for cold
referrals is poor.

**Close the loop back to the referrer.** When the referring worker learns whether it worked, they
can tell a good destination from a bad one and the directory improves; without that feedback,
neither happens.

**Keep the directory current.** Contacts, eligibility, and capacity that go unmaintained send
people to programmes that closed or are full.

**Design consent as a scoped, time-limited capture at the point of first contact.** Treating
consent as an obstacle leads to sharing that's either blocked entirely or handled informally
without a basis — a [privacy](/capabilities/privacy-management/) design decision, not a workflow
one.

**Let the organizations do the integration work, not the person.** Otherwise they're contacting
four organizations, repeating their situation four times, and reconciling four sets of
conflicting advice themselves.

**Give case conferencing a shared record.** Without one, everyone brings their own partial view
and nothing agreed gets recorded anywhere all parties can see.

**Capture unmet need as data.** Where people repeatedly need something that does not exist is the
most valuable data this capability generates — it needs a field, or it gets discarded.

**Build coordination into the process, not into individual relationships.** Two workers who know
each other can make it work informally, but it stops the moment both leave.
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
