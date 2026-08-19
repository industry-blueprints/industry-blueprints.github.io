---
layout: capability-topic
title: Information & Data Needs
description: Define the information Asset Management work relies on, who stewards it, and what makes it dependable enough for service and investment decisions.
capability_id: asset-management
framework_track: business
framework_stage: 4
navigation_order: 40
navigation_title: 4. Information & data needs
section: capabilities
permalink: /capabilities/asset-management/understand/information-data-needs/
---

## What this covers

Asset Management depends on a shared understanding of assets, their service purpose, location,
condition, work, cost, risk, and future needs. This stage defines that information from the
perspective of the work before assigning it to applications or designing integrations.

Information describes meaning and responsibility. Data is a recorded representation of that
information. An application stores or uses some of it. Keeping these ideas separate helps an agency
describe what it needs even when systems, formats, and suppliers change.

## How it applies to Asset Management

Representative information subjects include:

| Subject | What it helps explain |
|---|---|
| **Asset identity and hierarchy** | What the asset is, how it is classified, and how components, systems, sites, and portfolios relate |
| **Location and spatial context** | Where the asset is and what places, networks, boundaries, or nearby assets matter |
| **Service relationship** | Which public service, program, capacity, or outcome the asset supports |
| **Ownership and stewardship** | Who owns, operates, maintains, funds, insures, or remains accountable for the asset |
| **Condition and inspection** | What is known about current condition, performance, defects, evidence, method, and observation date |
| **Work and maintenance** | What work was requested, planned, completed, deferred, costed, and learned from |
| **Risk and criticality** | How service consequence, safety, likelihood, resilience, dependency, and priority are understood |
| **Cost and value** | Acquisition, operating, maintenance, renewal, valuation, depreciation, and funding perspectives |
| **Project and investment** | Planned and completed changes, options, estimates, approvals, benefits, dependencies, and delivery status |
| **Documents and records** | Drawings, manuals, warranties, photographs, certificates, decisions, correspondence, and retained evidence |

Different teams may be accountable for different facts about the same asset. Finance may steward
financial values, GIS may steward location geometry, maintenance may steward work history, and an
asset owner may steward lifecycle status. A business information model makes these responsibilities
visible without forcing every fact into one source.

### Information follows the work

Useful information has a lifecycle of its own. It is created, received, validated, used, changed,
shared, retained, and eventually disposed of. Its meaning and history need to remain understandable
as an asset passes between projects, operations, maintenance, renewal, and disposal.

Important qualities commonly include:

- a clear definition and business purpose;
- accountable ownership and stewardship;
- an authoritative source and permitted contributors;
- appropriate completeness, accuracy, currency, and level of detail;
- visible origin, method, date, confidence, and change history;
- appropriate access, sensitivity, retention, and disclosure treatment;
- a stable relationship to the asset, location, service, work, and decision it describes.

## What this builds on

This stage uses the first three business artifacts:

- [Capability Purpose and Outcome Map]({{ '/capabilities/asset-management/understand/public-purpose-outcomes/' | relative_url }});
- [Service, Lifecycle and Performance Model]({{ '/capabilities/asset-management/lifecycle/' | relative_url }}); and
- [Process, Decision, Responsibility and Control Model]({{ '/capabilities/asset-management/understand/execution-accountability-controls/' | relative_url }}).

Existing data dictionaries, forms, reports, asset registers, GIS layers, financial records,
inspection standards, work histories, records schedules, integration mappings, and user research
add evidence.

## Assessment

Useful questions include:

1. Are important information subjects and terms defined consistently enough for cross-team decisions?
2. Can people identify who is accountable for meaning, quality, access, and lifecycle of each important information set?
3. Is an authoritative source understood, including where several legitimate perspectives exist?
4. Are information requirements connected to lifecycle stages, processes, decisions, controls, and measures?
5. Are origin, observation date, method, confidence, and change history available where they affect interpretation?
6. Can information move across project delivery, operations, maintenance, finance, and planning without losing identity or context?
7. Are quality expectations proportionate to service importance, decision consequence, and cost of collection?
8. Are sensitivity, accessibility, records, retention, and disclosure needs understood?

Useful evidence may include glossaries, data models, stewardship assignments, quality rules and
reports, reconciliation results, source-system inventories, information exchanges, forms,
retention schedules, access classifications, lineage records, and decision examples.

## Maturity progression

| Level | What it looks like | Representative evidence |
|---|---|---|
| **1 — Recognized** | Teams understand the information needed for their own work and maintain it through local practice. | Local registers, spreadsheets, reports, team definitions |
| **2 — Described** | Important subjects, definitions, sources, owners, and quality expectations are documented for major portfolios. | Glossary, ownership list, data dictionary, quality rules |
| **3 — Connected** | Information is connected across lifecycle stages, teams, decisions, and legitimate financial, spatial, and operational perspectives. | Shared identities, reconciliations, exchange definitions, lineage |
| **4 — Used in management** | Quality, currency, coverage, and stewardship evidence guide operations, investment, and information improvement. | Quality dashboards, issue ownership, decision evidence |
| **5 — Kept current** | Information models and stewardship evolve as assets, services, decisions, obligations, and evidence needs change. | Governance cadence, revised definitions, retired data, learning history |

The appropriate target differs by information subject and decision. Critical asset location or
isolation information may need stronger stewardship than low-value descriptive detail.

## Workshop

### Business information and stewardship workshop

| Item | Guidance |
|---|---|
| **Participants** | Asset and service owners, inspectors, maintenance, engineering, capital delivery, finance, GIS, records, performance, data stewards, analysts, and architecture representatives |
| **Preparation** | Bring earlier business artifacts, representative records and reports, glossaries, data models, quality findings, forms, and examples of cross-team decisions |
| **Typical length** | Two to three hours for a selected portfolio, lifecycle segment, or decision set |
| **Result** | A reviewed information subject, relationship, stewardship, quality, sensitivity, and lifecycle model |

Suggested activities:

1. Select important processes and decisions from the prior artifact.
2. Identify the information each one consumes, creates, updates, or retains.
3. Group the information into understandable business subjects and define important terms.
4. Map relationships among assets, services, locations, organizations, work, condition, cost, risk, and investment.
5. Assign accountability for meaning, quality, access, and lifecycle without selecting technology.
6. Define proportionate quality, currency, history, sensitivity, and retention expectations.
7. Record disagreements, duplicate concepts, missing evidence, and architecture questions.

## What you will produce

The **Business Information and Stewardship Model** is the fourth component of the Asset Management
Capability Blueprint. At minimum it contains:

- important information subjects, definitions, and relationships;
- information used and produced by lifecycle stages, processes, decisions, controls, and measures;
- accountable owners, stewards, contributors, and consumers;
- business rules and quality, currency, coverage, history, and confidence expectations;
- sensitivity, access, records, retention, and disclosure considerations;
- authoritative-source expectations expressed in business terms;
- issues, assumptions, unresolved definitions, and evidence needs;
- traceability to the earlier business artifacts.

The artifact is ready to carry forward when business and technical teams share a clear account of
the information the capability needs and the responsibilities that make it dependable.

## Worked example

An inspection result is more useful when it can be understood beyond the score alone:

| Element | Example |
|---|---|
| **Subject relationships** | Inspection applies to a specific asset or component at a location and contributes to its condition history |
| **Meaning** | Rating uses a named method and scale appropriate to the asset class |
| **Context** | Observation date, inspector, method, evidence, access limitations, and confidence are retained |
| **Stewardship** | Engineering or the asset program owns the method; qualified inspectors contribute observations; the asset steward resolves identity issues |
| **Use** | Maintenance planning, risk review, service assessment, renewal analysis, and public or regulatory reporting where applicable |
| **Quality expectation** | Critical assets have current assessments within an agreed cycle and unresolved exceptions are visible |

## What this informs next

This model informs:

- [Improvement Opportunities & Priorities]({{ '/capabilities/asset-management/understand/improvement-opportunities-priorities/' | relative_url }}), which identifies valuable improvements to information, decisions, and work; and
- [Information & Data Architecture]({{ '/capabilities/asset-management/architecture/information-data-architecture/' | relative_url }}), which translates business meaning and stewardship into authoritative sources, structures, flows, protection, and technical governance.
