---
type: Capability
title: Needs Definition & Acquisition Planning
description: Establishing what is actually required and how to obtain it — the stage
  that determines everything downstream and gets the least time.
resource: https://industry-blueprints.github.io/capabilities/needs-definition-and-acquisition-planning/
tags: [capability, procurement, requirements, market-research, planning]

generated: { by: human:jhofmann, at: 2026-07-27T21:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/acquire.md
  - predicate: has_participant
    target: /personas/chief-procurement-officer.md
  - predicate: has_participant
    target: /personas/program-manager.md
    note: Owns the need, and usually writes the first specification alone
  - predicate: has_participant
    target: /personas/solution-architect.md
    note: The party who can tell whether a requirement is a requirement or a product feature
  - predicate: supported_by
    target: /processes/needs-definition-and-market-research.md
---

## Purpose

To establish what outcome is actually required, whether the market can supply it, and what
acquisition strategy will produce genuine competition — before a solicitation is drafted.

**Everything downstream inherits this stage.** A specification written from an incumbent's
documentation forecloses competition no amount of later procedural rigour can restore, and the
resulting award will be procedurally perfect.

## Desired outcomes

- Requirements expressed as outcomes and constraints rather than as a product description
- Market capability understood before the strategy is fixed
- Total cost of ownership considered, not purchase price
- Acquisition strategy — vehicle, method, lot structure, term — chosen deliberately
- Existing contracts and cooperative vehicles checked before a new competition
- Enough planning lead time that the strategy is a choice rather than a default

## Key processes

Need articulation and outcome definition · make-buy-share analysis · market research and supplier
engagement · requirements development and review · total cost of ownership estimation · funding
confirmation · acquisition strategy and method selection · lot and term structuring · competition
review of the draft specification · schedule development

## Key data

Requirement statements with their source and owner · market research record — who was engaged and
what was learned · cost estimate with assumptions · existing contract and vehicle inventory ·
acquisition plan with method, rationale, and approvals · schedule with dependencies · risk
assessment for the acquisition itself

## Measures

| Measure | Class |
|---|---|
| Acquisitions with documented market research before strategy selection | Process |
| Requirements expressed as outcomes rather than specifications | Process |
| Planning lead time before solicitation release | Process |
| Existing vehicles checked before new competition | Process |
| Estimate accuracy against award value | Outcome |
| [Competition rate](/kpis/competition-rate/) on resulting solicitations | Outcome |

Competition rate is measured downstream and determined here. That displacement is why the stage is
under-invested.

## Level variance

- **Federal.** Formal acquisition planning with documented market research, small-business
  set-aside analysis, and required consideration of existing government-wide vehicles.
- **State.** Central procurement authority setting method thresholds, with agencies planning
  within them and a statewide contract portfolio to check first.
- **County / municipal.** Planning frequently compressed into days. The specification is often
  written by the requesting department alone, from a vendor's material, because that is the only
  document available describing what the thing does.

## What to get right

**Write the specification from outcomes, not an incumbent's documentation.** Copying it because it
exists and is precise forecloses competition at that moment, and no procedural stage that follows
can recover it — the failure that [specification competition
review](/ai-integrations/specification-competition-review/) exists to catch.

**Express requirements as outcomes, not a feature list.** Two hundred mandatory features, most of
which describe how one product works, turn the evaluation into a compatibility test.

**Ground the strategy in current market research.** Choosing it from an old assumption about the
market — often a decade stale — is what research is there to correct.

**Estimate total cost of ownership, not just purchase price.** Including implementation,
integration, training, data migration, and five years of support gets the budget right before the
solicitation is issued.

**Start planning before the current contract nears expiry.** Eight weeks out, "recompete as before"
becomes the default strategy — the situation
[renewal lead time](/kpis/renewal-lead-time/) is designed to make visible in advance.

**Structure lots to keep smaller suppliers in the field.** One large lot is easier to administer
but reduces the field to those who can bid the whole thing.

**Confirm funding before running the competition.** Suppliers incur bid costs on the expectation of
an award; cancelling for lack of budget is remembered, and the next competition attracts fewer of
them — see the [supplier](/personas/supplier/) view.
