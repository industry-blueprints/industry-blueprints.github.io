---
id: licensing-and-permitting
title: Licensing & Permitting
type: capability
level: 2
version: '0.1'
status: draft
description: Authorizing a person, organization, or activity — with conditions, expiry,
  and renewal — where the authorization is an Agreement like any other.
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
To decide whether to authorize a person, organization, or activity, issue the authorization with
whatever conditions attach, and manage it through its term — amendment, renewal, suspension,
revocation, and expiry.

**A licence and a permit are Agreement subtypes**, sharing parties, a
term, conditions, obligations, a status lifecycle, and consequences for breach with contracts and
grant awards. Nearly every jurisdiction models them as unrelated things in unrelated systems and
pays for it in integration, in reporting, and in the inability to answer what an organization's
total relationship with government is.

## Desired outcomes

- Requirements and timelines published, so an applicant can plan
- Decisions within a stated period, with the clock visible to the applicant
- Conditions specific, achievable, and attached to something that tracks them
- Renewal prompted before expiry rather than enforced after
- One view of every authorization a party holds, across departments
- Suspension and revocation with due process proportionate to the consequence
- Fees related to the cost of administering, and reviewed

## Lifecycle
Requirement and criteria publication · application intake and completeness screening · fee
assessment and collection · eligibility, qualification, and background verification · referral to
[inspection](/capabilities/inspections/) or technical review · condition setting · decision, issue,
and publication · amendment and transfer · renewal notice and processing · continuing obligation
monitoring · suspension, revocation, and reinstatement · expiry and lapse handling

## Domain model
Authorization register with type, holder, term, status, and conditions · application records with
completeness and review state · qualification and background verification results · linked
inspection and review outcomes · condition register with owners and due dates · fee schedule and
payment record · location for activity-based and premises-based
authorizations · enforcement history against the holder

## Measures

| Measure | Class |
|---|---|
| Time from complete application to decision, by type | Process |
| Applications returned as incomplete on first submission | Process |
| Decisions issued within the published timeline | Process |
| Renewals completed before expiry | Process |
| Holders operating on a lapsed authorization | Outcome |
| Conditions with an owner and a monitored due date | Process |
| Authorizations findable across departments for one party | Process |

Renewal before expiry is the measure with the largest hidden consequence: a lapsed licence usually
means someone is operating unlawfully because the organization did not remind them.

## Level variance

- **Federal.** Sector authorizations — broadcast, aviation, environmental discharge, drug and
  device approval — with formal adjudicatory procedure and long review timelines.
- **State.** The dominant licensing level: professional and occupational licensing boards, business
  registration, motor vehicle, alcohol, environmental, and health facility licensing. Occupational
  licensing reform and interstate recognition are active policy questions here.
- **County / municipal.** Building, trade, zoning, food service, alcohol, animal, and
  short-term-rental permits. The most visible to small business, and the level where the review
  timeline is the actual cost of the permit rather than the fee.

## Scarce authorizations are a different shape

Most licensing is **non-rival**: everyone who meets the criteria gets one, and applicants do not
compete. Some authorizations are **capped** — alcohol licences under a quota, cannabis
authorizations, taxi medallions, spectrum, some discharge permits — and those are competitive
awards with the same structure as
procurement and
grants: a published opportunity, submissions, independent
scoring, and an award that others contest.

The core model records competitive award as a
promotion candidate needing a third domain. **Scarce
licensing is a partial third vote, not a whole one** — it is a minority of licensing volume, so the
recommendation stands at watch rather than promote. Where a jurisdiction runs a capped regime, the
merit review and competition integrity controls apply unchanged.

## What to get right

**Screen completeness systematically rather than by a human opening documents one at a time.**
Automated screening saves days of staff effort per cycle and tells the applicant about a missing
form immediately rather than weeks after submitting.

**Attach conditions somewhere that monitors them, not just the authorization document.** Written
into the document and nowhere else, conditions are invisible to every queue and calendar — the
obligation tracking discipline again, in a third domain.

**Prompt renewal before expiry rather than relying on the holder to remember.** A prompt turns a
lapse into a renewal instead of enforcement against someone who would have renewed.

**Model authorizations as one system across permit types.** Building in one system, food service in
another, alcohol in a third means a restaurant with three authorizations looks like three unrelated
parties.

**Publish and measure timelines by type.** A published, measured timeline lets the applicant plan
and escalate, and lets the organization see which type is slow.

**Review fees against the actual cost of administering them.** Set decades ago and left alone, fees
either subsidize the activity or function as a barrier to entry nobody intended.

**Scale revocation process to the consequence.** The consequence is frequently someone's
livelihood, which is exactly when proportionate due process matters most — see
[appeals](/capabilities/appeals-and-grievance-handling/).

## AI and automation
Ways AI could help across this capability, from what one reviewer could try tomorrow to what the
whole authorization register can be asked, with enough on each to decide whether it's worth trying:
**[AI Integration for Licensing & Permitting](/capabilities/licensing-and-permitting/)**.
## Architecture

The architecture boundary for this capability follows the responsibilities, lifecycle, and
information described above. A dedicated architecture artifact has not yet been developed for
this inventory entry.

## Trust and governance

Trust concerns include authority to act, access to operational records, accountable decisions,
retention, and an auditable history. Applicable controls vary with the workload, jurisdiction,
and information sensitivity; a dedicated trust model has not yet been developed for this draft.
