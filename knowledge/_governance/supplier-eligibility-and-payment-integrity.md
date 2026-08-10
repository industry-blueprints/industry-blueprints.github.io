---
type: Governance Control
title: Supplier Eligibility & Payment Integrity
description: Paying the right organization, that is allowed to be paid, for something
  that was actually delivered — and stopping the remittance-change fraud.
resource: https://industry-blueprints.github.io/governance/supplier-eligibility-and-payment-integrity/
tags: [governance, procurement, payments, fraud, debarment, controls]

generated: { by: human:jhofmann, at: 2026-07-27T16:00:00Z }
status: draft
stale_after: 2027-01-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: constrains
    target: /processes/contract-handover-and-performance.md
  - predicate: constrains
    target: /capabilities/vendor-and-supplier-management.md
  - predicate: constrains
    target: /ai-integrations/invoice-deliverable-matching.md
---

## Control objective

Public money reaches the organization that earned it, that is eligible to receive it, in the
amount owed for what was actually delivered.

Three separable questions, three separate controls, commonly conflated into "we pay approved
invoices."

## Why this control exists

**Eligibility.** Organizations excluded from receiving public money must not receive it. Where
funds originate federally, screening obligations flow down to pass-through entities and
subrecipients — so this control appears in
[grants](/capabilities/grants-management-outbound/) too.

**Delivery.** Payment against an invoice rather than against verified delivery is the most common
control weakness in contract administration, and the easiest to exploit.

**Payment routing.** The remittance-change fraud is among the most successful attacks on public
organizations, and it succeeds against otherwise well-controlled finance functions.

## The remittance-change fraud

Worth setting out plainly, because the control is procedural rather than technical and is often
missing.

An email arrives, apparently from a known supplier — correct branding, plausible context,
sometimes a genuine compromised account. It advises that bank details have changed and asks that
future payments be redirected. A finance clerk updates the record. The next payment, often large,
goes to the attacker.

The reason it works: **remittance detail is usually an editable field on a supplier record**, and
updating it feels like data maintenance rather than a financial transaction.

**The control:** out-of-band verification using contact details already held, never those supplied
in the request. Segregation between the person who requests, the person who verifies, and the
person who approves. A full change history. And a hold period on the first payment after any
change, which converts a successful attack into a detected one.

## Required controls

**Eligibility**

1. Debarment and exclusion screening **before award and before payment**, not at registration only
2. Periodic re-verification of registration and certification currency, with expiry tracked
3. Screening obligations flowed down where funds originate elsewhere
4. Eligibility determinations recorded with source and date
5. **Exclusion decisions made by a person**, never automated — an organization's ability to receive
   public money is at stake

**Payment**

6. Payment follows acceptance; acceptance follows defined criteria
7. Three-way match — order, receipt or acceptance, invoice — enforced in workflow, not policy
8. Payment within delegated authority, with segregation between requester, approver, and disburser
9. Duplicate invoice detection before payment
10. Contract value and not-to-exceed checked before payment

**Remittance**

11. Change requests verified out of band, using contact details **already held**
12. Segregation between requester, verifier, and approver of a remittance change
13. Full change history retained with who requested, who verified, and through what channel
14. Hold and confirmation on the first payment after a change
15. Alert to the supplier's known contact when their remittance details change

## Required evidence

Screening records with source and date, before award and before payment · certification expiry
tracking · acceptance records linked to payments · three-way match exceptions and their resolution ·
remittance change log with verification channel and personnel · first-payment-after-change
confirmations · duplicate detection results

## What organizations need to get right

**Re-screen eligibility on a cadence, not just at registration.** Eligibility is a state that
changes; rechecking it periodically catches a supplier debarred after onboarding — see
[Supplier](/data-entities/supplier/).

**Approve payment against delivery, not just invoice.** Confirming "we received this," not only
"the amount looks right," is what approval should mean.

**Require verification, segregation, and history on remittance changes**, rather than leaving
remittance as a plain editable field.

**Resolve supplier identity before relying on duplicate detection.** Consolidating records that
look distinct but are the same supplier is what lets duplicate detection catch the same invoice
paid twice.

**Certification expiry unwatched**, so diverse-supplier reporting counts lapsed certifications
and the figure is overstated.

## AI relevance

**Appropriate** — duplicate invoice detection; three-way match exception surfacing; anomaly
detection on payment patterns; flagging remittance changes for verification; identifying candidate
duplicate supplier records for human confirmation.

**Not appropriate** — automated eligibility or debarment determination; automated supplier record
merges. Both have consequences that are difficult to unwind: an incorrect exclusion damages an
organization's ability to trade with government, and an incorrect merge corrupts spend history,
payment routing, and performance records simultaneously.

Detection automated, decision human. The same line drawn in
[competition and evaluation integrity](/governance/competition-and-evaluation-integrity/).

## Level variance

- **Federal.** Government-wide exclusions system with screening obligations that flow down to
  recipients of federal funds.
- **State.** State-level exclusion lists in addition to federal, frequently with separate systems.
- **County / municipal.** Manual screening against external lists, and the greatest exposure to
  duplicate supplier records because there is no central master — which weakens both the screening
  and the duplicate-payment controls at once.

## Review frequency

Every six months, and immediately after any attempted or successful payment fraud, whether or not
it succeeded.
