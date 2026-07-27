---
type: Capability
title: Licensing & Permitting
description: Authorizing a person, organization, or activity — with conditions, expiry,
  and renewal — where the authorization is an Agreement like any other.
resource: https://industry-blueprints.github.io/capabilities/licensing-and-permitting/
tags: [capability, licensing, permitting, authorization, renewal, conditions]

generated: { by: human:jhofmann, at: 2026-07-28T09:30:00Z }
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
    note: Applicant and holder — frequently a small business for whom the timeline is the cost
  - predicate: has_participant
    target: /personas/caseworker.md
  - predicate: has_participant
    target: /personas/program-manager.md
  - predicate: uses_data
    target: /data-entities/agreement.md
    note: A licence and a permit are Agreement subtypes, exactly as a contract and a grant award are
---

## Purpose

To decide whether to authorize a person, organization, or activity, issue the authorization with
whatever conditions attach, and manage it through its term — amendment, renewal, suspension,
revocation, and expiry.

**A licence and a permit are [Agreement](/data-entities/agreement/) subtypes**, sharing parties, a
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

## Key processes

Requirement and criteria publication · application intake and completeness screening · fee
assessment and collection · eligibility, qualification, and background verification · referral to
[inspection](/capabilities/inspections/) or technical review · condition setting · decision, issue,
and publication · amendment and transfer · renewal notice and processing · continuing obligation
monitoring · suspension, revocation, and reinstatement · expiry and lapse handling

## Key data

Authorization register with type, holder, term, status, and conditions · application records with
completeness and review state · qualification and background verification results · linked
inspection and review outcomes · condition register with owners and due dates · fee schedule and
payment record · [location](/data-entities/location/) for activity-based and premises-based
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
[procurement](/data-models/procurement-data-model/) and
[grants](/data-models/grants-data-model/): a published opportunity, submissions, independent
scoring, and an award that others contest.

The core model records competitive award as a
[promotion candidate](/data-models/core-public-sector-model/) needing a third domain. **Scarce
licensing is a partial third vote, not a whole one** — it is a minority of licensing volume, so the
recommendation stands at watch rather than promote. Where a jurisdiction runs a capped regime, the
merit review and competition integrity controls apply unchanged.

## Where it goes wrong

**Completeness established by a human opening documents.** Days of staff effort per cycle, and the
applicant learns of a missing form weeks after submitting.

**Conditions written into the authorization document and nowhere else.** Invisible to every queue
and calendar, so nothing monitors them — the
[obligation tracking](/patterns/obligation-tracking/) failure, in a third domain.

**Renewal by the holder remembering.** No prompt, an expiry that lapses, and enforcement against
someone who would have renewed.

**A system per permit type.** Building in one, food service in another, alcohol in a third, so a
restaurant with three authorizations is three unrelated parties.

**Timelines unpublished and unmeasured.** The applicant cannot plan and cannot escalate, and the
organization cannot see which type is slow.

**Fees unrelated to cost.** Set decades ago, never reviewed, either subsidizing the activity or
functioning as a barrier to entry nobody intended.

**Revocation without proportionate process.** The consequence is frequently someone's livelihood,
which is exactly when due process matters most — see
[appeals](/capabilities/appeals-and-grievance-handling/).
