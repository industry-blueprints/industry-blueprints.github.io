---
type: Governance Control
title: Merit Review Integrity
description: Ensuring award decisions are made on published criteria by people who
  can explain them — and drawing the line AI must not cross.
resource: https://industry-blueprints.github.io/governance/merit-review-integrity/
tags: [governance, grants, merit-review, conflict-of-interest, responsible-ai, fairness]

generated: { by: human:jhofmann, at: 2026-07-27T14:00:00Z }
status: draft
stale_after: 2027-01-27
depth: defined

industry: public-sector
government_levels: [federal, state, county]

relationships:
  - predicate: constrains
    target: /processes/merit-review-and-award-decision.md
  - predicate: constrains
    target: /ai-integrations/application-completeness-screening.md
---

## Control objective

Every award decision is made against published criteria, by reviewers without disqualifying
interests, with a record sufficient to explain to any applicant why they were or were not funded.

## Why this control exists

Merit review allocates public money among organizations that compete for it. The applicant has a
legitimate expectation of a reasoned decision, and the public has an interest in the decision
being made on merit rather than relationship.

Unlike most controls in this library, the risk here is not primarily error. **It is the appearance
and the reality of unfairness**, which damages a programme's legitimacy in ways that are slow to
repair — organizations that believe the process is closed stop applying, which makes it closed.

## Required controls

1. **Criteria and weightings published before submission opens**, and unchanged after.
2. **Conflict declaration against the actual applicant list**, not a generic advance declaration —
   and re-triggered if the list changes.
3. **Independent scoring before discussion.** Consolidation must not precede individual scores.
4. **Reviewer calibration** on a common sample before live scoring.
5. **Only published criteria scored.** Nothing else may influence a score.
6. **Recorded rationale for any deviation** from ranked order, on programme-relevant grounds.
7. **Award approval within delegated authority**, documented.
8. **Substantive feedback to unsuccessful applicants** — actionable, not a score.
9. **Score and rank derived, never entered.** The trail from individual reviews to final rank must
   be reconstructible.
10. **Retention of the complete review record** per schedule, including deliberation.

## The AI boundary

Merit scoring is **a decision about who receives public money.** It is consequential, contestable,
and — this is the part that matters — any systematic bias is applied uniformly at scale while
remaining invisible in aggregate outcomes. An unfair human reviewer affects their assigned
applications. An unfair model affects all of them, identically, forever, and the pattern looks
like consistency.

| Permitted | Prohibited |
|---|---|
| Completeness and eligibility screening against stated requirements | Generating or recommending a merit score |
| Summarizing an application for a reviewer who then reads it | Ranking or shortlisting applicants |
| Surfacing prior awards, performance, and findings for the applicant | Substituting for a reviewer, including as a "tie-breaker" |
| Checking recorded scores against published criteria for consistency | Determining portfolio or geographic balance |
| Drafting feedback from a reviewer's own recorded comments | Writing feedback expressing a judgement no reviewer formed |
| Detecting undeclared relationships for human conflict review | Deciding whether a conflict is disqualifying |

The distinction is not model capability, and it is not confidence. **A human must hold the
judgement and be able to explain it**, because the applicant has a right to a reasoned decision
and the organization has to be able to give one.

Where permitted uses are adopted, standard obligations apply: outputs marked as machine-generated,
the reviewer able to see the source, and the whole thing reproducible afterwards — see
[AI disclosure and human review](/governance/ai-disclosure-and-human-review/) and
[AI governance and delivery](/capabilities/ai-governance-and-delivery/).

## Required evidence

Published notice with criteria and weightings, timestamped · conflict declarations against the
applicant list, dated · individual scores prior to consolidation · calibration records · panel
reconciliation notes · deviation rationale · approval within delegated authority · feedback issued ·
any AI assistance registered in the use-case inventory with its tier

## What organizations need to get right

**Collect conflict declarations against the actual applicant list**, not generically in advance
before anyone knows who applied.

**Record the reason for every deviation from ranked order.** A funded list that differs from the
scored list needs a documented reason — the gap is the most common audit finding in this process.

**Publish every scoring criterion.** Portfolio balance, geographic spread, and prior relationship
are legitimate factors; the fix when a rubric can't capture them informally is to publish them as
criteria, not to stop considering them.

**Give feedback beyond a number.** An applicant told they scored 68 learns nothing; substantive
feedback is what keeps the next application from being identical.

**Reviews held outside the system.** Spreadsheets emailed between reviewers, so the link from
score to decision cannot be reconstructed.

## Level variance

- **Federal.** Formal peer review with published procedures, defined conflict rules, and external
  reviewers.
- **State.** Varies by programme; often internal panels with less formal conflict management.
- **County.** Small panels frequently including people who know the applicants personally, which
  makes explicit declaration and recorded rationale more important rather than less.

## Review frequency

Every six months, and immediately on any change to AI use in the review process or to delegated
authority thresholds.
