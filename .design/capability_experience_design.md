# Capability Experience and Two-Track Method

**Status:** Accepted design direction
**Date:** August 11, 2026

## 1. Purpose

Industry Blueprints uses a capability as the primary public entry point. A capability overview
plainly explains the work, why it matters in the public sector, the people involved, its common
processes, and useful outcomes and measures.

Readers can then explore the capability through two connected tracks:

1. **Understand the work** builds a business-facing Capability Blueprint.
2. **Design the enabling technology** builds a Target Architecture Package derived from that
   blueprint.

The experience is educational and practical. Each stage teaches a subject, helps a reader examine
the current state, supports a workshop, describes maturity, and produces an artifact that informs
later work.

## 2. Audience and Entry Model

The capability overview is the shared entry point for executives, program leaders, practitioners,
analysts, architects, product and data teams, security specialists, and transformation teams. It
does not require a reader to understand the framework before learning about the capability.

The two tracks support different questions:

- **Understand the work:** What public value does the capability create, how does the work operate,
  and what needs to improve?
- **Design the enabling technology:** What information, controls, applications, integrations,
  platforms, and technical decisions enable that work?

Technical architecture is not an independent starting point. Each technical stage uses the
artifact from its sibling business stage and the technical artifacts produced previously.

## 3. The Six Aligned Stage Pairs

| # | Understand the work | Business artifact | Design the enabling technology | Technical artifact |
|---|---|---|---|---|
| 1 | Public Purpose & Outcomes | Capability Purpose and Outcome Map | Architecture Context & Principles | Architecture Context and Principles |
| 2 | Services, Lifecycles & Performance | Service, Lifecycle and Performance Model | Architecture Requirements & Service Qualities | Architecture Requirements and Traceability Model |
| 3 | Execution, Accountability & Controls | Process, Decision, Responsibility and Control Model | Technical Controls & Operational Design | Technical Control and Operational Requirements Model |
| 4 | Information & Data Needs | Business Information and Stewardship Model | Information & Data Architecture | Information Architecture and Authoritative-Source Matrix |
| 5 | Improvement Opportunities & Priorities | Prioritized Improvement Portfolio | Applications, Integration, Platforms & AI | Solution Options and Preferred Architecture Direction |
| 6 | Target Operating Model & Roadmap | Target Operating Model and Capability Roadmap | Target Architecture & Transition Roadmap | Target Architecture Package and Transition Roadmap |

Stages 2 and 3 remain separate but closely connected. Stage 2 describes the capability-wide flow
and its performance expectations. Stage 3 explains how parts of that flow are performed, who is
accountable, which decisions are made, and which controls apply.

## 4. Dependency and Traceability Rules

Both tracks accumulate their outputs:

```text
B1 -> B2 -> B3 -> B4 -> B5 -> B6   = Capability Blueprint
 |     |     |     |     |     |
 v     v     v     v     v     v
T1 -> T2 -> T3 -> T4 -> T5 -> T6   = Target Architecture Package
```

- A business stage uses relevant business artifacts from earlier stages.
- A technical stage uses its sibling business artifact and prior technical artifacts.
- Each artifact identifies its inputs and the downstream work it informs.
- Technical recommendations remain traceable to public outcomes, operating needs, decisions,
  information, risks, and controls.
- The final architecture is assembled from prior decisions rather than introduced only in Stage 6.

## 5. Standard Detail-Page Contract

Each capability-and-stage page contains:

1. **What this covers** — a plain-language explanation and learning objectives.
2. **How it applies** — domain-specific educational content, examples, terminology, participants,
   and decisions.
3. **What it builds on** — required inputs and relevant prior artifacts.
4. **Assessment** — diagnostic questions and useful evidence.
5. **Maturity progression** — five evidence-based levels for the subject.
6. **Workshop** — participants, preparation, prompts, activities, and expected decisions.
7. **What you will produce** — artifact purpose, minimum contents, template guidance, and completion
   criteria.
8. **Worked example** — a domain-specific example when available.
9. **What this informs next** — downstream artifacts and the next stage.

Assessment, workshop, maturity, and educational material reuse the same underlying concepts rather
than becoming separate content silos. A lightweight engagement may combine adjacent workshops or
deliverables without collapsing the underlying stage definitions.

## 6. Artifact Contracts

The framework standardizes an artifact's purpose, minimum contents, inputs, outputs, and
traceability expectations. It does not require one diagramming notation or assume every capability
has the same operating shape.

For example, the Stage 2 business artifact may use an asset lifecycle, case lifecycle, grant
lifecycle, constituent journey, value stream, or incident operating scenario. All are valid forms
of a Service, Lifecycle and Performance Model when they explain the end-to-end work and how its
performance is understood.

The six business artifacts assemble into a **Capability Blueprint**. The six technical artifacts
assemble into a **Target Architecture Package**.

## 7. Cross-Cutting Overlays

The two tracks are the primary paths. Cross-cutting subjects are applied within them rather than
becoming competing navigation structures:

- **AI Opportunity:** where AI may add value, when it is appropriate, and how it can be governed
  and measured.
- **Risk, Controls & Assurance:** how important risks, human accountability, controls, evidence,
  privacy, security, records, and review affect the work and its technology.

## 8. Relationship to the Earlier 14-Point Method

The earlier 14-point sequence is not the public information architecture or a required third layer
of navigation. It may remain as an internal coverage reference while the two-track method is
validated. Useful concepts and outputs from it are incorporated into the six aligned stage pairs.

If the twelve-stage model demonstrates complete coverage across structurally different
capabilities, the earlier sequence can be retired without changing the public experience.

## 9. Cross-Capability Applicability

The method reuses questions and artifact contracts, not generic domain prose. Each capability
supplies its own:

- public outcomes and terminology;
- services, lifecycle, value stream, journey, or operating scenario;
- people, organizations, decisions, risks, and controls;
- information, measures, and enabling systems;
- maturity criteria, examples, and improvement opportunities.

Asset Management is the reference implementation. Investigations and Grants Management test
case-centric and program/transaction-centric work. An event-driven, multi-agency capability such
as Emergency Response Coordination is a useful later test of nonlinear operating models.

## 10. Publishing Rules

- The capability overview remains useful without entering either track.
- The overview shows all six aligned pairs so readers can understand the journey.
- Only pages with meaningful content are linked. Planned stages are clearly labeled and never lead
  to empty destinations.
- A reader may follow only the business track, while the technical track makes its business inputs
  explicit.
- Stage pages expose their artifact, maturity guidance, workshop, and downstream connections.
- Navigation and content structures remain reusable for future capabilities.

## 11. Asset Management Initial Slice

The initial implementation includes:

- an exploration map on the Asset Management overview;
- Business Stage 1: Public Purpose & Outcomes;
- Technical Stage 1: Architecture Context & Principles;
- Business Stage 2: Services, Lifecycles & Performance, beginning with the existing asset lifecycle
  material;
- shared navigation and presentation patterns that activate stages only when their content exists.
