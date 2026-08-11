---
id: constituent-management-architecture
title: Constituent Management Architecture
type: architecture
level: 3
version: "0.1"
status: draft
description: A composition reference connecting constituent context, communications, requests, cases, tasks, referrals, and unified history without merging their ownership boundaries.
last_updated: 2026-08-10
sources: []
reviewed: []
tracks: [information, architecture, trust-governance, ai-automation, executable]
relationships:
  builds_on:
    - constituent-management
    - request-management-architecture
    - case-management-architecture
  adds:
    - Constituent context projection
    - Cross-capability orchestration
    - Permission-aware interaction history
    - Referral boundary
---

## Scope

This architecture covers the composition that turns separate intake, request, and case capabilities
into one constituent experience. It focuses on cross-capability ownership, orchestration, search,
timeline, jurisdiction, referral, and access.

It does not redefine Person, Communication, Request, Case, or Task. Each remains authoritative in
its owning module.

## Context

```text
Constituent channels                 Staff experiences
          └──────────────┬───────────────┘
                         ↓
             Constituent orchestration
       ┌─────────┬───────┼───────┬──────────┐
       ↓         ↓       ↓       ↓          ↓
    Person  Communication Request Case     Task
       └─────────┴───────┬───────┴──────────┘
                         ↓
          Search / timeline / notifications
                         ↓
         Jurisdiction and referral partners
```

The composition provides a coherent experience and coordinates commands. It does not create a new
database record that copies every underlying object into a single “constituent case.”

## Information model

| Added concept | Architectural role |
|---|---|
| Constituent Context | Permission-aware projection of roles, preferences, recent interactions, and active matters |
| Interaction History | Ordered projection over communications, request events, case activities, and tasks |
| Jurisdiction Assessment | Decision record containing rule, evidence, outcome, actor, and effective time |
| Referral | Correlated transfer or recommendation with destination, status, acknowledgment, and follow-up |
| Service Preference | Approved channel, language, accessible format, and consent context |

Cross-capability links use stable identifiers and relationship types. The model supports one
Communication producing several Requests and one Request producing no Case, one Case, or links to an
existing Case.

## Module boundaries

The orchestration layer owns constituent-specific context, jurisdiction assessment, referral, and
cross-capability workflow. Capability modules retain validation and authorization for their own
commands. Search and timeline are read projections; they do not become new systems of record.

Knowledge retrieval, identity matching, jurisdiction policy, routing policy, notifications, and
channel delivery sit behind replaceable interfaces.

## Interfaces

The composition coordinates capture interaction, identify or register person, record request,
classify, route, refer, open or link case, record response, and communicate outcome. Each coordinated
operation calls the owning module's command surface and carries one correlation context.

Queries cover constituent context, permitted interaction history, active matters, related records,
referral state, and cross-capability work queues. Results contain only records visible to the acting
identity.

## Events

Cross-capability events include `InteractionCaptured`, `NeedIdentified`, `JurisdictionAssessed`,
`ReferralCreated`, `ReferralAccepted`, `CaseLinked`, and `OutcomeCommunicated`. Capability events such
as `RequestReceived` and `CaseOpened` remain owned by their modules.

Orchestration reacts to events through idempotent handlers and retains correlation identifiers so a
reader can trace one interaction across several records.

## Security

The unified view is a filtered composition, not a blanket grant. Authorization is evaluated by each
source module before records enter context, search, timeline, or AI retrieval. Staff access can vary
by capability, team, jurisdiction, sensitivity, assignment, and record role. Public access remains
ownership-scoped.

## Extensibility

Extension points cover service taxonomies, jurisdiction rules, routing policies, referral adapters,
knowledge providers, identity matching, notification providers, channel adapters, solution-specific
person facets, and context projection fields.

## Nonfunctional considerations

Cross-module orchestration tolerates partial failure and records retryable state. Context and
timeline projections expose freshness and preserve stable ordering. Search applies authorization
before result counts and pagination. Correlation spans channels and modules without leaking protected
content into logs or events.
