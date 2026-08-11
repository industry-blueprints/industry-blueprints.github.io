---
id: sourcing-and-solicitation
title: Sourcing & Solicitation
type: capability
level: 2
version: '0.1'
status: draft
description: Defining what is needed, taking it to market openly, and reaching a defensible
  award decision.
last_updated: '2026-08-11'
capability_area: acquire
industries:
- public-sector
tracks:
- business
- experience-process
- information
- architecture
- trust-governance
- ai-automation
relationships:
  builds_on: []
  personas: []
  adds: []
---

## Business definition
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

## Lifecycle
Needs Definition & Market Research ·
Solicitation & Response Management ·
Evaluation & Award

## Domain model
Procurement & Contract Data Model, extending the
core model.
Contract specializes Agreement, exactly as
Grant Award does — and the model page sets out the case that
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
| Procurement cycle time | Process |
| Competition rate | Output |
| Sole-source share of spend | Process |
| Protest rate, and protests upheld | Process |
| Spend with small, local, and diverse suppliers | Output |
| Requirement met by what was delivered | Outcome |

## Trust and governance
Competition & Evaluation Integrity —
substantially the same control as
merit review integrity for grants, plus the price-specific
controls that grants does not need.

## AI and automation
Specification competition review — the
lowest-barrier automation opportunity here, available to organizations with no data platform at all.

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

## What to get right

**Write specifications as outcomes, not as the solution a department was already shown.** Starting
from a demonstrated product turns competition into theatre and creates real protest risk.

**Engage the market before finalizing requirements.** Written without that understanding,
requirements miss what the market can actually do — the single largest cause of failed
procurements. The rule is that engagement must be *equal and recorded*, not that it is forbidden,
so engage deliberately rather than skip it.

**Keep prices sealed until technical evaluation is complete.** Opening them early invalidates the
technical evaluation whatever anyone intends.

**Test published weightings against past competitions.** A published 70/30 weighting can still
operate as price-only in practice; testing it in advance catches score compression before award.

**Reserve emergency procurement for real emergencies.** Using it as a habit for poor planning
presenting as urgency erodes competition one justified exception at a time.

**Plan past the award decision.** The years of
[contract administration](/capabilities/contract-administration/) that follow need a plan too, not
just the award itself.
## Architecture

The architecture boundary for this capability follows the responsibilities, lifecycle, and
information described above. A dedicated architecture artifact has not yet been developed for
this inventory entry.
