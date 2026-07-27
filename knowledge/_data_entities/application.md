---
type: Data Entity
title: Application
description: A submission against a funding opportunity — and the entity where
  eligibility, completeness, and merit have to be kept separate.
resource: https://industry-blueprints.github.io/data-entities/application/
tags: [data-entity, grants, application, merit-review, eligibility]

generated: { by: human:jhofmann, at: 2026-07-27T14:00:00Z }
status: draft
stale_after: 2027-07-27
depth: detailed

industry: public-sector
government_levels: [federal, state, county]

relationships:
  - predicate: part_of
    target: /data-models/grants-data-model.md
  - predicate: used_by
    target: /processes/funding-notice-and-application-intake.md
  - predicate: used_by
    target: /processes/merit-review-and-award-decision.md
---

An organization's submission against a [Funding Opportunity](/data-models/grants-data-model/):
narrative, proposed budget, attachments, and the assessments made of it.

## Three states that must stay separate

The most consequential modelling decision here is refusing to collapse these into one status:

| State | Question | Consequence of failing |
|---|---|---|
| **Eligible** | May this applicant apply at all? | Rejected — cannot be cured |
| **Complete** | Is everything required present? | Curable within a defined window |
| **Meritorious** | Is this good? | Scored, ranked, and possibly not funded |

Collapsing eligibility and completeness is how strong applications get rejected for a missing
attachment. Collapsing completeness and merit is how an administratively tidy application beats a
better one. Both are common, and both fall hardest on first-time and small applicants —
see [first-time applicant share](/kpis/first-time-applicant-share/).

## Attributes

| Attribute | Notes |
|---|---|
| Application identifier | Quotable to the applicant |
| Opportunity | What it is a submission against |
| Applicant party | The organization, from the core model — not free text |
| Submitting individual | Distinct from the applicant organization |
| Submitted timestamp | Definitive for deadline purposes, and it will be disputed |
| Eligibility determination | With the criterion relied on, not just a flag |
| Completeness state | Per required item, so a cure request can be specific |
| Requested amount, and by cost category | Structured, so budget review is possible |
| Proposed match | Type, source, and amount |
| Narrative sections | Structured against the criteria being scored |
| Attachments | With required-item mapping |
| Assigned reviewers | With conflict declarations |
| Consolidated score and rank | Derived, never entered |
| Outcome and rationale | Including deviation from rank, where applicable |
| Feedback issued | What the applicant was actually told |

**Eligibility determination records the criterion, not just the outcome.** "Ineligible" is not a
defensible answer to an appeal; "ineligible under criterion 3, entity type" is.

**Score and rank are derived.** If they can be typed, they will be, and the audit trail from
individual reviews to final rank is broken — which is exactly what
[merit review integrity](/governance/merit-review-integrity/) requires to be intact.

## Lifecycle

```
Draft → Submitted → Eligibility screen → { Ineligible | Eligible }
                                              ↓
                        Incomplete → (cure period) → Complete
                                              ↓
                                       Under review
                                              ↓
                          { Recommended | Not recommended }
                                              ↓
                     { Awarded | Not funded | Withdrawn }
```

**Recommended and Awarded are different states.** Applications can be recommended and not funded —
funds run out, or a programmatic adjustment changes the list. That gap is exactly what has to be
explainable, and a model that jumps from review to award has erased it.

## Where it goes wrong

- **One status field.** Eligibility, completeness, review, and outcome collapsed, so nobody can
  say why an application did not proceed.
- **Applicant as free text.** Cannot link to prior awards, prior findings, or prior applications,
  so a recipient's history is invisible at exactly the moment it is relevant.
- **Budget as a single requested amount.** No cost-category structure, so budget review is a
  human reading a PDF.
- **Attachments unmapped to requirements.** Completeness cannot be checked automatically, so it
  is checked by hand.
- **Feedback not retained.** The organization cannot show what it told an unsuccessful applicant,
  and cannot tell whether feedback improved later applications.
- **Reviews stored outside the application.** Spreadsheets by email, so the link from score to
  decision exists only in someone's inbox.

## AI relevance

Two uses are appropriate and one is not, and the line is drawn in
[merit review integrity](/governance/merit-review-integrity/):

**Appropriate.** Completeness checking against required items — it identifies what is missing
rather than judging quality, and it enables a cure request that is specific and fast. Also:
summarizing an application for a reviewer who then reads it, and drafting feedback from a
reviewer's own recorded comments.

**Not appropriate.** Generating or recommending a merit score. This is a decision about who
receives public money; it is contestable, and systematic bias would be applied uniformly at scale
while remaining invisible in aggregate outcomes. The applicant has a right to a reasoned decision
a human formed and can explain.
