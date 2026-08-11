---
id: organization
title: Organization
type: foundation
level: 1
version: "0.1"
status: draft
description: A durable representation of a legal, administrative, or informal group that can own work, hold responsibilities, and relate to people or other organizations.
last_updated: 2026-08-10
tracks: [business, information, architecture, trust-governance]
relationships:
  builds_on: []
  adds:
    - Organization
    - Organization Unit
    - Organization Relationship
---

## Definition

An Organization is a group recognized for a business purpose. It may be a company, government
agency, department, nonprofit, household, program office, or informal partner group. The reason it
is represented must be explicit; a label alone does not establish legal identity or authority.

An organizational unit is part of an organization. It is not automatically a separate legal
entity merely because it has its own staff, queue, or budget.

## Information model

| Concept | Purpose |
|---|---|
| Organization | The group and its durable identity |
| Organization Identifier | A number or code issued by a known authority |
| Organization Unit | A named part of the organization |
| Organization Relationship | A typed, time-bounded relationship between organizations |
| Membership | A person's role in an organization or unit over time |

Organization hierarchies change. Parent-child relationships, names, and memberships carry
effective dates so historical work remains interpretable after a reorganization.

## Relationships

```text
Organization
 ├── contains Organization Unit
 ├── relates to Organization
 ├── has Person members
 └── owns or participates in work
```

## Architecture

Do not use one mutable hierarchy as the answer to every question. Legal structure, reporting
structure, service ownership, geographic jurisdiction, and security scope may be different graphs.
Store the relationship type and effective period rather than adding another ambiguous parent ID.

## Trust and governance

The authority to act for an organization comes from a role, delegation, or policy—not from the
existence of an organization record. The reference model retains the basis and period of delegated
authority and audits changes to ownership, hierarchy, and security-sensitive membership.
