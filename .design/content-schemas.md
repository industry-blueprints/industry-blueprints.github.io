# Content schemas

A literal transcription of `site-redesign.docx` §5–§7, §10, and Appendices A–B into this site's front-matter fields and section headers. Nothing here that isn't in the source document — if a field isn't called for by the doc, it doesn't belong on a page.

**This file records the obligation; [`authoring-guide.md`](authoring-guide.md) records the practice.** Capability pages as built publish five sections rather than the fourteen in §6.3, and add two the doc does not name (Architecture, and a vendor mapping). The authoring guide maps every field below to where it currently lives or notes it as deferred, and pins the conventions the doc leaves open — voice, the shared technology vocabulary that lets use-case patterns roll up into a capability architecture, and the page-level verification steps.

**Site-specific deviation — Use Case publishing pattern.** Use Case remains one of the six components in the model (still tracked via relationships, still carries the same required fields per §6.4). For the moment, though, it is not published as its own collection with a standalone URL. It renders as an in-page subsection on its parent Capability's page — one subsection per use case — because most capabilities carry many fine-grained use cases (the Investigations source alone suggests roughly seven per capability across sixteen capabilities) that don't individually justify full-page depth yet. Revisit this if a use case needs standalone weight: multiple implementation-pattern variants, a dedicated stakeholder review, or significant independent AI-risk narrative.

## Common metadata (all six components) — docx §6.1

| Front-matter field | Doc field | Requirement |
| --- | --- | --- |
| `title` | Canonical Name | Required |
| `aliases` | Aliases / Synonyms | Recommended |
| `summary` | Definition | Required |
| `status` | Status | Required — Draft, Reviewed, Approved, Deprecated |
| `scope` | Scope | Recommended — Federal, state, local, tribal, territorial, international, or all |
| `agency_types` | Applicable Agency Types | Recommended |
| `mission_domains` | Mission Domains | Recommended |
| `related` | Related Items | Required — graph relationships to the other five components and cross-cutting layers |
| `framework_mappings` | External Framework Mappings | Recommended |
| `sources` | Sources / Evidence | Required |
| `owner` | Owner / Reviewer | Required |
| `updated` | Last Reviewed | Required |
| `tags` | Tags | Recommended |

## Workload — docx §6.2 + §12 page modules

Page modules: Overview; outcomes; where it occurs; stakeholders; challenges; capabilities; use cases; reference architecture; AI opportunities; discovery guide; maturity; data; measures; standards; related workloads; sources.

| Section on page | Doc field | Requirement |
| --- | --- | --- |
| Overview | Purpose + Plain-language definition | Required |
| Outcomes | Business objectives / outcomes | Required |
| Personas | Typical owners / stakeholders | Recommended |
| — (front matter `agency_types`/`mission_domains` + Overview prose) | Where it occurs | Recommended |
| Common Workload Variants | Common workload variants | Recommended |
| Pain Points | Common challenges / pain points | Required |
| Capabilities | Primary capabilities | Required |
| Representative Use Cases | Representative use cases | Required — workload-level teasers only; full use-case detail lives on the owning capability's page |
| — (optional, not yet used) | Typical lifecycle / process | Recommended |
| Data | Key data domains | Recommended |
| Measures | KPIs / measures | Recommended |
| — (folded into Security and Risk where material) | Policy / regulatory considerations | Recommended |
| Discovery Questions | Discovery questions | Required |
| Maturity | Maturity considerations | Recommended |
| Reference Architecture | Reference architecture | Required |
| — (optional, not yet used) | Related workloads | Recommended |
| Standards Mappings | Standards mappings | Recommended |

## Capability — docx §6.3 + §12 page modules

Page modules: Capability statement; outcomes; workloads; use cases; maturity/assessment; data; rules; solution patterns; AI opportunities; related capabilities; standards; sources.

| Section on page | Doc field | Requirement |
| --- | --- | --- |
| Capability Statement | Capability statement ("Ability to…") | Required |
| Definition and Scope | Definition / scope | Required |
| Business Value and Outcomes | Business value / outcomes enabled | Required |
| Workloads Using This Capability | Workloads using the capability | Required — many-to-many |
| — (optional, not yet used) | Sub-capabilities | Recommended — only where a meaningful independent ability exists |
| Typical Actors | Typical actors | Recommended |
| Required Information and Data | Required information / data | Recommended |
| Business Rules and Constraints | Business rules / constraints | Recommended |
| Common Gaps and Pain Points | Common gaps / pain points | Required |
| Assessment and Maturity Questions | Assessment / maturity questions | Required |
| Measures | Measures | Recommended |
| Use Cases | Representative use cases | Required — one subsection per use case: Opportunity, Trigger, Desired outcome, Value, Requirements, AI approach (where applicable), Readiness, Implementation direction. See the Use Case publishing-pattern note above. |
| Solution Patterns | Solution patterns | Required |
| Related Capabilities | Related capabilities | Recommended |
| Standards Mappings | Standards mappings | Recommended — usually the strongest FIBF match (Business Capability) |

No activity-level breakdown, no "guided discovery," no per-step technology-direction bullets — the doc does not model an Activity level. Process detail, where genuinely needed, is optional metadata per docx §3.1, not a required page module.

**Reuse discipline (docx §4.1):** "A Capability should be reusable across workloads when the business ability is substantively the same." When drafting a new workload's capability list, check whether a capability already exists in another workload under a different name before writing a new one — Investigations' Intake & Triage, Case Management, Entity Management, Records Collection, Interview Management, Evidence Management, Financial Analysis, Field Operations, Reporting, and Referral Management are all explicit candidates for reuse by future workloads (benefits, grants, licensing, inspections, and similar). The workload becomes a composition of shared capabilities, not a source of one-off duplicates.

## Use Case — docx §6.4 + §12 page modules

Page modules: Problem; scenario; actors; desired outcome; value; capabilities; data; constraints; readiness; AI; implementation patterns; success measures; related use cases; sources.

| Section on page | Doc field | Requirement |
| --- | --- | --- |
| Opportunity | Problem / opportunity statement, Scenario, Primary actors, Trigger, Desired outcome | Problem/Scenario/Desired outcome Required; Actors/Trigger Recommended |
| Current State and Value | Current-state pain point, Business value | Required |
| Requirements | Capabilities required, Applicable workloads, Inputs / required data, Business rules / constraints, Preconditions / dependencies | Capabilities/Workloads/Inputs Required; Rules/Preconditions Recommended |
| Outputs | Outputs / decisions / actions | Required |
| AI and Technology Approach | AI opportunity | Recommended |
| Readiness | Value / feasibility / readiness, Discovery / qualification questions | Readiness Recommended, Questions Required |
| Success Measures | Success measures | Recommended |
| Implementation Direction | Implementation patterns | Required |
| — (optional, not yet used) | Related use cases | Recommended |

## Reference Architecture — docx §6.5 + §12 page modules

Page modules: Architecture objective; scope; logical diagram; systems/domains; capability traceability; data; integrations; identity/security; AI services; contained solution patterns; technology categories; decisions; standards.

| Section on page | Doc field | Requirement |
| --- | --- | --- |
| Architecture Objective | Architecture objective, Workloads supported, Scope / boundaries, Architecture principles | Objective/Workloads/Scope Required; Principles Recommended |
| Logical Systems and Domains | Major logical systems / domains, Major data domains, Systems of record | Systems/Data Required; Systems of record Recommended |
| Capability Coverage | Capabilities supported | Required |
| Integration and Identity | Integration domains / flows, Identity and access | Integration Required; Identity Recommended |
| Security and Compliance | Security / compliance | Required |
| Data, Analytics, and AI Services | Data / analytics, AI services | Recommended |
| Experience and Channels | Channels / UX, Content / document management | Recommended |
| Infrastructure and Hosting | Infrastructure / hosting | Recommended |
| Architecture Diagram | Architecture diagram | Required |
| Solution Patterns Contained | Solution patterns contained | Required |
| Decisions and Tradeoffs | Decisions / tradeoffs | Recommended |
| Standards and Technology Categories | Applicable standards, Technology categories | Recommended |

## Solution Pattern — docx §6.6 + §12 page modules

Page modules: Intent; applicability; logical diagram; components; responsibilities; data/integration/security; AI; non-functional requirements; tradeoffs; implementation variants; technology categories.

| Section on page | Doc field | Requirement |
| --- | --- | --- |
| Overview | Pattern intent | Required |
| Capabilities Enabled | Capabilities enabled, Workloads where applicable | Capabilities Required; Workloads Recommended |
| Where It Fits | When to use / not use | Required |
| Experience Model | Workflow / orchestration | Recommended |
| Functional Anatomy | Logical components, Component responsibilities, Required technology services | Required |
| Decision Boundaries | (governance framing for the pattern's outputs vs. human decisions) | — |
| Information and Integration | Required data, Integration pattern | Data Recommended; Integration Required |
| Optional Intelligence | Analytics / AI requirements | Recommended |
| Security and Risk | Security / identity pattern | Recommended |
| Evaluation | Non-functional requirements | Recommended |
| Reuse and Variants | Implementation patterns | Required |
| Architecture Considerations | Key design decisions, Alternatives / tradeoffs, Dependencies / prerequisites | Recommended |
| Adoption Path | Technology categories, Example products | Categories Required; Products Optional, never in the canonical definition |

## Implementation Pattern — docx §6.7 + §12 page modules

Page modules: Use cases; sequence; components; data flow; decision logic; human-in-the-loop; controls; exceptions; audit; testing; product realization options; limitations.

| Section on page | Doc field | Requirement |
| --- | --- | --- |
| Use Cases Addressed | Use cases addressed, Solution pattern used, Desired outcome | Required |
| Trigger and Sequence | Trigger / initiating event, End-to-end sequence | Required |
| Participating Components | Participating components | Required |
| Data and Decision Logic | Data inputs, Data transformations / processing, Decision logic / business rules | Inputs/Logic Required; Transformations Recommended |
| Integration and Identity | API / event / integration requirements, Identity / authorization | Recommended |
| Human-in-the-Loop and Exceptions | Human-in-the-loop points, Exception handling | Human-in-the-loop Required when relevant; Exceptions Recommended |
| Security, Logging, and Performance | Security / privacy controls, Logging / auditability, Performance / scale | Security/Logging Required; Performance Recommended |
| Technology and Variants | Implementation variants, Technology requirements, Example vendor realizations | Requirements Required; Variants/Vendors Recommended/Optional |
| Evaluation and Limitations | Testing / acceptance criteria, Success measures, Known limitations / risks | Limitations Required; Testing/Measures Recommended |

## Cross-cutting knowledge layers — docx §5

Not additional hierarchy levels — first-class objects or metadata dimensions that attach to the six components.

| Layer | Purpose | Typical objects / fields |
| --- | --- | --- |
| Context | Places the item in the public-sector landscape. | Mission domain, jurisdiction, level of government, agency type, organization, stakeholder role |
| Value | Explains why the work matters and how success is judged. | Outcomes, KPIs, service measures, business value indicators |
| Practitioner | Supports customer discovery and assessment. | Discovery guides, assessment questions, maturity models, workshop prompts, recommendations |
| Information | Defines the data needed to perform or automate work. | Data entities, fields, events, documents, system-of-record, data quality/readiness |
| Governance | Captures constraints and controls. | Policy, law, regulation, security, privacy, records, accessibility, AI governance |
| AI Opportunity | Identifies intelligent augmentation opportunities. | Summarize, extract, classify, predict, detect, recommend, optimize, agentic automation |
| Market / Technology | Connects patterns to real implementation options. | Technology category, platform, product, cloud service, integration service |
| Evidence / Standards | Provides credibility and traceability. | FIBF mapping, NIST alignment, authoritative sources, mapping type, confidence, review date |

## AI Opportunity Layer — docx §7

### AI pattern taxonomy (§7.1)

Summarize, Extract, Classify, Search & Answer, Generate, Recommend, Predict, Detect, Match / Resolve, Optimize, Vision / Perception, Automate / Agentic.

### AI role taxonomy (§7.2)

| Role | Mental model |
| --- | --- |
| Assistant | Helps a person perform work faster. |
| Analyst | Finds patterns, predictions, or insights. |
| Advisor | Recommends an action while a human decides. |
| Automator | Performs bounded repeatable work automatically. |
| Agent | Coordinates multiple steps and tools toward a goal. |

### AI use-case qualification dimensions (§7.3)

Business Value, Data Readiness, Technical Feasibility, Process Readiness, Human Oversight, Decision Impact, Explainability, Privacy / Security, Automation Potential, Time to Value, Monitoring / Evaluation.

For federal-facing content, crosswalk the AI governance layer to NIST AI RMF (durable) and current OMB memoranda (time-sensitive) rather than hard-coding one administration's rule set (§7, citing [3][4][5] in Appendix C).

## FIBF alignment crosswalk — docx §10

| Site concept | FIBF crosswalk | Mapping guidance |
| --- | --- | --- |
| Workload | Closest to Functional Area and/or Function | Do not claim exact equivalence by default; record mapping type and rationale. |
| Capability | Business Capability | Usually the strongest semantic match when definitions align. |
| Use Case | Business Use Case | Strong match when written as a concrete business scenario/story. |
| Reference Architecture | No direct FIBF component | Use FIBF business requirements/use cases as inputs to evaluation. |
| Solution Pattern | No direct FIBF component | Site extension linking business requirements to technical approaches. |
| Implementation Pattern | No direct FIBF component | Site extension for concrete logical/technical design. |
| Process / Activity (optional metadata) | Activity | Useful when a practitioner needs process detail. |
| Data Element (cross-cutting) | Standard Data Element | Crosswalk where FIBF standards exist. |
| Measure (cross-cutting) | Service Measure | Crosswalk where FIBF service measures exist. |

External mapping record fields (§10.1): Framework, Framework Object Type, External Identifier, External Name, Mapping Type, Mapping Confidence, Rationale, Source, Last Verified, Reviewer.

## Relationship vocabulary — Appendix A

| Predicate | Domain → Range |
| --- | --- |
| HAS_CAPABILITY | Workload → Capability |
| HAS_USE_CASE | Workload/Capability → Use Case |
| REQUIRES_CAPABILITY | Use Case → Capability |
| SUPPORTS | Reference Architecture → Workload |
| ENABLES | Solution Pattern → Capability |
| ADDRESSES | Implementation Pattern → Use Case |
| COMPOSES_INTO | Implementation Pattern → Solution Pattern; Solution Pattern → Reference Architecture |
| REALIZES | Product/Service → Pattern/Component |
| USES_DATA | Capability/Use Case/Pattern → Data Entity |
| MEASURED_BY | Workload/Capability/Use Case → Measure |
| ASSESSED_BY | Workload/Capability/Use Case → Assessment |
| AUGMENTED_BY | Workload/Capability/Use Case → AI Opportunity |
| GOVERNED_BY | Any relevant object → Policy/Standard |
| MAPPED_TO | Any relevant object → External Framework Object |
| SUPPORTED_BY_SOURCE | Concept/Mapping/Claim → Source |

## Controlled vocabularies — Appendix B

| Vocabulary | Suggested values |
| --- | --- |
| Mapping Type | Exact; Narrower; Broader; Related; No Match |
| Mapping Confidence | High; Medium; Low |
| Content Status | Draft; Reviewed; Approved; Deprecated |
| AI Role | Assistant; Analyst; Advisor; Automator; Agent |
| AI Pattern | Summarize; Extract; Classify; Search & Answer; Generate; Recommend; Predict; Detect; Match/Resolve; Optimize; Vision/Perception; Automate/Agentic |
| Automation Level | Assistive; Human-led with AI; Human approval; Exception-based human review; Bounded autonomous |
| Maturity | Not performed; Manual/ad hoc; Standardized; Integrated; Automated/optimized |
| Product Support Type | Native; Configurable; Partner/extension; Custom; Not verified |
| Source Type | Statute/regulation; Government standard; Government guidance; Agency documentation; Standards body; Vendor documentation; Research/industry source |
