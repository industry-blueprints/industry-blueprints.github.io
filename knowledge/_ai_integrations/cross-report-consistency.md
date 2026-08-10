---
type: AI Integration
title: Check Consistency Across Reports and Funders
description: Catch the same figure disagreeing between two submissions before an
  auditor does — a reconciliation nobody currently performs.
resource: https://industry-blueprints.github.io/ai-integrations/cross-report-consistency/
tags: [ai, grants, reporting, quality, reconciliation]

generated: { by: human:jhofmann, at: 2026-07-27T14:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [state, county, municipal]
ai_modality: queue
ai_task_type: classification
minimum_level: 3

relationships:
  - predicate: assists
    target: /personas/grants-manager.md
---

## Business problem

A recipient with three funders produces three reports on overlapping activity, each using the
funder's period, categories, and definitions, each assembled by hand. The same underlying number —
headcount served, staff cost, units delivered — appears differently in two of them.

Nobody reconciles them, because reconciliation is not anyone's task and the reports go to
different places. **The discrepancy is found by an auditor, years later, when the explanation has
left the organization.**

The same problem runs in the other direction for funders: a pass-through entity receives reports
from forty subrecipients and rolls them up into its own report, with no check that the parts agree
with what was previously reported.

## Target outcome

Inconsistencies flagged at preparation time, with both figures, their source, and the period they
cover, so the preparer resolves the discrepancy or records why it is legitimate.

## Why this is more useful than it sounds

Many discrepancies are **legitimate** — different period boundaries, different inclusion rules,
different definitions of "served." The value is not catching errors so much as forcing the
difference to be *explained and recorded* at the moment someone still knows the answer.

An organization that can state why two reports differ is in a completely different position at
audit than one that discovers the difference during fieldwork.

## Minimum maturity level: 3

Requires expenditure and activity coded to award and category at source, and reports produced from
that record rather than from parallel spreadsheets. At level 2 there is no common underlying record
to compare against — each report is its own artefact, and "consistency" has no referent.

This is the same prerequisite as the *code once, report many* future state in
[drawdown, reporting and closeout](/processes/drawdown-reporting-and-closeout/), and this
opportunity is essentially the check that makes it trustworthy.

## Prerequisites that are usually missing

1. **A category mapping between the local chart of accounts and each funder's scheme**, held
   explicitly rather than re-derived each period.
2. **Period definitions recorded** per funder, since much apparent inconsistency is a boundary
   difference.
3. **Prior submissions retained in structured form**, not as filed PDFs.
4. **A place to record a legitimate difference**, or every flag becomes noise the second time.

## How it works

Compare figures across submissions that should reconcile — same measure, overlapping period,
same underlying activity — after normalizing for known category and period mappings. Flag
differences above a threshold with both values, their sources, and the periods.

The preparer either corrects one or records the reason for the difference, which is retained and
suppresses the flag next period.

## Human oversight

Staff-facing tier under
[AI disclosure and human review](/governance/ai-disclosure-and-human-review/). Straightforward,
because nothing reaches a constituent and nothing is decided automatically:

- Flags are advisory; the preparer resolves them
- No figure is altered automatically, ever
- Recorded explanations are retained and available at audit
- Suppressed flags remain visible on request, so a legitimate difference recorded once does not
  become an invisible permanent exception

## Success metrics

- Discrepancies caught before submission versus found at audit
- Audit findings relating to reporting accuracy
- Staff hours spent on reconciliation
- Share of flags resolved as legitimate differences versus corrections
- Recurring unexplained differences (should trend to zero)

## Risk level

**Low.** Advisory output, internal audience, checkable against sources that remain available, and
no automatic change to any submitted figure. The realistic failure mode is flag fatigue — too many
low-value flags and preparers dismiss them all — which is a threshold-tuning problem with an
owner, not a safety issue.
