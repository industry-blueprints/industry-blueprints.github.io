---
id: person
title: Person
type: foundation
level: 1
version: "0.1"
status: draft
description: A human being represented independently from the roles they play, the organizations they belong to, and the credentials they use.
last_updated: 2026-08-10
tracks: [business, information, architecture, trust-governance]
relationships:
  builds_on: []
  adds:
    - Person
    - Person Identifier
    - Contact Preference
---

## Definition

A Person represents one human being. The same person may be a constituent, customer, employee,
applicant, subject, case participant, or system user in different contexts. Those are roles and
relationships; they are not different kinds of person.

A Person is distinct from an account or digital identity. A person may have no account, one
account, or several credentials. An account may also represent a service or organization rather
than a person.

## Information model

| Concept | Purpose |
|---|---|
| Person | Stable record for the human being |
| Name | One current or historical name, with its use and effective period |
| Person Identifier | Identifier issued by a defined authority for a defined purpose |
| Contact Point | A way to reach the person, such as an email address or phone number |
| Address | A location-associated address and its use |
| Contact Preference | Channel, language, format, and consent preferences |

Identifiers retain their type, issuer, and validity period. Names and contact points retain history
where changing them would otherwise erase evidence used by an earlier decision.

## Relationships

```text
Person
 ├── has Name
 ├── has Person Identifier
 ├── has Contact Point
 ├── uses Address
 └── participates in Organization, Communication, Task, Request, and Case
```

## Architecture

Person matching is probabilistic unless a trusted shared identifier exists. The reference pattern
keeps candidate matching separate from confirmed merging, records why a merge occurred, and preserves a
reversible audit trail. A shared person registry may expose one base record while allowing each
solution to add private, namespaced facets.

## Trust and governance

Person records commonly contain personally identifiable information. The reference treats access as
purpose- and role-driven rather than merely technically available. It minimizes collection, protects sensitive
identifiers separately, and propagates corrections without destroying historical
decision context.
