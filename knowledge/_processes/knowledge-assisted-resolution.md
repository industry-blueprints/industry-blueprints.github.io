---
type: Process
title: Knowledge-Assisted Resolution
description: How a representative answers a constituent's question correctly and
  consistently, using governed knowledge rather than recall.
resource: https://industry-blueprints.github.io/processes/knowledge-assisted-resolution/
tags: [constituent-service, knowledge-management, resolution, first-contact]

generated: { by: human:jhofmann, at: 2026-07-26T15:00:00Z }
status: draft
stale_after: 2027-07-26

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: supports
    target: /capabilities/constituent-service-management.md
  - predicate: has_participant
    target: /personas/customer-service-representative.md
  - predicate: has_participant
    target: /personas/knowledge-manager.md
    note: Owns content accuracy and review cycles
  - predicate: measured_by
    target: /kpis/first-contact-resolution.md
  - predicate: implemented_by
    target: /patterns/grounded-knowledge-retrieval.md
  - predicate: has_integration
    target: /ai-integrations/contact-summarization.md
  - predicate: constrained_by
    target: /governance/ai-disclosure-and-human-review.md
---

This is the process that determines whether a person gets a right answer, a wrong answer, or
a promise that someone will call back. It is also the process most often described as solved
because a knowledge base exists.

The test is not whether content exists. It is what a representative does in the sixty seconds
after a question they have not seen before.

## Trigger and outcome

**Trigger:** a case has been routed to a representative who is expected to resolve it.

**Ends when:** the person has an answer they can act on and the case is resolved — or the
case is escalated with a documented reason.

## Current state: how this typically runs today

At level 2 the sequence is: the representative recalls, guesses, or asks a colleague. If none
of that works, they promise a call back — which converts a two-minute interaction into a case
that will be worked twice and measured once.

Observable symptoms:

- The most knowledgeable person on the floor is interrupted constantly and is a single point of failure.
- Answers vary by representative in ways that are invisible until someone complains.
- Content exists on the intranet but staff use a personal document instead, because it is faster.
- Nobody can say when a given answer was last checked against current policy.

### Why it works that way

- **Search is worse than a colleague.** If searching takes ninety seconds and asking Dana
  takes fifteen, staff will ask Dana. This is a latency problem masquerading as a culture problem.
- **Content ownership is unfunded.** Knowledge maintenance is nobody's actual job, so it is
  done by whoever is most uncomfortable with it being wrong.
- **Policy documents are not answers.** A twelve-page policy is authoritative but unusable at
  the moment of contact, so staff translate it once, privately, and never share the translation.

## Steps

1. **Identify the question behind the question.** Requests are stated in the person's terms,
   not the service catalogue's.
2. **Retrieve the governed answer** for the identified topic, with its review date visible.
3. **Check applicability** — most public-sector answers are conditional on circumstances that
   have to be established first.
4. **Deliver the answer** in plain language, in the person's preferred language and format.
5. **Record what was asked and answered** on the case, in enough detail that the next person
   does not have to re-establish it.
6. **Escalate if unresolved**, with the question, what was tried, and why it did not resolve.
7. **Flag the gap** when governed knowledge did not have the answer. This step is almost
   always missing, and it is the one that compounds.

## Where time and rework are lost

- **Search latency.** Every second above about fifteen pushes staff back to informal sources.
- **Conditional answers delivered unconditionally.** Produces a confidently wrong answer and
  a repeat contact, which is worse than "I need to check."
- **Undocumented resolutions.** The answer was found, delivered, and never written down, so
  the next representative repeats the work.
- **Unflagged gaps.** The organization cannot distinguish "we have no content on this" from
  "our content is unfindable," and so fixes the wrong one.

## Recommended future state, by maturity level

**To reach level 3** — knowledge is governed: every article has a named owner, a review date,
and a defined scope. Search is fast enough to beat asking a colleague. Gap flagging is a
one-click action from the case, and the flags go to the content owner rather than a mailbox.

This is unglamorous and it is the entire foundation. An organization that skips it and buys
AI assistance will ground its assistant in unowned, unreviewed content and scale the existing
inconsistency.

**To reach level 4** — the answer is retrieved and drafted at the moment of contact, grounded
in governed content, with citations the representative can check before sending. The
representative moves from *finding* to *verifying*, which is a faster and more reliable
cognitive task. Contact summarization writes the case note, removing the documentation step
that was being skipped.

Two constraints are non-negotiable at this level: the representative must be able to see
which source produced the answer, and unanswerable questions must fail visibly rather than
generating a plausible response. See
[AI disclosure and human review](/governance/ai-disclosure-and-human-review/).

## Level variance

- **Federal.** Answers are more often conditional on statutory eligibility criteria, so the
  applicability check in step 3 carries most of the risk. Plain-language obligations apply to
  public-facing content.
- **State.** Frequently maintains knowledge that county staff deliver, which makes ownership
  and review cycles a cross-organizational problem rather than an internal one.
- **County / municipal.** Broader topic range with less depth per topic; the practical
  constraint is that a single generalist covers services from refuse collection to business
  licensing, so retrieval quality matters more than depth of content.
