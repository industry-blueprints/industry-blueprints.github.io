---
id: internal-audit
title: Internal Audit
type: capability
level: 2
version: '0.1'
status: draft
description: Independent examination of whether controls work, money went where it
  was authorized, and programs do what they claim.
last_updated: '2026-08-11'
capability_area: govern
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
To give the governing body independent assurance that controls are designed and operating, funds
were used as authorized, and reported results are reliable — and to drive remediation where they
are not.

**Audit is not investigation.** Audit examines systems and controls against criteria;
[investigation](/capabilities/investigations/) establishes whether an identified person or entity
did an identified thing. The two are commonly housed together and are distinct disciplines with
different evidentiary standards, different rights attaching to the subject, and different outputs.
An audit that uncovers apparent misconduct refers it; it does not become an investigation.

Independence is structural, not attitudinal: the function reports to an audit committee, governing
body, or legislature rather than to the management it examines.

## Desired outcomes

- Audit effort directed at genuine risk rather than what is easy to test
- Findings supported by sufficient, appropriate evidence
- Recommendations that are implemented, not merely accepted
- Root causes identified, so the same finding does not recur
- Assurance the governing body can actually rely on

## Lifecycle
Risk assessment and audit planning · engagement scoping · evidence gathering and testing ·
finding development and validation with management · reporting to the governing body ·
management response and action planning · remediation follow-up and closure · annual assurance
reporting · external audit coordination

## Domain model
Audit universe and risk assessments · engagement working papers · findings with severity and
root cause · management responses and committed dates · remediation status · repeat finding
history · complete population extracts from operational systems

## Measures

| Measure | Class |
|---|---|
| Audit plan coverage of the highest-risk areas | Process |
| Engagements completed against plan | Output |
| Findings accepted by management | Process |
| Recommendations implemented by committed date | Process |
| **Repeat findings** | Process |
| Control failures detected before they cause loss | Outcome |

**Repeat findings are the sharpest measure in this capability.** They indicate either that
remediation was cosmetic or that the root cause was never identified — and a rising repeat rate
alongside high acceptance rates is a specific and diagnosable failure.

## Level variance

- **Federal.** Statutorily independent inspectors general with investigative authority and direct
  reporting to the legislature.
- **State.** State auditor plus agency internal audit, with the single audit of federal funds a
  major annual driver.
- **County / municipal.** Frequently no internal audit function at all; assurance comes from the
  external financial audit alone, which tests financial statements rather than operations.

## What to get right

**Design systems to record transitions, not just state.** An approval that happened in a hallway, or
a threshold changed with no record of who or why, leaves no evidence to examine — not misconduct,
just a system that never captured the transition. This is why modelled status transitions appear as
a requirement on
Case and Agreement.

**Build complete population extraction as a designed capability.** Extracting the full population,
rather than relying on samples because extraction takes weeks, lets conclusions generalize instead
of resting on a subset.

**Test effectiveness, not just compliance.** Testing whether the control actually prevented
something, not only whether the form was signed, is what compliance testing alone misses.

**Track findings through to implementation, not just acceptance.** Following through until
something changes is what keeps a finding from recurring after management agrees to it.

**Structure independence deliberately in a small organization.** Where the auditor and the audited
work in the same corridor, deliberate structural safeguards keep independence real.

**Keep AI decisions reproducible.** A recommendation that influenced a decision needs to be
reproducible for the audit to complete at all, which is why reproducibility is a requirement in
[AI governance](/capabilities/ai-governance-and-delivery/).
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
