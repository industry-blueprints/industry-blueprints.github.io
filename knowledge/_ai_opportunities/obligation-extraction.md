---
type: AI Opportunity
title: Extract Obligations and Key Dates from Agreements
description: Turn contract and award prose into a tracked register — the highest-value
  extraction task in the library, and the one most exposed to flattening conditionality.
resource: https://industry-blueprints.github.io/ai-opportunities/obligation-extraction/
tags: [ai, extraction, contracts, grants, obligations, agreements]

generated: { by: human:jhofmann, at: 2026-07-27T16:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
ai_task_type: extraction
minimum_level: 3

relationships:
  - predicate: assists
    target: /personas/contract-manager.md
  - predicate: assists
    target: /personas/grants-manager.md
---

## Business problem

The commitments that matter operationally — service levels, reporting deadlines, notice periods,
review meetings, price adjustment mechanisms, flow-down conditions — exist as prose inside
documents nobody re-reads.

Extracting them by hand takes roughly an afternoon per substantial agreement, which is why it is
almost never done. So obligations stay invisible, entitlements go unclaimed, and renewals default.

## Target outcome

An [obligation register](/patterns/obligation-tracking/) populated at execution: each obligation
with its direction, owner, due date, recurrence, and a citation back to the clause it came from —
drafted automatically, verified by a person, tracked thereafter.

## Why this is the strongest extraction case in the library

- **High volume, uniformly tedious.** Nobody wants this job and it is nobody's job.
- **Verifiable against a source that stays available.** The clause citation lets a reviewer check
  in seconds rather than re-read the document.
- **The alternative is not manual extraction — it is nothing.** The realistic comparison is against
  obligations remaining in a PDF, which is a low bar.
- **Reusable across four Agreement subtypes.** Contracts, grant awards, licences, and permits share
  the shape, so the work is done once.

## The failure mode that matters

**Conditionality gets flattened.**

Agreement language is dense with "unless," "except where," "provided that," "subject to," and
"following written notice." These are exactly the constructions that summarization tends to drop,
and dropping one changes what a party is required to do.

An extracted obligation reading *"supplier provides a monthly performance report"* when the clause
says *"supplier provides a monthly performance report, except during the first quarter following a
change in scope, when reporting is fortnightly"* is worse than no extraction — because it will be
relied upon.

**Instruct explicitly to preserve conditions, and review specifically for their survival.** This is
the single check that matters most, and it does not happen by default.

## Minimum maturity level: 3

Requires agreements held as accessible documents linked to structured records, and a register with
owners to extract into. At level 2 there is nowhere to put the output — extraction produces a
document that joins the other documents.

Note that the [pattern](/patterns/obligation-tracking/) itself is level 2. Manual extraction into a
spreadsheet is worth doing long before this opportunity is viable, and organizations should not
wait for the automation.

## Prerequisites that are usually missing

1. **A register structure to extract into**, with direction, owner, and date fields defined.
2. **Named owners.** An extracted obligation with no owner is a list item.
3. **A verification step in the workflow**, or extraction quietly becomes the operational truth
   unreviewed.
4. **Amendment handling.** Extracting from the original and ignoring amendments produces a
   confidently wrong register.

## Human oversight

Staff-facing draft tier under
[AI disclosure and human review](/governance/ai-disclosure-and-human-review/), with additions:

- **Every extracted obligation is verified against its cited clause before the register goes live.**
  Verification is a gate, not a follow-up.
- Clause citation is mandatory on every item — an obligation with no traceable source is discarded,
  not kept as a lead.
- Extracted items are **permanently marked as machine-drafted**, so a later reader knows whether a
  human read the clause. This matters when the register is used to support a payment decision, a
  credit claim, or a dispute position.
- Conditionality is reviewed specifically, as a named check, not as part of general review.
- Re-extraction on amendment, with a diff against the prior register.

## Success metrics

- Agreements with a populated obligation register
- Time from execution to register live
- [Service credit realization](/kpis/service-credit-realization/) — the clearest downstream signal
- [Renewal lead time](/kpis/renewal-lead-time/) adequacy
- Obligations corrected at verification — a rate near zero means nobody is verifying
- **Conditionality errors found at verification**, tracked separately as the leading quality
  indicator

## Risk level

**Moderate.** The output is internal, verified, and checkable against a document that remains
available. But it enters a register relied upon for payment, claims, and disputes — and a flattened
condition is fluent, plausible, and wrong in exactly the way that survives casual review.

The risk is not in the first reading. It is in the third, when nobody remembers the register was
drafted rather than read.
