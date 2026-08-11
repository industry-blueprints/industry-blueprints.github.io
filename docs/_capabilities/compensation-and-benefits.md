---
id: compensation-and-benefits
title: Compensation & Benefits
type: capability
level: 2
version: '0.1'
status: draft
description: Administering pay scales, differentials, leave, health, and retirement
  — and a total reward package whose largest component is invisible to the employee.
last_updated: '2026-08-11'
capability_area: staff
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
To set and administer what employees are paid and what they receive beyond pay — salary schedules,
step progression, differentials, leave entitlements, health coverage, and retirement benefits.

**Public sector total reward is weighted toward deferred and non-cash components.** Defined-benefit
pensions and health coverage frequently represent a large share of the package and are close to
invisible to the employee and to any candidate comparing an offer against a private-sector one.
That invisibility is a recruitment problem the organization creates for itself.

## Desired outcomes

- Pay competitive enough to recruit and retain in the roles that matter most
- Internal equity — comparable work compensated comparably
- Total reward communicated in terms a candidate can weigh
- Leave administered consistently and its liability accurately valued
- Benefit elections processed accurately and on time
- Long-term liabilities visible and funded rather than deferred

## Lifecycle
Salary schedule development and market survey · step and longevity progression · differential and
premium administration · pay equity analysis · benefit plan design and procurement · open
enrolment · life-event change processing · leave accrual, usage, and donation · leave liability
valuation · retirement system reporting and eligibility · deferred compensation administration ·
total reward statement production

## Domain model
Salary schedules with steps and effective dates · market survey data by benchmark role ·
differential and premium rules by class and unit · leave balances, accruals, and liability
valuation · benefit plan elections and dependent records · retirement service credit and
eligibility · employer contribution rates and funded status · total compensation cost per position

## Measures

| Measure | Class |
|---|---|
| Pay position against market, by benchmark role | Outcome |
| Internal equity variance for comparable work | Outcome |
| Offers declined citing compensation | Outcome |
| Accrued leave liability and its trend | Input |
| Pension funded ratio and contribution trajectory | Input |
| Benefit elections processed within the required window | Process |
| Employee understanding of total reward value | Outcome |

The last measure looks soft and predicts turnover better than the first, because people leave
against a comparison they made with incomplete information.

## Level variance

- **Federal.** Government-wide pay systems with locality adjustment, a defined-benefit and
  defined-contribution hybrid, and centrally administered health insurance.
- **State.** State pay plans and retirement systems, frequently administering pensions for local
  government participants as well — which makes the state's funding decisions a local budget
  constraint.
- **County / municipal.** Pay set locally against periodic market studies, with public safety
  compensation typically on separate schedules and richer pension terms. **Unfunded pension and
  retiree health liability is the dominant long-term financial exposure for many jurisdictions**,
  and it is set here.

## What to watch for

**Benchmark against the actual labour market, not just neighbouring jurisdictions.** Jurisdictions
that benchmark against each other drift together from the real market — most visibly in technology
and clinical roles.

**Watch for compression as new hires approach tenured pay.** Bringing new hires in near the rate of
ten-year staff to meet the market is rational per hire and corrosive in aggregate, and the
resulting attrition often gets attributed to something else.

**Communicate total reward, not just salary.** The pension and health contribution are large and
real; leaving them out of every conversation with a candidate hides most of the actual offer.

**Value leave liability as it accrues.** Balances carried at scale and cashed out at separation at
current rates need to appear as a managed liability well before they come due.

**Consolidate benefit administration instead of reconciling three systems by hand.** Elections in
one system, payroll deductions in another, carrier eligibility in a third — reconciled manually —
is how an employee ends up discovering at the pharmacy that their coverage did not transmit.

**Review accumulated differentials periodically.** Premiums added over decades by successive
agreements, each individually justified, can add up to a compensation structure nobody can explain.

**Fund pension cost as it is incurred.** Contribution holidays and optimistic return assumptions
move cost to a future administration — the most consequential decision in this capability and the
least visible.
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
