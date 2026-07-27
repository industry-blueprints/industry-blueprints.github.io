---
type: Capability
title: Enterprise Portfolio & Investment Governance
description: Deciding which initiatives are funded, staged, and stopped — and
  holding them to the case that got them funded.
resource: https://industry-blueprints.github.io/capabilities/enterprise-portfolio-and-investment-governance/
tags: [capability, portfolio, investment, governance, benefits, stage-gate]

generated: { by: human:jhofmann, at: 2026-07-27T19:30:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/govern.md
  - predicate: has_participant
    target: /personas/chief-information-officer.md
    note: Most enterprise investment governance is, in practice, technology investment governance
  - predicate: has_participant
    target: /personas/budget-director.md
  - predicate: has_participant
    target: /personas/program-manager.md
    note: Writes the case, then lives inside it
  - predicate: has_participant
    target: /personas/solution-architect.md
    note: Architectural fit is a gate criterion, or it is nothing
---

## Purpose

To allocate finite investment capacity across competing initiatives, stage them so commitment
increases with confidence, and stop the ones that are not going to deliver.

**The stopping is the capability.** Selecting initiatives is easy and every organization does it.
Terminating one that has a sponsor, a team, and two years of sunk cost is the part that requires
governance, and its absence is why portfolios silently over-commit.

## Desired outcomes

- One visible portfolio, including the work funded departmentally
- Cases comparable enough to be ranked against each other
- Commitment released in stages tied to evidence, not to the fiscal calendar
- Initiatives stopped or re-scoped when the case no longer holds
- Benefits owned by the business, tracked after delivery, and reflected in a budget line
- Capacity, not just money, treated as the binding constraint

## Key processes

Investment intake and screening · business case development and challenge · prioritization and
portfolio balancing · stage-gate review and release of funding · dependency and capacity
management · in-flight assurance and health reporting · re-baselining · termination · benefits
definition, ownership, and post-implementation realization review

## Key data

Portfolio register with stage, sponsor, and funding released versus approved · business cases with
stated assumptions and benefit claims · gate decisions and their conditions · dependency map ·
delivery capacity by skill · benefit register with owners and measurement method · post-
implementation reviews

## Measures

| Measure | Class |
|---|---|
| Initiatives with an approved case before spend | Process |
| Gates held on evidence rather than on schedule | Process |
| Initiatives stopped or materially re-scoped at a gate | Process |
| Portfolio demand against assessed delivery capacity | Input |
| Benefits with a named business owner and a measurement method | Process |
| Benefits reviewed after implementation | Process |
| Claimed benefits actually realized | Outcome |

The gap between the last two is the most informative number this capability produces, and most
organizations cannot compute it because the review never happens.

## Level variance

- **Federal.** Structured capital planning and investment control for technology, with tiered
  review by risk and value, agency-level portfolio reporting, and a CIO with statutory authority
  over technology investment decisions.
- **State.** Central technology oversight bodies with approval thresholds, plus legislative budget
  scrutiny of large projects that adds a second, differently-timed gate.
- **County / municipal.** Governance through the budget process and council approval, with
  thresholds set by purchasing policy. Small jurisdictions often have no portfolio view at all —
  each department buys within its own budget, and the first enterprise-wide picture appears during
  a consolidation attempt.

## Where it goes wrong

**Shadow portfolio.** Departmental initiatives under the approval threshold, invisible centrally,
consuming the same scarce integration and security capacity as the governed ones.

**Gates that never fail.** A review at which no initiative has ever been stopped is a reporting
ceremony. Its cost is real and its function is not.

**Full funding at approval.** Committing the entire budget at the point of least information, then
managing variance for three years.

**Optimism as a bidding strategy.** Cases compete on benefit claims, so claims inflate, so nobody
believes them, so the ranking is made on other grounds — and the case-writing effort was wasted.

**Benefits owned by the delivery team.** The team disbands at go-live and the benefit becomes
nobody's. Benefits belong to the operational owner, with the budget line adjusted to match.

**Money governed, capacity not.** Twelve funded initiatives all requiring the same four
integration engineers. The constraint surfaces as slippage across all twelve rather than as a
sequencing decision.

**No post-implementation review.** The one activity that would improve the next case, and the
first cut when the team moves on.
