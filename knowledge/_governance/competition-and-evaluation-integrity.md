---
type: Governance Control
title: Competition & Evaluation Integrity
description: Ensuring an award is made on published criteria by people without
  disqualifying interests — and can be defended when challenged.
resource: https://industry-blueprints.github.io/governance/competition-and-evaluation-integrity/
tags: [governance, procurement, competition, conflict-of-interest, protest, fairness]

generated: { by: human:jhofmann, at: 2026-07-27T16:00:00Z }
status: draft
stale_after: 2027-01-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: constrains
    target: /processes/evaluation-and-award.md
  - predicate: constrains
    target: /processes/solicitation-and-response-management.md
  - predicate: constrains
    target: /ai-opportunities/specification-competition-review.md
---

## Control objective

Every prospective supplier has an equal opportunity to compete, the award is made on published
criteria by evaluators without disqualifying interests, and the record is sufficient to defend the
decision against a protest.

## Why this control exists

Public procurement's primary output is **a defensible decision**. Competition is not a preference —
it is the mechanism by which the organization can demonstrate it obtained value without favour.

The cost of failure is asymmetric and mostly invisible. A protest is expensive and visible. What
is worse and unmeasured is the supplier who concludes the process is decided in advance and stops
bidding, and the one after that — until a category has two bidders and nobody can say when it
happened. See [competition rate](/kpis/competition-rate/).

## Relationship to merit review integrity

This control is **substantially the same** as
[merit review integrity](/governance/merit-review-integrity/) for grants. Published criteria,
conflict declaration against the actual list, independent scoring, recorded rationale for
departures, substantive debriefs — all identical.

That duplication is a finding in itself: an organization implementing one has most of the other,
and the [procurement data model](/data-models/procurement-data-model/) sets out the case for
treating competitive award as a single shared shape.

**What is different here is price**, and it introduces failure modes grants does not have.

## Required controls

1. **Requirements permit competition.** Specifications describe outcomes, not products. Where a
   brand reference is unavoidable, "or equivalent" with stated equivalence criteria.
2. **Equal information.** All substantive communication published to all prospective bidders. No
   supplier receives information others do not, at any point.
3. **Pre-market engagement conducted transparently** and recorded — restricted engagement is not
   the same as no engagement, and conflating them suppresses market understanding entirely.
4. **Criteria, weightings, and the combination method published** before submission opens, and
   unchanged after.
5. **Conflicts declared against the actual bidder list**, before scoring, re-triggered if the list
   changes.
6. **Technical scoring completed and recorded before commercial submissions are opened.**
7. **Independent scoring before consolidation.** Scoring together anchors on the most senior voice
   present.
8. **Clarification distinguished from negotiation**, conducted equally, and recorded.
9. **Recorded rationale for any departure** from the scored outcome.
10. **Award within delegated authority**, documented.
11. **Substantive debriefs** to unsuccessful bidders.
12. **Complete record retained** per schedule — it is the protest defence.

## The price-specific controls

**Sealed until technical scoring completes.** Once a panel has seen prices, technical scoring is
no longer independent, whatever anyone intends. This is the control most often relaxed for
convenience and it invalidates the evaluation when it is.

**The combination method is published in advance and not selected afterwards.** Choosing how to
combine technical and commercial scores after seeing the distribution is choosing the winner.

**Weighting sensitivity tested before publication.** A 70/30 technical/price weighting frequently
operates as price-only in practice, because technical scores compress into a narrow band. If the
published weighting does not behave as stated, it misleads bidders about what to optimize — which
is a fairness problem, not just a design flaw.

## AI boundary

Identical to merit review, and for the same reason: **this decides who receives public money**,
and systematic bias would apply uniformly and invisibly.

**Permitted** — normalizing structured pricing for comparison; arithmetic checking; verifying
recorded scores are consistent with published criteria; surfacing past performance and debarment
status; reviewing draft specifications for restrictive language *and flagging it for a human*;
assembling debriefs from evaluators' own recorded comments.

**Prohibited** — generating or recommending a technical score; ranking bidders; judging whether a
response meets a qualitative requirement; determining responsiveness where judgement is involved.

## Required evidence

Published solicitation with criteria, weightings, and combination method, timestamped · all Q&A
and addenda with publication timestamps · conflict declarations against the bidder list, dated ·
individual scores prior to consolidation · commercial opening record showing sequence ·
clarification correspondence · departure rationale · approval within authority · debrief records ·
protest file

## Where organizations fail this control

**Prices opened early**, for convenience, invalidating the technical evaluation.

**Generic conflict declarations** signed before the bidder list exists.

**Individual Q&A responses** never published, giving information asymmetry to whoever asked.

**Specifications written around a product**, which is the failure that occurs before this process
starts and that no amount of evaluation rigour can repair — see
[needs definition and market research](/processes/needs-definition-and-market-research/).

**Debriefs that recite scores.** The supplier learns nothing, and concludes the outcome was
predetermined.

**Scoring in a room.** Convenient, faster, and it produces anchored scores that look independent
in the record.

## Level variance

- **Federal.** Formal source selection procedures, documented rationale requirements, and an
  established protest forum with real remedies.
- **State.** Own protest procedures with varying formality and varying rules on pre-market
  engagement.
- **County / municipal.** Award frequently requires a vote in public session, which makes the
  record public by default; small panels often include people who know the bidders, making
  explicit declaration more important rather than less.

## Review frequency

Every six months, and immediately on any change to AI use in evaluation, to delegated authority
thresholds, or to the governing procurement code.
