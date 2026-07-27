# Industry Blueprints — Product Vision

**Status:** Draft · **Last revised:** 2026-07-26

A vendor-neutral blueprint toolkit for public-sector transformation — used to work out where an organization is today, where it could go, and what it takes to get there.

Companion document: [content-architecture.md](content-architecture.md) — the implementation contract for the content model, OKF adoption, and the build pipeline. This document covers *what* and *why*; that one covers *how*.

---

## 1. Product Summary

Industry Blueprints is a vendor-neutral knowledge and decision-support toolkit that explains how organizations operate, how their capabilities and processes can be improved, and how different technology ecosystems can support those improvements.

The initial industry focus is **public sector, across all levels of government** — federal, state, county, and municipal. Government level is treated as a cross-cutting facet of every artifact rather than as separate sub-industries, because the underlying capabilities are largely shared and the differences (statutory authority, funding model, scale, actor names) are best expressed as documented variance on a single blueprint. See §6.

The architecture supports adding industries such as healthcare, financial services, education, utilities, manufacturing, insurance, and transportation later.

The platform connects industry knowledge · organizational capabilities · personas and responsibilities · business processes · data and information models · performance metrics · governance requirements · AI and automation opportunities · reusable solution patterns · reference architectures · vendor-specific implementations · implementation playbooks · educational resources.

This is not a blog. It is a **structured, interconnected blueprint library** — one that can later support assessments, subscriptions, enterprise licensing, AI assistants, and software integrations.

### 1.1 What it is *for*

The organizing use case is a **working session, not a reading session.**

Someone is starting a project, or sitting with a customer to co-create a solution. They need to establish where that organization is today, show what better looks like, and agree on a credible path between the two — in an afternoon, with material they can point at.

Three consequences follow, and they shape everything below:

**Current state matters as much as future state.** A co-creation conversation opens with "here's how this typically works today, and here's why it hurts." That recognition is what earns the right to talk about the target. Current-state content is not a caveat field on a process page; it is half the product.

**Descriptive knowledge comes first; maturity is a lens over it.** An earlier draft of this document made maturity the organizing spine. That was wrong in the same way it warns against elsewhere: a rubric for a capability nobody has described is an assessment against a model that does not exist. The spine is **capability → process → persona → data → outcome**. Maturity is applied over that once the description is credible, and it is genuinely useful there — playbooks written as level transitions, opportunities tagged with the level they presuppose. It is a lens, not a foundation. See §7.2 and §8.1.

**The output is portable.** A toolkit that only exists as a website is a website. Each capability is downloadable as a self-contained bundle — the capability, its rubric, its processes, personas, KPIs, governance controls, and patterns — that someone can open in an editor, drop into a project repo, bring to a workshop, or hand to an AI assistant. See §16.2.

### 1.2 Secondary property: machine-readable by default

Because the content model is structured and standards-based (Open Knowledge Format — §16), a second class of consumer is served for free: AI agents doing discovery, solution design, or customer research on behalf of the people above.

This is real but it is a *consequence* of doing the content model well, not a headline feature and not a reason to build tooling ahead of content. See §15 for how it's sequenced.

---

## 2. Core Vision

The platform helps users answer:

> How does this organization work today, where could it get to, and what does it take to get there?

The platform begins with business and operational needs rather than products.

A user starts from a plainly stated problem:

> Constituents wait too long for an answer, and half the time they have to ask twice.

The platform connects that to:

* The constituent service management capability, and a rubric locating the organization on it
* Relevant personas — CSR, contact center director, caseworker, the constituent themselves
* How the process typically runs today, and why it produces that outcome
* A recommended future state, and the data, rules, and governance it requires
* Performance indicators precise enough to actually measure
* AI opportunities, scoped to what is achievable at the organization's current level
* Solution patterns and reference architectures
* Microsoft, AWS, Google, Salesforce, ServiceNow, Oracle, or open-source implementations
* A phased roadmap expressed as movement between maturity levels

Vendor technologies are interchangeable implementation layers beneath stable industry knowledge.

---

## 3. Initial Target Audience

### Primary users

**Government leaders.** *State and local:* City Manager, County Administrator, CIO, CTO, Chief Data Officer, CISO, Department Director, Transformation Officer, Budget Director, 311 / Customer Service Director. *Federal:* Agency CIO, Chief Customer Experience Officer, High Impact Service Provider (HISP) service owner, Program Office Director, Chief Data Officer, Senior Agency Official for Privacy, Contact Center Director.

They need strategic guidance, maturity rubrics, roadmaps, benchmarks, and executive-level explanations.

**Solution architects and engineers.** Reference architectures, data flows, security considerations, system mappings, implementation patterns, vendor-specific technical guidance.

**Consultants and systems integrators.** Reusable workshop materials, discovery guides, process models, assessments, artifacts, implementation playbooks. *This audience is the sharpest fit for the toolkit framing in §1.1 and should be the one MVP is tested against.*

**Technology vendors.** Industry context connecting products to actual government capabilities, personas, processes, and outcomes.

**Operational practitioners.** Customer Service Representative, Caseworker, Program Specialist, Knowledge Manager, QA and Training Supervisor, Department Liaison, Records Manager, Contact Center Supervisor.

### Secondary consumer: AI agents

Agents supporting the humans above — preparing for a workshop, drafting a discovery agenda, answering a scoping question. Served by structured relationships, explicit provenance, and stable identifiers rather than by any dedicated feature.

---

## 4. Product Principles

**Business-first.** Content begins with organizational goals, services, processes, decisions, and outcomes — not technology products.

**Honest about today.** Current-state descriptions are written as they actually are, including the workarounds and the reasons they exist. Content that only describes an idealized future is not usable in a real conversation.

**Levelled.** Guidance is tied to maturity. Advice that assumes a capability the organization doesn't have is worse than no advice.

**Vendor-neutral core.** Industry knowledge, capability definitions, process models, personas, KPIs, governance, and logical architectures remain vendor agnostic.

**Pluggable implementations.** Microsoft and other vendors appear as implementation options attached to the vendor-neutral blueprint.

**Level-aware (government).** Every artifact declares which levels of government it applies to and documents where federal and state/local practice genuinely diverge.

**Structured content.** Major artifacts use repeatable schemas rather than free-form article layouts.

**Highly interconnected.** Every page exposes typed relationships to other artifacts, in both directions.

**Portable.** Nothing about the knowledge requires this website to remain online to keep its value.

**Provenance is visible.** Every artifact shows who wrote it, whether a human verified it, what it is based on, and when it goes stale. Content nobody stands behind is labeled, not hidden.

---

## 5. Top-Level Site Structure

Full artifact taxonomy: Industries · Capabilities · Maturity Rubrics · Personas · Processes · Solution Patterns · AI Opportunities · AI Agents · Reference Architectures · Data Models · KPIs · Governance · Playbooks · Decision Guides · Vendor Implementations · Toolkits · Videos and Learning · Assessments *(later)* · Resources

Navigation exposes a deliberately smaller subset. Eighteen equal categories is a discovery failure.

Home page entry points, in priority order:

1. **Find where you are** — enter through a capability's maturity rubric
2. **Solve a business problem** — enter through a stated pain
3. **Explore a capability**
4. **Download a toolkit**
5. Find an AI opportunity
6. Review a reference architecture
7. Compare vendor implementations
8. Browse implementation playbooks

---

## 6. Industry and Government Level

Each industry functions as a mini-site.

### Initial industry: Public Sector

Government level is a **facet** on every artifact rather than a sub-industry:

| Value | Covers |
|---|---|
| `federal` | Federal departments, agencies, and independent establishments |
| `state` | State agencies, departments, and statewide programs |
| `county` | County government and county-administered programs |
| `municipal` | Cities, towns, villages, and special districts |
| `tribal` | Tribal governments *(in the taxonomy; not populated initially)* |

Most artifacts apply to several levels. Filtering is multi-select and inclusive.

### Level variance

Where practice genuinely differs by level, the artifact carries a **Level Variance** section rather than being forked. One "Identity Verification and Authorization to Discuss" process — but the federal instance is governed by NIST SP 800-63 identity assurance levels and agency authorization rules, while a county instance may rely on knowledge-based verification and local policy. Same shape, different constraints, one blueprint.

A deliberate bet: **the capability model is shared across levels; divergence is in authority, funding, and scale.** If that fails in a given domain, that domain gets two artifacts and a documented reason.

### Industry landing page

Leads with the **capability maturity map** — every capability, its five levels, and what typically holds organizations at each one — because that is the entry point for the conversation this toolkit exists to support. Then: overview · operating environment · strategic priorities · common challenges · regulatory and governance context · capability map · persona directory · process library · AI opportunity map · architecture library · featured playbooks · toolkits · vendor implementation options · recently updated.

---

## 7. Core Content and Artifact Types

Each artifact is a structured content object with its own URL, metadata, typed relationships, provenance, and revision history. Each artifact type maps to an OKF `type`; the registry lives in [content-architecture.md](content-architecture.md) §3.

Examples are drawn from the anchor domain (constituent service and case management) so the taxonomy reads as a coherent whole.

### 7.0 The depth ladder

Coverage is partial by design and for a long time. The risk that creates is a library of thin pages that reads as filler, so **depth is an explicit, declared state on every artifact** rather than something a reader has to infer.

| Tier | Contains |
|---|---|
| **Named** | Appears on the capability map with a one-line definition. No page. |
| **Defined** | Purpose · outcomes · key processes, personas, entities named · 3–5 measures · level variance sketch |
| **Detailed** | + how it typically works today · pain points · business rules · standards mappings · full relationship graph |
| **Complete** | + its own process, data, measure, and governance artifacts |

The tier renders as a badge, the same way trust and freshness do (§9) and for the same reason: a stub that announces itself is honest, and a stub that doesn't is a broken promise. The capability map shows Named and Defined capabilities differently, so the shape of what exists is visible at a glance.

This also gives the library a cheap promotion path. Moving a capability from Named to Defined is one new file and one line in its domain — no restructuring.

### 7.1 Capability

What an organization must be able to do, independent of structure or technology.

*Examples:* Constituent Service Management · Case Management · Knowledge Management · Constituent Identity Verification · Correspondence Management · Service Catalog and Intake · Language Access · Quality Assurance and Coaching

*Fields:* Title · Short description · Industry · Government levels · Parent domain · Business purpose · Desired outcomes · Inputs · Outputs · Stakeholders · Related personas · Related processes · Supporting data entities · Common systems · Business rules · Pain points · Level variance · KPIs · Risks · Governance requirements · AI opportunities · Related solution patterns · Reference architectures · Vendor implementations · Related playbooks · Toolkit download · Sources · Provenance

The capability is the unit of the toolkit and the organizing unit of the library. Capabilities are grouped into **domains** (§7.1a) and every capability appears on the capability map whether or not it has a page yet.

### 7.1a Industry and Capability Domain

Two grouping types that make the library navigable before it is complete.

An **Industry** carries the capability map — the full territory on one page. A **Capability Domain** groups related capabilities and describes what makes that grouping distinct in the sector, where the level variance falls, and what it depends on.

Domains are split **enterprise** (every organization in the sector has this) versus **mission** (depends on what the organization is for). Enterprise domains are developed first: they apply to every reader at every level, the federal-to-local comparison is cleanest there, and one blueprint serves the most people.

Domains carry their capability list in frontmatter, with a `target` on those that have pages. Promoting a capability from Named to Defined is one file plus one line — see [content-architecture.md](content-architecture.md) §4a.

### 7.2 Maturity Rubric

A **lens over described capabilities**, not the organizing spine — see §1.1. Scoped to a capability, five levels: **1 Manual · 2 Digitized · 3 Integrated · 4 Intelligent · 5 Adaptive**.

*Fields:* Scope · Assessed capability · Dimensions · Level definitions · **Observable characteristics by level** · **Diagnostic questions per dimension** · Metrics typical at each level · Common barriers between levels · What unlocks the next level · Related playbooks by transition

Two requirements distinguish a usable rubric from a generic one:

* **Observable characteristics** — described so a team can recognize themselves without interpretation. "Case notes are re-keyed from a call log into the case record" beats "limited integration."
* **Diagnostic questions** — the questions a facilitator actually asks in the room.

**A rubric is written only for a capability already at Detailed or Complete depth.** Written earlier it is generic, because the specificity that makes a rubric usable comes from having described the capability first. One exists today (constituent service); more are deferred until the descriptive spine is in place.

Published as a readable, scoreable table. Interactive scoring is out of scope; the rubric works on paper first, and if it doesn't, no tooling saves it.

### 7.3 Persona

A role that performs work, makes decisions, or is affected by a service.

*Examples:* Customer Service Representative · Contact Center Director · Agency CX Lead (HISP) · County 311 Director · Caseworker · Program Specialist · Knowledge Manager · QA and Training Supervisor · Department Liaison · Agency CIO · Privacy Officer · Constituent · Constituent with Limited English Proficiency · Constituent Using Assistive Technology

*Fields:* Title · Persona type · Industry · Government levels · Department · Role summary · Responsibilities · Goals · KPIs · Decisions made · Information required · Reports and dashboards used · Common activities · **A day in the life** · Pain points · Systems used · Data accessed · Security and privacy concerns · AI assistance opportunities · Automation opportunities · Potential AI agents · Related capabilities · Related processes · Typical questions · Learning resources

Constituent personas are first-class. A blueprint modeling only the staff side will optimize the wrong things.

### 7.4 Process

How work moves from a trigger to a defined outcome.

*Examples:* Omnichannel Intake and Case Creation · Identity Verification and Authorization to Discuss · Triage, Classification and Routing · Knowledge-Assisted Resolution · Escalation and Cross-Agency Referral · Correspondence and Response Generation · Case Closure, Survey and Records Disposition · Backlog and Aging Case Management

*Fields:* Title · Purpose · Industry · Government levels · Parent capability · Trigger · Starting state · Ending state · Actors · Process owner · Inputs · Outputs · **Current state: how this typically runs today** · **Why it works that way** · Steps · Decision points · Approvals · Business rules · Exceptions · Handoffs · Systems involved · Data entities · **Where time and rework are lost** · **Recommended future state, by maturity level** · Constituent experience considerations · KPIs · Risks · Governance requirements · AI opportunities by step · Automation opportunities by step · Human-review requirements · Level variance · Related patterns · Reference architecture · Vendor implementations · Process diagram

Both a summarized visual flow and a detailed step-by-step representation. Diagrams are authored as Mermaid so they stay diffable text inside the toolkit bundle rather than opaque images.

"Why it works that way" is deliberate. Current-state dysfunction usually has a reason — a statute, an audit finding, a system that can't do the thing. Blueprints that treat it as mere incompetence don't survive contact with the people who live it.

### 7.5 Solution Pattern

A reusable approach to a recurring business or technical problem.

*Examples:* Omnichannel Intake · Identity Verification and Proofing · Grounded Knowledge Retrieval · Human-in-the-Loop Response Approval · Case Routing and Assignment · Cross-Agency Referral and Warm Handoff · Notifications and Status Updates · Self-Service Deflection · Sentiment-Based Escalation · Records Retention and Disposition

*Fields:* Problem · Context · Recommended approach · Applicable industries · Applicable government levels · Applicable capabilities · **Maturity level this presupposes** · Logical components · Data flow · Roles · Preconditions · Benefits · Tradeoffs · Risks · Security requirements · Governance requirements · Variations · Anti-patterns · Related architectures · Vendor implementations · Example use cases · Implementation checklist

### 7.6 AI Opportunity

Where AI could improve a role, process, decision, or outcome.

*Examples:* Classify inbound contacts by intent and route them · Answer constituent questions from governed knowledge · Assist the representative in real time · Summarize a contact into the case record · Translate and support language access · Detect escalation risk · Draft correspondence for human approval · Rewrite to plain-language targets · Triage an aging backlog · Sample 100% of contacts for QA · Detect knowledge gaps · Link duplicate cases · Forecast demand for staffing

*Fields:* Business problem · Target outcome · Related capability · Related process steps · Affected personas · AI task type · **Minimum maturity level required** · **Prerequisites that are usually missing** · Required data · Expected output · Human oversight · Risk level · Explainability needs · Privacy considerations · Accuracy requirements · Success metrics · Feasibility · Estimated impact · Recommended pattern · Potential vendor implementations · Related AI agents

Task types: summarization · classification · extraction · generation · prediction · recommendation · search · conversational assistance · optimization · anomaly detection · workflow orchestration · translation

The maturity gate is the point. Most AI opportunity lists fail because they propose level-4 capability to level-1 organizations. Naming the prerequisite that's usually missing is more useful than naming the opportunity.

### 7.7 AI Agent

A defined intelligent assistant or semi-autonomous system with a bounded purpose.

*Examples:* Constituent Intake Agent · Agent-Assist Copilot · Case Summarization Agent · Knowledge Curation Agent · Correspondence Drafting Agent · Backlog Triage Agent

*Fields:* Name · Purpose · User personas · Responsibilities · **Allowed actions** · **Prohibited actions** · Inputs · Outputs · Tools and integrations · Knowledge sources · Memory requirements · Triggering events · Workflow · **Human approval points** · Escalation conditions · Instruction strategy · Security controls · Privacy controls · Audit requirements · Failure modes · Guardrails · Evaluation criteria · KPIs · Logical architecture · Vendor implementations · Deployment checklist

Prohibited actions and human approval points are mandatory. An agent definition that doesn't state what the agent may *not* do is not publishable — in constituent service the boundary between "helped someone" and "made a determination affecting someone's rights" is the whole ballgame.

### 7.8 Reference Architecture

A vendor-neutral solution design.

*Examples:* AI-Enabled Constituent Contact Center · Grounded Knowledge Assistant for Public Service · Omnichannel Case Management Core · Cross-Agency Referral and Warm Handoff

*Fields:* Business objective · Scope · Assumptions · Functional requirements · Nonfunctional requirements · Logical components · Architecture diagram · Data flow · Identity model · Integration model · Security model · Governance model · Observability · Human oversight · Availability and resilience · Scalability · Accessibility · Records management · Privacy considerations · Design decisions · Alternatives · Tradeoffs · Risks · Related patterns · Related processes · Vendor implementation mappings · Deployment phases · Architecture review checklist

### 7.9 Vendor Implementation

Maps a vendor-neutral artifact to a technology ecosystem. *Categories:* Microsoft · AWS · Google Cloud · Salesforce · ServiceNow · Oracle · IBM · Open source · Industry-specific vendors

*Fields:* Vendor · Related architecture or pattern · Products and services used · Product-to-capability mapping · Physical architecture diagram · Integration approach · Identity and access configuration · Data architecture · AI services · Automation services · Security services · Governance services · Monitoring and operations · Deployment guidance · Licensing considerations · Advantages · Limitations · Prerequisites · Alternatives · Implementation checklist · Vendor documentation · Last-verified date

A vendor implementation never replaces the vendor-neutral architecture; it extends it. Vendor artifacts carry a shorter freshness window than vendor-neutral ones, because product names and licensing change far faster than government operating models.

### 7.10 Data Model

Entities, relationships, statuses, and lifecycles within a domain.

*Examples (constituent service):* Constituent / Party · Identity Assertion · Case · Service Request · Service Catalog Item · Interaction · Channel · Location and Jurisdiction · Document · Note · Task · Referral · Knowledge Article · Consent · Disposition · Survey Response

*Fields:* Entity name · Description · Parent domain · Key attributes · Relationships · Status values · Lifecycle · Data owner · System of record · Sensitivity classification · Retention requirements · Reference data · Master-data considerations · Events · API considerations · Analytics uses · AI uses · **External standard mappings** · Vendor-specific mappings · ER diagram

Where a public standard already defines an entity, map to it rather than inventing a parallel vocabulary — Open311 GeoReport v2 for service requests, NIEM for cross-agency exchange, schema.org where it aids discovery.

### 7.11 KPI

*Fields:* Name · Description · Business purpose · Related capability · Related process · Persona owner · Formula · Unit · Data sources · Reporting frequency · **Typical value by maturity level** · Target or threshold · Leading or lagging · Segmentation options · Interpretation guidance · Common data-quality concerns · Related improvement opportunities

"Typical value by maturity level" is what makes a KPI usable in a workshop — a number is meaningless without knowing what's normal for an organization at your level.

Selected KPIs are later published as machine-runnable definitions so that "First Contact Resolution" means one specific computable thing rather than one of six vendor interpretations. See [content-architecture.md](content-architecture.md) §8.

### 7.12 Governance Control

*Categories:* Responsible AI · Data governance · Privacy · Security · Accessibility · Language access · Records retention · Information collection · Procurement · Legal review · Human oversight · Risk management · Model evaluation · Change management

*Fields:* Control objective · Applicability · Government levels · Risks addressed · Required roles · Required evidence · Recommended controls · Review frequency · Related processes · Related architectures · Related AI agents · Vendor-specific guidance · Level variance

Governance is where the federal / state-local distinction bites hardest and where citation discipline matters most. Every governance artifact carries source entries pointing at the actual statute, circular, memorandum, or standard, plus a freshness date — this is the fastest-moving content on the site.

### 7.13 Playbook

An implementation guide for a defined transformation, **written as a maturity transition.**

*Examples:* Constituent Service, Level 2 → 3: Integrate the Case Record · Level 3 → 4: Introduce Assisted Resolution · Build a Governed Knowledge Base · Establish an AI Governance Program

*Fields:* Objective · **From level / to level** · Assessed capability · Intended audience · Prerequisites · Scope · Expected outcomes · Phases · Activities · Roles · Deliverables · **Workshop agendas** · Decisions required · Dependencies · Risks · Governance gates · Architecture checkpoints · KPIs and expected movement · Timeline guidance · Templates · Vendor implementation options · Exit criteria

Level-to-level framing is what makes a playbook actionable rather than aspirational. "How to modernize constituent service" is a book; "how to get from 2 to 3" is a project.

### 7.14 Decision Guide

*Examples:* Should this interaction be handled by an AI agent? · Self-service, assisted, or human-only per service type? · Build, buy, or configure? · Retrieval or fine-tuning? · Centralized or departmental AI governance? · When is human approval required?

Static in first release: written decision trees rendered as Mermaid, plus comparison matrices. Designed to be walked through out loud with a customer. Interactive scoring tools come later.

### 7.15 Toolkit

A **downloadable, self-contained package** scoped to a capability — the deliverable that makes §1.1 real.

Contains the capability, its maturity rubric, its processes, the personas involved, KPIs, governance controls, patterns, AI opportunities, and relevant playbooks, as a folder of markdown a person can open, edit, commit, or hand to an AI assistant.

Generated from the relationship graph rather than hand-assembled. See [content-architecture.md](content-architecture.md) §7.

### 7.16 Assessment *(later)*

Evaluates an organization, department, capability, process, or architecture. *Fields:* Title · Scope · Questions · Response types · Scoring model · Dimensions · Weighting · Maturity calculation · Risk flags · Recommendations · Related artifacts · Suggested roadmap · Exportable report structure

The assessment *content* is largely already written once the maturity rubrics exist (§7.2) — the diagnostic questions and observable characteristics are the assessment. What's deferred is the interactive scoring tooling, not the thinking.

### 7.17 Video and Learning Resource

*Fields:* Title · URL · Thumbnail · Summary · Learning objectives · Audience · Duration · Related artifacts · Transcript · Key timestamps

Transcripts stored as text, which makes video content searchable and portable rather than a dead embed.

### 7.18 Demonstration

Links a blueprint concept to something running in the companion **platform** repository — a mini-SaaS used to illustrate specific apps, data models, or patterns concretely.

*Fields:* Title · What it demonstrates · Related artifacts · Repository path · Run instructions · Screenshots · Limitations

Deliberately scoped: this is "here is a working illustration of this concept," not "every blueprint is backed by production code." Lightweight, optional, and attached to artifacts via a `demonstrated_by` relationship.

---

## 8. Relationship Model

Relationships are the core product feature. Without them this is a folder of documents — and the toolkit packaging in §7.15 is a graph traversal, so the graph is load-bearing for the headline deliverable.

| Predicate | Inverse | Example |
|---|---|---|
| `contains` | `part_of` | An industry contains capabilities |
| `supports` | `supported_by` | A process supports a capability |
| `assesses` | `assessed_by` | A maturity rubric assesses a capability |
| `participates_in` | `has_participant` | A persona participates in a process |
| `uses_data` | `used_by` | A process uses data entities |
| `measured_by` | `measures` | A process is measured by KPIs |
| `has_opportunity` | `opportunity_for` | A process contains AI opportunities |
| `assists` | `assisted_by` | An AI agent assists a persona |
| `automates` | `automated_by` | An AI agent performs part of a process |
| `implements` | `implemented_by` | An architecture implements patterns |
| `realizes` | `realized_by` | A vendor implementation realizes an architecture |
| `constrains` | `constrained_by` | A governance control constrains an AI agent |
| `transforms` | `transformed_by` | A playbook transforms a capability |
| `explains` | `explained_by` | A video explains an artifact |
| `demonstrated_by` | `demonstrates` | A pattern is demonstrated by a platform sample |
| `maps_to` | `mapped_from` | A data entity maps to an external standard |
| `supersedes` | `superseded_by` | A revised artifact replaces a deprecated one |

**Edges are authored once and rendered in both directions.** An author writing a process states that it supports a capability; the capability page shows the inbound edge automatically. Hand-maintaining both sides is how knowledge graphs rot.

Every page includes a **Related Blueprint Components** section generated from these edges, grouped by artifact type, separated into outbound and inbound.

### 8.1 The maturity lens

Maturity is not one more relationship — it is an axis that can be laid over the graph once the
descriptive content exists:

* A **capability** is assessed by exactly one **rubric**
* A **playbook** names a `from_level` and `to_level` on that rubric
* An **AI opportunity** names a `minimum_level`
* A **solution pattern** names the level it presupposes
* A **KPI** carries typical values by level

Which means: once a user locates themselves on a rubric, the site can filter everything else to what is actually reachable from there. That filter is the single highest-value interaction in the product, and it requires no scoring engine — just a level selector and well-tagged content.

---

## 9. Standard Page Layout

**Header** — Title · Artifact type · Industry · Government level badges · Summary · Trust badge · Freshness badge · Last verified · Reading time · Share · **Download toolkit** · View source

**Main** — Overview · Current state (where applicable) · Structured type-specific sections · Diagrams · Level variance · Key decisions · Risks · Implementation guidance

**Sidebar** — Where this sits on the rubric · Related personas · Capabilities · Processes · Patterns · Architectures · Vendors · Videos · Downloads

**Footer** — Sources with per-claim footnotes · Revision history · Contributor and verifier · Feedback · Suggested next artifact

### Trust and freshness

Header badges are **derived, not hand-set**:

| Signal | Derived from | Displayed as |
|---|---|---|
| Trust tier | absence of verification / machine actor only / human actor | Unverified · Machine-confirmed · Human-reviewed |
| Lifecycle | `status` | Draft · Stable · Deprecated |
| Freshness | `stale_after` vs. today | Current · Review due · **Stale** |

Showing "unverified" honestly is a feature. A toolkit that can't distinguish a reviewed governance artifact from an AI first draft can't be taken into a customer conversation.

---

## 10. Search and Discovery

**Searchable:** title · description · body · artifact type · industry · government level · maturity level · capability · persona · process · vendor · technology · AI task · governance category · data entity · tags

**Filters:** industry · government level · **maturity level** · artifact type · capability · persona · vendor · AI use-case type · governance category · trust tier · freshness · recently updated

**Discovery:** capability maturity map · search results · filtered directories · relationship-based related content · persona-to-process maps · process-to-architecture maps · vendor comparison · guided solution finder *(later)*

Search is a **static, client-side index** built at compile time — no backend, consistent with a toolkit that must be cheap to run and possible to mirror.

---

## 11. Vendor-Neutral and Vendor-Specific Separation

**Layer 1 — Industry and operating-model knowledge:** capabilities · maturity rubrics · personas · processes · KPIs · business rules · data models · governance

**Layer 2 — Vendor-neutral solution design:** solution patterns · AI opportunities · AI agents · logical reference architectures · playbooks · decision guides

**Layer 3 — Vendor implementation:** Microsoft · AWS · Google · Salesforce · ServiceNow · Oracle · open source

Layer 3 must be removable. Someone who wants only the vendor-neutral knowledge takes Layers 1–2 as a coherent whole. Enforced structurally: no Layer 1 or 2 artifact holds an outbound edge to a Layer 3 artifact — `realizes` always points upward, and vendor listings on neutral pages render from inbound edges. Toolkit downloads offer a vendor-neutral variant for the same reason.

---

## 12. Microsoft as First Deep Vendor Implementation

Microsoft is the first deeply developed vendor layer, supporting field and partner teams through industry onboarding for AI engineers · discovery workshops · customer maturity conversations · AI opportunity identification · Copilot scenario planning · AI agent design · reference architecture selection · governance reviews · partner enablement · executive briefings · transformation roadmaps · reusable playbooks.

Microsoft pages map business needs to Microsoft 365 Copilot · Copilot Studio · Azure AI Foundry · Microsoft Fabric · Power Platform · Dynamics 365 · Microsoft Entra · Microsoft Purview · Microsoft Defender · Microsoft Sentinel · Azure integration and data services.

Mappings must be updatable without touching the vendor-neutral blueprint.

---

## 13. Content Status, Provenance, and Quality

Delegated to the OKF v0.2 vocabulary rather than a bespoke scheme — see [content-architecture.md](content-architecture.md) §5.

| What we need | Field | Notes |
|---|---|---|
| Author | `generated: {by, at}` | Distinguishes `human:<id>`, agents, and automated processes |
| Reviewer / SME | `verified: [{by, at}]` | Multiple verifiers supported |
| Confidence | *derived* from `verified` | unverified → machine-confirmed → human-reviewed |
| Publication status | `status` | `draft` \| `stable` \| `deprecated` |
| Next review date | `stale_after` | Absolute date |
| "Needs update" | *derived* | `today >= stale_after` |
| Sources and quality | `sources[]` | With author and last-modified signals |
| Per-claim citation | markdown footnotes keyed to source ids | |

Two local conventions: **archived** is `deprecated` plus a `superseded_by` edge; **completeness** is derived at build time from populated sections and surfaced to the author in CI, not to readers.

Standing rule: **any factual claim about a statute, regulation, standard, or vendor product requires a source entry.** Several regulatory citations sketched during design — federal AI governance memoranda in particular, which changed more than once in 2024–2025 — must be verified against primary sources before the governance artifacts publish. The verification field exists precisely so unverified drafts can exist in the open without masquerading as reviewed guidance.

Authorship is single-author for the foreseeable future; no contribution or review workflow is being built.

---

## 14. First Release Scope

**A knowledge toolkit, not an application.** Depth over breadth. Reading and working, not interacting.

### 14.1 Anchor domain

**Constituent Service and Case Management — federal and state/local.**

Chosen because every level of government operates it, it's recognizable to every audience without explanation, and it has a harder standards spine than its reputation suggests: the federal customer experience measurement framework (OMB Circular A-11 §280), the 21st Century IDEA Act, the Privacy Act and System of Records Notices, Title VI language access obligations, Section 508 and WCAG 2.2 AA, NIST SP 800-63 identity assurance, Open311 GeoReport v2, and NIEM. It is simultaneously the most AI-exposed domain in government service delivery.

The federal ↔ state/local connection isn't decorative. **"No wrong door"** — a constituent contacting one level of government about a matter owned by another — is a real, unsolved operational problem, and modeling cross-agency referral makes the multi-level blueprint concrete rather than a filter checkbox.

**Explicitly out of scope:** 911 and emergency dispatch. It shares vocabulary with constituent service and almost nothing else — different standards (NG911/NENA), different latency and availability requirements, different risk profile. A recorded design decision, not an omission.

### 14.2 Content inventory

Sequenced as **the map, then the shared core, then depth** — because a complete map of the
territory establishes credibility faster than a few excellent pages, and because a shared core
prevents twelve incompatible definitions of "Person" from being written in parallel.

**Wave 1 — the map and the shared core** *(establishes the site as a reference work)*

| Artifact | Count | Status |
|---|---|---|
| Industry page carrying the full capability map | 1 | Done |
| Capability domains | 8 | Done — 5 enterprise, 3 mission |
| Capabilities Named on the map | 91 | Done |
| Core data model + entities | 1 model, 17 entities | Model done; Agreement, Case, Location written, rest Named |
| Outcome measurement framework | 1 | Done |
| Core cross-cutting personas | 14 | Done |
| Enterprise capabilities at **Defined** | 18 | Done — 19 of 91 capabilities now have pages |

**Wave 1 complete.** 62 artifacts, 113 typed relationship edges, every capability on the map
either linked or defined in place.

**Wave 2 — depth on chosen capabilities**

| Artifact | Count | Notes |
|---|---|---|
| Capabilities at **Complete** | 2–3 | Constituent Service done; **Grants Management** next |
| Processes | 6–10 | Current state *and* target state, with Mermaid flows |
| Capability data models | 2–3 | Extending the core, never redefining it |
| KPIs | 15–18 | Classified by measure class, with typical values by level |
| Governance controls | 6–8 | Fully sourced |
| Personas, capability-specific | 8–10 | Including constituent-side |

**Wave 3 — solution layer and packaging**

AI opportunities · AI agents · solution patterns · reference architectures · playbooks · decision guides · Microsoft implementations · generated toolkits · second-industry proof.

Some Wave 3 artifacts already exist for constituent service, because that capability was taken end to end first to prove the artifact stack generalizes. That is a vertical slice, not the sequence.

### 14.3 Platform features

**In:** structured artifact pages · typed bidirectional relationships · **maturity-level filtering across all content** · derived trust and freshness badges · filterable directories · static client-side search · capability maturity map · persona-to-process map · Mermaid diagrams · per-capability toolkit downloads · SEO and schema.org · feedback via GitHub issue · WCAG 2.2 AA

**Out:** interactive assessments and scoring · accounts, saved artifacts, membership · guided solution finder wizard · interactive decision trees · vendor comparison scoring · on-site AI assistant · PDF and presentation export · enterprise workspace · newsletter *(until there's a publishing cadence to justify it)*

### 14.4 Why interactive features are deferred

The deferred features are the ones needing state, accounts, and a backend — and they're worth nothing without a knowledge base deep enough to make their output credible. An assessment scoring an organization against a rubric nobody has written yet is theater. Write the rubrics, then instrument them.

### 14.5 Flagship blueprint

**Answering Constituents Faster: From Level 2 to Level 3**

One connected walkthrough spanning both government levels, organized as a maturity transition:

* Constituent Service Management capability and its rubric
* An honest level-2 current state — re-keyed notes, siloed queues, unmeasured resolution
* Constituent, CSR, Contact Center Director, Caseworker, Knowledge Manager personas
* Intake → identity verification → triage → knowledge-assisted resolution → cross-agency referral → closure
* Constituent service data model with Open311 and NIEM mappings
* CX and operational KPIs with typical level-2 and level-3 values
* Grounded Knowledge Retrieval and Human-in-the-Loop Approval patterns
* Agent-Assist Copilot and Case Summarization Agent definitions
* Language access, privacy, accessibility, and responsible-AI controls
* AI-Enabled Constituent Contact Center reference architecture
* Microsoft implementation
* The level 2 → 3 playbook, with a workshop agenda
* A downloadable toolkit containing all of it

Read top to bottom it demonstrates the platform's full value; entered from any single door it still makes sense.

### 14.6 Definition of done

A consultant can run a two-hour customer working session using nothing but this toolkit — locate the organization on a rubric, show them what the next level looks like, agree on the first three moves — and leave the customer with a downloaded folder they'll actually open again.

If that works, everything else follows. If it doesn't, no amount of tooling fixes it.

---

## 15. Delivery Phases

The sequencing principle: **do only the things that are expensive to retrofit, then write content, then build tooling on content that exists.**

### Phase 0 — Foundation *(short)*

Collections per artifact type · frontmatter vocabulary settled (OKF field names — free to adopt, expensive to change later) · structured relationships with predicates · shared layout with derived badges · maturity-level tagging and filtering · one capability threaded end to end as a proof.

Ordinary site links in body prose. No bundle tooling. No validator.

### Phase 1 — The knowledge spine *(the long pole)*

Write §14.2, in wave order: the capability map and shared core, then depth on chosen capabilities, then the solution layer on top.

This is ~90% of the real work and it is entirely format-independent — which is exactly why Phase 0 must not overreach. The goal of this phase is credibility: a reader should conclude the library knows the domain before they have read a single page in full.

The order matters more than it looks. Breadth-first establishes that the model is coherent; depth-first produces a few good articles surrounded by nothing, and risks writing three capability data models that disagree about what a Case is.

### Phase 2 — Toolkit packaging

Per-capability downloadable bundles · conformance validation in CI · link rewriting · discovery metadata · GitHub Actions build. The format pays off here, on content worth packaging.

### Phase 3 — Instrumentation

Relationship graph export · machine-runnable KPI definitions · maturity self-scoring · search refinement · second industry proof.

### Horizon

Interactive assessments and gap analysis · membership and premium artifacts · enterprise workspace with private content · on-site AI assistant grounded in the library · benchmarking, API access, and partner licensing.

*Assessments precede membership: they're the stronger paid hook, and building them first reveals what's worth putting behind a login.*

---

## 16. Technical Content Model

Full specification in [content-architecture.md](content-architecture.md).

### 16.1 Summary

One markdown file per artifact, authored with **OKF v0.2 frontmatter as its native vocabulary**. Jekyll-specific keys live in config defaults so content files stay essentially pure OKF. Artifact type → OKF `type`; Jekyll collection → bundle directory by one mechanical path rule. Relationships authored as structured frontmatter, rendered as HTML on the site and as markdown links in bundles. No artifact type is hardcoded as a unique page type.

### 16.2 On adopting OKF

A deliberately split decision:

**Adopt now — the vocabulary.** Field names cost nothing, and they're the only part expensive to retrofit. Inventing `author` / `reviewed_by` / `review_by_date` and switching later means rewriting every file. If the standard stalls, nothing is lost — they're good field names on their own merits.

**Defer — the machinery.** Bundle emission, index generation, link conventions, conformance validation, machine-runnable computations. All build-time output, none of it touching authoring, all of it landing in Phase 2 without content rework.

Being straight about the value: a markdown file with sensible frontmatter is already agent-readable. The standard's marginal benefit over "good markdown" is convention, not capability, and it is young — v0.1 → v0.2 broke two fields inside six weeks. What we get immediately is a well-designed vocabulary for provenance, trust, and lifecycle that we'd otherwise design worse ourselves. What we might get later is portability and positioning. The phasing banks the certain benefit now and defers the speculative one until the spec has settled.

Version pinned at `0.2`, reviewed deliberately rather than tracked automatically.

---

## 17. Nonfunctional Requirements

**Accessibility.** WCAG 2.2 AA, verified in CI. Non-negotiable — the platform advises government on Section 508 obligations and cannot itself fail them.

**Performance.** Static output, no client framework requirement, deferred media.

**SEO.** Unique title · meta description · canonical URL · structured headings · internal links · schema.org markup · Open Graph.

**Portability.** Content must remain useful with the website switched off. No knowledge may exist only in a template or layout.

**Maintainability.** Vendor mappings are independently editable from industry content and carry shorter freshness windows.

**Extensibility.** New industries, vendors, artifact types, and relationship types are additive. Proven by adding three artifacts in a second industry (Phase 3) rather than asserted.

**Security.** No authentication in the first release, and therefore no authentication risk. Later authenticated features must support role-based permissions and separation of public, premium, and private content.

---

## 18. Desired User Journeys

**A consultant preparing for a customer session** downloads the constituent service toolkit, walks the rubric with the customer, lands them at level 2, filters the AI opportunities to what's reachable at level 3, and leaves with an agreed first three moves.

**A county 311 director** searches "reduce repeat calls," finds the capability and its rubric, recognizes their organization in the level-2 description, sees First Contact Resolution defined precisely enough to measure, and finds the playbook for the next level.

**A federal HISP service owner** arrives from a search about the A-11 §280 CX drivers, finds the same capability filtered to federal, with the level variance explained — different authority, different measurement obligation, same operating model — plus the privacy, language access, and accessibility controls their agency has to satisfy.

**A solution architect** enters at the reference architecture, works down into patterns and data model, and out into the Microsoft implementation without reading an executive page.

**An AI agent** preparing a discovery agenda traverses the graph from capability to processes, personas, KPIs, and governance controls, and drafts one grounded in cited content with verification status intact.

None of these users needs to understand the taxonomy to get value.

---

## 19. Product Positioning

> A vendor-neutral blueprint toolkit that connects how a public organization works today to where it could get to — and to the people, processes, data, governance, AI opportunities, architectures, and technology choices along the way.

It is **not** a blog, a Microsoft tutorial site, a collection of AI prompts, a template marketplace, or a product-comparison site.

The differentiation is threefold: the structured connection between **how an organization works** and **how technology can improve it**; a **maturity spine** that makes advice specific to where an organization actually is; and **portability** — you can take it with you.

Brand: **Industry Blueprints**, consistently, across repo, domain, and copy.

---

## 20. Resolved Decisions

| # | Decision |
|---|---|
| 1 | **Platform repo.** The sibling repository is a mini-SaaS illustrating specific apps, data models, and patterns. Represented as an optional Demonstration artifact (§7.18) via `demonstrated_by`. Not a claim that every blueprint is production-proven. |
| 2 | **Name.** Industry Blueprints. |
| 3 | **Contribution model.** Single author. No review workflow, no CODEOWNERS gate; the `verified` field is a self-attestation. |
| 4 | **OKF version.** Pin `0.2`. Core spec is simple and unlikely to churn much; review minor bumps deliberately. |
| 5 | **Second industry.** Three artifacts in a second industry as an extensibility proof, in Phase 3. |
| 6 | **Bundle scoping.** Per capability, not per industry — the toolkit is the deliverable (§7.15). |
| 7 | **Change log.** Optional; skip unless it earns its place. |
| 8 | **Adoption strategy.** Vocabulary now, machinery in Phase 2 (§16.2). |

### Still open

* **Rubric calibration.** Maturity rubrics are only credible if the level descriptions match organizations people recognize. Written from research, they risk being plausible but wrong. Worth validating against two or three real organizations before treating them as settled — and worth marking `draft` until then.
* **App Experience as an artifact type.** The current placeholder site has one — a screen- or workbench-level blueprint of what a user sees and does. It sits between Process and Reference Architecture and is arguably the first thing an implementer building a UI reaches for. Recommend adding as a Layer 2 type after the first release proves the core set, rather than dropping it by omission.
