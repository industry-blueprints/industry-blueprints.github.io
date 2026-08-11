---
id: budget-execution
title: Budget Execution
type: capability
level: 2
version: '0.1'
status: draft
description: Spending within authority — managing appropriations, encumbrances, and
  adjustments across the year without overspending or leaving money unused.
last_updated: '2026-08-11'
capability_area: fund
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
To ensure money is spent only for authorized purposes, within authorized amounts, in the
authorized period — and to make that provable afterwards.

## Desired outcomes

- No overspend against appropriation
- No material underspend either, which represents service not delivered
- Encumbrances that give an accurate picture of remaining spending power
- Variance visible early enough to act on
- Spending traceable to its authority

## Lifecycle
Appropriation load and allotment · encumbrance and commitment control · expenditure processing ·
budget transfer and amendment · variance monitoring and reporting · position control · year-end
close and carryforward

## Domain model
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

## What to watch for

**Keep encumbrances current.** Commitments not recorded overstate the available balance, and the
overspend surfaces only at close.

**Make vacancy savings visible when they are used as a management tool.** Holding positions vacant
to balance the year is the most common lever and the least visible one. It degrades service on a
delay, and nothing in the financial record shows why unless it is tracked.

**Shorten the lag between spend and visibility.** Monthly close cycles mean managers are steering
using a picture that has already changed.

**Record the authority behind every transfer.** The amount moving without a recorded basis is the
single most common audit finding in this capability — see Internal Auditor.

**Recognize year-end spend-down as an incentive problem, not just a discipline one.** Use-it-or-
lose-it rules produce low-value purchases in the final weeks — a rational response to the
structure, which is where the fix belongs.
## Architecture

The architecture boundary for this capability follows the responsibilities, lifecycle, and
information described above. A dedicated architecture artifact has not yet been developed for
this inventory entry.

## Trust and governance

Trust concerns include authority to act, access to operational records, accountable decisions,
retention, and an auditable history. Applicable controls vary with the workload, jurisdiction,
and information sensitivity; a dedicated trust model has not yet been developed for this draft.

## AI and automation

AI and automation opportunities have not yet been evaluated for this capability. Future
patterns remain bounded by the authority, access, decision, and audit controls of the
underlying work.
