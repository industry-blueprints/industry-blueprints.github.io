---
type: Capability
title: Sourcing & Solicitation
description: Defining what is needed, taking it to market openly, and reaching a
  defensible award decision.
resource: https://industry-blueprints.github.io/capabilities/sourcing-and-solicitation/
tags: [capability, procurement, solicitation, competition, award]

generated: { by: human:jhofmann, at: 2026-07-27T16:00:00Z }
status: draft
stale_after: 2027-01-27
depth: complete

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/acquire.md
  - predicate: has_participant
    target: /personas/chief-procurement-officer.md
    note: Owns process integrity and the defensibility of the award
  - predicate: has_participant
    target: /personas/program-manager.md
    note: Owns the requirement and usually chairs evaluation
  - predicate: has_participant
    target: /personas/solution-architect.md
    note: Translates the need into a specification that does not name a product
  - predicate: has_participant
    target: /personas/supplier.md
    note: Bears the cost of competing — first-class, not an external dependency
  - predicate: uses_data
    target: /data-entities/contract.md
  - predicate: uses_data
    target: /data-entities/supplier.md
---

## Purpose

To obtain what the organization needs at fair value, through a process that treats all prospective
suppliers equally and produces a decision that survives challenge.

**The output is a defensible decision as much as a purchase.** Nearly every frustrating feature of
public solicitation follows from that, and designs that treat it as bureaucratic drag are rejected
on contact.

## Desired outcomes

- Requirements that describe the need rather than a preferred product
- Genuine competition, accessible to smaller and local suppliers
- Evaluation that is consistent, documented, and free of undisclosed criteria
- Award within a timeframe that does not cause departments to route around the process
- A record sufficient to answer a protest

## Current state: how this typically runs today

A department sees a demonstration and forms a view about the solution. A vendor is helpful,
providing a sample specification. That document, or something derived from it, arrives at
procurement as "the requirement," with a deadline and an approved budget.

The solicitation publishes to a list of known suppliers. Questions are answered individually
because it is faster. Responses arrive in different structures and are normalized by hand.

A panel scores in a spreadsheet, sometimes in a room where the most senior voice anchors the
discussion. Prices are opened — occasionally too early. A preferred bidder emerges, and then weeks
disappear between that decision and an executed contract, owned by nobody and measured by no one.

### Why it works that way

- **Pre-market engagement is restricted**, so the only information about what is possible comes
  from suppliers who sought the department out.
- **Nobody is funded to research a market.** It is analytical work with no budget line.
- **Individual Q&A answers feel responsive**, and the fairness cost is invisible to the answerer.
- **Scoring together is faster** than scoring independently, and the anchoring cost is invisible too.
- **The measured process ends at the award decision**, so the post-award stretch belongs to no one.

## Processes

[Needs Definition & Market Research](/processes/needs-definition-and-market-research/) ·
[Solicitation & Response Management](/processes/solicitation-and-response-management/) ·
[Evaluation & Award](/processes/evaluation-and-award/)

## Data

[Procurement & Contract Data Model](/data-models/procurement-data-model/), extending the
[core model](/data-models/core-public-sector-model/).
[Contract](/data-entities/contract/) specializes [Agreement](/data-entities/agreement/), exactly as
[Grant Award](/data-entities/grant-award/) does — and the model page sets out the case that
competitive award is one shared shape wearing two vocabularies.

## Business rules

- Requirements expressed as outcomes and constraints, not products; "or equivalent" with stated
  criteria where a brand reference is unavoidable.
- Market research documented before the specification is finalized.
- All substantive communication published to all prospective bidders.
- Criteria, weightings, and combination method published before submission opens; unchanged after.
- Conflicts declared against the actual bidder list, before scoring.
- Technical scoring completed and recorded before commercial submissions are opened.
- Clarification distinguished from negotiation; both conducted equally and recorded.
- Departure from the scored outcome requires a recorded rationale.
- Complete record retained per schedule — it is the protest defence.

## Measures

| Measure | Class |
|---|---|
| [Procurement cycle time](/kpis/procurement-cycle-time/) | Process |
| [Competition rate](/kpis/competition-rate/) | Output |
| Sole-source share of spend | Process |
| Protest rate, and protests upheld | Process |
| Spend with small, local, and diverse suppliers | Output |
| Requirement met by what was delivered | Outcome |

## Governance

[Competition & Evaluation Integrity](/governance/competition-and-evaluation-integrity/) —
substantially the same control as
[merit review integrity](/governance/merit-review-integrity/) for grants, plus the price-specific
controls that grants does not need.

## AI opportunities

[Specification competition review](/ai-opportunities/specification-competition-review/) — the
lowest-barrier opportunity in this library, available to organizations with no data platform at all.

**The evaluation boundary is the same as grants.** This decides who receives public money, so
automation may normalize, check, and surface; it may not score, rank, or judge whether a response
meets a qualitative requirement.

## Standards and external mappings

| Concept | Maps toward |
|---|---|
| Acquisition regulation | Federal Acquisition Regulation at federal level; state procurement codes below |
| Supplier identity | Entity identifiers used in federal award reporting; tax and legal identifiers locally |
| Exclusions | Government-wide and state exclusion lists |
| Contract vehicles | Cooperative and framework arrangements published by their host |

## Level variance

- **Federal.** Uniform prescriptive regulation, a specialist acquisition workforce, warranted
  contracting officers with personal authority and exposure, and an established protest forum.
- **State.** Own procurement codes with real variation; frequently establishes cooperative vehicles
  that local governments buy from.
- **County / municipal.** Same principles, far lower thresholds, rarely a dedicated professional.
  Award frequently requires a public vote. Cooperative purchasing matters most here, because
  running a full competition can cost more than the purchase.

## Where it goes wrong

**Specifications written as solutions**, arriving from a department already demonstrated to.
Competition becomes theatre and the protest risk is real.

**No pre-market engagement**, so requirements are written without understanding what the market can
do. The single largest cause of failed procurements — and often a misreading, since the rule is
that engagement must be *equal and recorded*, not that it is forbidden.

**Prices opened early**, invalidating technical evaluation whatever anyone intends.

**Score compression**, so a published 70/30 weighting operates as price-only. Testable in advance
against past competitions, and the result is usually uncomfortable.

**Emergency procurement as a habit** — poor planning presenting as urgency, eroding competition one
justified exception at a time.

**Award treated as the finish line**, with nothing planned for the years of
[contract administration](/capabilities/contract-administration/) that follow.
