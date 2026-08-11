---
id: protest-and-dispute-resolution
title: Protest & Dispute Resolution
type: capability
level: 2
version: '0.1'
status: draft
description: Handling challenges to a solicitation or award, and holding the record
  needed to defend one — a capability exercised entirely on work already done.
last_updated: '2026-08-11'
capability_area: acquire
industries:
- public-sector
tracks:
- business
- experience-process
- information
- architecture
- trust-governance
- ai-automation
relationships:
  builds_on: []
  personas: []
  adds: []
---

## Business definition
To receive and resolve challenges — to solicitation terms, to an award decision, and to
contractual performance and payment — promptly, impartially, and on the record.

**This capability produces nothing on its own.** Every protest is decided on the quality of work
done in [needs
definition](/capabilities/needs-definition-and-acquisition-planning/), solicitation, and
[evaluation](/capabilities/evaluation-and-award/). What happens here is discovery of how good that
work was.

## Desired outcomes

- Challenge routes published and genuinely accessible, including to small suppliers
- Pre-award objections to solicitation terms raised and resolved before responses are prepared
- Protests decided within a defined period, with reasoning given
- Decisions made by someone independent of the award
- Grounds analysed for pattern, not only resolved individually
- Contract disputes escalated through defined steps before formal proceedings

## Lifecycle
Solicitation question and objection handling before close · protest intake and standing assessment ·
standstill and stay determination · record assembly · independent review · decision and remedy
selection · corrective action implementation · external forum representation · contract claim
intake and analysis · negotiation and alternative dispute resolution · termination for cause or
convenience · post-decision pattern analysis

## Domain model
Protest register with grounds, timeline, decision, and remedy · the evaluation record relied on ·
standstill and stay determinations · corrective actions taken and their effect · contract claim
register with value and status · settlement and termination record · grounds coded for trend
analysis

## Measures

| Measure | Class |
|---|---|
| Protests received per hundred solicitations | Outcome |
| Share upheld, in whole or part | Outcome |
| Time from protest to decision | Process |
| Protests resolved internally versus escalated externally | Process |
| Award-to-start delay attributable to challenge | Outcome |
| Recurrence of the same protest ground | Outcome |
| Contract claims resolved before formal proceedings | Process |

**Read the first measure carefully in both directions.** A high rate signals process problems. A
rate of zero can mean challenge is impractical, which is worse, because the process problems still
exist and nothing surfaces them.

## Level variance

- **Federal.** Multiple protest forums — the contracting agency, an independent legislative-branch
  forum, and the courts — with an automatic stay of performance in defined circumstances and
  published decisions that constitute a body of precedent.
- **State.** An administrative protest process under state procurement law, with defined filing
  windows and, usually, an appeal route to a central procurement authority or hearing officer.
- **County / municipal.** Protest procedures set by local ordinance, frequently short and
  sometimes decided by the same official who made the award. Where the review is not independent,
  the credibility of the whole process depends on the debrief instead.

## What to get right

**Build a record that supports the decision.** Scores with rationale, criteria fixed before
opening, and any departure from the ranked outcome documented are what let a correct decision be
shown to be correct — the reason
competition and evaluation integrity treats
the record as the control.

**Have review conducted by someone independent of the award.** Review by the awarding official is
structurally unable to produce confidence, however conscientiously performed.

**Resolve objections to solicitation terms during the question period, not at protest.** A
restrictive specification queried and fixed early costs nothing; left to become an award challenge,
it costs much more.

**Set filing windows long enough to use, with the record available.** Five days to file with the
evaluation record unavailable means only suppliers with standing counsel can participate.

**Analyse protest grounds for pattern, not just case by case.** Handled as isolated events, the
third protest on the same ground is still a surprise; analysed together, it isn't.

**Choose procurement design on outcomes, not fear of protest.** Lowest-price awards chosen because
they are easy to defend produce defensible decisions and poor outcomes.

**Give contract disputes a structured negotiation step before escalation.** Without one, ordinary
performance disagreements arrive as formal claims with legal cost attached on both sides.
## Architecture

The architecture boundary for this capability follows the responsibilities, lifecycle, and
information described above. A dedicated architecture artifact has not yet been developed for
this inventory entry.

## Trust and governance

Trust concerns include authority to act, access to operational records, accountable decisions,
retention, and an auditable history. Applicable controls vary with the workload, jurisdiction,
and information sensitivity; a dedicated trust model has not yet been developed for this draft.

## AI and automation

AI and automation opportunities have not yet been evaluated for this capability. Future
patterns remain bounded by the authority, access, decision, and audit controls of the
underlying work.
