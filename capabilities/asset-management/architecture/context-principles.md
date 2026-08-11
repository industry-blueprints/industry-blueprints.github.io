---
layout: capability-topic
title: Architecture Context & Principles
description: Establish the business alignment, constraints, and durable principles that guide technology decisions for Asset Management.
capability_id: asset-management
framework_track: technical
framework_stage: 1
navigation_order: 110
navigation_title: 1. Context & principles
section: capabilities
permalink: /capabilities/asset-management/architecture/context-principles/
---

## What this covers

Architecture begins by understanding the capability it enables. Before selecting applications,
platforms, integrations, or data products, this stage translates Asset Management's public purpose
and operating context into a small set of durable decision guides.

Architecture context explains the environment in which technical choices will operate. Principles
state how the agency intends to make those choices when several reasonable options exist. Together,
they keep later decisions connected to service needs instead of organizing the work around a
particular product.

## How it applies to Asset Management

Several characteristics commonly shape Asset Management architecture:

- Assets may remain in service much longer than the systems used to manage them.
- Work happens across offices, facilities, job sites, rights-of-way, vehicles, and remote locations.
- Location is often essential to understanding an asset and its service relationships.
- Asset information is created by projects, operations, inspections, maintenance, finance, and partners.
- No single application necessarily supports the entire lifecycle or owns every relevant fact.
- Field conditions may include limited connectivity, safety requirements, specialized equipment, and time pressure.
- Financial, spatial, operational, engineering, records, and service perspectives all describe the same portfolio differently.
- Technology changes need to preserve service continuity and the history needed for long-lived decisions.

These characteristics do not prescribe one architecture. They provide the context against which
options can be evaluated.

## What this builds on

The primary business input is the
[Capability Purpose and Outcome Map]({{ '/capabilities/asset-management/understand/public-purpose-outcomes/' | relative_url }}).
It supplies the services, outcomes, stakeholders, scope, constraints, and measures that architecture
needs to support.

Additional inputs can include technology strategies, security and privacy policies, records
requirements, enterprise standards, current system inventories, contracts, integration standards,
and known lifecycle or support constraints. These inputs add context without replacing the
business artifact.

## Assessment

The assessment examines whether architectural decisions have a clear and shared basis. Useful
questions include:

1. Can major technology choices be traced to an Asset Management service, outcome, constraint, or measure?
2. Is the current technical scope clear across applications, data, integrations, field technology, platforms, and partners?
3. Are important enterprise, security, privacy, records, accessibility, and sourcing constraints understood?
4. Do architecture principles guide real decisions, or are they broad statements without practical implications?
5. Are long asset lives and shorter technology lifecycles considered together?
6. Does the context recognize offline and field work, spatial relationships, and shared information ownership?
7. Are exceptions and tradeoffs recorded with their rationale?

Useful evidence may include:

- the business purpose and outcome map;
- current architecture and system inventories;
- technology, data, security, records, and cloud strategies;
- product roadmaps, contracts, and support arrangements;
- integration standards and interface inventories;
- architecture decision records and review materials;
- field-work observations and user research.

## Maturity progression

| Level | What it looks like | Representative evidence |
|---|---|---|
| **1 — Recognized** | Teams recognize important technical constraints and business needs, largely through project experience. | Project notes, local standards, individual design decisions |
| **2 — Described** | The architecture context and a practical set of principles are documented for major initiatives. | Context brief, agreed principles, current-scope inventory |
| **3 — Connected** | Principles explicitly reference capability outcomes, lifecycle needs, information responsibilities, and enterprise constraints. | Traceability links, principle rationale, cross-team review |
| **4 — Used in decisions** | Options, exceptions, and investment decisions consistently apply the principles and record tradeoffs. | Decision records, option assessments, review outcomes |
| **5 — Kept current** | Context and principles are reviewed as the portfolio, services, risks, standards, and technology landscape change. | Review cadence, revised principles, retired exceptions |

The target level depends on the size, risk, and pace of the portfolio. A concise, actively used set
of principles is more valuable than a large catalogue that rarely affects a decision.

## Workshop

### Architecture alignment workshop

| Item | Guidance |
|---|---|
| **Participants** | Asset and service leaders, enterprise and solution architects, data and integration leads, security, records, field technology, operations, and support teams |
| **Preparation** | Bring the purpose and outcome map, current system context, enterprise standards, known constraints, and recent architecture decisions |
| **Typical length** | 90–120 minutes for an initial context and principles set |
| **Result** | An agreed architecture context, principles, rationale, implications, and open decisions |

Suggested activities:

1. Review the services, outcomes, stakeholders, scope, and constraints established by the business artifact.
2. Identify characteristics of the asset portfolio and operating environment that materially affect technology choices.
3. Review enterprise obligations and standards that apply.
4. Draft a concise set of principles as decision guides rather than aspirations.
5. Test each principle against realistic choices, such as asset identity, field access, integration, or product replacement.
6. Record implications, tensions between principles, and the process for justified exceptions.
7. Identify questions that later requirements, information, control, and solution stages need to resolve.

## What you will produce

The **Architecture Context and Principles** artifact is the first component of the Asset Management
Target Architecture Package. At minimum it contains:

- a summary of the capability and public outcomes being enabled;
- technical scope and important current-state characteristics;
- business, policy, operational, enterprise, and technology constraints;
- architecture drivers and service qualities that need further definition;
- a concise set of principles, each with rationale and practical implications;
- known tensions, exceptions, assumptions, and open questions;
- traceability to the Capability Purpose and Outcome Map.

The artifact is ready to carry forward when it provides enough direction to compare future
requirements and solution options consistently.

## Worked example

Illustrative principles for a public facilities portfolio might include:

| Principle | Rationale | Practical implication |
|---|---|---|
| **Service need leads technology choice** | Asset technology exists to keep facilities ready for public programs | Options are evaluated against service continuity, safety, access, and stewardship outcomes |
| **Maintain one durable asset identity** | Systems and organizational responsibilities change during an asset's life | Relevant systems reference a stable identity rather than creating unrelated versions of the same facility or component |
| **Keep information with its accountable source** | Different teams steward financial, spatial, operational, and records information | Integration makes information usable across the lifecycle without obscuring ownership |
| **Support work where it happens** | Inspections and maintenance occur throughout buildings and sites | Designs account for mobile use, intermittent connectivity, safety, and efficient field capture |
| **Preserve lifecycle history through change** | Long-term decisions rely on earlier condition, work, cost, and project evidence | Migrations and replacements include history, lineage, retention, and reconciliation requirements |

An agency would adapt these principles to its services, portfolio, enterprise standards, and
decision environment.

## What this informs next

This artifact becomes a required input to **Architecture Requirements & Service Qualities**. That
stage will translate the business
[Service, Lifecycle and Performance Model]({{ '/capabilities/asset-management/lifecycle/' | relative_url }})
into traceable requirements while applying the context and principles established here.
