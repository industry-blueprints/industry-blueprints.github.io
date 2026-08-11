---
id: treasury-and-cash-management
title: Treasury & Cash Management
type: capability
level: 2
version: '0.1'
status: draft
description: Knowing where the cash is, where it will be, and making sure the organization
  can pay what it owes on the day it owes it.
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
To manage the organization's cash position — forecasting inflows and outflows, maintaining
sufficient liquidity, investing surplus within permitted limits, and executing disbursements
securely.

**Public treasury is constrained investment.** The objectives are ordered: safety, then liquidity,
then yield — and the permitted instruments are usually set by statute rather than by policy. An
investment strategy that would be unremarkable commercially can be unlawful here.

## Desired outcomes

- A cash forecast reliable enough to act on
- Liquidity sufficient for obligations without excessive idle balances
- Investments within statutory limits, with concentration and maturity managed
- Collateralization of deposits above insured limits
- Disbursement controls that survive a determined social-engineering attempt
- Bank reconciliation current, not quarterly

## Lifecycle
Cash position monitoring and forecasting · bank account structure and rationalization · investment
policy compliance and execution · collateral monitoring · payment run preparation and release ·
positive pay and fraud controls · bank reconciliation · merchant services and card acceptance ·
escheatment of unclaimed property · short-term borrowing

## Domain model
Bank account inventory with signatories and purpose · daily cash position by fund · cash forecast
with assumptions · investment portfolio with instrument, maturity, and counterparty · collateral
pledges · payment files and release approvals · reconciliation status by account

## Measures

| Measure | Class |
|---|---|
| Cash forecast variance against actual | Process |
| Idle balances above operating requirement | Input |
| Portfolio yield against benchmark, within constraints | Outcome |
| Investments outside policy limits | Process |
| Accounts reconciled within the target window | Process |
| Payments released without dual authorization | Process |
| Deposits above insured limits without collateral | Process |

## Level variance

- **Federal.** Centralized disbursement and collection through the national treasury function,
  with agencies managing appropriated authority rather than a cash position in the local sense.
- **State.** A state treasurer's office managing a substantial portfolio, frequently operating a
  local government investment pool that municipalities may participate in.
- **County / municipal.** Statutorily constrained investment lists, deposits requiring
  collateralization, and an elected treasurer in many jurisdictions — meaning treasury reports to
  the electorate rather than to the administration, which changes how the function is governed.
  Smaller jurisdictions frequently rely on a state or county pool rather than investing directly.

## What to get right

**Forecast cash, don't just track the balance.** Managing to today's position invites either an
unnecessary short-term borrowing or a large idle balance earning nothing — a reliable forecast
avoids both.

**Keep a current inventory of bank accounts.** Departments open accounts for specific purposes
over decades; maintaining the inventory as they do is what lets it be produced when an auditor
asks for it.

**Update signatory records as staff change.** Authorization records at the bank that lag behind
staff turnover become a control failure that persists silently for years.

**Verify remittance changes out of band.** A supplier's bank details updated on the strength of an
email is the most successful fraud against public organizations, and the control is procedural —
see supplier eligibility and payment
integrity.

**Reconcile accounts on a short cycle, not at year-end.** Reconciling promptly is what surfaces
errors and unauthorized activity while recovery is still practical.

**Keep investment policy current with the statute.** Revising it as the permitted instrument list
is amended keeps the policy usable rather than stale.

**Prioritize liquidity ahead of yield.** Locking maturity to improve return and then borrowing
short-term to make payroll is a net loss dressed up as optimization — sequencing liquidity first
avoids it.
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
