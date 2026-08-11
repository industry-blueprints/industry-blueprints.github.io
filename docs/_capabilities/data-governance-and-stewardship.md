---
id: data-governance-and-stewardship
title: Data Governance & Stewardship
type: capability
level: 2
version: '0.1'
status: draft
description: Establishing who owns which data, what it means, how good it has to be,
  and who may decide — across departments that own their own systems.
last_updated: '2026-08-11'
capability_area: inform
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
To make data usable across the organization: authoritative sources identified, meanings agreed,
quality defined and monitored, sharing lawful and repeatable, and decision rights clear.

**This capability gates AI adoption everywhere else.** Grounded answers, automated
classification, and summarization all require content and data with owners, definitions, and
known quality. An organization that has not done this work cannot safely automate on top of it —
a dependency that is routinely discovered late.

## Desired outcomes

- One authoritative source per key data domain, with a named steward
- Shared definitions, so departments stop arguing about whose number is right
- Quality measured against defined expectations rather than assumed
- Sharing agreements that are reusable rather than negotiated from scratch each time
- Identity resolution good enough to answer cross-departmental questions

## Lifecycle
Data domain and steward assignment · business glossary development · authoritative source
designation · quality rule definition and monitoring · data sharing request and agreement ·
classification and sensitivity assignment · master and reference data management · issue
escalation and remediation

## Domain model
Data domain register with stewards · business glossary · authoritative source register · quality
rules and results · sharing agreements · classification scheme · master data for
Party, Location, and supplier

## Measures

| Measure | Class |
|---|---|
| Key data domains with a named, active steward | Process |
| Terms defined and agreed in the glossary | Process |
| Quality rule pass rate on authoritative sources | Process |
| Time from sharing request to executable agreement | Process |
| Duplicate rate in master entities | Process |
| Cross-departmental questions the organization can answer | Outcome |

## Level variance

- **Federal.** Statutory data-governance roles, open data obligations, and formal information
  collection review.
- **State.** Increasingly runs statewide data-sharing frameworks and integrated data systems
  across health, human services, and education.
- **County / municipal.** Owns the authoritative parcel, address, and local service data that
  higher levels depend on — with the least capacity to steward it. That inversion is the defining
  structural problem.

## Getting this right

**Make governance operational, not just documentation.** A policy, a glossary nobody reads, and a
quarterly committee change nothing in behaviour unless something in daily work actually depends on
them.

**Give stewards the capacity to do the job.** A name in a register is not a steward.

**Invest in identity resolution early.** Deferred because it is hard and unglamorous, it caps the
value of every analytics and AI investment made afterwards.

**Measure quality where errors are consequential**, not just where it is easy.

**Build reusable sharing agreement templates.** Negotiating legal review per exchange stretches a
three-week analysis into a nine-month agreement, and people stop asking.

**Establish the stewardship model before buying a tool.** A catalog product purchased first
produces an inventory of data nobody owns.
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
