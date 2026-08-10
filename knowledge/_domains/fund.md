---
type: Capability Domain
title: Fund
description: Raising, allocating, spending, and accounting for public money —
  and proving to everyone entitled to ask that it was done properly.
resource: https://industry-blueprints.github.io/domains/fund/
tags: [domain, finance, budget, grants, revenue]

generated: { by: human:jhofmann, at: 2026-07-27T09:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
domain_type: enterprise
map_order: 30

capabilities:
  - title: Budget Formulation
    definition: Building a proposed budget — requests, forecasts, prioritization, and the legislative or council submission.
    target: /capabilities/budget-formulation.md
  - title: Budget Execution
    definition: Managing appropriations, allotments, transfers, encumbrances, and spend against authority once enacted.
    target: /capabilities/budget-execution.md
  - title: Accounting & Financial Reporting
    definition: Recording transactions to the general ledger and producing statutory and public financial statements.
    target: /capabilities/accounting-and-financial-reporting.md
  - title: Treasury & Cash Management
    definition: Cash positioning, banking relationships, investments, and disbursement.
    target: /capabilities/treasury-and-cash-management.md
  - title: Revenue & Taxation
    definition: Assessing, levying, and administering taxes and other own-source revenue.
    target: /capabilities/revenue-and-taxation.md
  - title: Billing & Receivables
    definition: Invoicing, payment acceptance, collections, and delinquency management for fees, fines, and charges.
    target: /capabilities/billing-and-receivables.md
  - title: Grants Management (Outbound)
    definition: Awarding and monitoring funds to other organizations — notice, competition, award, subrecipient oversight, closeout.
    target: /capabilities/grants-management-outbound.md
  - title: Grants Management (Inbound)
    definition: Pursuing, receiving, and administering funds from another level of government, including matching and reporting duties.
    target: /capabilities/grants-management-inbound.md
  - title: Debt & Capital Financing
    definition: Issuing and servicing debt, and managing the obligations that come with it.
    target: /capabilities/debt-and-capital-financing.md
  - title: Cost Allocation & Chargeback
    definition: Distributing shared and indirect costs across programs, funds, and grants defensibly.
    target: /capabilities/cost-allocation-and-chargeback.md
  - title: Payroll
    definition: Calculating and disbursing compensation, withholdings, and benefit contributions.
    target: /capabilities/payroll.md
  - title: Financial Compliance & Audit Response
    definition: Preparing for, responding to, and remediating single audits and other financial examinations.
    target: /capabilities/financial-compliance-and-audit-response.md

relationships:
  - predicate: part_of
    target: /industries/public-sector.md
---

Every government organization funds itself, spends what it is given, and accounts for the
difference. The obligations are unusually specific: public money carries appropriation
authority, fund accounting, and an audit trail that most private-sector finance functions
never contend with.

## What makes this domain distinct in government

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

## Where this domain connects

Funding touches everything: procurement commits it, human capital consumes most of it,
programs deliver it, and audit examines it. It is also the domain where AI integration is
most constrained by explainability requirements — a recommendation nobody can trace is not
usable in a process that must be defended to an auditor.
