---
type: Persona
title: Asset Manager
description: Holds the answer to what is owned, what condition it is in, and what it
  will cost to keep — for three audiences who each want a different number.
resource: https://industry-blueprints.github.io/personas/asset-manager/
tags: [persona, asset-management, condition, lifecycle, data, infrastructure]

generated: { by: human:jhofmann, at: 2026-07-29T09:15:00Z }
status: draft
stale_after: 2027-07-29
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
persona_type: specialist
---

Also: Asset Management Coordinator, Infrastructure Analyst, Reliability Engineer, GIS-Asset
Analyst. Frequently a part of someone else's job rather than a post, which is why the register
decays.

## Role summary

Maintains the authoritative record of physical assets — hierarchy, condition, criticality,
remaining life, and replacement cost — and turns it into the renewal forecast that
[capital planning](/capabilities/capital-planning-and-programming/) depends on.

**Serves three audiences who want incompatible things.** Finance wants capitalized assets above a
threshold, valued and depreciated. Operations wants everything it maintains, including items below
the threshold. GIS wants everything with geometry. Reconciling the three is most of the job, and
where it is not done, all three registers are wrong in different directions.

## Goals

- One register, reconciled across the financial, operational, and spatial views
- Condition assessed on a defined cycle by a consistent method
- Criticality assigned by consequence of failure, not by replacement value
- Renewal need forecast far enough ahead to be planned against
- New assets captured at construction handover rather than reconstructed later
- Ratings that turn out to be predictive of actual failures

## Decisions made

| Decision | Constrained by |
|---|---|
| Asset hierarchy and what counts as a discrete asset | Usefulness for maintenance versus usefulness for accounting |
| Condition rating method and assessment cycle | Budget, and whether anyone will act on the result |
| Criticality tiering | Consequence analysis, which frequently has not been done |
| Remaining-life assumptions for buried and inaccessible assets | Age and material, because condition cannot be observed |
| What to do about assets nobody can find | More common than anyone admits |

## Pain points

**Three registers that disagree**, with no reconciliation and no owner of the difference.

**Condition assessed once.** An initial survey, then nothing, so ratings age and every plan built on
them is describing a decade ago.

**Criticality proxied by cost.** A cheap valve whose failure floods a district treated as
low-priority because it is inexpensive to replace.

**Handover data never captured.** The new facility opens and is not in the register — so it is not
maintained, not depreciated correctly, and not in the renewal forecast. See
[project delivery](/capabilities/project-delivery-and-construction-management/).

**Completion recorded as a status.** Work orders closed with no findings, no parts, no labour, so
the register accumulates no evidence about how assets are actually behaving.

**Buried assets estimated.** Install dates and materials unknown, condition inferred from age
alone, which is defensible as an interim measure and becomes permanent.

**Disposals unrecorded.** The register lists assets demolished years ago, so counts and valuations
are both wrong and the annual reconciliation is a large adjustment.

**Asset management confused with software.** A system procured, populated during implementation,
decayed within two years because nobody owned the data.

## Where AI actually helps

[Condition assessment from imagery](/ai-opportunities/condition-assessment-from-imagery/) is the
change that makes continuous condition data affordable, and continuous condition data is the
prerequisite for everything else in this domain.
[Failure prediction](/ai-opportunities/failure-prediction-from-work-history/) is the higher-value
and much higher-prerequisite case.

The boundary worth stating: **a model over a register nobody trusts produces confident wrong
answers**. The order of work is register, then condition, then prediction — not the reverse, which
is the order it is usually attempted in.

## Typical questions

- Do the finance, operations, and GIS views of this asset agree?
- When was this last assessed, and by what method?
- Is this asset critical because it would cost a lot, or because its failure would matter?
- Are we renewing faster or slower than assets are consuming their life?
- Do assets we rated in good condition keep failing?
