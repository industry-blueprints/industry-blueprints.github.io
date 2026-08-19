---
layout: capability-topic
title: Technical Controls & Operational Design
description: Translate Asset Management responsibilities and business controls into technical safeguards, evidence, operational support, and human-accountable workflows.
capability_id: asset-management
framework_track: technical
framework_stage: 3
navigation_order: 130
navigation_title: 3. Controls & operations
section: capabilities
permalink: /capabilities/asset-management/architecture/technical-controls-operational-design/
---

## What this covers

Technical controls help an agency carry business responsibilities into the systems and services
that support them. They can guide access, approvals, validation, records, audit evidence,
continuity, monitoring, change, and exception handling.

A business control describes the confidence the organization needs. A technical control describes
how technology contributes to that confidence. The two are related but not interchangeable:
technology may enforce a rule, present evidence, route a review, or record an action, while a person
retains the authority and accountability for the decision.

## How it applies to Asset Management

Representative technical control and operational concerns include:

- identify people, services, devices, partners, and field users appropriately;
- grant access based on responsibility, portfolio, location, task, and sensitivity;
- preserve separation between preparing, reviewing, approving, and recording important decisions;
- validate asset identity, classification, location, required fields, and lifecycle status;
- retain inspection evidence, work history, approvals, calculations, and decision rationale;
- make changes, overrides, exceptions, and synchronization conflicts visible;
- support records retention, legal hold, disclosure, and defensible disposal where applicable;
- maintain critical access and information during outages, emergencies, and degraded connectivity;
- monitor integrations, scheduled work, data quality, interfaces, and service health;
- keep configuration, reference data, rules, and technical changes governed and traceable;
- make AI-assisted recommendations distinguishable from approved human decisions.

Operational design also considers who supports the environment, how incidents and requests are
handled, how changes are introduced, and how the agency knows that important controls continue to
operate.

### Controls follow purpose

Controls are easiest to evaluate when each one identifies:

1. the business responsibility, risk, decision, or obligation it supports;
2. the technical mechanism and where it operates;
3. the human role that reviews, approves, responds, or remains accountable;
4. the evidence created; and
5. the way effectiveness can be observed.

This avoids treating a product feature as proof that a control objective has been met.

## What this builds on

This stage uses:

- the business [Process, Decision, Responsibility and Control Model]({{ '/capabilities/asset-management/understand/execution-accountability-controls/' | relative_url }});
- [Architecture Context and Principles]({{ '/capabilities/asset-management/architecture/context-principles/' | relative_url }}); and
- the [Architecture Requirements and Traceability Model]({{ '/capabilities/asset-management/architecture/requirements-service-qualities/' | relative_url }}).

Security policies, identity standards, records schedules, continuity plans, audit results, support
models, incident history, change records, and current control configurations add evidence.

## Assessment

Useful questions include:

1. Can every important technical control be traced to a business responsibility, decision, risk, or obligation?
2. Are control objectives distinguished from the products or configurations currently implementing them?
3. Are human review, approval, override, escalation, and accountability explicit?
4. Do access and workflow controls reflect actual roles, portfolios, locations, partners, and field conditions?
5. Is evidence complete enough to reconstruct important changes and decisions?
6. Are monitoring, incident response, continuity, support ownership, and control maintenance defined?
7. Can justified exceptions be recorded, approved, time-limited, reviewed, and retired?
8. Are control effectiveness and operational burden considered together?

Useful evidence may include access models, workflow configurations, validation rules, audit logs,
records mappings, incident and change records, continuity tests, monitoring dashboards, exception
registers, support agreements, control tests, and architecture decisions.

## Maturity progression

| Level | What it looks like | Representative evidence |
|---|---|---|
| **1 — Recognized** | Teams apply important safeguards through project knowledge, product settings, and operational practice. | Local configurations, administrator procedures, manual reviews |
| **2 — Described** | Major technical controls, owners, evidence, and support responsibilities are documented. | Control inventory, access model, logging and support guidance |
| **3 — Connected** | Controls trace to business responsibilities and operate consistently across workflows, information, integrations, and services. | Business-to-control mapping, shared patterns, reviewed evidence |
| **4 — Observed** | Control operation and service health are monitored, tested, and used in operational and architecture decisions. | Control tests, dashboards, incident learning, exception review |
| **5 — Kept current** | Controls evolve through changes in services, risks, policy, architecture, and measured effectiveness. | Review cadence, retired controls, updated patterns and automation |

The useful target reflects service criticality, sensitivity, consequence, and operating scale. More
automation is not automatically more mature when it obscures judgment or creates unnecessary burden.

## Workshop

### Technical control mapping workshop

| Item | Guidance |
|---|---|
| **Participants** | Business control owners, asset and operations representatives, architects, security, identity, records, privacy, platform, integration, service management, audit or assurance, and support teams |
| **Preparation** | Bring the business control model, architecture requirements, current control inventory, access design, incident history, audit evidence, and representative exceptions |
| **Typical length** | Two to three hours for one process, decision set, or technical scope |
| **Result** | A traceable technical control, human accountability, evidence, operations, and exception model |

Suggested activities:

1. Select important business decisions, responsibilities, controls, and obligations within scope.
2. State the confidence or outcome each control is intended to provide.
3. Map current and potential technical mechanisms without assuming that automation owns the decision.
4. Identify human review, approval, override, escalation, and accountability.
5. Define evidence, monitoring, support ownership, continuity, and exception handling.
6. Evaluate gaps, duplication, operational burden, and dependencies.
7. Agree on required control capabilities and questions for information and solution design.

## What you will produce

The **Technical Control and Operational Requirements Model** is the third component of the Asset
Management Target Architecture Package. At minimum it contains:

- traceability to business responsibilities, decisions, risks, controls, and obligations;
- control objectives and technical mechanisms;
- identity, access, validation, workflow, approval, audit, records, and continuity needs;
- human review, override, escalation, and accountability;
- evidence, monitoring, testing, incident, support, and change responsibilities;
- exception handling and compensating measures;
- dependencies, assumptions, measures, and unresolved decisions;
- links to architecture requirements and principles.

The artifact is ready to carry forward when data and solution designs can apply the controls
consistently and the agency can explain how people and technology share responsibility.

## Worked example

| Business control | Technical contribution | Human accountability and evidence |
|---|---|---|
| A high-value renewal recommendation receives appropriate review | Workflow routes the recommendation using value, criticality, and delegated-authority rules | Authorized reviewers examine assumptions and alternatives; approval, comments, evidence, and decision are retained |
| Completed inspections are attributable and complete | Authenticated capture, required fields, timestamps, location context, evidence attachments, and visible amendments | Qualified staff remain responsible for observations and professional conclusions |
| Asset status changes remain explainable | Status transitions follow defined permissions and record previous value, author, time, and reason | Asset steward reviews exceptions and reconciles changes affecting downstream records |
| AI assists with condition or work-history summaries | The service identifies source material, marks generated content, limits permitted data, and records use | A qualified person reviews the summary and owns any resulting condition or investment decision |

## What this informs next

This model informs:

- [Information & Data Architecture]({{ '/capabilities/asset-management/architecture/information-data-architecture/' | relative_url }}), where controls are applied to information ownership, movement, access, quality, retention, and lineage;
- later application, integration, platform, AI, and target-architecture decisions; and
- the assessment of whether proposed solutions preserve human accountability and usable operational evidence.
