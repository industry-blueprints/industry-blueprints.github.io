---
id: pretrial-services-and-release-decisions
title: Pretrial Services & Release Decisions
type: capability
level: 2
version: '0.1'
status: draft
description: Assessing and supervising people awaiting trial — and supporting the
  decision about who is detained before any finding of guilt.
last_updated: '2026-08-11'
capability_area: justice-and-public-safety
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
To gather and verify information about a person arrested and awaiting trial, support the court's
release or detention decision, and supervise those released — with the objective of appearance at
court and community safety at the least restriction necessary.

**Detention before trial is imposed on people who have not been convicted, and its effects begin
immediately.** Days in custody cost employment, housing, and childcare, and are associated with
worse case outcomes. Whatever the legal framing, this is the most consequential decision in the
pipeline for most defendants and it is made fastest, on the least information.

## Desired outcomes

- Information gathered and verified quickly enough to inform the first appearance
- Release decisions made on assessed risk of non-appearance and of harm, not on ability to pay
- Least restrictive conditions that address the identified risk
- Conditions that are achievable — supervision a person can actually comply with
- Court date reminders delivered, because most non-appearance is not evasion
- Any assessment instrument validated locally and tested for disparate impact
- Detention decisions with recorded findings
- Time in pretrial custody minimized and monitored

## Lifecycle
Arrest intake and identification · information gathering and verification — residence, employment,
ties, prior appearance history · risk assessment administration · recommendation to the court ·
first appearance support · condition setting and explanation · release processing · supervision at
the assessed level — check-ins, monitoring, electronic monitoring · court date reminder delivery ·
failure-to-appear response and reintegration rather than automatic warrant · condition violation
response · referral to services — treatment, housing, transport · detention review and reassessment
· data reporting and instrument validation

## Domain model
Defendant record with verified residence, employment, and contact · prior appearance and conviction
history · risk assessment inputs, score, and recommendation · court decision with conditions
imposed and findings recorded · supervision contacts and compliance · court date reminders sent and
delivery confirmation · failure-to-appear events with reason where obtainable · time in pretrial
custody · outcomes — appearance rate, new arrest during pretrial period · instrument validation and
disparate impact analysis

## Measures

| Measure | Class |
|---|---|
| Time from arrest to first appearance | Process |
| Assessments completed before the first appearance | Process |
| Release rate, and detention rate, by offence category | Outcome |
| People detained solely because they could not post a financial condition | Outcome |
| Court appearance rate among those released | Outcome |
| New arrest rate during the pretrial period | Outcome |
| Reminders delivered before scheduled appearances | Process |
| Median and maximum time in pretrial custody | Outcome |
| Assessment outcomes and recommendations disaggregated by demographic | Outcome |

**People detained solely for inability to post a financial condition is the measure that describes
the system honestly.** It separates detention based on assessed risk from detention based on
poverty, and most jurisdictions can compute it and do not.

## Level variance

- **Federal.** A statutory pretrial framework with a presumption of release on the least
  restrictive conditions, and a pretrial services agency in each district producing verified
  reports.
- **State.** Sets the bail and release framework by statute or court rule; **several states have
  substantially restructured pretrial release in recent years**, and practice now varies more
  between states than at any recent point. Verify the current framework for the jurisdiction rather
  than assuming.
- **County.** **Where it actually operates.** Pretrial services units, jail intake, and the first
  appearance calendar are county functions, and the county pays the cost of pretrial detention
  while the release decision is made by a court it does not control.
- **Tribal.** Pretrial practice under tribal law, with detention capacity frequently contracted to
  county facilities at a distance.

## What to get right

**Base release on assessed risk, not ability to pay.** A financial condition set by schedule rather
than by assessment gives two people with the same risk profile different outcomes based on
resources — and the one detained is more likely to plead guilty.

**Complete verification before the first appearance, not after.** Deciding on the arrest report
alone happens when verification lags the hearing; finishing it first gives the court a real basis.

**Validate risk instruments locally and test for disparate impact.** A risk tool developed
elsewhere and applied to a different population, unvalidated and unexamined for disparate impact,
produces a number that carries the authority of measurement without earning it. Any instrument
informing a liberty decision needs the scrutiny set out in
AI disclosure and human review, whether or not it
uses machine learning.

**Set conditions the person can actually comply with.** Weekly in-person check-ins for someone with
no car and a shift job, or a daily electronic-monitoring fee charged to the defendant, sets people
up to fail conditions they might otherwise meet.

**Send court date reminders.** The cheapest and best-evidenced intervention available for improving
appearance rates, and worth making standard practice — see
[court administration](/capabilities/court-administration-and-adjudication/).

**Treat non-appearance as a scheduling problem first.** An automatic warrant for a missed date that
was missed for transport or childcare turns a scheduling problem into an arrest; checking the
reason first keeps the response proportionate.

**Monitor time in pretrial custody.** Tracking the number keeps the cost — to the person and to the
county jail budget — visible instead of hidden.

**Record findings for every detention decision.** Recorded reasons are what make review possible.
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
