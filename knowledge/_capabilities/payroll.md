---
type: Capability
title: Payroll
description: Paying people correctly and on time under rules set by statute, union
  agreement, and grant condition simultaneously.
resource: https://industry-blueprints.github.io/capabilities/payroll/
tags: [capability, payroll, compensation, time-and-attendance, withholding]

generated: { by: human:jhofmann, at: 2026-07-27T20:30:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/fund.md
  - predicate: has_participant
    target: /personas/hr-director.md
    note: Owns the entitlement rules payroll executes
  - predicate: has_participant
    target: /personas/budget-director.md
    note: Payroll is the largest single expenditure and the one with the least in-year flexibility
---

## Purpose

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

## Key processes

Time and attendance capture and approval · leave accrual and usage · gross-to-net calculation ·
differential, overtime, and premium application · deduction and garnishment administration ·
labour distribution and grant charging · retirement system reporting · tax deposit and filing ·
payment disbursement · retroactive and off-cycle processing · overpayment recovery · year-end
statements

## Key data

[Position](/data-models/core-public-sector-model/) and incumbent record · pay plans, steps, and
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

## Where it goes wrong

**Time reconstructed at period end.** Entered from memory near the deadline, approved without
review, and used to charge grants — where it becomes an audit finding under the time-and-effort
requirements referenced in
[cost allocation](/capabilities/cost-allocation-and-chargeback/).

**Labour reallocated after the fact.** Charged to a default code, journalled to the grant later.
The same defect described in
[accounting](/capabilities/accounting-and-financial-reporting/), and the reason grant financial
reports are assembled by hand.

**Bargaining terms implemented in spreadsheets.** A differential rule too complex for the system,
maintained in parallel by one person, and applied inconsistently the moment they are on leave.

**Retroactive settlements as manual campaigns.** A contract settled eighteen months late, and
thousands of adjustments computed by hand.

**Overpayments found in an annual reconciliation.** By which point recovery is legally constrained
and practically difficult, and the employee has budgeted around the money.

**Position and employee conflated.** Vacancy, funding, and reclassification are properties of the
[position](/capabilities/position-and-classification-management/), not the person — collapse them
and workforce reporting stops working.

**Payroll excluded from continuity planning.** The one process that absolutely cannot miss a
cycle, and often the last one tested.
