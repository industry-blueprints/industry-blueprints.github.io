---
layout: capability-topic
title: Architecture Requirements & Service Qualities
description: Translate Asset Management services, lifecycle needs, and performance expectations into requirements that can guide technical design.
capability_id: asset-management
framework_track: technical
framework_stage: 2
navigation_order: 120
navigation_title: 2. Requirements & qualities
section: capabilities
permalink: /capabilities/asset-management/architecture/requirements-service-qualities/
---

## What this covers

Architecture requirements describe what the enabling environment needs to support without jumping
directly to a product or design. They connect service expectations, lifecycle activities, handoffs,
decisions, information, and operating conditions to capabilities that technology can provide.

Service qualities describe how well that support needs to work. Availability, usability,
accessibility, response time, interoperability, traceability, resilience, and maintainability often
matter as much as a list of functions.

## How it applies to Asset Management

Asset Management requirements often span an asset's entire life and several organizational teams.
Representative needs include:

- establish a durable identity and classification when an asset enters service;
- connect assets to locations, systems, services, owners, and related assets;
- receive complete operating and maintenance information from delivered projects;
- plan and record inspections, condition observations, work, costs, and changes;
- support field work where connectivity, equipment, environment, and safety vary;
- preserve lifecycle history when applications, suppliers, or organizational ownership change;
- combine operational, spatial, engineering, financial, risk, and service perspectives;
- provide timely information for maintenance, renewal, replacement, and investment decisions;
- retain records and evidence for the period required by the asset, service, and public obligation.

The same function may require different service qualities by portfolio. A map loading slowly in an
office is inconvenient; unavailable location or isolation information during an urgent field repair
may interrupt service or affect safety. Context gives the requirement its meaning.

### From business need to requirement

A traceable requirement records four connected elements:

1. the business source, such as a lifecycle stage, decision, handoff, outcome, or control;
2. the capability the enabling environment needs to provide;
3. the service quality or constraint that shapes acceptable performance; and
4. a way to evaluate whether the need has been met.

This structure makes later design tradeoffs easier to explain.

## What this builds on

This stage uses two required inputs:

- the business [Service, Lifecycle and Performance Model]({{ '/capabilities/asset-management/lifecycle/' | relative_url }}), which supplies operating needs and service expectations; and
- [Architecture Context and Principles]({{ '/capabilities/asset-management/architecture/context-principles/' | relative_url }}), which supplies the technical context and decision guidance.

Existing requirements, service agreements, user research, field observations, support records,
contracts, policies, and current-system limitations add evidence.

## Assessment

Useful questions include:

1. Can requirements be traced to a service, lifecycle stage, user need, decision, control, or measure?
2. Are requirements expressed independently of a preferred product or implementation?
3. Do they cover field and office work, partners, contractors, and public interactions where relevant?
4. Are service qualities defined with enough context to compare options and test results?
5. Are accessibility, records, privacy, security, continuity, and support needs included early?
6. Are lifecycle handoffs and information continuity represented rather than treated as later integration details?
7. Are conflicts, assumptions, priorities, and unresolved questions visible?

Useful evidence may include business artifacts, requirement catalogues, service-level agreements,
support data, performance reports, user research, accessibility findings, integration inventories,
continuity plans, retention schedules, and architecture decision records.

## Maturity progression

| Level | What it looks like | Representative evidence |
|---|---|---|
| **1 — Recognized** | Projects gather important requirements through local knowledge and immediate delivery needs. | Project notes, procurement requirements, user stories |
| **2 — Described** | Functional requirements and important service qualities are documented for major initiatives. | Requirement catalogue, quality expectations, acceptance criteria |
| **3 — Connected** | Requirements trace to lifecycle needs, outcomes, controls, information, users, and architecture principles. | Traceability records, source references, reviewed requirement sets |
| **4 — Used in decisions** | Requirements consistently guide option evaluation, design, testing, acceptance, and service management. | Evaluation matrices, test evidence, service measures |
| **5 — Kept current** | Requirements evolve through operating evidence, service change, architecture decisions, and measured performance. | Review cadence, version history, feedback from live services |

The useful target varies with risk and scope. A small local tool may need a concise requirement set;
a shared asset platform or field service may need greater traceability and measurable service qualities.

## Workshop

### Requirements and service qualities workshop

| Item | Guidance |
|---|---|
| **Participants** | Asset and service owners, operators, inspectors, maintenance and field staff, architects, product and data teams, security, records, accessibility, integration, and support leads |
| **Preparation** | Bring the lifecycle model, architecture principles, user evidence, current requirements, service measures, constraints, and examples of important handoffs |
| **Typical length** | Two to three hours for a representative lifecycle or initiative scope |
| **Result** | A reviewed set of traceable capabilities, requirements, qualities, priorities, assumptions, and evaluation measures |

Suggested activities:

1. Select lifecycle stages, service expectations, handoffs, and decisions within scope.
2. Describe what people and organizations need to accomplish without naming a solution.
3. Identify information and interactions required to support that work.
4. Define the operating conditions and service qualities that materially affect success.
5. Trace each requirement to its business source and applicable architecture principles.
6. Identify conflicts, dependencies, assumptions, and areas needing evidence.
7. Agree on priority and how important requirements can be evaluated.

## What you will produce

The **Architecture Requirements and Traceability Model** is the second component of the Asset
Management Target Architecture Package. At minimum it contains:

- business sources and traceability references;
- functional and information-related requirements;
- users, channels, locations, and operating conditions;
- service qualities and measurable expectations;
- policy, records, accessibility, security, sourcing, and technology constraints;
- requirement priority, rationale, assumptions, dependencies, and open questions;
- evaluation or acceptance guidance;
- links to the lifecycle model and architecture principles.

The artifact is ready to carry forward when technical teams can use it to evaluate controls,
information architecture, and solution options without losing the business reasoning behind them.

## Worked example

| Business source | Architecture requirement | Service quality or evaluation |
|---|---|---|
| Inspect assets at remote sites | Inspectors can retrieve assigned assets, record structured observations, attach evidence, and synchronize results | Core inspection work remains usable during intermittent connectivity; synchronization is visible and recoverable |
| Accept a completed capital project | The handover can create or reconcile asset identities and transfer required documents, warranties, equipment details, and maintenance plans | Required information is validated before acceptance and traceable to its project source |
| Respond to an interruption involving a critical facility | Authorized staff can identify affected assets, location, service relationships, current work, contacts, and relevant isolation or safety information | Critical information is available within the response time established for the service |
| Plan renewal investment | Analysts can combine condition, criticality, service, cost, work history, and forecast information | Source, currency, and quality of information remain visible in comparisons |

These examples define needs and evaluation context. Later stages determine the architecture and
solutions that satisfy them.

## What this informs next

The requirements model informs:

- **Technical Controls & Operational Design**, which translates business controls and operating responsibilities into technical mechanisms and support needs;
- **Information & Data Architecture**, which defines how required information is structured, governed, protected, and exchanged; and
- later solution and target-architecture decisions.
