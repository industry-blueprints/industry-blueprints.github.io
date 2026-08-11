---
id: request-management
title: Request Management
type: capability
level: 2
version: "0.1"
status: draft
description: Capture, classify, route, track, and resolve a request for information, service, action, or referral.
last_updated: 2026-08-10
capability_area: serve
tracks: [business, experience-process, information, architecture, trust-governance, ai-automation]
relationships:
  builds_on:
    - person
    - organization
    - communication
    - task
  personas:
    - service-seeker
    - intake-worker
    - service-coordinator
    - service-worker
    - service-supervisor
  adds:
    - Request
    - Request Classification
    - Routing Decision
    - Request Resolution
---

## Business definition

Request Management enables an organization to turn an expressed need into accountable work. A
request may ask for information, a service, a decision, a correction, or referral to another
organization. It begins when the organization accepts the need for handling, regardless of the
channel through which it arrived.

The capability produces four outcomes: the requester knows the request was received; the
need is classified consistently; responsibility is explicit; and the disposition is recorded.

It does not require every request to become a Case. A simple question may be answered immediately.
One interaction may contain multiple requests, while a request requiring extended coordination may
open or join a case.

## Actors and outcomes

| Actor | Responsibility |
|---|---|
| Requester | Express the need and provide information needed to handle it |
| Intake worker | Capture the request faithfully when assisting another person |
| Triage worker | Classify urgency, topic, service, and possible duplication |
| Router or coordinator | Establish responsible ownership or a traceable referral |
| Fulfiller | Perform the requested service or provide the answer |
| Supervisor | Resolve exceptions and monitor timeliness and disposition quality |

The requester receives acknowledgment and an understandable disposition. The organization gains a
consistent record of demand, responsibility, work, and outcome. The reference makes lost,
misrouted, aging, repeatedly reopened, and unresolved requests visible.

## Lifecycle

```text
Received → Classified → Routed → In Progress → Resolved → Closed
              └────────→ Referred
                                  └───────────→ Withdrawn
```

Classification answers what is needed. Routing answers who is responsible. The two decisions
remain separate so the taxonomy can change without rewriting organizational ownership.

Common variations include anonymous requests, duplicate requests, requests spanning several
service areas, misrouted requests, and a resolved request reopened after new information.

## Domain model

| Concept | Responsibility |
|---|---|
| Request | The expressed need, requester, source, status, and timing |
| Request Classification | Topic, service, urgency, and confidence |
| Routing Decision | Destination, reason, decision-maker, and timestamp |
| Request Resolution | Disposition, explanation, and completion evidence |
| Request Link | Duplicate, parent, related, or resulting request/case relationship |

The Request links to Persons and Organizations as participants, Communications as evidence, and
Tasks as work. It owns its classification and routing history.

## Architecture

The dedicated [Request Management Architecture](/architecture/request-management-architecture/)
defines the module boundary, command and query contract, events, permissions, integrations,
extension points, and nonfunctional considerations. This capability page retains the business
meaning and conceptual model those technical contracts implement.

## Trust and governance

Request data is collected for handling the stated need. Sensitive classifications may
require restricted queues or masked summaries. Changes to classification, priority, ownership, and
disposition are audited. Service targets are policy inputs, not hard-coded lifecycle rules.

## AI and automation

AI can suggest classification, identify likely duplicates, summarize attachments, and recommend
routing. It receives only the data allowed for the acting user and returns a proposal
with confidence and evidence. A person approves material routing or disposition decisions until a
specific, low-risk automation policy says otherwise.

Evaluation measures classification accuracy by topic, misrouting rate, false duplicate rate,
override rate, and performance across languages and channels—not merely model latency.
