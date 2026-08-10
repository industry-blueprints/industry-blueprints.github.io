---
type: AI Integration
title: Surface Risk Signals Across a Recipient Portfolio
description: Detect the patterns that should change how closely a recipient is
  monitored — and stop short of assigning the risk tier.
resource: https://industry-blueprints.github.io/ai-integrations/subrecipient-risk-signals/
tags: [ai, grants, anomaly-detection, monitoring, risk, oversight]

generated: { by: human:jhofmann, at: 2026-07-27T14:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county]
ai_modality: queue
ai_task_type: anomaly_detection
minimum_level: 4

relationships:
  - predicate: assists
    target: /personas/grants-manager.md
---

## Business problem

Risk-based monitoring is the correct answer to fixed capacity and growing portfolios. It requires
noticing, during a period of performance, that a recipient's situation has changed — a finance
director departing, drawdowns going flat, reports arriving late, a finding raised in a different
programme.

Nobody is watching for these. A grants manager with forty active awards sees a signal when it
becomes a problem, which is usually after the money is spent.

## Target outcome

Signals surfaced continuously across the portfolio, ranked by how much they should shift attention,
so a human reassesses the right recipients at the right time rather than everyone once a year.

## The boundary, stated first

**This opportunity surfaces signals. It does not assign risk tiers.**

The distinction is not pedantic. A risk tier determines how intensively an organization is
scrutinized and how much compliance burden it carries. Systematic error there falls
disproportionately on small and first-time recipients, who look riskier on almost every measurable
proxy — less prior experience, thinner financials, more staff turnover — while frequently being
exactly the organizations a programme is trying to reach.

Left to a model, the pattern compounds quietly: flagged as high risk, monitored intensively, more
findings raised, rating confirmed. **The tier is a judgement a named human owns**, informed by
signals and documented with reasons. See
[subrecipient monitoring](/governance/subrecipient-monitoring/) and
[risk-based monitoring](/patterns/risk-based-monitoring/).

## Minimum maturity level: 4

The highest bar in this library, and it is a data prerequisite rather than a modelling one.
Requires recipient identity resolved across programmes and departments, drawdown and reporting
history in structured form, and findings linked to the party rather than to individual awards.

An organization that cannot see one recipient's history across its own programmes cannot do this
at all — see [data governance and stewardship](/capabilities/data-governance-and-stewardship/).

## Prerequisites that are usually missing

1. **Party-level risk record.** The single biggest gap, and a
   [data model](/data-models/grants-data-model/) decision.
2. **Structured drawdown and reporting history**, not PDFs.
3. **A defined action for a surfaced signal.** A queue nobody works makes this a dashboard.
4. **Capacity to act.** Better targeting does not create monitoring capacity; it redirects it.
   If the plan cannot flex, the signals change nothing.

## Signals worth detecting

Drawdown timing anomalies against the recipient's own history · reporting lateness and revision
patterns · figures inconsistent across reports for the same period · key personnel change ·
findings raised elsewhere in the funder · first award materially above prior scale · budget
amendment requests suggesting the original plan was not viable

Note that most of these are **deterministic rules**, not machine learning. Start there: rules are
explainable, auditable, and defensible to a recipient who asks why they were flagged. Reach for a
model only where patterns are genuinely multivariate.

## Human oversight

Internal tier under
[AI disclosure and human review](/governance/ai-disclosure-and-human-review/), plus:

- A surfaced signal is an input to a human reassessment, never an automatic tier change
- The reason for the flag is visible and expressible to the recipient
- Recipients can see and contest their tier and its basis
- **Monitor the flag distribution by recipient size and type.** If small and first-time recipients
  are flagged at systematically higher rates, that is a finding about the signals, not about the
  recipients
- Tier changes recorded with the human rationale, reproducible afterwards for audit

## Success metrics

- Findings identified during the period rather than at closeout
- [Subrecipient monitoring coverage](/kpis/subrecipient-monitoring-coverage/), high-risk tier specifically
- [Repeat finding rate](/kpis/repeat-finding-rate/)
- Monitoring burden on low-risk recipients (should fall)
- Flag rate by recipient size and type (should not skew)
- Signals acted on versus signals raised

## Risk level

**High.** Not because the technique is difficult but because of what it influences. Scrutiny is a
burden, it is allocated by this process, and the organizations most likely to be misallocated it
are the least able to absorb it. This opportunity is worth pursuing and worth governing carefully —
the deterministic-rules-first recommendation above is the main risk control, not a technical
preference.
