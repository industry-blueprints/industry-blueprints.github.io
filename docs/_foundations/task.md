---
id: task
title: Task
type: foundation
level: 1
version: "0.1"
status: draft
description: A bounded unit of work assigned to a person, team, role, or queue with a clear completion condition.
last_updated: 2026-08-10
tracks: [business, experience-process, information, architecture, trust-governance]
relationships:
  builds_on:
    - person
    - organization
  adds:
    - Task
    - Assignment
    - Completion Evidence
---

## Definition

A Task is a unit of work that can be assigned and completed. It describes an outcome to
achieve, not merely a reminder that something exists. Tasks may support a process or business
record, but remain separately assignable and observable.

A workflow state describes where a larger process stands. A task describes work someone or
something must perform. Changing a state may create a task; completing a task may permit a state
change. The two remain separate concepts.

## Information model

| Concept | Purpose |
|---|---|
| Task | Work description, priority, status, and timing |
| Assignment | Responsible person, organization, role, or queue |
| Business Link | The record or process the task supports |
| Completion Evidence | Result, note, document, decision, or event that proves completion |

## Lifecycle

```text
Open → Assigned → In Progress → Completed
  └──────────────→ Cancelled
          └──────→ Blocked → In Progress
```

Reassignment preserves assignment history. Completion records who or what completed
the task, when, and with what result.

## Architecture

The reference exposes a consistent query surface for personal work, team queues, due work, and
blocked work. Domain modules may define task types and completion rules without owning a separate
task engine.

## Trust and governance

Assignment does not automatically grant access to every linked record. Authorization is
evaluated against both the task and its subject. Automated completion uses a service identity,
retains evidence, and remains distinguishable from completion by a person.
