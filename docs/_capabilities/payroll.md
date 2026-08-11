---
id: payroll
title: Payroll
type: capability
level: 2
version: '0.1'
status: draft
description: Paying people correctly and on time under rules set by statute, union
  agreement, and grant condition simultaneously.
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
To calculate and disburse compensation, withholdings, and benefit contributions accurately and on
schedule, and to charge the resulting cost to the correct fund, program, and award.

**Public payroll is unusually rule-dense.** Multiple bargaining agreements, statutory leave
regimes, retirement systems with their own reporting, shift and hazard differentials, and grant
conditions on labour charging all apply to the same paycheque. Complexity here is not a sign of
poor design; it is the requirement.

## Desired outcomes

- Correct pay, first time, every cycle
- Time captured at source rather than reconstructed
- Labour cost distributed to the right fund, project, and award when incurred
- Withholdings and contributions remitted accurately and on time
- Retroactive adjustments — from settlements and reclassifications — processed without a manual campaign
- Overpayments detected quickly and recovered lawfully

## Lifecycle
Time and attendance capture and approval · leave accrual and usage · gross-to-net calculation ·
differential, overtime, and premium application · deduction and garnishment administration ·
labour distribution and grant charging · retirement system reporting · tax deposit and filing ·
payment disbursement · retroactive and off-cycle processing · overpayment recovery · year-end
statements

## Domain model
Position and incumbent record · pay plans, steps, and
effective dates · bargaining agreement terms driving calculation · time records with approval
trail · leave balances and accrual rules · deduction and garnishment orders · labour distribution
by fund, project, and award · remittance and filing records

## Measures

| Measure | Class |
|---|---|
| Payroll accuracy — cycles without an error requiring correction | Outcome |
| Off-cycle payments as a share of total | Process |
| Time records approved before the processing deadline | Process |
| Labour cost distributed at source versus reallocated later | Process |
| Filings and remittances submitted on time | Process |
| Overpayments identified, and time to detection | Process |
| Retroactive adjustment volume after settlements | Process |

Off-cycle payment volume is the diagnostic. Each one is a correction, an omission, or a late
approval, and the count tracks the health of everything upstream.

## Level variance

- **Federal.** Payroll delivered through shared service providers serving many agencies, with
  standardized processing and centralized systems.
- **State.** A central payroll system serving agencies, alongside separate retirement systems with
  their own reporting cadence and rules.
- **County / municipal.** The greatest per-capita complexity relative to capacity: multiple
  bargaining units in a small organization, public safety with distinct overtime and pension
  rules, seasonal and part-time staff, and elected officials on separate arrangements — frequently
  administered by a very small team.

## What to get right

**Capture time at source, close to when the work happens.** Entered from memory near the deadline
and approved without review, it becomes an audit finding once used to charge grants, under the
time-and-effort requirements referenced in
[cost allocation](/capabilities/cost-allocation-and-chargeback/).

**Charge labour to the right fund when it is incurred, not after the fact.** Charged to a default
code and journalled to the grant later is the same defect described in
[accounting](/capabilities/accounting-and-financial-reporting/), and the reason grant financial
reports are assembled by hand.

**Build bargaining terms into the system, not a parallel spreadsheet.** A differential rule too
complex for the system and maintained by one person gets applied inconsistently the moment they are
on leave.

**Process retroactive settlements systematically, not as a manual campaign.** A contract settled
eighteen months late still needs thousands of adjustments computed reliably, which a manual process
struggles to do.

**Detect overpayments quickly, not at an annual reconciliation.** Found early, recovery is more
straightforward; found late, it is legally constrained and the employee has already budgeted around
the money.

**Keep position and employee as distinct records.** Vacancy, funding, and reclassification are
properties of the [position](/capabilities/position-and-classification-management/), not the
person — keeping them distinct is what keeps workforce reporting working.

**Include payroll in continuity planning and test it.** It is the one process that absolutely
cannot miss a cycle, which makes it worth testing rather than leaving for last.
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
