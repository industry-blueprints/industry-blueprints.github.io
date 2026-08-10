---
type: AI Integration
title: Classify Intent and Route at Intake
description: Determine what a contact is actually about and route it correctly on
  arrival, instead of asking the constituent to classify themselves.
resource: https://industry-blueprints.github.io/ai-integrations/intent-classification-and-routing/
tags: [ai, classification, routing, triage, constituent-service]

generated: { by: human:jhofmann, at: 2026-07-26T15:00:00Z }
status: draft
stale_after: 2027-07-26

industry: public-sector
government_levels: [federal, state, county, municipal]
ai_modality: autonomous
ai_task_type: classification
minimum_level: 3
---

## Business problem

Constituents are asked to classify their own request through a menu built around the
organization's structure. They guess. Staff then re-classify, often more than once. The
"Other" bucket absorbs a third of volume and is where aging cases hide.

## Target outcome

The request is understood from what the person actually wrote or said, assigned a service
type, and routed to somebody who can resolve it — on arrival, without a human triage pass
for the clear cases.

## Minimum maturity level: 3

**Do not attempt this at level 2.** The reason is not model capability, it is that
classification requires a target taxonomy and a shared case record. At level 2 the taxonomy
mirrors the org chart and each department has its own queue, so automated classification
faithfully reproduces the existing misroutes — faster, at higher volume, and with the
appearance of objectivity.

See [triage and routing](/processes/triage-and-routing/) for why the taxonomy work cannot
be skipped.

## Prerequisites that are usually missing

Listed in the order they tend to bite:

1. **A service catalogue organized around problems, not departments.** Almost always absent.
   This is the real project.
2. **Labelled historical data.** Existing classifications are the output of the broken
   process, so training or evaluating on them encodes the misroutes. Expect to hand-label a
   sample.
3. **A defined owner for the confidence threshold.** Somebody has to decide what happens to
   the uncertain 15%, and own the consequences of moving that dial.
4. **A referral path.** Correct classification frequently reveals the request belongs to
   another organization. Without somewhere to send it, better classification just produces
   better-labelled dead ends.

## How it works

Classify from the contact content into the service catalogue, with a confidence score. Above
threshold, route automatically. Below threshold, route to a human triage queue with the
top candidates suggested — the human is doing genuinely ambiguous work rather than clerical
sorting.

The threshold is a governed setting. Raising it improves accuracy and increases human triage
load; lowering it does the reverse. Both directions have a defensible answer and the answer
belongs to the operation, not the vendor.

## Required data

Contact content (text, or transcript for voice) · the service catalogue with definitions ·
a hand-labelled evaluation set · historical routing outcomes for baseline comparison.

## Human oversight

Internal-tier under [AI disclosure and human review](/governance/ai-disclosure-and-human-review/) —
classification does not reach the constituent directly, so disclosure is not required. But:

- Low-confidence cases go to a human, always.
- Misclassification is monitored as a metric with an owner.
- A representative can reclassify, and their correction is captured as signal.
- Watch for accuracy that varies by language or writing style. Aggregate accuracy can look
  fine while the system routes non-native-speaker contacts noticeably worse. Sample by
  segment, not in aggregate.

## Success metrics

- Share of contacts requiring re-classification (primary — should fall sharply)
- Size of the "Other" / unclassified bucket
- Time from receipt to correct owner
- [First contact resolution](/kpis/first-contact-resolution/), which should improve as a
  second-order effect
- Referral completion rate, once referrals become real

## Risk level

**Moderate.** Errors are recoverable and mostly invisible to the constituent — a misroute
costs time rather than rights. The genuine risk is systematic bias in who gets routed well,
which is why segmented monitoring is a requirement rather than a nicety.

## Feasibility

High, technically. The difficulty is entirely in the prerequisites — the classification
itself is a well-understood problem. Organizations that fail at this failed at the service
catalogue.
