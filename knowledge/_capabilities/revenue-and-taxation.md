---
type: Capability
title: Revenue & Taxation
description: Assessing, levying, and administering the taxes and own-source revenue
  that fund everything else — with an equity problem built into the assessment.
resource: https://industry-blueprints.github.io/capabilities/revenue-and-taxation/
tags: [capability, revenue, taxation, assessment, collections, equity]

generated: { by: human:jhofmann, at: 2026-07-27T20:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/fund.md
  - predicate: has_participant
    target: /personas/constituent.md
    note: Taxpayer — a compulsory relationship, which changes what service design must account for
  - predicate: has_participant
    target: /personas/budget-director.md
  - predicate: uses_data
    target: /data-entities/location.md
    note: Property taxation resolves to parcel; parcel is the authoritative key
---

## Purpose

To determine what each party owes under the applicable tax or charge, bill it, collect it, and
resolve disputes — accurately enough that the burden falls where the law intends.

**This is a compulsory relationship.** The taxpayer cannot decline the service, which removes the
market signal that would otherwise surface bad process, and puts the whole weight of legitimacy on
accuracy, clarity, and appeal rights.

## Desired outcomes

- Assessments accurate and defensible, with uniform treatment of comparable parties
- Bills that state clearly what is owed, why, and how to challenge it
- Payment easy through the channels people actually use
- Delinquency addressed early, proportionately, and with hardship routes available
- Appeals resolved on the merits within a reasonable interval
- The compliance burden on the taxpayer minimized

## Key processes

Taxpayer and property identification · valuation and assessment · exemption and abatement
administration · levy setting and rate application · billing and notice · payment processing and
allocation · delinquency, penalty, and interest · installment and hardship arrangements · lien and
enforcement action · appeal and board review · audit and discovery of unreported liability ·
refund processing

## Key data

Taxpayer register resolved to [Party](/data-models/core-public-sector-model/) · property or
account roll with valuation history · [parcel and address](/data-entities/location/) with
ownership and boundary · exemption records with eligibility evidence · rate and levy tables by
period · billing, payment, and balance history · appeal case records and outcomes · lien and
enforcement register

## Measures

| Measure | Class |
|---|---|
| Assessment accuracy against sale evidence, by segment | Outcome |
| Assessment uniformity across value bands and neighbourhoods | Outcome |
| Current-year collection rate | Output |
| Cost of collection per dollar collected | Input |
| Appeals filed, and share resulting in change | Process |
| Time to resolve an appeal | Process |
| Exemptions granted to eligible parties who did not have to ask | Outcome |

**Uniformity across value bands is the equity measure**, and it matters more than accuracy in
aggregate: regressive assessment — lower-value properties assessed at a higher share of true value
than higher-value ones — is a well-documented and widespread pattern, and it is invisible in any
average.

## Level variance

- **Federal.** Income, payroll, and excise administration at national scale, with third-party
  information reporting and matching as the primary compliance mechanism.
- **State.** Income, sales, excise, and business taxes, plus oversight or equalization of local
  property assessment practice.
- **County.** Typically the assessment and collection level for property tax, frequently
  collecting on behalf of municipalities, school districts, and special districts — which makes
  the county roll a shared dependency for several other budgets.
- **Municipal.** Property tax where not county-collected, plus local sales, lodging, utility, and
  business licence taxes. Also the level where enforcement is most visible to residents.

## What to get right

**Measure assessment uniformity by value band.** Reported accuracy can look fine on average while
being systematically wrong by band, and only a segmented ratio study reveals it.

**Grant exemptions without requiring an application.** Eligible households — often the ones the
exemption exists for — do not know it exists, so take-up ends up a function of information access
rather than eligibility.

**Reassess on schedule.** Deferring reassessment for political reasons lets a large correction
land all at once, and the resulting shock gets blamed on the correction rather than the deferral
that caused it.

**Write notices people can actually read.** Statutorily compliant and procedurally correct is not
the same as comprehensible, and an incomprehensible notice suppresses legitimate appeals and
generates avoidable contacts to
[constituent service](/capabilities/constituent-service-management/).

**Give delinquency a proportionate, staged response.** Left to escalate automatically, penalties
and interest compound past the point of recoverability, converting a collectible debt into a lien
and, eventually, a displaced household.

**Keep the cheapest payment channel cheap for the organization too.** Passing card fees through
makes cheque the cheapest route for the payer — and the most expensive route for the organization
to process.

**Resolve identity across taxes.** The same person recorded as three separate taxpayers makes
total position and hardship both unanswerable.
