---
layout: capability-topic
title: Applications, Integration, Platforms & AI
description: Evaluate solution options for Asset Management against the accumulated requirements, controls, information architecture, and improvement priorities.
capability_id: asset-management
framework_track: technical
framework_stage: 5
navigation_order: 150
navigation_title: 5. Solutions & AI
section: capabilities
permalink: /capabilities/asset-management/architecture/applications-integration-platforms-ai/
---

## What this covers

This stage evaluates how applications, integrations, shared platforms, field technology,
analytics, and AI can support the target capability. It begins after business priorities,
requirements, controls, and information architecture are clear enough to compare alternatives.

The objective is not to find one application that claims to do everything. It is to assign clear
solution responsibilities, reduce unnecessary overlap, connect information deliberately, reuse
shared services where they add value, and select a direction that the agency can operate and evolve.

## How it applies to Asset Management

An Asset Management landscape may include:

- enterprise asset management or computerized maintenance management;
- geospatial information services;
- enterprise finance, procurement, projects, inventory, and human-resource services;
- capital planning and project-delivery tools;
- document, content, drawing, and records management;
- mobile inspection and field-work services;
- telemetry, operational technology, IoT, or SCADA where applicable;
- service-request, constituent, facility-booking, or operational systems;
- analytics, reporting, data platforms, and decision-support tools;
- identity, access, integration, notification, workflow, observability, and other shared platforms;
- supplier, contractor, regional, regulatory, and public information services.

Architecture clarifies which responsibilities belong in each service, which capabilities are
shared, which information remains authoritative where, and which interactions need integration.

### Integration follows a business interaction

An integration is easier to design when its purpose is explicit. It may transfer a delivered asset
into operations, publish approved geometry, reconcile financial values, dispatch work, receive a
condition observation, share a service interruption, or provide evidence for an investment decision.

APIs, events, managed files, batch exchanges, replication, and offline synchronization are
implementation patterns. Their fit depends on timing, volume, reliability, ownership, coupling,
security, support, and change needs. A consistent pattern can be valuable, but not every interaction
needs to be real time.

### Platforms provide reusable capabilities

Shared identity, integration, data, analytics, geospatial, records, notification, mobile, cloud,
observability, and automation services can reduce repeated implementation. Reuse remains useful
when service ownership, cost, support, constraints, and adoption are clear.

### Evaluating AI

AI is evaluated as part of the solution landscape, not as a separate destination. Candidate uses
may assist with inspection evidence, document and knowledge search, work-history summaries,
deterioration forecasts, anomaly detection, prioritization scenarios, or classification.

Evaluation includes:

- the task and expected outcome;
- information quality, permissions, representativeness, and lineage;
- consequence of error and acceptable uncertainty;
- human review, approval, override, and accountability;
- transparency and evidence needed by users and reviewers;
- security, privacy, records, procurement, supplier, and operational constraints;
- measures for usefulness, quality, equity, safety, and ongoing performance;
- a viable non-AI path when conditions do not support responsible use.

## What this builds on

This stage uses the business
[Prioritized Improvement Portfolio]({{ '/capabilities/asset-management/understand/improvement-opportunities-priorities/' | relative_url }})
and all preceding technical artifacts:

- Architecture Context and Principles;
- Architecture Requirements and Traceability Model;
- Technical Control and Operational Requirements Model; and
- [Information Architecture and Authoritative-Source Matrix]({{ '/capabilities/asset-management/architecture/information-data-architecture/' | relative_url }}).

Current application inventories, contracts, costs, roadmaps, support data, interface inventories,
technical health, user research, product evaluations, proofs of concept, supplier information, and
delivery capacity add evidence.

## Assessment

Useful questions include:

1. Are solution responsibilities clear, or do applications compete to own the same business function or fact?
2. Can each option be traced to prioritized outcomes, requirements, controls, information, and architecture principles?
3. Are current strengths, constraints, technical debt, contracts, skills, operating cost, and transition effort visible?
4. Are integrations defined by business purpose, ownership, service level, evidence, and support—not only interface technology?
5. Are reusable platform services applied where their operating model and value are understood?
6. Are configuration, extension, custom development, and process change considered together?
7. Are AI options evaluated for suitability, information readiness, human accountability, controls, and measurable value?
8. Do option comparisons include implementation, migration, adoption, operations, exit, and lifecycle cost?

Useful evidence may include inventories, diagrams, capability mappings, contracts, cost and support
records, incidents, interface specifications, product roadmaps, technical-debt registers, usage and
performance data, evaluations, accessibility findings, security reviews, and AI test results.

## Maturity progression

| Level | What it looks like | Representative evidence |
|---|---|---|
| **1 — Recognized** | Teams select and connect solutions to meet immediate project and operational needs. | Product decisions, local interfaces, project architectures |
| **2 — Described** | Major application responsibilities, integrations, platforms, constraints, and option criteria are documented. | Landscape, capability mapping, interface and platform inventory |
| **3 — Connected** | Solution options trace to business priorities and accumulated requirements, controls, and information architecture. | Traceability, option analysis, defined service responsibilities |
| **4 — Managed as services** | Applications, integrations, platforms, and AI use cases have measurable ownership, support, cost, performance, and lifecycle practices. | Service measures, product roadmaps, operational and evaluation evidence |
| **5 — Kept current** | The landscape evolves through measured value, service change, technical health, responsible experimentation, and planned retirement. | Portfolio decisions, retired overlap, refreshed options, benefits evidence |

The target is a coherent, supportable landscape that can change responsibly. More platforms,
integrations, automation, or AI do not automatically create greater capability.

## Workshop

### Solution options workshop

| Item | Guidance |
|---|---|
| **Participants** | Business opportunity owners, asset and service representatives, enterprise and solution architects, application and product owners, data, integration, security, records, platform, operations, procurement, finance, and change leads |
| **Preparation** | Bring the improvement portfolio, technical artifacts, current landscape, contracts, costs, roadmaps, support evidence, and candidate options |
| **Typical length** | Three hours to establish option boundaries and comparison, followed by focused evaluation or proof work |
| **Result** | A traceable set of solution options, comparisons, decisions, dependencies, and preferred direction |

Suggested activities:

1. Select a prioritized capability improvement and restate the outcome without solution language.
2. Review applicable requirements, controls, information responsibilities, principles, and constraints.
3. Describe viable options, including process or information improvements and reuse of current services.
4. Assign proposed responsibilities across applications, integrations, platforms, people, and partners.
5. Compare value, fit, risk, cost, transition, operations, skills, sourcing, accessibility, and exit considerations.
6. Evaluate AI components using task suitability, information readiness, human accountability, controls, and measures.
7. Record the preferred direction, alternatives, rationale, conditions, evidence gaps, and next decisions.

## What you will produce

The **Solution Options and Preferred Architecture Direction** is the fifth component of the Asset
Management Target Architecture Package. At minimum it contains:

- capability improvements and technical scope being addressed;
- current landscape strengths, constraints, overlap, debt, and lifecycle considerations;
- viable solution options and assigned responsibilities;
- application, integration, platform, field, analytics, AI, and shared-service implications;
- traceability to business priorities and all earlier technical artifacts;
- comparison of value, fit, control, cost, transition, operations, skills, sourcing, and risk;
- preferred direction, alternatives, rationale, conditions, and evidence gaps;
- decisions, dependencies, experiments, and follow-up work needed for target design.

The artifact is ready to carry forward when the target architecture can assemble a coherent
direction without reopening fundamental business, information, or option questions.

## Worked example

For the opportunity to establish trusted asset identity, an agency might compare:

| Option | Direction | Important considerations |
|---|---|---|
| Expand the current EAM as the enterprise asset registry | Place durable operational identity and hierarchy in the existing EAM and integrate approved perspectives | EAM coverage, stewardship, non-maintainable assets, GIS and finance reconciliation, supplier roadmap |
| Establish a shared asset registry service | Provide identity and matching as a reusable service while operational details remain in specialized systems | New service ownership, complexity, adoption, integration, support, migration, and long-term cost |
| Govern identities across existing authoritative sources | Retain distributed ownership and introduce shared identifiers, matching, reference data, and reconciliation | Clear fact-level authority, stewardship capacity, monitoring, conflict resolution, and consumer adoption |

The preferred option depends on the business information model, current strengths, portfolio
variety, enterprise services, delivery capacity, and lifecycle cost—not a universal product pattern.

## What this informs next

This direction informs
[Target Architecture & Transition Roadmap]({{ '/capabilities/asset-management/architecture/target-architecture-transition-roadmap/' | relative_url }}),
where the accumulated technical decisions are assembled into architecture views, transition states,
implementation sequencing, and governance.
