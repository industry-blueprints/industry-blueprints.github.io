---
id: benefit-and-payment-delivery
title: Benefit & Payment Delivery
type: capability
level: 2
version: '0.1'
status: draft
description: Issuing entitlements and managing changes, overpayments, and recovery
  — where the recovery policy determines whether the programme helps or harms.
last_updated: '2026-08-11'
capability_area: serve
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
To deliver what an eligible party is entitled to — money, services, goods, or vouchers — on time
and in a usable form, adjust it when circumstances change, and handle overpayment and recovery.

**How overpayments are recovered determines whether the programme is a support or a trap.**
Overpayment is usually caused by administrative delay or by a reporting rule the recipient did not
understand, not by fraud. Recovering it at a rate the household cannot absorb converts a benefit
into a debt and frequently costs more downstream than the amount recovered.

## Desired outcomes

- Payments issued on a predictable schedule the recipient can plan around
- Delivery methods that do not extract fees from the benefit
- Changes of circumstance processed before they generate an overpayment
- Overpayments distinguished by cause — agency error, recipient error, fraud — and treated differently
- Recovery at a rate assessed against ability to pay, with waiver available
- Suspension and termination preceded by adequate notice and a route to respond
- Fraud pursued proportionately, without treating every recipient as a suspect

## Lifecycle
Entitlement calculation · payment scheduling and issue · delivery method enrolment and change ·
change of circumstance intake and adjustment · suspension, termination, and reinstatement ·
overpayment identification and classification by cause · notice of overpayment and appeal rights ·
recovery arrangement and ability-to-pay assessment · waiver and compromise · replacement of lost or
stolen benefits · fraud referral to [investigations](/capabilities/investigations/) ·
reconciliation to the ledger

## Domain model
Entitlement record with calculation basis and effective dates · payment schedule and issue history
with delivery method · Payment reconciliation state ·
change of circumstance events with report date and effective date · overpayment record with cause
classification, balance, and recovery arrangement · waiver determinations · replacement requests ·
suspension and termination notices with delivery evidence

## Measures

| Measure | Class |
|---|---|
| Payments issued on the scheduled date | Process |
| Time from reported change to adjusted payment | Process |
| Overpayments by cause — agency error, recipient error, fraud | Outcome |
| Overpayment value recovered against cost of recovery | Input |
| Waivers granted where hardship was established | Process |
| Recipients paying delivery fees to access their benefit | Outcome |
| Terminations later reversed on appeal | Outcome |

**Overpayments classified by cause is the measure that changes policy.** Where agency error
dominates — and it frequently does — aggressive recovery is the organization charging households
for its own processing delay.

## Level variance

- **Federal.** Direct benefit payment at national scale with electronic delivery, and statutory
  overpayment recovery and waiver provisions.
- **State.** Administers the large assistance programmes, issuing through electronic benefit cards
  and direct deposit under federal rules on recovery and replacement.
- **County.** Delivers general assistance and emergency aid from own funds, frequently as the payer
  of last resort with the most discretion and the least money.
- **Municipal.** Utility assistance, fee waivers, and housing subsidies — small programmes where
  the delivery method is often a credit against a bill the organization itself issues, which is the
  cleanest mechanism available.

## Getting recovery right

**Process a reported change before it becomes an overpayment.** Processing it weeks late creates
the overpayment through delay, and then recovers it from the person who reported the change
promptly.

**Set recovery against ability to pay, not a flat percentage.** A uniform rate regardless of
household circumstances is administratively simple and produces evictions.

**Put the waiver in the notice, not just in the rules.** Provided for in policy but never mentioned
to the recipient, it gets requested by almost nobody.

**Choose delivery methods that don't charge the recipient.** Card fees, ATM charges, and
check-cashing costs come out of a benefit calculated to a minimum standard.

**Verify the address before treating non-response as non-cooperation.** A letter sent to a stale
address and returned undelivered, then treated as failure to cooperate, disproportionately affects
people who move frequently — who are disproportionately the people the programme exists for.

**Keep fraud and error separate in language and process.** Treating them identically deters
reporting and suppresses take-up more broadly than the cases it addresses.

**Reconcile benefit issuance to the ledger as it happens.** Left to diverge from
[accounting](/capabilities/accounting-and-financial-reporting/), the programme's actual expenditure
is only established retrospectively.

**Design replacement processes around good faith.** Treating a lost card or stolen benefit as
presumptively fraudulent leaves households without food or fuel while it is investigated.
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
