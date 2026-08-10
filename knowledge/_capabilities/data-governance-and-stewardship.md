---
type: Capability
title: Data Governance & Stewardship
description: Establishing who owns which data, what it means, how good it has to be,
  and who may decide — across departments that own their own systems.
resource: https://industry-blueprints.github.io/capabilities/data-governance-and-stewardship/
tags: [capability, data, governance, stewardship, quality, master-data]

generated: { by: human:jhofmann, at: 2026-07-27T11:30:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/inform.md
  - predicate: has_participant
    target: /personas/chief-data-officer.md
    note: Accountable, usually without line authority over the data
  - predicate: has_participant
    target: /personas/privacy-officer.md
  - predicate: has_participant
    target: /personas/records-manager.md
  - predicate: uses_data
    target: /data-models/core-public-sector-model.md
---

## Purpose

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

## Key processes

Data domain and steward assignment · business glossary development · authoritative source
designation · quality rule definition and monitoring · data sharing request and agreement ·
classification and sensitivity assignment · master and reference data management · issue
escalation and remediation

## Key data

Data domain register with stewards · business glossary · authoritative source register · quality
rules and results · sharing agreements · classification scheme · master data for
[Party](/data-models/core-public-sector-model/), [Location](/data-entities/location/), and supplier

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
