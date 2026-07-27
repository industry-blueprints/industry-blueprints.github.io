---
type: Capability
title: Purchasing & Requisitioning
description: The day-to-day buying that never reaches a competition — requisitions,
  orders, cards, and receipting, at the highest volume in the domain.
resource: https://industry-blueprints.github.io/capabilities/purchasing-and-requisitioning/
tags: [capability, purchasing, requisition, purchase-order, p-card, receipting]

generated: { by: human:jhofmann, at: 2026-07-27T21:15:00Z }
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
    target: /personas/budget-director.md
    note: Encumbrance is where purchasing meets budgetary control
---

## Purpose

To let staff obtain what they need against arrangements already in place — raising requisitions,
routing approvals, issuing orders, encumbering funds, and confirming receipt — with control
proportionate to value.

**This is the highest-volume capability in the domain and receives the least design attention.**
Nearly every transaction the organization makes passes through here, and the failure mode is not
fraud but friction that drives spend outside the process entirely.

## Desired outcomes

- Buying against existing contracts easy enough that nobody routes around it
- Approval thresholds proportionate to value and risk
- Funds encumbered at commitment, not at invoice
- Receipt confirmed by the person who received the goods
- Three-way match before payment, without a manual chase
- Card programmes with real, timely oversight rather than annual sampling

## Key processes

Catalogue and contract price list maintenance · requisition creation and approval routing · funds
check and encumbrance · purchase order issue and transmission · order amendment · goods and
service receipting · invoice matching and exception handling · purchasing card issuance, limits,
and reconciliation · emergency and after-the-fact purchase authorization · spend analysis

## Key data

Requisition and approval trail · [purchase order](/data-models/procurement-data-model/) with
contract reference and encumbrance · catalogue and contracted price lists · receipt records with
receiver identity · invoice-order-receipt match status and exceptions · card transactions with
merchant category and reconciliation state · spend by category, supplier, and contract

## Measures

| Measure | Class |
|---|---|
| Spend under contract versus off-contract | Outcome |
| Requisition-to-order cycle time | Process |
| Orders raised after the invoice arrived | Process |
| Three-way match exceptions requiring manual resolution | Process |
| Card transactions reconciled within the required period | Process |
| Split purchases below an approval threshold | Process |
| Encumbrance accuracy against actual commitment | Process |

**Split purchases and after-the-fact orders are the two diagnostics.** Both indicate the process
is slower than the work, and both are usually solved by adjusting thresholds rather than by
enforcement.

## Level variance

- **Federal.** Micro-purchase and simplified acquisition thresholds set in regulation, with card
  programmes operating under government-wide rules.
- **State.** Statewide contracts that agencies buy against, with delegated purchasing authority up
  to defined limits.
- **County / municipal.** Locally set thresholds, frequently unchanged for many years and
  therefore effectively lowered by inflation each year — which steadily pushes routine purchases
  into formal processes designed for larger ones.

## Where it goes wrong

**Thresholds fixed in nominal terms.** A limit set fifteen years ago now captures ordinary
supplies, so formal procedure is applied to trivial spend and everything slows.

**After-the-fact purchase orders.** Goods received, invoice arrives, order raised retrospectively
to make the system agree. The control is a formality and the encumbrance data is fiction.

**Split purchases.** Two orders just under the threshold. Almost always a response to a process
that is too slow rather than an attempt to conceal.

**Receipting by the wrong person.** Confirmed centrally by whoever holds the invoice, which
collapses the separation between ordering, receiving, and paying.

**Card programmes reviewed annually.** A sample examined twelve months late, when neither recovery
nor correction is practical.

**Off-contract buying that is easier than on-contract buying.** If the catalogue is out of date and
the contracted route takes three weeks, staff will use a card — and the negotiated pricing in
[vendor and supplier management](/capabilities/vendor-and-supplier-management/) goes unused.

**Encumbrances never liquidated.** Old commitments left open, so available budget is understated
and year-end brings a scramble to clear them.
