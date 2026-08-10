---
type: AI Integration
title: Match Invoices to Deliverables Before Payment
description: Verify that what is being invoiced was actually accepted — closing the
  most common control gap in contract administration.
resource: https://industry-blueprints.github.io/ai-integrations/invoice-deliverable-matching/
tags: [ai, contracts, payments, controls, verification]

generated: { by: human:jhofmann, at: 2026-07-27T16:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
ai_modality: queue
ai_task_type: classification
minimum_level: 3

relationships:
  - predicate: assists
    target: /personas/contract-manager.md
---

## Business problem

Invoices are approved by whoever holds the budget code, usually by confirming the amount looks
right rather than by confirming delivery occurred. Verifying delivery means opening the contract,
finding the deliverable, checking acceptance, and comparing the rate — which takes twenty minutes
against a two-minute approval task.

Under load, the two-minute version wins. **This is the most common control weakness in contract
administration**, and the easiest to exploit.

## Target outcome

Every invoice checked against contract terms, deliverables, and acceptance records before payment,
with exceptions surfaced for human resolution and clean matches flowing through.

## What to check

| Check | Detects |
|---|---|
| Invoice references a valid, active contract | Payment against expired or non-existent agreements |
| Line items map to contracted deliverables or rates | Charges outside scope |
| Quantities match accepted deliverables | Billing for work not accepted |
| Rates match contracted rates, including escalation | Unauthorized price increases |
| Cumulative billing within not-to-exceed | Overspend against authority |
| Not a duplicate of a prior invoice | Double payment |
| Remittance matches verified supplier details | Redirected payment fraud |
| Milestones invoiced have acceptance records | Payment ahead of delivery |
| Applicable credits or retainage applied | Entitlements not deducted |

The last one connects directly to
[service credit realization](/kpis/service-credit-realization/) — the invoice is the natural point
to apply a credit, and it is the point at which it is most often forgotten.

## Minimum maturity level: 3

Requires deliverables and rates held as structured contract data, and acceptance recorded as
discrete events. At level 2 the contract is a PDF and acceptance is an email, so there is nothing
to match against.

This is the same prerequisite as [obligation tracking](/patterns/obligation-tracking/), and it is
worth noting: **extracting contract terms into structure unlocks several capabilities at once.**
The business case should be made across all of them, not for this one alone.

## Prerequisites that are usually missing

1. **Deliverables with acceptance criteria as structured data**, not prose in a schedule.
2. **Acceptance recorded as an event** with a date and a person, distinct from invoice approval.
3. **Rates in structured form**, including escalation mechanisms.
4. **A defined exception route with capacity to work it.** Flags nobody resolves become flags
   everyone dismisses.

## Human oversight

Staff-facing tier under
[AI disclosure and human review](/governance/ai-disclosure-and-human-review/), with the control
boundary stated plainly:

- **Nothing is paid automatically on a clean match.** Approval remains a human act within
  delegated authority — this is a financial control with segregation requirements, and automating
  approval would defeat them.
- Exceptions surface with the specific discrepancy and the evidence, not a generic flag.
- No invoice is rejected automatically; a supplier is entitled to an explanation from a person.
- Match results are retained as audit evidence — this is precisely what
  [Internal Auditor](/personas/internal-auditor/) asks for and cannot usually get.

## Success metrics

- Invoices verified against acceptance before payment
- Exceptions caught pre-payment versus post-payment recovery
- Duplicate payments
- Overspend against not-to-exceed
- Credits applied at invoice rather than claimed later
- Audit findings on payment controls
- Exception false-positive rate

## Risk level

**Low to moderate.** Advisory, internal, checkable, with human approval retained. The failure mode
is exception fatigue — too many low-value flags and approvers wave everything through, which
recreates the original problem while adding a step and a false sense of control.

Tune thresholds against realistic volume before deployment, and monitor the dismissal rate as the
health indicator.
