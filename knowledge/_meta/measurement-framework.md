---
type: Meta
title: Outcome Measurement Framework
description: How measures in this library are classified — outcome, output,
  process, input — and why most government measurement stops at the wrong one.
resource: https://industry-blueprints.github.io/meta/measurement-framework/
tags: [meta, measurement, kpi, outcomes, equity]

sources:
  - id: a11-280
    resource: https://www.performance.gov/cx/
    title: Federal customer experience measurement framework (OMB Circular A-11 §280)

generated: { by: human:jhofmann, at: 2026-07-27T09:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
---

Every KPI in this library declares a **measure class**. The classification is not bookkeeping —
it is the fastest way to see what an organization is actually managing, and government
measurement has a strong and well-documented tendency to cluster at the bottom of this ladder.

## The four classes

| Class | Answers | Example | Who cares |
|---|---|---|---|
| **Outcome** | Did the public's condition change? | Share of residents who can complete a service without help | Elected officials, the public |
| **Output** | What did we produce? | Permits issued; benefits paid; cases closed | Program managers, budget |
| **Process** | How well did we work? | First contact resolution; cycle time; reopen rate | Operational managers |
| **Input** | What did we consume? | Cost per case; staff hours; vacancy rate | Finance, HR |

Read from the bottom: inputs are the easiest to measure and the least meaningful; outcomes are
the hardest and the only ones the public actually experiences.

## Why measurement clusters at the bottom

Not incompetence. Four structural reasons, each of which has to be addressed rather than
exhorted away:

**Inputs and outputs are already instrumented.** Financial and workflow systems emit them as a
byproduct. Outcomes require asking people or linking to data the organization does not own.

**Attribution is genuinely hard.** If unemployment falls, how much was the workforce program?
This is a real methodological problem, not an excuse — but it means outcome measures often
have to be about *the service experience* rather than *the societal result*, which is
measurable and still meaningful.

**Outputs are safer.** "We issued 4,200 permits" is unambiguous and defensible. "Median time
from application to decision fell to 11 days" invites a question about why it was 19.

**The reporting cycle is annual and the operating cycle is daily.** Measures built for the
annual report do not help anyone manage on Tuesday, so operational teams build a shadow set,
and the two never reconcile.

## The rule this library applies

**Every capability declares at least one outcome measure**, even when it is imperfect, and
every process measure states which outcome it is a proxy for. A process measure that cannot
name its outcome is measuring activity for its own sake.

## Access and equity as a cross-cutting dimension

Not a fifth class — a **segmentation requirement applied to every measure**. An aggregate can
look healthy while a specific population is served badly, and the aggregate is what gets
reported.

Minimum segmentation where the data supports it: **language · channel · geography ·
accommodation need**. Where it does not support it, that gap is itself a finding worth
recording rather than a reason to skip the analysis.

The failure this prevents is specific and common: a service moves online, aggregate satisfaction
rises because the people who can use it are delighted, and the people who cannot use it stop
appearing in the numerator at all — because they gave up, and abandonment is rarely measured.

## Leading and lagging

Orthogonal to the four classes, and worth stating on every measure:

- **Leading** measures move before the thing you care about — backlog age, first contact
  resolution, staff vacancy rate. Actionable, noisier.
- **Lagging** measures confirm what already happened — annual satisfaction, cost per outcome.
  Authoritative, too late to act on.

An operational dashboard consisting entirely of lagging measures describes a service that is
being reported on rather than managed.

## Definitional discipline

A measure is only useful if two people compute it the same way. Every KPI artifact in this
library states:

1. **The precise definition**, including every parameter that changes the number
2. **The data required**, and therefore the maturity level at which it becomes measurable
3. **Typical values by maturity level**, so a number means something in a workshop
4. **What a suspiciously good result usually means** — the check that catches broken measurement

Point 4 matters more than it sounds. Most measurement failures present as improvement.
[First contact resolution](/kpis/first-contact-resolution/) is the worked example: an
organization that starts measuring it honestly will appear to get dramatically worse, and more
than one improvement programme has been cancelled on the strength of that artefact.

## Measures are not targets

Applying a target to a measure changes the behaviour that produces it. This is not a reason to
avoid targets — it is a reason to pair every target with the measure that detects the obvious
gaming:

| Target on | Gamed by | Pair with |
|---|---|---|
| Handle time | Rushing, premature closure | Reopen rate, first contact resolution |
| Cases closed | Closing without resolving | Reopen rate, disposition mix |
| Backlog size | Bulk closure, reclassification | Case age distribution, reopen rate |
| Satisfaction score | Selective survey timing | Response rate, segmentation |
| Cost per case | Shifting complexity elsewhere | Referral volume, escalation rate |

Publishing the pair alongside the target is a design decision, not a trust issue. Anyone under
target pressure will optimize; the question is only whether the organization can see it.
