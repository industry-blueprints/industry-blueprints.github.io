---
layout: capability-topic
title: Information & Data Architecture
description: Design how Asset Management information is structured, sourced, exchanged, protected, retained, and made dependable across its lifecycle.
capability_id: asset-management
framework_track: technical
framework_stage: 4
navigation_order: 140
navigation_title: 4. Information & data architecture
section: capabilities
permalink: /capabilities/asset-management/architecture/information-data-architecture/
---

## What this covers

Information and data architecture translates business meaning and stewardship into a technical
design for structures, authoritative sources, identifiers, movement, access, quality, history,
retention, and use. It allows applications to share Asset Management information without losing
its context or accountability.

The architecture is broader than a database model. It describes how information remains coherent
across operational, spatial, engineering, financial, records, analytics, field, partner, and public
uses—and how it can evolve as systems change.

## How it applies to Asset Management

Important architecture questions commonly include:

- What durable identifiers connect an asset across systems and over time?
- How are assets, components, sites, networks, services, locations, organizations, work, and projects related?
- Which source is authoritative for each fact, and which sources legitimately hold another perspective?
- Where can information be created or changed, and how are conflicts reconciled?
- How are time, history, effective dates, observation dates, confidence, and lineage represented?
- How are structured data, geospatial data, documents, images, drawings, telemetry, and records connected?
- How is reference data—asset classes, condition scales, work types, status, criticality, and units—governed?
- How do field users and partners work with information safely during intermittent connectivity?
- How are quality, sensitivity, access, retention, disclosure, analytics, and AI constraints applied?

### Authoritative does not always mean centralized

An authoritative source is the recognized source for a particular fact or decision context. Asset
Management may use several authoritative sources: an EAM system for maintenance status, GIS for
approved geometry, ERP for financial values, a records repository for retained documents, and a
service platform for service interruptions.

The architecture makes those responsibilities explicit and defines how consumers receive usable,
timely, and traceable information. It does not require one system to own every perspective.

### History matters

Asset decisions often depend on changes over years or decades. Current state alone may be
insufficient. Condition observations, work, cost, configuration, ownership, criticality, decisions,
and source lineage may need temporal context so an analyst can understand what was known and true
at an earlier point.

## What this builds on

This stage uses:

- the business [Business Information and Stewardship Model]({{ '/capabilities/asset-management/understand/information-data-needs/' | relative_url }});
- [Architecture Context and Principles]({{ '/capabilities/asset-management/architecture/context-principles/' | relative_url }});
- the [Architecture Requirements and Traceability Model]({{ '/capabilities/asset-management/architecture/requirements-service-qualities/' | relative_url }}); and
- the [Technical Control and Operational Requirements Model]({{ '/capabilities/asset-management/architecture/technical-controls-operational-design/' | relative_url }}).

Current logical and physical models, schemas, interface definitions, source inventories, data
profiles, GIS models, records mappings, lineage, quality findings, and retention rules add evidence.

## Assessment

Useful questions include:

1. Do technical models preserve the business definitions and relationships established by stewards?
2. Are durable identities and cross-system matching rules clear for assets, locations, organizations, work, and projects?
3. Is authority defined at the level of meaningful facts rather than assigned broadly to whole applications?
4. Are creation, change, synchronization, conflict, reconciliation, history, and lineage behaviors understood?
5. Can spatial, financial, operational, document, image, telemetry, and analytical information be connected appropriately?
6. Are quality, sensitivity, access, retention, disclosure, and AI-use constraints represented and enforceable?
7. Are data products and exchanges supported as owned services with contracts, monitoring, and change management?
8. Can applications be replaced without losing meaning, history, identity, or accountability?

Useful evidence may include conceptual and logical models, source matrices, data contracts, schema
registries, API and event definitions, lineage diagrams, quality profiles, reconciliation reports,
retention mappings, access classifications, metadata catalogues, and migration histories.

## Maturity progression

| Level | What it looks like | Representative evidence |
|---|---|---|
| **1 — Recognized** | Applications and teams manage the data needed for their immediate functions. | Local schemas, extracts, interface mappings, administrator knowledge |
| **2 — Described** | Major information structures, sources, identities, flows, and technical ownership are documented. | Conceptual model, source matrix, interface inventory |
| **3 — Connected** | Shared identities, governed reference data, traceable exchanges, and quality responsibilities connect important perspectives. | Data contracts, lineage, reconciliation, stewardship integration |
| **4 — Operated as a service** | Important data products and exchanges have measurable quality, availability, security, support, and change practices. | Service measures, monitored pipelines, quality and access evidence |
| **5 — Kept current** | The architecture evolves through business change, measured use, technology transitions, and active information governance. | Versioned models, managed migrations, retired sources, review history |

The useful target varies by information subject. Shared asset identity and critical location may
need stronger cross-system design than information used only within one low-risk process.

## Workshop

### Information architecture workshop

| Item | Guidance |
|---|---|
| **Participants** | Business information owners and stewards, asset and service representatives, data and solution architects, GIS, integration, records, security, privacy, analytics, platform, and application leads |
| **Preparation** | Bring the business information model, requirements, controls, current schemas, source and interface inventories, quality findings, lineage, and representative records |
| **Typical length** | Three hours for a priority information scope, followed by focused modeling sessions |
| **Result** | A reviewed conceptual model, authoritative-source matrix, information-flow view, quality and control requirements, and architecture decisions |

Suggested activities:

1. Confirm business subjects, definitions, relationships, stewardship, and priority use cases.
2. Map current sources, creators, consumers, exchanges, and legitimate perspectives.
3. Define durable identities, reference data, authority, and reconciliation responsibilities.
4. Identify history, lineage, quality, spatial, document, telemetry, retention, and sensitivity needs.
5. Describe target information flows and reusable data services without selecting all implementation details.
6. Apply the accumulated requirements, controls, and architecture principles.
7. Record decisions, gaps, transition needs, and questions for application and platform evaluation.

## What you will produce

The **Information Architecture and Authoritative-Source Matrix** is the fourth component of the
Asset Management Target Architecture Package. At minimum it contains:

- conceptual information subjects, definitions, relationships, and identifiers;
- authoritative facts, sources, contributors, consumers, and technical owners;
- reference-data, history, lineage, reconciliation, and quality design;
- current and target information flows and exchange contracts;
- spatial, document, media, telemetry, analytics, and records relationships;
- access, sensitivity, retention, disclosure, and AI-use constraints;
- data-service ownership, monitoring, support, and change expectations;
- decisions, transition issues, assumptions, and traceability to earlier artifacts.

The artifact is ready to carry forward when application and integration options can be evaluated
against a coherent information design rather than a collection of point-to-point data needs.

## Worked example

| Information | Business authority | Technical source direction | Important exchange considerations |
|---|---|---|---|
| Asset identity and operational status | Asset steward | EAM or asset registry maintains the durable identity and operational state | Other systems retain the shared identifier and receive governed changes |
| Approved location and geometry | Geospatial steward | GIS maintains authoritative geometry and spatial relationships | EAM, field, planning, and public services consume fit-for-purpose representations |
| Financial value and accounting attributes | Finance | ERP maintains authoritative financial values and accounting treatment | Asset and project identities support reconciliation without copying ownership |
| Inspection observation and evidence | Asset program or engineering | Inspection service captures structured observations and evidence linked to the asset | Method, scale, date, author, confidence, amendments, and attachments travel together |
| Retained lifecycle documents | Records owner | Records repository preserves authoritative retained content and disposition rules | Operational systems maintain links, context, classification, and access rights |

## What this informs next

This architecture informs:

- [Applications, Integration, Platforms & AI]({{ '/capabilities/asset-management/architecture/applications-integration-platforms-ai/' | relative_url }}), where solution responsibilities and exchanges are evaluated;
- migration, data-quality, master and reference-data, analytics, records, and integration initiatives; and
- the final target architecture and transition roadmap.
