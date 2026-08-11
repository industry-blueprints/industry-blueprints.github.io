---
id: municipal-constituent-services-architecture
title: Municipal Constituent Services Architecture
type: architecture
level: 4
version: "0.1"
status: draft
description: A workload architecture for public and staff intake, department routing, field resolution, escalation, resident follow-up, and municipal service accountability.
last_updated: 2026-08-10
sources: []
reviewed: []
tracks: [information, architecture, trust-governance, ai-automation, executable]
relationships:
  builds_on:
    - municipal-constituent-services
    - constituent-management-architecture
  adds:
    - Public ownership scope
    - Municipal service taxonomy configuration
    - Department and field-work routing
    - Escalation approval guard
---

## Scope

This architecture specializes Constituent Management for a municipal 311-style workload. It covers
resident and staff experiences, configured service topics, department routing, field work,
escalation review, resolution evidence, and resident follow-up.

Emergency dispatch, formal permitting, investigations, payments, and asset work management remain
separate workloads even when they share identity, location, or referral integrations.

## Context

```text
Resident portal                    Staff workspace
      ↓                                  ↓
      └──── Municipal Constituent Services runtime ────┐
                         │                              │
            ┌────────────┼────────────┐                 │
            ↓            ↓            ↓                 ↓
     Person registry  Request/Case  Documents       Approvals
                         │                              │
                         └──── Tasks / activity ────────┘
                                      ↓
                       Departments, location, notifications
```

Public and staff experiences use the same permissioned commands and records. Their navigation,
forms, queues, and available actions differ by persona and configuration.

## Information model

The workload extends a request or case with Service Topic, Service Location, intake Channel,
responsible Department, first-response target, resolution target, and Resolution Notes. It adds an
Escalation Review linked through the approvals capability.

Person remains tenant-shared. Municipal Constituent Services adds a solution-scoped facet for
preferred channel and neighborhood. Other workloads can use the same person without seeing those
extension fields unless their permissions and facet contract allow it.

## Module boundaries

The solution configuration owns topic values, department values, workload fields, lifecycle,
permissions, persona actions, forms, lists, and dashboard definitions. Case Management owns the
underlying record and workflow contract. Document Intake owns files and evidence metadata.
Approvals owns escalation review. The person registry owns the shared resident record.

Named guards connect module evidence to lifecycle transitions: department assignment permits work
to begin, resolution notes permit resolution, and approved escalation review permits work to resume.

## Interfaces

Public operations include submit, view owned request, provide information, withdraw, and reopen.
Staff operations include triage, classify, assign department, assign worker, request information,
escalate, review, resolve, close, and report. Queries cover personal activity, triage queues,
assigned field work, overdue requests, escalations, and service measures.

Location services, identity providers, email or messaging channels, document storage, and external
department systems connect through adapters rather than replacing the request lifecycle.

## Events

The workload uses `RequestSubmitted`, `TriageStarted`, `DepartmentAssigned`, `WorkStarted`,
`InformationRequested`, `InformationProvided`, `RequestEscalated`, `EscalationReviewed`,
`RequestResolved`, `RequestReopened`, and `RequestClosed` as its business event vocabulary.

External integrations consume these events or invoke the published commands. They do not update
workflow state directly.

## Security

Resident access is scoped to owned records and enforced on the server. Staff actions depend on
coordinator, field-agent, supervisor, and reporting permissions, with assignment and department
adding record context. Attachments have independent access checks. Sensitive requests can restrict
discovery, queue visibility, and AI context.

## Extensibility

Configured extension points include topics, departments, service targets, fields, lifecycle states,
transitions, guards, persona actions, dashboards, and resident-facing forms. Adapter seams cover
geocoding, notifications, files, search, identity, and external referrals.

## Nonfunctional considerations

Public intake remains usable when optional AI or geocoding is unavailable. Ownership filtering
occurs before pagination. File access uses opaque identifiers and separate authorization. Service
queues support stable ordering and aging calculations. Audit records preserve the acting persona,
command, transition, guard outcome, and correlation across public and staff experiences.
