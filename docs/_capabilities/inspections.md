---
id: inspections
title: Inspections
type: capability
level: 2
version: '0.1'
status: draft
description: Scheduling and conducting verification against a standard, and recording
  findings — with finite capacity and a population that keeps growing.
last_updated: '2026-08-11'
capability_area: serve
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
To verify, in the field or at a desk, that a person, premises, activity, or product meets a
required standard — and to record what was found in a form that supports the decision that follows.

**Inspection capacity is fixed and the population grows.** Uniform inspection therefore becomes
uniformly shallow, producing high coverage statistics and low assurance. The structural answer is
risk-based monitoring, which applies here exactly as it does in
[grants oversight](/capabilities/grants-management-outbound/) and contract administration.

## Desired outcomes

- Inspection frequency proportionate to documented risk, not to a fixed calendar
- Standards applied consistently between inspectors and across districts
- Findings recorded at the point of observation, with evidence attached
- Results available to the inspected party immediately, in plain terms
- Re-inspection verifying correction, not merely receiving a claim of it
- Scheduling that respects the other party's time
- Findings feeding back into where inspection effort goes next

## Lifecycle
Inspectable population identification and registration · risk assessment and tiering · scheduling
and route planning · notification, where notice is required · field inspection and evidence capture
· standard application and finding classification · immediate hazard action · report issue and
service · corrective action requirement and deadline · re-inspection and verification · referral to
[enforcement](/capabilities/enforcement-and-adjudication/) · complaint-driven inspection · calibration
across inspectors

## Domain model
Inspectable population with location, type, and responsible party ·
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

## What to get right

**Tier inspection frequency to risk, not a fixed calendar.** Directing more capacity toward subjects
with a history of violations keeps a compliant premises from consuming the same capacity as one
with three prior violations.

**Revisit risk tiers against actual findings.** Tiers reassessed against results, rather than set
once at registration, are what keeps the model doing real work rather than sitting decorative.

**Capture findings and evidence at the point of observation.** Recording detail and attaching
evidence on the spot, and serving the report promptly, keeps the record matched to the condition as
found.

**Calibrate inspectors to a shared standard.** Consistent application across inspectors protects the
standard's legitimacy and heads off the most common substantive complaint from regulated parties.

**Verify correction at re-inspection, don't just accept a claim.** Actually verifying correction, the
same discipline as
findings closed on receipt of a plan in audit and grants oversight,
is what makes closing a finding meaningful.

**Protect capacity for risk-based work even as complaints arrive.** Complaints are visible and
generate real pressure; holding a deliberate balance keeps the risk model operating in practice, not
just in policy.

**Schedule with the other party's time in mind.** A window sized to the actual inspection, not an
all-day window for a fifteen-minute visit, respects the business's time and staff.

**Feed recurring findings back into the standard.** Treating a violation found everywhere as a
signal that the requirement may be unclear or unreasonable closes the loop and improves the
standard itself.
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
