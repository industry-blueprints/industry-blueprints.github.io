---
id: contract-administration
title: Contract Administration
type: capability
level: 2
version: '0.1'
status: draft
description: Managing performance, payment, and change across the life of a contract
  — the phase where value is actually realized or quietly lost.
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
To ensure the organization receives what it contracted for, pays only for what it received, and
manages change and expiry deliberately rather than by default.

Organizations invest heavily in the award and thinly in the following five years. **Unmanaged
contracts, missed renewal dates, unclaimed service credits, and scope drift routinely cost more
than a suboptimal award ever did.**

## Desired outcomes

- Performance measured against the obligations actually written in the agreement
- Payment matched to delivery and acceptance
- Changes authorized, priced, and recorded before the work happens
- Renewals and expiries acted on with time to compete
- Poor performance documented well enough to be actionable

## Current state: how this typically runs today

The contract is signed and filed. Procurement closes the file; the department inherits it, and
nobody walks anyone through what was agreed. **The obligations then exist only inside a PDF that
nobody re-reads until something goes wrong.**

Invoices are approved by confirming the amount looks right, not by confirming delivery. Performance
is assessed impressionistically — nothing recorded while things are broadly working, frustration
accumulating informally when they are not. Service credits trigger and are never claimed.

A department asks the supplier for something slightly out of scope; the supplier obliges. This
repeats. Eighteen months later the delivered service differs materially from the competed one with
no amendment trail. Renewal arrives as a supplier notification, too late to compete, so the
contract is extended from no negotiating position at all.

### Why it works that way

- **Contract administration is unrecognized work** — not in an objective, not resourced, on top of
  a full role, and the first thing to slip.
- **Reading a contract is genuinely hard.** Obligations are spread across a main document,
  schedules, and amendments, in language written for a dispute rather than for daily use.
- **Approving an invoice takes two minutes; verifying delivery takes twenty.** Under load, the
  two-minute version wins.
- **Small changes are individually reasonable.** The cost appears only cumulatively.
- **Documenting poor performance feels adversarial** until the moment it is needed.

## Lifecycle
Contract Handover & Performance Monitoring ·
Change, Renewal & Closeout

## Domain model
Procurement & Contract Data Model. Two decisions carry this
capability: **Acceptance authorizes Payment** as a modelled relationship rather than a workflow
convention, and **Obligation is a first-class entity** rather than prose inside an agreement.
See Contract.

## Business rules

- No contract goes live without a named manager and a completed handover.
- Obligations extracted into a register at execution, with owners and dates.
- Payment follows acceptance; acceptance follows defined criteria.
- Performance recorded contemporaneously, both satisfactory and unsatisfactory.
- Entitlements applied when triggered, or a decision not to apply them recorded.
- Changes authorized and priced before work is performed.
- Cumulative change assessed against the original award, not request by request.
- A change that would have altered the competition requires a new competition.
- Renewal decision dated from required lead time, not from expiry.
- Closeout initiated automatically at end of term; retention clock recorded.

## Measures

| Measure | Class |
|---|---|
| Renewal lead time adequacy | Process |
| Service credit realization | Process |
| Contracts with a named, active manager | Process |
| Deliverables accepted against defined criteria | Process |
| Change orders as share of original value | Process |
| Requirement actually met over the term | Outcome |

## Trust and governance
Supplier Eligibility & Payment Integrity —
covering three separable questions usually conflated into "we pay approved invoices": is this
organization allowed to be paid, was the thing delivered, and are we paying the right bank account.

## Patterns

Obligation Tracking — minimum maturity level 2, deliberately.
A spreadsheet with owners and dates beats a PDF, and the step from nothing to something is where
nearly all the value is.

## AI and automation
Obligation extraction — the strongest extraction case
in the library, and the one most exposed to flattening conditionality ·
Invoice-deliverable matching

Neither may decide. Acceptance is a judgement with contractual and financial consequence, and
payment approval is a financial control with segregation requirements.

## Level variance

- **Federal.** Formally designated contracting officer's representative with defined duties,
  required training, and written authority limits.
- **State.** Contract management delegated to the program with varying central oversight and
  varying formality of designation.
- **County / municipal.** Frequently no named manager at all — the requesting department inherits
  administration without training, capacity, or recognition. The handover gate matters most at
  exactly the level least likely to have it.

## What to get right

**Run the handover.** It is the root cause of nearly everything else in this capability, and
fixable in an afternoon per contract.

**Act on the renewal date deliberately, not by inattention.** Left to pass unattended, the term
extends and the chance to renegotiate is gone for another cycle.

**Pay against confirmed delivery, not just the invoice.** Paying on invoice alone is the most
common control weakness in the domain.

**Price cumulative change against the original award.** A series of small unpriced changes,
assessed individually, would never have been approved as one amendment.

**Track entitlement triggers and invoke them.** Real money, contractually owed, goes unclaimed when
nobody is tracking the trigger.

**Document performance as it happens, not just at termination.** Without a contemporaneous record,
there is no basis for action when action is needed.

**Build a portfolio view across contracts, grants, licences, and permits.** Kept in separate
systems, total exposure to a supplier is unanswerable — the problem
Agreement exists to solve.
## Architecture

The architecture boundary for this capability follows the responsibilities, lifecycle, and
information described above. A dedicated architecture artifact has not yet been developed for
this inventory entry.
