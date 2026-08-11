# Industry Blueprints

## Standard Artifact Templates — v0.1

## Purpose

Industry Blueprints uses a consistent set of artifact types so that knowledge can be created incrementally, composed across domains, and implemented without duplicating concepts.

The primary artifact hierarchy is:

1. **Blueprint System**
2. **Foundation**
3. **Capability**
4. **Solution Pattern**
5. **Workload**
6. **Reference Scenario**
7. **Platform Realization**

Supporting artifacts such as architecture decisions, AI patterns, diagrams, schemas, and assessments may attach to any of these primary artifacts.

The guiding rule is:

> **Document a concept at the highest reusable level where it remains true.**

More-specific artifacts should reference, specialize, or compose more-general artifacts rather than duplicate them.

---

# Common Metadata

Every primary artifact should begin with standardized metadata.

A future implementation could store this as YAML front matter, JSON, database metadata, or another structured representation.

Example:

```yaml
id: case-management
name: Case Management
type: capability
version: 0.1
status: draft

summary: >
  Manage a business matter that requires coordinated work,
  information, activities, decisions, and resolution over time.

industries:
  - cross-industry

domains:
  - service-management
  - operations

builds_on:
  - person
  - organization
  - task
  - communication
  - document

used_by:
  - constituent-management
  - regulatory-operations

realized_by:
  - open-reference-application

tags:
  - case
  - workflow
  - service

maintainers:
  - Jeremy

last_reviewed: 2026-08-10
```

## Common Metadata Fields

### Required

* **ID**
* **Name**
* **Artifact Type**
* **Version**
* **Status**
* **Summary**

### Recommended

* **Builds On**
* **Adds**
* **Used By**
* **Realized By**
* **Related Artifacts**
* **Industries**
* **Domains**
* **Tags**
* **Maintainer**
* **Last Reviewed**

### Status Values

A simple lifecycle should be enough initially:

* Idea
* Draft
* Review
* Published
* Stable
* Deprecated

Avoid complicated maturity models until there is a real need.

---

# Common Page Structure

Every primary artifact should have a recognizable opening.

## 1. Summary

A short explanation understandable without reading the rest of the page.

Answer:

> What is this and why does it exist?

## 2. At a Glance

Show relationships:

**Type:** Capability
**Builds On:** Person, Organization, Task
**Adds:** Case, Case Party, Outcome
**Used By:** Constituent Management, Investigations
**Realized By:** Open Reference Application

This should eventually be generated automatically from metadata.

## 3. Scope

Clearly state:

### In Scope

What this artifact covers.

### Out of Scope

What belongs somewhere else.

This section will prevent conceptual overlap as the library grows.

## 4. Related Artifacts

Link to adjacent concepts rather than repeating their content.

---

# Template 0 — Blueprint System Artifact

Blueprint System artifacts define how Industry Blueprints itself works.

Examples:

* Design Principles
* Taxonomy
* Modeling Standards
* Architecture Principles
* Security Principles
* AI Principles
* Naming Conventions
* Contribution Guide

These are relatively free-form, but should use the following structure where practical.

## Template

### Summary

What principle, standard, or convention is being defined?

### Problem

Why is the standard necessary?

What inconsistency or architectural problem does it prevent?

### Principle / Standard

State the rule clearly.

Example:

> A solution pattern composes capabilities. It should not redefine concepts already owned by those capabilities.

### Rationale

Why was this approach chosen?

### Guidance

How should contributors apply the principle?

### Examples

Provide correct examples.

### Anti-Patterns

Show common incorrect approaches.

### Exceptions

When is deviation reasonable?

### Related Standards

Link to related Blueprint System documents.

### Change History

Document meaningful changes to the standard.

---

# Template 1 — Foundation

A Foundation defines a durable, reusable business concept.

Examples:

* Person
* Organization
* Location
* Address
* Contact Point
* Document
* Communication
* Task
* Classification
* Audit Event

A Foundation answers:

> **What is this thing, independent of a specific solution?**

---

## Foundation Template

# [Foundation Name]

### Summary

Provide a concise canonical definition.

Example:

> A Person represents a natural human being who may participate in one or more business contexts or roles.

### Why It Matters

Explain why the concept is reusable across business systems.

### Scope

#### In Scope

Define what the Foundation represents.

#### Out of Scope

Explicitly identify nearby concepts it does not own.

Example:

Person does not inherently mean:

* User
* Employee
* Constituent
* Customer
* Case participant

Those are roles or relationships applied in other contexts.

---

## Business Semantics

### Definition

Provide the formal business definition.

### Terminology

List important terminology and synonyms.

### Roles

Describe roles this concept may play elsewhere.

Example:

A Person may act as:

* Constituent
* Applicant
* Employee
* Investigator
* Case worker
* Customer
* Beneficiary

The Foundation does not own the detailed semantics of those roles.

### Business Rules

List broadly reusable rules.

---

## Information Model

### Conceptual Model

Show the concept and its major relationships.

### Core Attributes

For each attribute document:

* Name
* Meaning
* Required/optional
* Multiplicity where relevant
* Sensitivity where relevant

Avoid prematurely defining database-specific types.

### Relationships

Describe relationships to other Foundations.

### Identifiers

Explain natural identifiers, surrogate identifiers, external identifiers, and matching considerations.

### Classification / Reference Data

Identify relevant controlled vocabularies.

### Lifecycle

Include only if the concept has a meaningful generic lifecycle.

---

## Architecture Considerations

Cover reusable concerns such as:

* Data ownership
* Master-data considerations
* Deduplication
* Matching
* APIs
* Events
* Search
* Extensibility
* Synchronization
* Integration boundaries

---

## Trust & Governance

Document:

* Data classification
* Personally identifiable information
* Access considerations
* Retention
* Audit requirements
* Ownership/stewardship
* Consent where relevant

---

## AI Considerations

Only include when AI meaningfully affects the Foundation.

Examples:

* Entity resolution
* Classification
* Extraction
* Duplicate detection

Do not manufacture AI uses just to fill this section.

---

## Executable Assets

Link to:

* Schema
* Domain model
* API representation
* Validation rules
* Sample data
* Tests
* Reference implementation

---

## Examples

Provide several concrete examples showing how the Foundation appears in different domains.

---

## Builds On

List lower-level dependencies, if any.

## Used By

List capabilities, patterns, and workloads that consume this Foundation.

## Related Concepts

Identify similar but distinct concepts.

---

# Template 2 — Capability

A Capability describes something an organization needs to be able to do.

Examples:

* Case Management
* Request Management
* Investigation Management
* Inspection Management
* Correspondence Management
* Application Management
* Grant Management

A Capability answers:

> **What business function needs to exist, regardless of the industry or implementation platform?**

---

## Capability Template

# [Capability Name]

### Summary

What capability does this provide?

### Business Outcome

What becomes possible when the organization has this capability?

### Scope

#### In Scope

#### Out of Scope

### Common Uses

Brief examples of where the capability appears across industries.

---

## Business Model

### Definition

Canonical capability definition.

### Business Objectives

What outcomes does it support?

### Personas / Actors

Identify generic roles.

Example for Case Management:

* Case worker
* Supervisor
* Participant
* Reviewer

Do not specialize into workload-specific actors unnecessarily.

### Terminology

Define important terms.

### Common Variations

Describe major ways organizations implement the capability differently.

### Business Rules

List broadly reusable rules.

### Common Failure Modes

This should be a signature Industry Blueprints section.

Examples:

* Overly complex status models
* Mixing business process state with technical processing state
* Treating every interaction as a case
* Excessive customization

---

## Experience & Process

### Lifecycle

Provide the generic lifecycle.

### Core Processes

Document the major processes.

### Activities

What types of work occur?

### Decisions

What major decisions are made?

### Exceptions and Escalations

Describe important generic variations.

### User Experience Considerations

What should good user experience enable?

---

## Information Model

### Core Concepts

Identify concepts owned by this Capability.

### Foundation Dependencies

Identify concepts it consumes.

Example:

Case Management uses:

* Person
* Organization
* Task
* Document
* Communication

### Conceptual Domain Model

Show relationships.

### State Model

If applicable.

### Business Events

Examples:

* CaseOpened
* CaseAssigned
* CaseEscalated
* CaseResolved
* CaseClosed

---

## Architecture

### Capability Context

What does this capability interact with?

### Module Boundary

What belongs inside and outside the module?

### APIs

Describe conceptual API responsibilities.

### Events

Describe important published/consumed events.

### Integration Patterns

Identify common integrations.

### Extensibility

Where should customers extend the capability?

### Nonfunctional Considerations

Examples:

* Scalability
* Search
* concurrency
* availability
* auditability

---

## Trust & Governance

Document:

* Access model
* Ownership
* Role considerations
* Segregation of duties
* Audit history
* Retention
* Sensitive-data concerns

---

## AI & Automation

For each credible opportunity use the standard **AI Opportunity Card**:

### [AI Opportunity Name]

**Purpose:**
What is being assisted or automated?

**Inputs:**
What information is available?

**Allowed Data:**
What data may be used?

**Outputs:**
What does AI produce?

**Allowed Actions:**
Can it only recommend, or can it act?

**Human Control:**
What requires review or approval?

**Risks:**
What could go wrong?

**Evaluation:**
How should quality be measured?

**Audit:**
What should be recorded?

---

## Executable Assets

Link to:

* Capability module
* API
* data model
* UI components
* sample data
* tests
* reference implementation
* demo

---

## Composition

### Builds On

Foundations and other capabilities.

### Adds

Concepts uniquely introduced here.

### Used By

Solution Patterns and Workloads.

### Related Capabilities

Similar, adjacent, or commonly combined capabilities.

---

# Template 3 — Solution Pattern

A Solution Pattern composes multiple capabilities to solve a recognizable cross-industry business problem.

Examples:

* Constituent Management
* Regulatory Operations
* Customer Service Management
* Compliance Management
* Field Operations
* Employee Services

A Solution Pattern answers:

> **How do reusable capabilities work together to solve this class of business problem?**

---

## Solution Pattern Template

# [Solution Pattern Name]

### Summary

Describe the recognizable business problem.

### Problem Statement

What organizational need creates this pattern?

### Outcomes

What outcomes should a good implementation achieve?

### Scope

#### In Scope

#### Out of Scope

### When to Use This Pattern

Describe situations where it fits.

### When Not to Use This Pattern

Identify neighboring patterns or simpler solutions.

---

## Capability Composition

This is a **required artifact**.

### Composition Map

Show all participating capabilities.

Example:

```text
Constituent Management
│
├── Party Management
├── Request Management
├── Case Management
├── Communication Management
├── Correspondence Management
└── Service Delivery
```

### Capability Responsibilities

For each capability, explain what responsibility it contributes.

### Adds

Identify concepts unique to this pattern.

Do not duplicate concepts owned by underlying capabilities.

---

## Business Model

### Personas / Actors

Describe solution-level personas.

### Business Context

Explain how the capabilities work together.

### Terminology

Only define terminology introduced by this pattern.

### Business Variations

Describe major pattern variations.

---

## Experience & Process

### End-to-End Process

Show processes crossing multiple capabilities.

### Interaction Model

How do actors interact with the solution?

### Handoffs

Where does responsibility move between functions?

### Exceptions and Escalations

### Experience Principles

Describe the desired end-to-end experience.

---

## Integrated Information Model

### Composition Model

Show how information from different capabilities connects.

### Added Concepts

Define only concepts owned by the Solution Pattern.

### Cross-Capability Relationships

Example:

A Service Request may result in zero, one, or multiple Cases.

---

## Solution Architecture

### Context Diagram

Show systems/actors around the pattern.

### Capability Interaction Diagram

Show module interactions.

### Orchestration

Describe where orchestration belongs.

### Events

Document meaningful cross-capability events.

### Integrations

Identify common external systems.

### Architectural Variations

Describe legitimate alternative approaches.

---

## Trust & Governance

Focus on cross-capability concerns:

* Shared access
* delegated ownership
* cross-module visibility
* privacy
* audit continuity
* retention alignment

---

## AI & Automation

Focus on AI that spans multiple capabilities.

Use AI Opportunity Cards.

Example:

### Constituent Service Assistant

May:

* identify constituent context
* classify requests
* retrieve prior interactions
* recommend next action
* locate existing cases
* draft responses

Document boundaries explicitly.

---

## Executable Composition

Link to:

* configured capability modules
* orchestration
* UI composition
* sample data
* demo
* scenario support

Avoid creating duplicated implementations of underlying capabilities.

---

## Composition Relationships

### Builds On

Capabilities consumed.

### Adds

Unique concepts.

### Specialized By / Used By

Relevant Workloads.

### Demonstrated By

Reference Scenarios.

### Realized By

Platform Realizations.

---

# Template 4 — Workload

A Workload specializes one or more Solution Patterns and Capabilities for a real industry, mission, organizational, or regulatory context.

Examples:

* State Constituent Services
* Legislative Casework
* Inspector General Investigations
* Permitting & Licensing
* Financial Services Complaints
* Fraud Investigations

A Workload answers:

> **How does this solution operate in a specific real-world environment?**

---

## Workload Template

# [Workload Name]

### Summary

Describe the workload in plain industry language.

### Industry / Mission Context

Identify:

* Industry
* Mission
* Organization types
* Typical operating environment

### Business Problem

What real-world need creates this workload?

### Outcomes

What mission or organizational outcomes matter?

### Scope

#### In Scope

#### Out of Scope

---

## Business Knowledge

This should be one of the deepest sections.

### Domain Overview

Explain the domain.

### Terminology

Define industry-specific terms.

### Organizational Context

Describe typical organizational structures and ownership.

### Personas / Roles

Define workload-specific actors.

### Policies / Regulatory Context

Identify relevant areas of law, regulation, policy, guidance, or organizational control.

Do not present general reference material as legal advice.

### Metrics / KPIs

What does success look like?

### Common Pain Points

What typically goes wrong?

### Operating Variations

Describe meaningful variations between organizations.

---

## Pattern & Capability Composition

### Uses

List underlying Solution Patterns and Capabilities.

### Adds

List concepts specific to this workload.

### Composition Diagram

Show how the workload is assembled.

---

## Specialized Processes

Do not reproduce generic processes.

Instead show:

### Base Process

Reference the generic process.

### Workload Delta

Explain what changes.

Example:

**Base:** Request Management Intake

**Adds:**

* Jurisdiction determination
* responsible-agency identification
* cross-agency referral
* constituent notification

### Workload Lifecycle

Where specialization substantially changes the lifecycle, show it.

---

## Workload Information Model

### Domain Extensions

Add industry-specific concepts.

Examples:

* District
* Jurisdiction
* Agency
* Program
* Permit
* Regulation
* Finding

### Specialized Relationships

Show how extensions connect to base concepts.

### Reference Data

Identify important industry classifications.

---

## Workload Architecture

### Context Diagram

Show relevant organizational and external systems.

### Integration Landscape

Typical integrations.

### Deployment / Operational Considerations

Examples:

* External portals
* legacy systems
* identity providers
* document repositories
* reporting
* geographic information
* payment systems

### Workload-Specific Nonfunctional Requirements

---

## Trust, Policy & Governance

Document workload-specific concerns such as:

* Privacy
* public records
* records retention
* accessibility
* delegated authority
* data classification
* consent
* auditability
* jurisdiction
* separation of duties

For each item distinguish between:

* Architectural consideration
* Policy decision
* Organization-specific requirement

---

## AI & Automation

Document workload-specific AI opportunities using AI Opportunity Cards.

Also explicitly include:

### Human Decision Points

Where human responsibility should remain clear.

### Sensitive Actions

Actions that require approval or elevated controls.

### Evaluation Concerns

What errors would matter in this workload?

---

## Implementation Guidance

Provide vendor-neutral guidance.

### Configuration

What elements commonly vary?

### Extension Points

What should be customized rather than changed in the base capability?

### Integration Points

### Data Migration Considerations

### Adoption / Change Considerations

---

## Demonstrations

### Reference Scenarios

Link to scenarios exercising the workload.

### Executable Demonstration

Link to a Platform Realization where available.

---

## Relationships

### Builds On

Patterns, Capabilities, Foundations.

### Adds

Workload-specific concepts.

### Related Workloads

### Demonstrated By

Reference Scenarios.

### Realized By

Platform Realizations.

---

# Template 5 — Reference Scenario

A Reference Scenario tells a concrete end-to-end story that exercises the blueprint.

A scenario answers:

> **What does all of this look like when a real person actually needs something to happen?**

Reference Scenarios should use fictional organizations, people, and data unless based on appropriately licensed/public examples.

---

## Reference Scenario Template

# [Scenario Name]

### Scenario Summary

One or two paragraphs telling the story.

Example:

> Maria contacts her state senator after her benefits application has remained unresolved for eight weeks. Legislative staff record her inquiry, verify jurisdiction, request consent, open a constituent-services case, refer the issue to the responsible agency, track the response, and notify Maria when the matter is resolved.

### Purpose

What architectural or business behavior does the scenario demonstrate?

---

## Participants

For each participant:

* Name
* Persona
* Organization
* Goal
* Relevant permissions

---

## Starting Conditions

What is true when the scenario begins?

Examples:

* Existing constituent
* Pending benefits application
* No existing case
* Agency integration available

---

## Journey

Create a readable step-by-step journey.

For each step document:

### Step [N] — [Name]

**Actor**

**Goal**

**Action**

**System Behavior**

**Business Result**

---

## Capability Trace

Map each step to the Blueprint capabilities used.

| Step                 | Capability                |
| -------------------- | ------------------------- |
| Identify constituent | Party Management          |
| Capture inquiry      | Request Management        |
| Open sustained work  | Case Management           |
| Contact agency       | Correspondence Management |

---

## Data Trace

Show records created, read, updated, or related.

Example:

```text
Person
Interaction
Request
Case
Referral
Task
Communication
Outcome
```

Include fictional identifiers when useful.

---

## Event Trace

List meaningful business/system events.

Example:

```text
RequestReceived
CaseOpened
ReferralCreated
AgencyResponseReceived
CaseResolved
```

---

## AI & Automation Trace

For each step identify:

* No AI
* AI assists
* AI recommends
* AI acts with approval
* Automated deterministic process

This could eventually become a visual timeline.

---

## Trust & Authorization Trace

Show important permission or policy checks.

Examples:

* consent verified
* case visibility restricted
* correspondence recorded
* disclosure rules applied

---

## Architecture Trace

Identify modules, services, APIs, and integrations touched by the scenario.

---

## Expected Outcome

What constitutes successful completion?

---

## Variations

Include several alternate paths:

* Existing case found
* Wrong jurisdiction
* Constituent refuses consent
* Agency does not respond
* Sensitive case
* Escalation required

---

## Executable Scenario

Provide:

* Seed-data identifier
* Startup command
* demo instructions
* automated test reference
* expected results

Ideally a user can eventually select:

> **Load Scenario**

and immediately explore the application.

---

# Template 6 — Platform Realization

A Platform Realization demonstrates how one or more Blueprint artifacts can be implemented using actual technology.

A Platform Realization answers:

> **How can these ideas become a working system?**

There are two subtypes:

### Reference Realization

A working implementation maintained as part of Industry Blueprints.

### Platform Mapping

Documentation mapping Blueprint concepts to an external product/platform.

---

# 6A — Reference Realization Template

# [Realization Name]

### Summary

What does this realization demonstrate?

### Purpose

Clarify that the implementation is a reference architecture unless explicitly intended otherwise.

### Blueprint Coverage

List:

* Foundations implemented
* Capabilities implemented
* Solution Patterns implemented
* Workloads demonstrated
* Reference Scenarios supported

---

## Architecture

### Architecture Overview

### Context Diagram

### Container / Service Diagram

### Module Diagram

### Data Architecture

### Integration Architecture

### Identity Architecture

### AI Architecture

### Deployment Architecture

Use recognized notation where practical, but prioritize readability over formalism.

---

## Technology Stack

Document:

* Front-end
* Back-end
* Database
* APIs
* identity
* containers
* messaging
* storage
* search
* AI
* testing
* deployment

For each major choice, explain why it was selected.

---

## Repository Structure

Document the code organization.

Example:

```text
/apps
/modules
    /foundation
    /case
    /request
/solutions
    /constituent-management
/scenarios
/infrastructure
/docs
```

---

## Domain Implementation

Map Blueprint concepts to code.

### Entities

### Value Objects

### Services

### APIs

### Events

### Persistence

---

## API Documentation

Provide:

* OpenAPI specification
* endpoint overview
* authentication
* examples
* error behavior

---

## Security

Document:

* Authentication
* Authorization
* roles
* record-level security
* secrets
* audit logging
* sensitive data handling

---

## AI Implementation

For each implemented AI capability document:

* model interface
* provider abstraction
* prompt/instruction design
* tool access
* data access
* authorization
* evaluation
* fallback behavior
* audit
* human approval

---

## Running Locally

Provide minimal setup.

Ideal objective:

```text
git clone ...
docker compose up
```

Followed by a usable application with seeded data.

---

## Sample Data

Explain:

* fictional organizations
* users/personas
* records
* scenarios

---

## Tests

Document:

* unit tests
* integration tests
* scenario tests
* security tests
* AI evaluations

---

## Observability

Where appropriate:

* logging
* tracing
* metrics
* audit events

---

## Deployment

Provide reference deployment approaches.

Avoid implying that a demonstration architecture is automatically production-ready.

---

## Known Limitations

This section should always exist.

Be explicit about:

* shortcuts
* omitted capabilities
* production concerns
* unsupported scale
* demo-only choices

Transparency increases credibility.

---

## Roadmap

What may be added later?

---

# 6B — Platform Mapping Template

# [Platform] Mapping for [Blueprint Artifact]

### Summary

Explain the purpose of the mapping.

### Applicable Platform

* Product
* Edition/service where relevant
* Version/date reviewed

Because vendor platforms change frequently, platform mappings should always include a **last validated date**.

---

## Concept Mapping

| Blueprint Concept | Platform Concept     | Notes                      |
| ----------------- | -------------------- | -------------------------- |
| Person            | Contact              | Mapping varies by solution |
| Organization      | Account              | May require specialization |
| Case              | Case / custom object | Depends on workload        |

---

## Capability Mapping

For each capability:

* Native
* Configurable
* Custom
* External
* Not recommended

---

## Architecture Guidance

Describe how the Blueprint architecture maps onto the platform.

---

## Extension Guidance

What should be:

* configured
* extended
* custom developed
* integrated externally

---

## Platform Constraints

Document important limitations or tradeoffs.

---

## Integration Considerations

---

## Security Mapping

---

## AI Mapping

Where platform AI capabilities correspond to Blueprint AI patterns.

---

## Deployment / Lifecycle Guidance

Where relevant:

* environments
* source control
* ALM/DevOps
* testing
* packaging
* release management

---

## Deviations From Blueprint

Explicitly state where the platform naturally implements the concept differently.

The Blueprint remains authoritative at the conceptual level; the mapping explains the implementation tradeoff.

---

# Supporting Artifact Template — AI Opportunity Card

AI Opportunity Cards should be reusable anywhere in the hierarchy.

# [AI Opportunity]

**Artifact Context:**
Capability / Pattern / Workload / Scenario

**Business Purpose:**
What problem does AI address?

**User / Actor:**
Who benefits?

**Trigger:**
What causes AI to run?

**Inputs:**
What information is provided?

**Context Sources:**
What additional information can AI retrieve?

**Allowed Data:**
What information may be exposed to the model?

**Output:**
What does AI produce?

**Allowed Actions:**
What actions may the system take?

**Human Control:**
What requires approval?

**Failure Modes:**
What can go wrong?

**Risk Level:**
Low / Moderate / High / Organization-specific

**Evaluation:**
How is quality measured?

**Audit Requirements:**
What needs to be recorded?

**Fallback:**
What happens when AI fails or confidence is insufficient?

---

# Supporting Artifact Template — Architecture Decision Record

Architecture Decision Records should explain consequential choices without burying rationale inside prose.

# ADR-[Number]: [Decision]

**Status:** Proposed / Accepted / Superseded

**Context**

What problem requires a decision?

**Decision**

What was chosen?

**Alternatives Considered**

What other approaches were considered?

**Rationale**

Why was this chosen?

**Consequences**

What becomes easier or harder?

**Affected Blueprint Artifacts**

What parts of the system does this decision affect?

**Revisit When**

What future conditions should cause the decision to be reconsidered?

---

# Supporting Artifact Template — Business Rule

# [Business Rule Name]

**Applies To:**
Artifact(s)

**Rule**

State the rule plainly.

**Rationale**

Why does it exist?

**Inputs**

What information determines the result?

**Outcome**

What should happen?

**Exceptions**

What exceptions exist?

**Source**

If based on regulation, policy, or another authoritative source, identify it.

**Implementation Notes**

Optional. Keep technology-specific implementation details outside the canonical rule where possible.

---

# Supporting Artifact Template — Integration Pattern

# [Integration Name]

**Purpose**

What information or action crosses the boundary?

**Source**

Who owns the originating information?

**Target**

Who consumes it?

**Direction**

Inbound / Outbound / Bidirectional

**Interaction Type**

* Synchronous API
* Event
* Batch
* File
* Streaming
* Human-assisted

**Data**

What information crosses the boundary?

**Identity & Authorization**

How is access controlled?

**Reliability**

What happens during failure?

**Idempotency**

How are retries handled?

**Audit**

What must be logged?

**Privacy / Security**

What protections apply?

**Reference Implementation**

Link where available.

---

# Supporting Artifact Template — Assessment

This is especially useful because public Blueprint content can become consulting methodology.

# [Assessment Name]

### Purpose

What is being assessed?

### Intended Audience

Who should use it?

### Dimensions

Example for Application Architecture Assessment:

* Business fit
* Architecture
* Data
* Integration
* Security
* maintainability
* delivery practices
* governance
* AI readiness

### Questions

Create structured assessment questions.

### Evidence

What should be examined?

### Maturity / Risk Scale

Use a simple consistent scale.

For example:

**1 — Critical**
Immediate attention required.

**2 — Weak**
Material issues exist.

**3 — Adequate**
Meets current needs with identifiable improvements.

**4 — Strong**
Well-designed and managed.

**5 — Leading**
Deliberately optimized and continuously improved.

### Findings Template

For each finding:

**Observation**

**Evidence**

**Impact**

**Risk**

**Recommendation**

**Priority**

### Public vs. Consulting Version

A lightweight checklist can remain open.

The paid advisory version can involve evidence collection, interviews, analysis, prioritization, and executive recommendations.

---

# Standard Diagram Set

To prevent diagram sprawl, Industry Blueprints should develop a recognizable vocabulary of diagrams.

Not every artifact requires every diagram.

## Foundation

Usually:

* Concept model

## Capability

Usually:

* Capability context
* lifecycle
* domain model
* state model

## Solution Pattern

Usually:

* capability composition
* end-to-end process
* integrated information model
* solution context

## Workload

Usually:

* workload composition
* specialized process
* domain extension
* workload ecosystem/context

## Reference Scenario

Usually:

* journey
* capability trace
* data/event trace

## Platform Realization

Usually:

* system context
* container/service architecture
* module/component architecture
* deployment architecture
* data architecture

Consistency should matter more than visual complexity.

---

# Minimum Viable Artifact Rules

The templates should not become barriers to publishing.

Each artifact type should have a minimum viable definition.

## Foundation MVP

Required:

* Summary
* Scope
* Definition
* Core concepts/attributes
* Basic conceptual model
* Builds On / Used By

## Capability MVP

Required:

* Summary
* Business outcome
* Scope
* Personas
* lifecycle/process
* domain model
* Builds On / Adds / Used By

## Solution Pattern MVP

Required:

* Summary
* Problem statement
* Capability composition
* End-to-end process
* Adds
* Used By

## Workload MVP

Required:

* Summary
* Industry/mission context
* business knowledge
* underlying patterns/capabilities
* specialized process
* workload-specific additions

## Reference Scenario MVP

Required:

* Story
* participants
* journey
* capability trace
* expected outcome

## Platform Realization MVP

Required:

* Purpose
* Blueprint coverage
* architecture overview
* technology stack
* repository
* local run instructions
* sample data
* known limitations

Everything else can be added through later spirals.

---

# Maturity Through Spirals

Rather than treating an artifact as incomplete until every section exists, use iterative maturity.

## v0.1 — Define

Answer:

> What is this?

Create the basic page and relationships.

## v0.2 — Model

Add:

* processes
* information model
* diagrams
* architecture

## v0.3 — Demonstrate

Add:

* reference scenario
* sample data
* executable implementation

## v0.4 — Harden

Add:

* trust/governance
* edge cases
* testing
* integration
* nonfunctional considerations

## v0.5 — Teach

Add:

* article
* walkthrough
* explanatory diagrams
* video
* assessment/checklist

## v1.0 — Stable Reference

The material has been exercised through enough scenarios and implementations to be treated as a stable reference.

This allows Industry Blueprints itself to follow the same spiral development philosophy as the broader professional platform.

---

# Content Reuse Rules

## Rule 1 — Reference, Do Not Repeat

If another artifact owns the canonical definition, link to it.

## Rule 2 — Document the Delta

More-specific artifacts should describe what they add or change.

## Rule 3 — Examples Belong in Scenarios

Avoid contaminating generic artifacts with overly specific stories.

## Rule 4 — Technology Belongs in Realizations

Keep vendor and implementation detail out of canonical business definitions unless the technology itself materially changes the business concept.

## Rule 5 — Business Truth Before Software Structure

Do not let the current reference application's class hierarchy become the business ontology.

## Rule 6 — Separate Requirement From Recommendation

Distinguish:

> The business requires X.

from:

> Industry Blueprints recommends implementing X this way.

## Rule 7 — Separate General Guidance From Organization-Specific Policy

Especially in public sector, financial services, privacy, compliance, accessibility, and AI governance.

---

# Site Experience

Every page should eventually make its place in the system visually obvious.

A visitor viewing **Constituent Management** might see:

```text
SOLUTION PATTERN

Constituent Management

Builds On
→ Party Management
→ Request Management
→ Case Management
→ Communication Management

Adds
→ Constituent Context
→ Interaction History
→ Jurisdiction

Used By
→ State Constituent Services
→ Legislative Casework
→ 311 Service Management

Demonstrated By
→ Maria Requests Agency Assistance

Realized By
→ Open Reference Application
```

The visitor should then be able to move naturally **up, down, and sideways through the knowledge graph**.

---

# Initial Vertical Slice

The first implementation does not need dozens of artifacts.

A strong v0.1 slice could contain:

## Blueprint System

* Industry Blueprints Overview
* Design Principles
* Taxonomy
* Modeling Conventions

## Foundations

* Person
* Organization
* Communication
* Task
* Document

## Capabilities

* Request Management
* Case Management

## Solution Pattern

* Constituent Management

## Workload

* State Constituent Services

## Reference Scenario

* Resident Requests Assistance With a State Agency

## Platform Realization

* Open Reference Application v0.1

This is enough to test the entire template system.

The first goal is not completeness.

It is to determine whether the model remains understandable when one real business problem is represented **from reusable concept through executable system**.

---

# Definition of Success

The template system succeeds when a visitor can answer four questions about any artifact:

> **What is this?**

> **What does it build on?**

> **What does it uniquely add?**

> **Where can I see it used or running?**

And it succeeds for the author when adding the next Blueprint no longer begins with:

> “What kind of page should I write?”

Instead, the structure is already established, and the work becomes understanding the domain deeply enough to fill it with useful knowledge.
