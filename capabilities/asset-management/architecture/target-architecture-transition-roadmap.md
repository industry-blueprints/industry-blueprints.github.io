---
layout: capability-topic
title: Target Architecture & Transition Roadmap
description: Assemble the Asset Management technical artifacts into a traceable target architecture, practical transition states, and an approach for governing change.
capability_id: asset-management
framework_track: technical
framework_stage: 6
navigation_order: 160
navigation_title: 6. Target architecture
section: capabilities
permalink: /capabilities/asset-management/architecture/target-architecture-transition-roadmap/
---

## What this covers

The target architecture brings the technical decisions from the preceding stages into one coherent
and traceable description of the enabling environment. It shows how information, applications,
integrations, platforms, controls, operations, and governance work together to support the target
Asset Management capability.

The transition roadmap describes intermediate architectures and the sequence of change. It
recognizes that an agency continues to operate assets and deliver public services while data is
improved, responsibilities change, integrations are introduced, applications evolve, and old
services are retired.

## How it applies to Asset Management

A complete target architecture may include views of:

- capability outcomes, lifecycle, actors, requirements, and traceability;
- information subjects, identities, authoritative sources, flows, quality, lineage, and records;
- application and service responsibilities across EAM, GIS, ERP, field, projects, documents, analytics, and other services;
- integration interactions, contracts, timing, ownership, monitoring, and exception handling;
- shared identity, data, geospatial, records, workflow, notification, analytics, AI, integration, and observability platforms;
- security, privacy, accessibility, resilience, continuity, audit, support, and technical controls;
- user, field, partner, supplier, operational-technology, and public channels;
- technology lifecycle, product ownership, sourcing, cost, support, skills, and technical debt;
- transition states, migrations, coexistence, decommissioning, adoption, measures, and governance.

Architecture views are useful when they help specific people make and explain decisions. One
all-purpose diagram rarely provides enough detail for every audience.

### The target is assembled, not invented here

The final architecture is a synthesis of decisions already made:

- principles constrain acceptable direction;
- requirements and service qualities define needed support;
- technical controls preserve responsibility and confidence;
- information architecture defines meaning, authority, and flow; and
- solution evaluation establishes responsibilities and preferred options.

Stage 6 resolves remaining cross-cutting decisions, tests coherence, and makes the transition
explicit. It does not restart product selection.

### Transition states are architectures

During change, old and new services may coexist. Information may require cleansing and
reconciliation before migration. Integrations may temporarily bridge environments. Controls,
records, support, reporting, and identity need to work throughout. Describing these states helps
the agency manage service continuity and retire temporary arrangements deliberately.

## What this builds on

This stage uses:

- the business [Target Operating Model and Capability Roadmap]({{ '/capabilities/asset-management/understand/target-operating-model-roadmap/' | relative_url }}), together with the complete Capability Blueprint; and
- all five prior technical artifacts, culminating in the
  [Solution Options and Preferred Architecture Direction]({{ '/capabilities/asset-management/architecture/applications-integration-platforms-ai/' | relative_url }}).

Enterprise architecture, security and technology standards, infrastructure and cloud direction,
product roadmaps, contracts, budgets, delivery capacity, migration evidence, service-management
models, and current initiative plans add implementation context.

## Assessment

Useful questions include:

1. Can every major architecture decision be traced to a business outcome, operating need, requirement, control, information responsibility, or priority?
2. Do the architecture views agree on service, information, application, integration, platform, control, and ownership boundaries?
3. Are current strengths intentionally retained and target responsibilities clear enough to reduce overlap and ambiguity?
4. Do transition states cover coexistence, migration, reconciliation, continuity, records, security, support, and retirement?
5. Are business and technical roadmap dependencies aligned?
6. Are product ownership, skills, support, cost, sourcing, technical debt, and lifecycle management represented?
7. Are architecture decisions, exceptions, standards, measures, and review responsibilities governed?
8. Can the architecture adapt as services, portfolios, suppliers, and technology change without losing traceability?

Useful evidence may include all prior artifacts, target and transition views, decision records,
standards, service catalogues, interface and data contracts, migration plans, security models,
operating models, product roadmaps, costs, technical-debt records, decommissioning plans, and
governance terms of reference.

## Maturity progression

| Level | What it looks like | Representative evidence |
|---|---|---|
| **1 — Recognized** | Projects and technical teams maintain target ideas and roadmaps for their own scope. | Project architectures, product roadmaps, solution diagrams |
| **2 — Described** | A target architecture and transition roadmap document major services, information, integrations, platforms, controls, and changes. | Architecture views, transition plan, ownership assignments |
| **3 — Connected** | The architecture traces to the Capability Blueprint and coordinates decisions across domains and capability increments. | End-to-end traceability, aligned roadmaps, decision records |
| **4 — Governed through outcomes** | Architecture, product, portfolio, and service governance use measures, technical health, value, risk, and delivery evidence to steer change. | Governance decisions, service evidence, conformance and exception records |
| **5 — Kept current** | Target and transition architectures evolve through implementation learning, service change, measured performance, and planned technology lifecycle. | Living architecture, retired transitions, refreshed roadmaps and decisions |

The target is not architectural volume. It is enough shared direction and evidence to make coherent
decisions, manage transition, and explain how technology enables the capability.

## Workshop

### Target architecture and transition workshop

| Item | Guidance |
|---|---|
| **Participants** | Business and technical sponsors, asset and service leaders, enterprise, solution, information, integration, security, and platform architects, product and application owners, operations, records, procurement, finance, delivery, and change leads |
| **Preparation** | Bring the complete Capability Blueprint, all technical artifacts, enterprise standards, current initiatives, product and contract timelines, migration evidence, costs, capacity, and unresolved decisions |
| **Typical length** | A half-day architecture synthesis followed by focused transition, domain, and governance sessions |
| **Result** | Reviewed target views, transition states, decisions, dependencies, ownership, technical roadmap, measures, and governance approach |

Suggested activities:

1. Confirm the target operating model, capability increments, architecture principles, and preferred solution direction.
2. Assemble consistent target views for information, applications, integrations, platforms, controls, operations, and users.
3. Test traceability, ownership boundaries, service qualities, control coverage, and cross-view consistency.
4. Define transition states around useful capability increments and business roadmap dependencies.
5. Address coexistence, migration, information quality, continuity, adoption, support, contracts, and retirement.
6. Align technical initiatives, decisions, measures, costs, capacity, and timing with the capability roadmap.
7. Establish architecture governance, decision records, exception handling, conformance, technical-health review, and refresh cadence.

## What you will produce

The **Target Architecture Package and Transition Roadmap** completes the Asset Management technical
track. At minimum it contains:

- context, scope, outcomes, principles, requirements, and end-to-end traceability;
- target information, application, integration, platform, security, control, operations, analytics, AI, and records views;
- clear service, product, information, control, and support ownership;
- architecture decisions, standards, rationale, assumptions, exceptions, and unresolved questions;
- current, transition, and target states with coexistence, migration, reconciliation, continuity, and retirement needs;
- technical initiatives, dependencies, sequence, cost considerations, skills, sourcing, adoption, and measures;
- governance, decision, conformance, exception, technical-health, and refresh practices;
- alignment to the Target Operating Model and Capability Roadmap.

Together with the first five technical outputs, it forms the **Asset Management Target Architecture
Package**. It is ready to guide delivery when teams can make scoped design and implementation
decisions without losing their connection to the capability's public purpose and operating needs.

## Worked example

An illustrative facilities architecture transition might use three states:

| State | Business capability enabled | Technical direction |
|---|---|---|
| **Portfolio foundation** | Trusted ownership, identity, classification, location, and handover | Establish source responsibilities and shared identifiers; reconcile EAM, GIS, ERP, project, and records information; introduce governed exchanges |
| **Connected lifecycle operations** | Coordinated condition, inspection, work, service, and portfolio performance | Strengthen field services, work and inspection flows, information contracts, monitoring, records links, and analytical products |
| **Integrated planning and renewal** | Traceable lifecycle options, scenarios, priorities, and benefit review | Connect governed portfolio data to planning and analytics; implement decision-support controls; retire temporary reconciliation and legacy services |

Each state delivers a usable capability increment. Transition integrations and data stores have
named owners and retirement conditions so temporary architecture does not silently become permanent.

## What this informs next

The completed Target Architecture Package supports initiative delivery, procurement, detailed
solution design, product roadmaps, data and integration delivery, migration, security review,
service transition, adoption, architecture governance, and ongoing capability improvement.

Implementation evidence feeds back into both the Capability Blueprint and Target Architecture so
the two remain current as the agency learns and its operating context changes.
