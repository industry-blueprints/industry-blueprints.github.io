---
type: AI Agent
title: Agent-Assist Copilot
description: Sits beside the representative during a live contact, finds the governed answer,
  and shows its sources — and never speaks to the constituent itself.
resource: https://industry-blueprints.github.io/ai-agents/agent-assist-copilot/
tags: [ai-agent, constituent-service, retrieval, agent-assist, human-oversight]

generated: { by: human:jhofmann, at: 2026-07-29T15:00:00Z }
status: draft
stale_after: 2027-07-29

industry: public-sector
government_levels: [federal, state, county, municipal]
ai_modality: assist
ai_task_type: generation
minimum_level: 3

relationships:
  - predicate: part_of
    target: /architectures/ai-enabled-constituent-contact-center.md
  - predicate: assists
    target: /personas/customer-service-representative.md
  - predicate: automates
    target: /processes/knowledge-assisted-resolution.md
    note: Takes over retrieval and drafting; the representative keeps applicability and delivery
  - predicate: implements
    target: /patterns/grounded-knowledge-retrieval.md
  - predicate: constrained_by
    target: /governance/ai-disclosure-and-human-review.md
---

A representative is three minutes into a call about a permit condition they've never been asked
about. Currently they put the caller on hold and ask Dana. This assistant is what makes not-asking-Dana
the faster option — which is the only way it gets used at all.

**Its purpose is narrow on purpose: turn *finding* an answer into *checking* one.** It does not
resolve contacts, does not talk to the public, and does not decide anything.

## What it does

Listens to or reads the live contact context, works out the question behind the question, retrieves
candidate answers from the [governed corpus](/patterns/grounded-knowledge-retrieval/), and presents
a draft answer with every claim bound to the passage that supports it and the review date of that
passage visible. Where the corpus doesn't cover the question, it says so and files a gap.

## Allowed actions

- Retrieve passages from the governed knowledge corpus
- Draft a suggested answer constrained to retrieved text
- Display citations, source titles, and review dates alongside the draft
- Surface prior contacts from the same party, from the case record
- Flag that the corpus does not cover a question, and emit a gap event
- Suggest a plain-language rephrasing of its own draft
- Log everything it retrieved, drafted, and was asked

## Prohibited actions

State these in configuration, not in a policy document nobody reads.

- **Communicating with a constituent.** No channel access, outbound or inbound. Everything it
  produces reaches a person only after a representative sends it.
- **Answering beyond retrieved text.** If the corpus doesn't support it, the answer is a refusal.
  Silent fallback to model knowledge converts a visible gap into an invisible error.
- **Committing anything to the case record.** Drafting a note is a
  [different agent's job](/ai-agents/case-note-agent/), with its own review step.
- **Stating a determination.** Eligibility, entitlement, amount owed, appeal outcome. It may
  retrieve *what the published criteria say*; it may not apply them to a person.
- **Suppressing the review date**, however stale. Staleness is information the representative needs.
- **Presenting an uncited claim.** An answer with no traceable source is a failure state and must
  look like one.
- **Reporting on the representative.** No output to supervisors about individual staff behaviour.
  A copilot that doubles as a monitoring tool will be worked around within a fortnight.

## Human approval points

| Moment | Who | What they're actually doing |
|---|---|---|
| Before the answer reaches the constituent | The representative | Checking applicability — most public-sector answers are conditional on circumstances the draft can't know |
| Anything consequential — deadline, amount, eligibility, refusal, appeal right | A named approver | Approving under the consequential tier of [AI disclosure and human review](/governance/ai-disclosure-and-human-review/) |
| A refused question | The knowledge owner | Deciding whether the corpus should cover it |

The first row is the one that matters and it is easy to lose. The representative isn't
proofreading — they're performing step 3 of
[knowledge-assisted resolution](/processes/knowledge-assisted-resolution/), the applicability check,
which is the step that carries the actual risk in this domain.

## Escalation conditions

- Coverage below threshold → refuse, offer the gap flag, hand back to the representative
- Contact appears to involve a determination rather than a question → withdraw the draft and say why
- Distress or safeguarding signals in the contact → surface to the representative privately, never
  to a dashboard
- Repeated retrieval on a topic whose content is past review date → notify the content owner
  regardless of whether anyone flagged it

## How it fails

**Fluent and stale.** Retrieves a superseded document confidently. The mitigation is corpus
governance, not model tuning — this is why the [minimum level is 3](/maturity-rubrics/constituent-service/).

**Conditionality flattened.** Public-sector guidance is dense with "unless" and "except where," and
chunk boundaries that split a condition from its qualification produce answers that are right in
isolation and wrong in application. The most common accuracy failure here.

**Rubber-stamping.** Under queue pressure, verification becomes clicking accept. Detect it by
sampling sent answers against sources, and by watching for a correction rate near zero — which means
nobody is checking, not that the drafts are perfect.

**Trusted more than a colleague.** Once representatives believe it, they stop applying the
applicability check. Citations enable verification; they do not perform it.

**Latency.** Above about fifteen seconds it loses to asking a colleague and quietly stops being
used, which is the failure that looks like adoption resistance and is actually an engineering
problem.

## How to tell if it's working

- Answer consistency across representatives for the same question
- Refusal rate — a healthy system refuses more than stakeholders expect; set that expectation before
  launch
- Gap queue throughput, and corpus items created or corrected as a result
- Correction rate on drafts, tracked deliberately in both directions
- [First contact resolution](/kpis/first-contact-resolution/), which should improve as a second-order
  effect
- Time from question to verified answer, against the fifteen-second threshold
- Accuracy sampled **by language and channel**, never aggregate only
