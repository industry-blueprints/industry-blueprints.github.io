---
type: Capability Domain
title: Acquire
description: Deciding what to buy, running a defensible competition, awarding it,
  and managing what happens for the years afterwards.
resource: https://industry-blueprints.github.io/domains/acquire/
tags: [domain, procurement, contracts, vendors, supply]

generated: { by: human:jhofmann, at: 2026-07-27T09:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
domain_type: enterprise
map_order: 40

capabilities:
  - title: Needs Definition & Acquisition Planning
    definition: Establishing what is actually required, the strategy for obtaining it, and the market that can supply it.
    target: /capabilities/needs-definition-and-acquisition-planning.md
  - title: Sourcing & Solicitation
    definition: Publishing the opportunity, managing questions and amendments, and receiving responses.
    target: /capabilities/sourcing-and-solicitation.md
  - title: Evaluation & Award
    definition: Scoring responses against published criteria, negotiating, and making a defensible award decision.
    target: /capabilities/evaluation-and-award.md
  - title: Contract Administration
    definition: Managing performance, deliverables, modifications, invoices, and disputes across the contract term.
    target: /capabilities/contract-administration.md
  - title: Vendor & Supplier Management
    definition: Registration, qualification, performance history, debarment status, and diversity program participation.
    target: /capabilities/vendor-and-supplier-management.md
  - title: Purchasing & Requisitioning
    definition: Day-to-day buying against existing vehicles — requisitions, purchase orders, cards, receipting.
    target: /capabilities/purchasing-and-requisitioning.md
  - title: Cooperative & Shared Purchasing
    definition: Using or hosting joint contracts so other jurisdictions can buy without running their own competition.
    target: /capabilities/cooperative-and-shared-purchasing.md
  - title: Supply & Inventory Management
    definition: Holding, issuing, and replenishing physical goods and consumables.
    target: /capabilities/supply-and-inventory-management.md
  - title: Protest & Dispute Resolution
    definition: Handling challenges to a solicitation or award, and the record needed to defend one.
    target: /capabilities/protest-and-dispute-resolution.md
  - title: Contract Closeout
    definition: Final acceptance, payment reconciliation, records retention, and lessons captured.
    target: /capabilities/contract-closeout.md

relationships:
  - predicate: part_of
    target: /industries/public-sector.md
---

Public procurement is not private purchasing with more forms. It is a regulated process whose
primary output is a **defensible decision** — the goods or services are almost secondary to
the requirement that the award can survive a protest, an audit, and a public records request.

## What makes this domain distinct in government

**Fairness is the product.** Commercial buying optimizes for value and speed. Public buying
optimizes for value and speed *subject to* open competition, equal treatment, and a
documented rationale. Nearly every frustrating feature of public procurement follows from
that constraint, and designs that treat it as bureaucratic drag are rejected on contact.

**The requirement is written before the market is understood.** The most consequential
failure in this domain happens at the start: a specification written by people who cannot
talk freely to suppliers, describing a solution rather than a need. Everything downstream
inherits it.

**Contract administration is where the value is actually lost.** Organizations invest heavily
in the award and thinly in the following five years. Unmanaged contracts, missed renewal
dates, unclaimed service credits, and scope drift cost far more than a suboptimal award ever did.

**Agreement is one entity.** Contracts, grant awards, licences, and permits share a shape:
parties, term, obligations, conditions, and a status lifecycle. Modelling them separately —
which almost every organization does, in four systems — is the root of a great deal of
duplicated effort. See the [core data model](/data-entities/agreement/).

## Level variance

- **Federal.** Governed by a large, uniform, and prescriptive regulatory framework, with
  specialist acquisition workforce and formal warrant authority.
- **State.** Own procurement codes, varying substantially between states. Frequently operates
  cooperative vehicles that local governments buy from.
- **County / municipal.** Similar principles, far smaller thresholds, and rarely a dedicated
  acquisition professional — the person running the competition usually also owns the need.
  Cooperative purchasing matters most here.

## Where this domain connects

Acquisition consumes budget authority, produces the agreements that most technology and
service delivery depends on, and generates records with long retention obligations. It is
also the gate through which every vendor implementation in this library would actually have
to pass.
