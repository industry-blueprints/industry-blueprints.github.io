---
type: Persona
title: Solution Architect
description: Designs how a capability will actually be delivered technically, inside
  constraints set by procurement, security, legacy, and a budget fixed before the design.
resource: https://industry-blueprints.github.io/personas/solution-architect/
tags: [persona, architecture, technology, delivery, cross-cutting]

generated: { by: human:jhofmann, at: 2026-07-27T11:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
persona_type: specialist
---

In-house, at a systems integrator, or on a vendor's field team. The professional consumer of most
of this library.

## Role summary

Turns a business need into a technical design: components, integration, data, identity, security,
operations. Accountable for a solution that meets the requirement, fits the estate, satisfies the
non-functional constraints, and can be supported by the people who will inherit it.

## Goals

- A design that meets the actual need rather than the written requirement
- Something the organization can operate after the project team leaves
- Reuse of what is already licensed and running
- Non-functional requirements — accessibility, retention, auditability, resilience — designed in
  rather than retrofitted
- A defensible record of why each significant decision was made

## Decisions made

- Buy, build, configure, or extend
- Where system boundaries fall and what integrates with what
- How identity, authorization, and delegated access work
- Which non-functional requirements are hard constraints and which are negotiable
- What technical debt is accepted deliberately, and recorded as such

## Pain points

- **Requirements arriving as a product specification.** The decision was made before the design
  started, so the architecture is reverse-engineered to justify it.
- **Non-functional requirements discovered late.** Retention, accessibility, and audit surface
  during security review, after the design is fixed and the budget spent.
- **Undocumented legacy.** Integrating with a system whose business rules exist only in code that
  nobody currently employed has read.
- **Identity is always harder than scoped.** Staff, constituents, delegates, and other agencies,
  at different assurance levels, across systems with incompatible models.
- **Operating model as an afterthought.** Designed for a team that will not exist post-go-live.
- **Procurement fixes the solution before the problem is understood** — the mirror image of the
  [Chief Procurement Officer's](/personas/chief-procurement-officer/) complaint, from the other side.

## What this persona needs from a blueprint

Exactly what this library's Layer 2 is for: a vendor-neutral logical design with components,
data flow, identity model, and stated non-functional requirements — then vendor implementations
as a separate, removable layer. Also design decisions **with their alternatives and tradeoffs**,
because reusing a decision requires knowing what it was weighed against.

## Typical questions

- "What is the actual requirement, underneath the product name?"
- "What does the identity model look like for delegated access?"
- "Who operates this, and what skills do they have?"
- "What are the retention and audit obligations on this data?"
- "What did you consider and reject, and why?"
