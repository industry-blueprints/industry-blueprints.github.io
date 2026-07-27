---
type: Capability
title: Inspections
description: Scheduling and conducting verification against a standard, and recording
  findings — with finite capacity and a population that keeps growing.
resource: https://industry-blueprints.github.io/capabilities/inspections/
tags: [capability, inspections, compliance, field-work, risk-based, verification]

generated: { by: human:jhofmann, at: 2026-07-28T09:30:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/serve.md
  - predicate: has_participant
    target: /personas/caseworker.md
    note: The inspector, applying judgment at the point of observation
  - predicate: has_participant
    target: /personas/constituent.md
    note: The inspected party, for whom scheduling uncertainty is a real cost
  - predicate: uses_data
    target: /data-entities/location.md
---

## Purpose

To verify, in the field or at a desk, that a person, premises, activity, or product meets a
required standard — and to record what was found in a form that supports the decision that follows.

**Inspection capacity is fixed and the population grows.** Uniform inspection therefore becomes
uniformly shallow, producing high coverage statistics and low assurance. The structural answer is
[risk-based monitoring](/patterns/risk-based-monitoring/), which applies here exactly as it does in
[grants oversight](/capabilities/grants-management-outbound/) and contract administration.

## Desired outcomes

- Inspection frequency proportionate to documented risk, not to a fixed calendar
- Standards applied consistently between inspectors and across districts
- Findings recorded at the point of observation, with evidence attached
- Results available to the inspected party immediately, in plain terms
- Re-inspection verifying correction, not merely receiving a claim of it
- Scheduling that respects the other party's time
- Findings feeding back into where inspection effort goes next

## Key processes

Inspectable population identification and registration · risk assessment and tiering · scheduling
and route planning · notification, where notice is required · field inspection and evidence capture
· standard application and finding classification · immediate hazard action · report issue and
service · corrective action requirement and deadline · re-inspection and verification · referral to
[enforcement](/capabilities/enforcement-and-adjudication/) · complaint-driven inspection · calibration
across inspectors

## Key data

Inspectable population with [location](/data-entities/location/), type, and responsible party ·
risk tier with the assessment behind it · inspection schedule and history · checklists tied to the
applicable standard · findings with severity, evidence, and the criterion cited · photographs and
measurements with time and place · corrective action requirements and verification records ·
inspector assignment and calibration results

## Measures

| Measure | Class |
|---|---|
| Coverage of the high-risk tier, versus overall coverage | Process |
| Findings per inspection, by risk tier — the test of whether tiering works | Outcome |
| Consistency across inspectors on comparable subjects | Outcome |
| Time from finding to report served | Process |
| Corrective actions verified rather than accepted as claimed | Process |
| Re-inspection pass rate | Outcome |
| Complaint-driven inspections finding a violation | Outcome |
| Field time as a share of inspector time | Input |

**Findings per inspection by risk tier is the measure that validates the risk model.** If the
high-risk tier does not produce more findings than the low, the tiering is not working and the
capacity is misallocated.

## Level variance

- **Federal.** Workplace safety, food and drug, environmental, transportation, and financial
  examination regimes, frequently delegated to states operating under federal standards.
- **State.** Health facility, environmental, weights and measures, agricultural, and delegated
  workplace safety inspection — often the standard-setter for local inspection practice.
- **County / municipal.** The highest volume: building and trades, fire, food service, housing
  code, environmental health, and animal control. Inspection availability is frequently the binding
  constraint on construction timelines, which makes it an economic development question as well as
  a safety one.

## Where it goes wrong

**Calendar-driven uniformity.** Every subject inspected annually regardless of history, so the
compliant premises consumes the same capacity as the one with three prior violations.

**Risk tiering with no evidence behind it.** Tiers assigned once at registration and never
revisited against actual findings, which makes the model decorative.

**Findings recorded on paper and entered later.** Detail lost, evidence unattached, and the report
served days after the visit — by which time the condition may have changed either way.

**Inconsistency between inspectors.** The same condition cited by one and not another. Corrosive to
the standard's legitimacy, and the most common substantive complaint from regulated parties.

**Re-inspection replaced by a claim.** Correction accepted on assertion. The same failure as
[findings closed on receipt of a plan](/kpis/repeat-finding-rate/) in audit and grants oversight.

**Complaint-driven work displacing risk-based work.** Complaints are visible and generate pressure,
so capacity drifts toward them and the risk model is abandoned in practice while remaining in
policy.

**Scheduling that wastes the other party's day.** An all-day window for a fifteen-minute
inspection, with a business closed and staff paid to wait.

**No feedback loop to the standard.** The same violation found everywhere and never treated as
evidence that the requirement is unclear or unreasonable.
