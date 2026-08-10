---
type: Capability
title: Grants Management (Outbound)
description: Awarding public money to other organizations to achieve a public
  purpose — and remaining accountable for what they do with it.
resource: https://industry-blueprints.github.io/capabilities/grants-management-outbound/
tags: [capability, grants, funding, oversight, compliance]

sources:
  - id: ug
    resource: https://www.ecfr.gov/current/title-2/subtitle-A/chapter-II/part-200
    title: 2 CFR Part 200 — Uniform Administrative Requirements, Cost Principles, and Audit Requirements for Federal Awards

generated: { by: human:jhofmann, at: 2026-07-27T14:00:00Z }
status: draft
stale_after: 2027-01-27
depth: complete

industry: public-sector
government_levels: [federal, state, county]

relationships:
  - predicate: part_of
    target: /domains/fund.md
  - predicate: has_participant
    target: /personas/grants-manager.md
    note: Administers the award lifecycle and the compliance regime
  - predicate: has_participant
    target: /personas/program-manager.md
    note: Owns the program the award serves
  - predicate: has_participant
    target: /personas/grant-recipient.md
    note: The awarded organization — first-class, not an external dependency
  - predicate: has_participant
    target: /personas/internal-auditor.md
  - predicate: uses_data
    target: /data-entities/agreement.md
    note: A grant award is an Agreement subtype
---

## Purpose

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

## Processes

[Funding Notice & Application Intake](/processes/funding-notice-and-application-intake/) ·
[Merit Review & Award Decision](/processes/merit-review-and-award-decision/) ·
[Subrecipient Risk Assessment & Monitoring](/processes/subrecipient-risk-and-monitoring/) ·
[Drawdown, Reporting & Closeout](/processes/drawdown-reporting-and-closeout/)

## Data

[Grants Management Data Model](/data-models/grants-data-model/), extending the
[core model](/data-models/core-public-sector-model/). The structural decision:
[Grant Award](/data-entities/grant-award/) is an [Agreement](/data-entities/agreement/) subtype
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
| [Time to award](/kpis/time-to-award/) | Process |
| [Subrecipient monitoring coverage](/kpis/subrecipient-monitoring-coverage/) | Process |
| [Repeat finding rate](/kpis/repeat-finding-rate/) | Process |
| [First-time applicant share](/kpis/first-time-applicant-share/) | Output |
| Programme outcome achieved per dollar awarded | Outcome |
| Recipient-reported administrative burden | Outcome |

## Governance

[Subrecipient Monitoring & Pass-Through Responsibility](/governance/subrecipient-monitoring/) ·
[Merit Review Integrity](/governance/merit-review-integrity/)

## AI integrations

[Application completeness screening](/ai-integrations/application-completeness-screening/) ·
[Subrecipient risk signals](/ai-integrations/subrecipient-risk-signals/)

**The boundary matters more here than almost anywhere else in this library.** Merit scoring and
risk-tier assignment both determine who gets public money and who carries compliance burden.
Automation may surface, extract, and check; it may not decide. See
[merit review integrity](/governance/merit-review-integrity/).

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
[repeat finding rate](/kpis/repeat-finding-rate/) is designed to confirm is happening.

**Close out awards at the end of the performance period.** Timely closeout keeps the true committed
position visible instead of obscured by awards left open for years.

**Read the performance reports recipients submit.** Recipients spend real effort producing them;
reading and analyzing that work protects the relationship and the value of the effort.

---

*Paired with [Grants Management (Inbound)](/capabilities/grants-management-inbound/). The same
organization is frequently both, and modelling them separately is why flow-down becomes
untraceable.*
