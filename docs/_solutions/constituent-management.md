---
id: constituent-management
title: Constituent Management
type: solution-pattern
level: 3
version: "0.1"
status: draft
description: A reusable pattern for receiving constituent interactions, understanding needs, coordinating accountable work, and communicating outcomes across organizational boundaries.
last_updated: 2026-08-10
tracks: [business, experience-process, information, architecture, trust-governance, ai-automation, executable]
relationships:
  builds_on:
    - request-management
    - case-management
  personas:
    - service-seeker
    - intake-worker
    - service-coordinator
    - service-worker
    - service-supervisor
  adds:
    - Constituent Context
    - Interaction History
    - Jurisdiction Assessment
    - Referral
    - Service Preference
---

## Business problem

People experience an organization as one institution even when responsibility is divided across
departments, programs, and external partners. Constituent Management provides a coherent front door
without pretending every interaction is the same kind of work.

The pattern captures an interaction, identifies one or more needs, resolves simple requests, and
opens or links cases where work requires extended coordination. It maintains context across those
records so a person does not have to retell the same history at every boundary.

This pattern is useful where people seek information or service across a portfolio of programs.
It differs from contact-center technology, which is a channel implementation, and from Case
Management, which coordinates one continuing matter after the need for a case is established.

## Outcomes and actors

| Actor | Needs from the pattern |
|---|---|
| [Constituent](/personas/service-seeker/) | One understandable way to ask for help, provide information, and learn what happened |
| [Intake worker](/personas/intake-worker/) | Enough context to understand the need without forcing it into the wrong record type |
| [Service coordinator](/personas/service-coordinator/) | Consistent classification, ownership, service visibility, and accountable disposition |
| [Caseworker or specialist](/personas/service-worker/) | Relevant history and evidence without unrestricted access to unrelated matters |
| [Supervisor](/personas/service-supervisor/) | Queue, aging, escalation, quality, and outcome visibility across channels |

Successful use reduces repeated explanation, silent handoffs, misrouting, and unresolved contacts.
Relevant outcomes include first meaningful response, correct routing, follow-up completion, and the share of
matters with a communicated disposition. These are outcome measures; raw contact volume is not.

## Common requirements and variations

- Support anonymous, identified, authenticated, and staff-assisted interactions.
- Separate channel, communication, request, and case so their cardinalities remain honest.
- Preserve accessibility, language, consent, and contact preferences across handoffs.
- Support internal routing, warm referral, external referral, and information-only resolution.
- Show a unified history without granting unified access to every underlying record.
- Allow several service taxonomies and jurisdiction rules without forking the core pattern.

Common variations include centralized versus departmental intake, one organization versus a partner
network, resident self-service versus staff-only service, and simple service requests versus matters
requiring formal casework.

## Composition map

```text
                  Constituent Management
                            │
              ┌─────────────┴─────────────┐
              │                           │
     Request Management           Case Management
              │                           │
              └────── Communication ──────┘
                            │
                    Person / Organization
                            │
                           Task
```

Request Management owns intake, classification, routing, and request disposition. Case Management
owns extended lifecycle, case parties, activity, evidence, and case outcome. The solution pattern
adds the cross-capability context and coordination between them.

## Cross-capability workflow

```text
Constituent contacts organization
              ↓
Identify person and capture communication
              ↓
Separate and classify expressed needs
              ↓
Can each request be answered immediately?
         ┌────┴────┐
        yes        no
         ↓          ↓
Resolve request   Route or open/link case
         └────┬─────┘
              ↓
Communicate outcome and preserve interaction history
```

One communication may create no request, one request, or several. A request may be referred
externally or linked to an existing case. The model represents these cardinalities explicitly rather
than hidden in a single “interaction/case” record.

## Integrated information model

| Added concept | Purpose |
|---|---|
| Constituent Context | The person's relevant roles, preferences, prior interactions, and active matters for this service context |
| Interaction History | A chronological view assembled from communications, requests, cases, and tasks without copying them |
| Jurisdiction Assessment | The rule, evidence, and result used to decide whether and where the organization may act |
| Referral | Transfer or recommendation to another responsible organization with acknowledgment and follow-up |
| Service Preference | The person's approved language, channel, and accessible-format preferences |

## Architecture

The dedicated [Constituent Management Architecture](/architecture/constituent-management-architecture/)
defines the cross-capability boundaries, context and timeline projections, orchestration, commands,
events, permissions, referral interface, and extension points. This solution page retains the
business composition and information semantics that architecture implements.

## Trust and governance

A unified view increases usefulness and exposure at the same time. Access is filtered by
the permissions of each source record; a staff member allowed to see a person's contact details is
not automatically allowed to discover a sensitive case. Search results and AI context must apply
the same rule.

## AI and automation

A Constituent Service Assistant may summarize an interaction, identify likely needs, search
approved knowledge, suggest classifications, locate related matters, recommend routing, and draft
a response. It proposes through the same capability APIs available to the user. It does not silently
open, close, or refer a matter unless a separately governed automation policy authorizes that exact
action.
