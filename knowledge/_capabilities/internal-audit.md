---
type: Capability
title: Internal Audit
description: Independent examination of whether controls work, money went where it
  was authorized, and programs do what they claim.
resource: https://industry-blueprints.github.io/capabilities/internal-audit/
tags: [capability, audit, controls, assurance, oversight, governance]

generated: { by: human:jhofmann, at: 2026-07-27T11:30:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/govern.md
  - predicate: has_participant
    target: /personas/internal-auditor.md
  - predicate: has_participant
    target: /personas/agency-director.md
    note: Audited party, and responsible for remediation
  - predicate: has_participant
    target: /personas/elected-official.md
    note: Frequently the reporting line that preserves independence
---

## Purpose

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

## Key processes

Risk assessment and audit planning · engagement scoping · evidence gathering and testing ·
finding development and validation with management · reporting to the governing body ·
management response and action planning · remediation follow-up and closure · annual assurance
reporting · external audit coordination

## Key data

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

## Where it goes wrong

**Evidence that does not exist.** An approval that happened in a hallway; a threshold changed with
no record of who or why. Not misconduct — just systems that record state and not transitions.
This is why modelled status transitions appear as a requirement on
[Case](/data-entities/case/) and [Agreement](/data-entities/agreement/).

**Sampling because population testing is infeasible.** Data extraction takes weeks, so conclusions
rest on samples and cannot be generalized. Complete population extraction should be a designed
capability, not a reporting feature.

**Compliance testing crowding out effectiveness.** Testing whether the form was signed is easy;
testing whether the control prevented anything is not.

**Findings accepted and not implemented.** Management agrees, nothing changes, the finding recurs.

**Independence eroded by proximity.** A small organization where the auditor and the audited work
in the same corridor.

**AI as an unauditable black box.** A recommendation influenced a decision and cannot be
reproduced. This does not merely complicate the audit — it prevents its completion, which is why
reproducibility is a requirement in
[AI governance](/capabilities/ai-governance-and-delivery/).
