---
id: billing-and-receivables
title: Billing & Receivables
type: capability
level: 2
version: '0.1'
status: draft
description: Invoicing, accepting payment, and collecting what is owed for fees, fines,
  and charges — where aggressive collection can cost more than it recovers.
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
To bill accurately for services, fees, fines, and charges, make payment easy, and recover what is
owed — while distinguishing between parties who will not pay and parties who cannot.

**Fines and fees are a distinct problem from commercial receivables.** Where revenue targets are
attached to enforcement activity, the incentive structure distorts the underlying service, and the
resulting debt is frequently uncollectible by construction.

## Desired outcomes

- Bills that are accurate, timely, and understandable without a phone call
- Payment available through channels the payer already uses, without a punitive fee
- Ability-to-pay recognized before enforcement rather than after
- Debt aged, valued honestly, and written off when it is not recoverable
- Collection cost proportionate to the amount recovered
- One view of what a party owes across departments

## Lifecycle
Charge determination and rate application · invoice generation and delivery · payment acceptance
and allocation · account maintenance and adjustment · dunning and escalation · payment plan and
hardship assessment · fee waiver and reduction · third-party collection referral · write-off
authorization · refund and overpayment handling · dispute resolution

## Domain model
Receivable Account per party, spanning departments ·
charge and rate schedules with effective dates · invoice and payment history · aging by category ·
payment plan terms and adherence · hardship determinations · write-off register with reason ·
collection agency placements and recoveries

## Measures

| Measure | Class |
|---|---|
| Days sales outstanding, by revenue type | Process |
| Current-period collection rate | Output |
| Cost of collection per dollar recovered | Input |
| Aged debt beyond realistic recoverability | Process |
| Payment plans established, and adherence to them | Process |
| Bills generating a contact to the contact centre | Process |
| Debt held against parties below an ability-to-pay threshold | Outcome |

Cost of collection per dollar recovered is the measure that ends most aggressive collection
programmes when it is finally computed, and it is rarely computed.

## Level variance

- **Federal.** Statutory debt collection requirements with mandated referral timelines,
  administrative offset against other federal payments, and cross-servicing arrangements.
- **State.** Tax and non-tax debt with offset against state refunds and, in many jurisdictions,
  licence suspension as an enforcement lever — which frequently removes the debtor's means of
  earning the money.
- **County / municipal.** The widest range of small charges — utilities, permits, ambulance
  transport, parking, code enforcement, library, recreation — each in a different system, each
  billing separately, and collectively the most visible financial relationship most residents have
  with local government.

## What to get right

**Build one view of what a party owes, across systems.** Six systems, six bills, six collection
actions against one household leave no ability to offer a single arrangement.

**Make bills clear enough that they don't generate the contact.** Unclear charge descriptions and
no explanation of how to challenge produce avoidable volume in
[constituent service](/solutions/constituent-management/) — the cost lands in a
different budget from the one that caused it.

**Add an ability-to-pay step before escalation.** Without it, penalties compound on debt that was
never recoverable, converting a small charge into a licence suspension, a lien, or a warrant.

**Weigh collection cost against recovery.** Common for small balances, and invisible without the
measure.

**Write off debt that is genuinely uncollectible.** Leaving it on the books indefinitely because
write-off requires an uncomfortable authorization makes the receivable balance overstate the
position and the aging report meaningless.

**Set payment fees so the cheapest channel for the payer is also the cheapest for the
organization.** A card surcharge that inverts this steers payers the wrong way.

**Keep revenue targets off enforcement activity.** The most consequential thing to get right here:
once a fine is a budget line, the enforcement volume required to hit it stops being a function of
the underlying behaviour.
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
