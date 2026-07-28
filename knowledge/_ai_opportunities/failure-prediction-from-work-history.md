---
type: AI Opportunity
title: Predict Failures from Work History and Sensor Data
description: Identify which assets are likely to fail next — the highest-value case in
  the domain, and the one with the strictest prerequisite.
resource: https://industry-blueprints.github.io/ai-opportunities/failure-prediction-from-work-history/
tags: [ai, assets, prediction, reliability, maintenance, sensors, anomaly-detection]

generated: { by: human:jhofmann, at: 2026-07-29T13:30:00Z }
status: draft
stale_after: 2027-07-29
depth: defined

industry: public-sector
government_levels: [state, county, municipal]
ai_task_type: prediction
minimum_level: 4

relationships:
  - predicate: assists
    target: /personas/asset-manager.md
  - predicate: assists
    target: /personas/maintenance-planner.md
  - predicate: assists
    target: /personas/utility-operator.md
  - predicate: assists
    target: /personas/fleet-manager.md
---

## Business problem

Renewal is prioritized by age and condition, both of which are weak predictors on their own. Age
ignores how hard an asset has worked; condition, where it exists, is periodic and frequently
inferred. Meanwhile the strongest available signal — **how this asset and its siblings have
actually behaved** — sits unused in closed work orders.

For water mains, pumps, vehicles, and rotating plant, failure is not random. Break history,
material, install period, soil, pressure, duty cycle, and prior repairs together predict it
considerably better than age does.

## What it changes

The decision it improves is **which of the assets we cannot afford to renew this year should we
renew anyway.** Every jurisdiction faces that question and answers it by age, squeaky wheel, or
which street is being resurfaced.

Concretely:

- **Water mains** — segments ranked by break likelihood, which changes replacement sequencing and pairs with road resurfacing
- **Pumps and rotating plant** — vibration and run-hour anomalies flagged before failure
- **Fleet** — component failure prediction from telematics and repair history, and better economic-replacement timing
- **Process operations** — excursion precursors in flow and quality data, the case named in [utility operations](/capabilities/utility-operations/)

## Prerequisites — why level 4, honestly

**This is the highest-prerequisite opportunity in this cluster and the one most often attempted
first.**

| Needed | Why |
|---|---|
| Work orders joined to assets | Without the [asset join](/data-entities/work-order/) there is no history to learn from — only a pile of closed jobs |
| Completion capturing findings and coded causes | "Repaired" is not a training signal. Cause codes are |
| Several years of history | Failure is a low-frequency event; short histories produce models that fit noise |
| An asset register that is trusted | A model over an unreliable register produces confident wrong answers |
| Sensor or meter data, for the plant cases | Run hours, vibration, flow, pressure |

**The prerequisite is the record, not the model.** An organization whose completion is a status
flag cannot do this, and no amount of modelling effort substitutes. That is why
[field execution](/processes/field-execution-and-completion/) capturing actuals is upstream of
everything here, and why the honest sequence is **register, then condition, then prediction** —
which is the reverse of the order it is usually attempted in.

## The boundary

**Ranking, not deciding.** The model orders assets by predicted failure likelihood. What gets
renewed combines that with criticality, service consequence, budget, coordination with other works,
and equity of investment across neighbourhoods — none of which is in the model.

**Criticality is not learnable from failure history.** An asset that has never failed may be the
one whose failure would be catastrophic. Prediction and consequence are independent inputs, and
conflating them systematically under-prioritizes the assets that matter most.

**Watch for the feedback loop.** Assets predicted to fail get inspected and maintained more, and
therefore fail less, and the model learns they were low risk. Without deliberate handling —
holdout areas, or modelling the intervention — the model degrades in a way that looks like
improving performance.

**Equity check the output.** Renewal driven by failure history concentrates investment where assets
have historically been maintained *and recorded*. Neighbourhoods with poorer historical record-keeping
can be systematically under-prioritized by a model behaving exactly as designed. Compare predicted
investment distribution against population and against historical investment — this is the same
class of check as segmented [assessment
uniformity](/capabilities/revenue-and-taxation/) in taxation.

## Where it goes wrong

**Attempted before the register exists.** The most common failure, and it produces a model whose
outputs nobody trusts and an initiative that discredits the technique locally for years.

**Trained on repair records without cause codes**, so the model learns which assets get attention
rather than which fail.

**Presented as certainty.** A ranked list read as a prediction of specific failures, then judged
against the ones it missed.

**Sensor data without the work history.** Telematics and SCADA alone detect anomalies; they do not
know what happened next unless the repair was recorded against the asset.

**No validation against holdout.** Performance claimed from the training period, never tested
against subsequent actual failures — which is the check that
[failure analysis](/processes/failure-analysis-and-renewal-referral/) would naturally provide if
the loop were closed.
