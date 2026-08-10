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

## What to get right

**Bring departmental initiatives into the same visible portfolio.** Below-threshold work invisible
centrally still consumes the same scarce integration and security capacity as the governed
initiatives, so it needs the same visibility.

**Let gates actually stop initiatives.** A review that has never stopped anything is a reporting
ceremony — its cost is real even if its function isn't. Gates that can fail are what make the
process worth running.

**Release funding in stages tied to evidence.** Committing the entire budget at the point of least
information, then managing variance for three years, is what staged release is meant to prevent.

**Score cases on evidence, not on optimism.** Cases that compete on benefit claims invite inflation,
which makes nobody believe them, which pushes the ranking onto other grounds — grounding the
comparison in evidence keeps the case-writing effort worth it.

**Give benefits an operational owner who outlives the delivery team.** A benefit with no owner after
go-live becomes nobody's; assigning it to the operational owner, with the budget line adjusted to
match, keeps it tracked.

**Govern capacity as closely as money.** Twelve funded initiatives all requiring the same four
integration engineers need that constraint surfaced as a sequencing decision, not left to appear as
slippage across all twelve.

**Run the post-implementation review.** It is the one activity that would improve the next case, so
it is worth protecting even when the team has moved on.
