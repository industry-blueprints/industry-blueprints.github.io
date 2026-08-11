---
id: purchasing-and-requisitioning
title: Purchasing & Requisitioning
type: capability
level: 2
version: '0.1'
status: draft
description: The day-to-day buying that never reaches a competition — requisitions,
  orders, cards, and receipting, at the highest volume in the domain.
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

## Lifecycle
Catalogue and contract price list maintenance · requisition creation and approval routing · funds
check and encumbrance · purchase order issue and transmission · order amendment · goods and
service receipting · invoice matching and exception handling · purchasing card issuance, limits,
and reconciliation · emergency and after-the-fact purchase authorization · spend analysis

## Domain model
Requisition and approval trail · purchase order with
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

## What to get right

**Keep thresholds current in real terms.** A limit set fifteen years ago and never adjusted now
captures ordinary supplies, so formal procedure ends up applied to trivial spend and everything
slows.

**Raise the order before the goods arrive.** Raising the order retrospectively, after goods are
received and the invoice arrives, just to make the system agree, turns the control into a
formality and the encumbrance data into fiction.

**Size thresholds to actual need rather than inviting splits.** Two orders just under the
threshold are almost always a response to a process that is too slow rather than an attempt to
conceal, so the fix is usually the threshold, not enforcement.

**Have the receiving person confirm receipt.** Confirmation by whoever holds the invoice instead
of whoever received the goods collapses the separation between ordering, receiving, and paying.

**Reconcile card programmes close to the transaction.** A sample examined twelve months late
leaves neither recovery nor correction practical.

**Make on-contract buying the easy path.** If the catalogue is out of date and the contracted
route takes three weeks, staff will use a card instead — and the negotiated pricing in
[vendor and supplier management](/capabilities/vendor-and-supplier-management/) goes unused.

**Liquidate encumbrances as commitments close.** Old commitments left open understate available
budget and turn year-end into a scramble to clear them.
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
