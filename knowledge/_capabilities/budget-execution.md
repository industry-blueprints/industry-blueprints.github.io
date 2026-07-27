---
type: Capability
title: Budget Execution
description: Spending within authority — managing appropriations, encumbrances, and
  adjustments across the year without overspending or leaving money unused.
resource: https://industry-blueprints.github.io/capabilities/budget-execution/
tags: [capability, budget, finance, appropriation, controls]

generated: { by: human:jhofmann, at: 2026-07-27T11:30:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/fund.md
  - predicate: has_participant
    target: /personas/budget-director.md
  - predicate: has_participant
    target: /personas/program-manager.md
    note: Spends against the allocation and explains variance
  - predicate: has_participant
    target: /personas/internal-auditor.md
    note: Tests whether spending stayed within authority
---

## Purpose

To ensure money is spent only for authorized purposes, within authorized amounts, in the
authorized period — and to make that provable afterwards.

## Desired outcomes

- No overspend against appropriation
- No material underspend either, which represents service not delivered
- Encumbrances that give an accurate picture of remaining spending power
- Variance visible early enough to act on
- Spending traceable to its authority

## Key processes

Appropriation load and allotment · encumbrance and commitment control · expenditure processing ·
budget transfer and amendment · variance monitoring and reporting · position control · year-end
close and carryforward

## Key data

Appropriation and allotment balances · encumbrances · expenditures and accruals · position
control roster · transfer history with authority reference

## Measures

| Measure | Class |
|---|---|
| Appropriation overspend incidents | Process |
| Year-end underspend as share of budget | Process |
| Encumbrance accuracy | Process |
| Time from spend to visibility in reporting | Process |
| Transfers as share of adopted budget | Process |

A high transfer rate is worth watching: it usually means the budget was formulated at the wrong
level of granularity, not that execution is undisciplined.

## Level variance

- **Federal.** Apportionment by period, strict anti-deficiency exposure with personal
  consequences, and formal reprogramming rules.
- **State.** Allotment control varies; transfer authority is often delegated within limits set in
  the appropriation act.
- **County / municipal.** Council or board approval typically required for transfers above a
  threshold or between funds, which makes execution partly a public process.

## Where it goes wrong

**Encumbrances not maintained.** Commitments not recorded, so available balance is overstated and
the overspend is discovered at close.

**Vacancy savings as a management tool.** Holding positions vacant to balance the year is the most
common lever and the least visible. It degrades service on a delay, and nothing in the financial
record shows why.

**Spend visible a month late.** Monthly close cycles mean managers steer using a picture that has
already changed.

**Transfers without recorded authority.** The amount moves; the basis does not. This is the single
most common audit finding in this capability — see [Internal Auditor](/personas/internal-auditor/).

**Year-end spend-down.** Use-it-or-lose-it rules producing low-value purchases in the final weeks,
which is a rational response to a structural incentive rather than a discipline problem.
