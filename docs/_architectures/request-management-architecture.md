---
id: request-management-architecture
title: Request Management Architecture
type: architecture
level: 2
version: "0.1"
status: draft
description: A vendor-neutral module reference for channel-neutral intake, classification, routing, fulfillment, and request disposition.
last_updated: 2026-08-10
sources: []
reviewed: []
tracks: [information, architecture, trust-governance, ai-automation, executable]
relationships:
  builds_on:
    - request-management
    - person
    - organization
    - communication
    - task
  adds:
    - Request module boundary
    - Request command and query contract
    - Request business-event contract
---

## Scope

This architecture covers the module boundary for receiving, classifying, routing, tracking, and
disposing requests. It describes one coherent reference pattern; implementations can divide the
components differently while retaining the same business semantics.

Channel delivery, person master data, organizational hierarchy, long-running casework, and task
execution remain outside the Request Management boundary.

## Context

```text
Portal / phone / email / staff intake
                 ↓
         Request Management
     ┌───────────┼────────────┐
     ↓           ↓            ↓
Person and   Routing and   Task / Case
Organization  referral      coordination
     ↑           ↓            ↓
Communication  External organizations
```

Channels produce Communications and invoke the same request commands. Routing may assign an
internal queue, create a traceable external referral, or identify another capability such as Case
Management for extended work.

## Information model

| Concept | Ownership and relationships |
|---|---|
| Request | Owns reference, status, priority, source, timestamps, and current responsibility |
| Request Classification | Owns topic, service, urgency, confidence, effective period, and decision evidence |
| Routing Decision | Owns destination, reason, actor or policy, and timestamp |
| Request Resolution | Owns disposition, explanation, completion evidence, and effective time |
| Request Link | Relates duplicate, parent, related, resulting, or case-linked records |

Person and Organization records are referenced as participants. Communications provide intake and
follow-up evidence. Tasks carry assignable work. Cases coordinate matters that exceed the request
boundary.

## Module boundaries

Request Management owns request identity, classification history, routing history, status, and
disposition. It does not own channel-provider data, the canonical person record, department
structure, task execution, or case lifecycle.

Classification and routing are separate services or policies. The separation allows a shared topic
taxonomy to survive organizational restructuring and allows routing changes without rewriting the
meaning of prior requests.

## Interfaces

| Surface | Reference operations |
|---|---|
| Commands | Receive, classify, route, refer, assign, record progress, resolve, withdraw, reopen |
| Queries | By reference, requester history, queue, assignment, status, age, topic, related records |
| Integrations | Channels, person registry, organization directory, tasking, casework, notifications, search |

Commands express business intent and return validation or authorization outcomes explicitly.
External referrals include a correlation identifier and distinguish sent, accepted, rejected, and
completed states.

## Events

The reference event vocabulary includes `RequestReceived`, `RequestClassified`, `RequestRouted`,
`ReferralCreated`, `ReferralAccepted`, `RequestAssigned`, `RequestResolved`, `RequestWithdrawn`, and
`RequestReopened`.

Events carry stable identifiers and routing context. Protected detail remains available through a
permission-aware query rather than being copied into every event payload.

## Security

Permissions separate submission, access to owned requests, triage, routing, fulfillment,
supervision, and taxonomy administration. Record access may also depend on requester, assignment,
responsible organization, sensitivity, and status. Search applies the same record filter as direct
retrieval.

Classification, priority, ownership, routing, disposition, and sensitive-data access are part of
the audit history.

## Extensibility

Extension points cover classification taxonomies, routing policies, duplicate strategies, service
targets, reference formats, custom fields, channel adapters, notification providers, and
organization-specific disposition values. Extensions add configuration or named policy behavior
without bypassing the command and event boundary.

## Nonfunctional considerations

Intake remains available when optional geocoding, search enrichment, or AI services are unavailable.
Reference allocation is collision-safe. Retried commands use idempotency keys where duplicate
creation is possible. Queue queries provide stable pagination, permission filtering, and predictable
ordering. The audit stream can reconstruct changes to responsibility and disposition.
