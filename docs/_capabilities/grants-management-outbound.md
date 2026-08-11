---
id: grants-management-outbound
title: Grants Management (Outbound)
type: capability
level: 2
version: '0.1'
status: draft
description: Awarding public money to other organizations to achieve a public purpose
  — and remaining accountable for what they do with it.
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
To distribute funds to organizations better placed to achieve the outcome than the funder is,
while retaining accountability for the public money and the result.

The defining tension: **the awarding organization is accountable for outcomes it does not directly
produce, achieved by organizations it does not manage.** Every design decision in this capability
trades oversight against recipient burden, and both directions have real costs.

## Desired outcomes

- Funds reach organizations capable of delivering the intended result
- Competition is genuine and the process is accessible to smaller and first-time applicants
- Recipients are monitored proportionately to risk, not uniformly
- Non-compliance is detected while it can still be corrected
- Awards are closed out properly rather than left open indefinitely

## Current state: how this typically runs today

The notice is adapted from last cycle's. It reaches the mailing list of organizations funded
before, and the same organizations apply and are funded again. Applications arrive as documents;
completeness is established by staff opening them one at a time, and a meaningful share are
screened out administratively rather than on merit.

Reviewers score in spreadsheets, at night, against criteria they read once. A ranked list emerges,
then meets geographic distribution, portfolio balance, and prior relationships — and the funded
list differs from the ranked list with the reasoning rarely written down.

Risk assessment is a form completed at award and never revisited. Monitoring is calendar-driven
and uniform, because that is what capacity allows. Findings are issued, corrective action plans
are received, files are closed — and whether anything was actually remediated is often not
verified. Closeout happens when someone notices.

### Why it works that way

- **Requirements accrete and are never removed**, because removing a control means accepting the
  risk it was added for.
- **Uniform monitoring is easier to defend** than proportionate monitoring, which requires the
  risk assessment to be documented and sound.
- **Risk data does not exist.** Proper risk-based monitoring needs cross-programme recipient
  history, and most funders cannot see their own.
- **Outreach is unfunded.** Reaching new organizations is real work with no budget line.

## Lifecycle
Funding Notice & Application Intake ·
Merit Review & Award Decision ·
Subrecipient Risk Assessment & Monitoring ·
Drawdown, Reporting & Closeout

## Domain model
Grants Management Data Model, extending the
core model. The structural decision:
Grant Award is an Agreement subtype
that can be its own parent, which is how federal → state → local pass-through becomes traceable.

## Business rules

- Subaward-versus-contract determination made on substance and documented before obligations attach.
- Evaluation criteria and weightings published before submission opens; unchanged after.
- Conflicts declared against the actual applicant list, not generically in advance.
- Deviation from ranked order requires a recorded, programme-relevant basis.
- Applicable conditions flow down to subrecipients, translated rather than forwarded verbatim.
- Monitoring intensity proportionate to documented assessed risk.
- Corrective action verified, not merely received, before a finding is closed.
- Closeout initiated automatically at end of period of performance.
- Retention clock runs from closeout, and is recorded on the award.

## Measures

| Measure | Class |
|---|---|
| Time to award | Process |
| Subrecipient monitoring coverage | Process |
| Repeat finding rate | Process |
| First-time applicant share | Output |
| Programme outcome achieved per dollar awarded | Outcome |
| Recipient-reported administrative burden | Outcome |

## Trust and governance
Subrecipient Monitoring & Pass-Through Responsibility ·
Merit Review Integrity

## AI and automation
Application completeness screening ·
Subrecipient risk signals

**The automation boundary is especially consequential here.** Merit scoring and
risk-tier assignment both determine who gets public money and who carries compliance burden.
Automation may surface, extract, and check; it may not decide. See
merit review integrity.

## Standards and external mappings

Indicative and requiring verification per implementation:

| Concept | Maps toward |
|---|---|
| Administrative requirements, cost principles, audit | 2 CFR Part 200 (Uniform Guidance) for federal funds and pass-through |
| Award and subaward reporting | Federal financial assistance award data standards |
| Recipient identity | Entity identifiers used in federal award reporting |
| Findings | Single audit finding reference structures |

The single audit is the shared assurance mechanism across levels: recipients expending above a
threshold obtain an independent audit whose findings pass-through entities must follow up on.
**The threshold has changed in recent years — verify the current figure and effective date.**

## Level variance

- **Federal.** The largest awarder, governed by uniform requirements, with the bulk of funds
  flowing through states as pass-through entities.
- **State.** Simultaneously recipient and awarder — receives federal awards and subawards to local
  government and non-profits, inheriting conditions it must flow down. The hardest position.
- **County.** Awards locally, mostly to non-profit providers, usually with federal or state money
  and therefore federal or state conditions attached.
- **Municipal.** Less common as an awarder except for community and housing programmes.

## What to get right

**Scale monitoring to risk, not apply it uniformly.** Sizing monitoring to size and risk keeps small
organizations from being over-burdened and large ones from being under-scrutinized.

**Translate conditions flowed down, don't just forward them.** Translating federal terms for a
three-person non-profit gives it a real chance to interpret and meet them.

**Keep application burden proportionate to delivery capacity.** A process that doesn't select
purely for grant-writing skill lets funds reach organizations strong at delivery, not just at
applying.

**Verify remediation before closing a finding.** Verifying, rather than closing on receipt of a
plan, is exactly what
repeat finding rate is designed to confirm is happening.

**Close out awards at the end of the performance period.** Timely closeout keeps the true committed
position visible instead of obscured by awards left open for years.

**Read the performance reports recipients submit.** Recipients spend real effort producing them;
reading and analyzing that work protects the relationship and the value of the effort.

---

*Paired with [Grants Management (Inbound)](/capabilities/grants-management-inbound/). The same
organization is frequently both, and modelling them separately is why flow-down becomes
untraceable.*
## Architecture

The architecture boundary for this capability follows the responsibilities, lifecycle, and
information described above. A dedicated architecture artifact has not yet been developed for
this inventory entry.
