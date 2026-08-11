---
id: fund
title: Fund
type: capability-area
level: 2
order: 30
version: '0.1'
status: draft
description: Raising, allocating, spending, and accounting for public money — and
  proving to everyone entitled to ask that it was done properly.
last_updated: '2026-08-11'
industries:
- public-sector
tracks:
- business
relationships:
  builds_on: []
  adds: []
---

Every government organization funds itself, spends what it is given, and accounts for the
difference. The obligations are unusually specific: public money carries appropriation
authority, fund accounting, and an audit trail that most private-sector finance functions
never contend with.

## What makes this capability area distinct in government

**Money is not fungible.** Appropriations are authority to spend a specific amount, for a
specific purpose, in a specific period. Fund accounting exists to keep those boundaries
visible, and most financial system pain in government traces back to a commercial product
that assumed one pot of money.

**Two directions of grant.** The same organization is frequently both a recipient and an
awarder — a state agency receives a federal award and subawards to counties. These are
modelled as separate capabilities because the obligations differ sharply, but they share a
data model and are often, unhelpfully, run by different teams using different systems.

**Audit is a design constraint, not an afterthought.** The requirement to demonstrate that a
dollar was spent as authorized shapes the processes, the data retention, and the approval
chains. Designs that treat auditability as reporting bolted on at the end fail their first
examination.

## Level variance

- **Federal.** Appropriation law, apportionment, and anti-deficiency constraints are strict
  and personally enforceable. The outbound grant capability is enormous, and largely
  administered through states.
- **State.** The pivot point: receives federal awards, appropriates its own budget, and
  subawards to locals. Usually the most complex fund structure of the three.
- **County / municipal.** Smaller fund structures but the same statutory obligations, run by
  much smaller teams — often one person holding budget, treasury, and grants at once.
  Capacity, not complexity, is the binding constraint.

## Where this capability area connects

Funding touches everything: procurement commits it, human capital consumes most of it,
programs deliver it, and audit examines it. It is also the capability area where AI integration is
most constrained by explainability requirements — a recommendation nobody can trace is not
usable in a process that must be defended to an auditor.
