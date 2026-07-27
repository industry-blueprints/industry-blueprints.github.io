---
type: Capability
title: Billing & Receivables
description: Invoicing, accepting payment, and collecting what is owed for fees,
  fines, and charges — where aggressive collection can cost more than it recovers.
resource: https://industry-blueprints.github.io/capabilities/billing-and-receivables/
tags: [capability, billing, receivables, collections, fees, fines]

generated: { by: human:jhofmann, at: 2026-07-27T20:15:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/fund.md
  - predicate: has_participant
    target: /personas/constituent.md
    note: Payer, and frequently a payer with no ability to pay
  - predicate: has_participant
    target: /personas/customer-service-representative.md
    note: Absorbs the contact volume every unclear bill generates
---

## Purpose

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

## Key processes

Charge determination and rate application · invoice generation and delivery · payment acceptance
and allocation · account maintenance and adjustment · dunning and escalation · payment plan and
hardship assessment · fee waiver and reduction · third-party collection referral · write-off
authorization · refund and overpayment handling · dispute resolution

## Key data

Receivable [Account](/data-models/core-public-sector-model/) per party, spanning departments ·
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

## Where it goes wrong

**No single view of what a party owes.** Six systems, six bills, six collection actions against
one household, and no ability to offer one arrangement.

**Bills that cause the contact.** Unclear charge descriptions and no explanation of how to
challenge, producing avoidable volume in
[constituent service](/capabilities/constituent-service-management/) — the cost lands in a
different budget from the one that caused it.

**Escalation with no ability-to-pay step.** Penalties compounding on debt that was never
recoverable, which converts a small charge into a licence suspension, a lien, or a warrant.

**Collection cost exceeding recovery.** Common for small balances, and invisible without the
measure.

**Debt carried forever.** Never written off because write-off requires an uncomfortable
authorization, so the receivable balance overstates the position and the aging report is
meaningless.

**Payment fees that steer the payer wrong.** A card surcharge making the cheapest channel for the
payer the most expensive channel for the organization.

**Revenue targets on enforcement activity.** The most consequential failure. Once a fine is a
budget line, the enforcement volume required to hit it stops being a function of the underlying
behaviour.
