---
type: AI Opportunity
title: Review Specifications for Restrictive Language
description: Flag requirements that foreclose competition before publication —
  when it is still cheap to fix, and while a human still decides.
resource: https://industry-blueprints.github.io/ai-opportunities/specification-competition-review/
tags: [ai, procurement, competition, requirements, classification]

generated: { by: human:jhofmann, at: 2026-07-27T16:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
ai_task_type: classification
minimum_level: 2

relationships:
  - predicate: assists
    target: /personas/chief-procurement-officer.md
  - predicate: assists
    target: /personas/solution-architect.md
---

## Business problem

The most expensive procurement failures happen before the solicitation publishes: a specification
written around a product, describing a solution rather than a need.

The consequences are a single credible bidder, a protest, or a failed competition requiring a full
re-run. And the cause is rarely bad faith — a department that saw a compelling demonstration
naturally describes what it saw.

Catching this requires someone to read a long technical specification looking for language that
excludes suppliers, which requires both category knowledge and time. In most organizations nobody
has both.

## Target outcome

Draft specifications reviewed before publication, with potentially restrictive language flagged
for a human to assess — brand names, proprietary terms, feature combinations only one supplier
offers, credentials narrower than the work requires, and timelines only an incumbent could meet.

## What to flag

| Pattern | Why it restricts |
|---|---|
| Brand, product, or version names | Excludes equivalents unless "or equivalent" with criteria |
| Proprietary terminology | A specific vendor's vocabulary presented as a requirement |
| Feature combinations | Individually reasonable, jointly satisfied by one product |
| Over-specified quantities or dimensions | Exact figures matching one product's datasheet |
| Credentials disproportionate to the work | Certifications narrower than the outcome needs |
| Incumbent-only timelines | Mobilization periods only an existing supplier could meet |
| Experience requirements referencing the buyer | "Prior experience with this jurisdiction" |
| Unranked mandatory requirements | Each one excludes someone; a long undifferentiated list excludes many |

## Minimum maturity level: 2

**The lowest bar of any AI opportunity in this library**, and deliberately so. It needs a draft
specification and a person to review the flags. No integration, no data platform, no structured
requirement register.

That makes it available to exactly the organizations that need it most: small jurisdictions where
the person defining the need also runs the competition, and therefore cannot apply the
over-specification test to their own document.

## Prerequisites that are usually missing

1. **A review step that exists at all**, before publication, with time to act on what it finds.
2. **Willingness to challenge the department.** Flags are useless if the answer is always "that
   requirement is essential."
3. **A justification route.** A restrictive requirement may be entirely legitimate; there needs to
   be somewhere to record why, which also makes the decision auditable.

The second is cultural and is the real constraint. The tool surfaces a conversation somebody still
has to have.

## Human oversight

Staff-facing tier under
[AI disclosure and human review](/governance/ai-disclosure-and-human-review/), and the boundary is
clean:

- **Flags are advisory.** Nothing is changed automatically, and no specification is blocked.
- Each flag states the reason and the excluded population, so it can be assessed rather than
  obeyed.
- A person decides whether the restriction is justified and records why.
- Recorded justifications are retained — they are useful evidence if the award is protested.

This sits comfortably on the safe side of
[competition and evaluation integrity](/governance/competition-and-evaluation-integrity/): it
influences a document, not an award, and every flag is visible and contestable before anything
happens.

## Success metrics

- Specifications amended following review
- [Competition rate](/kpis/competition-rate/) and thin-competition rate
- Single-bid competitions
- Protests alleging restrictive specification
- Failed competitions requiring re-run
- Flags overridden with recorded justification versus flags acted on

Track that last one honestly. Consistently high override rates mean either the flags are poor or
the review is ceremonial, and the two are distinguishable by reading the justifications.

## Risk level

**Low.** Advisory output, internal audience, before publication, with human decision on every flag
and no automatic change. The realistic failure is false positives producing fatigue — a
threshold-tuning problem with an owner, not a safety issue.

The more interesting risk runs the other way: **an organization treating a clean review as
assurance that the specification permits competition.** It does not. Absence of flagged language is
not presence of a viable market, and the market research in
[needs definition](/processes/needs-definition-and-market-research/) is not replaced by this.
