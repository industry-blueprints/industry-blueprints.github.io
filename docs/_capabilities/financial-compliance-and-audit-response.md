---
id: financial-compliance-and-audit-response
title: Financial Compliance & Audit Response
type: capability
level: 2
version: '0.1'
status: draft
description: Preparing for, responding to, and actually remediating financial examinations
  — where the repeat finding is the only measure that matters.
last_updated: '2026-08-11'
capability_area: fund
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
To maintain the internal control environment that financial examinations test, coordinate the
organization's response when they occur, and remediate what they find — verifiably, so it does not
recur.

**The single audit is the shared assurance mechanism across levels of government.** An entity
expending federal awards above a threshold obtains an independent audit covering both its
financial statements and its compliance with award requirements, and the findings flow back to
every pass-through entity in the chain. *The threshold has changed in recent years — verify the
current figure and its effective date.*

## Desired outcomes

- Controls designed, documented, and actually operating between audits
- Audit requests answered from systems rather than assembled by hand
- Findings understood by cause, not only by condition
- Corrective actions verified as effective rather than accepted as submitted
- No repeat findings
- Compliance requirements known to the people who must satisfy them

## Lifecycle
Control environment documentation and self-assessment · compliance requirement mapping by award ·
audit planning and engagement coordination · request tracking and evidence provision · finding
review and management response · corrective action plan development · remediation execution and
verification · follow-up on prior findings · reporting to the governing body · pass-through
follow-up on subrecipient findings

## Domain model
Control inventory mapped to requirements and owners · compliance requirement matrix by award and
programme · audit request log with due dates and status · finding register with condition,
criteria, cause, effect, and recommendation · corrective action plans with owners, milestones, and
verification evidence · prior-year finding status · subrecipient audit reports and follow-up
record

## Measures

| Measure | Class |
|---|---|
| Repeat finding rate | Outcome |
| Findings with a documented root cause, not only a condition | Process |
| Corrective actions verified effective versus closed on submission | Process |
| Audit requests answered within the agreed interval | Process |
| Requests answerable from a system rather than manually assembled | Process |
| Time from audit close to corrective action completion | Process |
| Subrecipient findings followed up within the required period | Process |

**Repeat finding rate is the whole capability in one number.** Everything else on this list
explains it.

## Level variance

- **Federal.** Agency financial statement audits, inspector general work, and oversight of the
  single audit regime for recipients — the level that sets the requirements others respond to.
- **State.** Simultaneously audited and auditing: subject to a single audit on federal funds
  received, and responsible for following up on findings raised against its own subrecipients.
- **County / municipal.** Annual external audit, plus a single audit where federal expenditure
  exceeds the threshold. Small jurisdictions frequently rely on the audit firm to prepare the
  statements being audited, which is a recognized independence concern and a common source of
  findings in itself.

## What to get right

**Close findings on verified remediation, not on receipt of a plan.** This is the single most
consequential discipline in oversight, and the reason
repeat finding rate exists as a measure. A plan is a commitment, not
a remediation.

**Identify the cause, not just the condition.** A finding that records what was wrong and fixes
that instance still leaves the underlying mechanism free to produce it again — tracing the cause is
what stops the recurrence.

**Route remediation to where the cause actually sits.** The cause most commonly sits in the
operational process, not in finance, so remediation belongs with the department that owns it, not
just whoever received the finding.

**Maintain evidence continuously, not in an annual scramble.** Continuous maintenance avoids six
weeks of evidence assembly each audit season — a real, recurring cost that otherwise never appears
as a line item.

**Keep documented controls actually operating.** A narrative written for the auditor describing a
process nobody follows gets caught the moment it is tested — keeping the practice matched to the
narrative avoids that.

**Follow up on subrecipient findings, not just collect them.** The pass-through obligation is to
follow up, not to collect — see subrecipient monitoring.

**Put the compliance matrix in front of the people who must satisfy it.** Programme staff,
procurement, and payroll need to see the matrix directly, not rely on the compliance officer alone.
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
