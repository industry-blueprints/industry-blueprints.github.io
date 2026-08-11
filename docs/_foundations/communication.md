---
id: communication
title: Communication
type: foundation
level: 1
version: "0.1"
status: draft
description: A message or exchange between participants, preserved independently from the business record that prompted it.
last_updated: 2026-08-10
tracks: [business, information, architecture, trust-governance]
relationships:
  builds_on:
    - person
    - organization
  adds:
    - Communication
    - Communication Participant
    - Delivery Attempt
---

## Definition

A Communication records information sent or received through a channel. It may be an email,
letter, phone call, text message, portal message, or in-person exchange. It is not the same thing
as a Request or Case: one communication may create several requests, update an existing case, or
require no follow-up at all.

## Information model

| Concept | Purpose |
|---|---|
| Communication | The message or exchange and its business timestamp |
| Participant | A Person or Organization and their sender, recipient, or copied role |
| Channel | The medium used to exchange the message |
| Content | The message body or a protected reference to it |
| Delivery Attempt | A send attempt, status, and provider evidence |
| Business Link | A typed link to the Request, Case, Task, or other subject |

## Lifecycle

```text
Draft → Queued → Sent → Delivered
                  └──→ Failed
Received → Recorded → Linked
```

Channels may have different technical states, but the reference maps them to a small shared business
vocabulary. A phone conversation can be recorded without pretending it was “delivered.”

## Architecture

The durable communication record remains separate from channel providers. Provider IDs, delivery receipts,
and retries sit behind a channel adapter. Business links are many-to-many so an exchange
can remain one record while informing more than one piece of work.

## Trust and governance

Communication content can contain sensitive personal, legal, or investigative information.
Retention, disclosure, and access rules may differ from the linked case. Record consent and channel
preferences where required, and never infer that a reachable channel is an approved channel.
