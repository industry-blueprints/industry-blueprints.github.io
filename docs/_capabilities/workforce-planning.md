---
id: workforce-planning
title: Workforce Planning
type: capability
level: 2
version: '0.1'
status: draft
description: Working out what people the organization will need, and noticing early
  enough that the answer is actionable.
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
To forecast the roles, skills, and headcount the organization will need, compare that to what it
has and will lose, and act on the gap while acting is still possible.

The public sector version has a distinctive feature: **a large, known, near-term retirement
cohort.** Unlike most workforce risk, this one is highly predictable and still routinely
unaddressed.

## Desired outcomes

- Critical roles identified, with a named successor or a plan
- Skill gaps visible before they become service failures
- Attrition understood by cause rather than treated as weather
- Position control reflecting reality rather than the adopted budget
- Institutional knowledge captured before it walks out

## Lifecycle
Demand forecasting against service and policy change · supply forecasting including retirement
eligibility · gap analysis · critical role identification · succession planning · skills inventory
and development planning · position control reconciliation · attrition analysis

## Domain model
Position roster and vacancy status (Position) ·
retirement eligibility by year · time in role and time in service · skills and certifications ·
separation reasons · recruitment lead time by role

## Measures

| Measure | Class |
|---|---|
| Vacancy rate, overall and in critical roles | Process |
| Retirement-eligible share within three and five years | Process |
| Critical roles with an identified successor | Process |
| Voluntary attrition, by cause | Outcome |
| Time to full productivity for a new hire | Outcome |
| Service capacity against forecast demand | Outcome |

## Level variance

- **Federal.** Large-scale planning capability and formal workforce reporting, with defined
  mission-critical occupations.
- **State.** Varies widely; frequently done well for uniformed and licensed roles and not at all
  for administrative ones.
- **County / municipal.** Rarely a formal capability. The plan is the budget's position roster,
  and succession planning means hoping the incumbent gives notice.

## What to get right

**Plan for skills and capability, not just headcount.** Tracking what capability is at stake,
rather than headcount by fund alone, is what makes the plan more than budgeting.

**Act on retirement risk once it's visible.** Knowing three key people can retire within two years
only helps if something changes because of it — succession planning is the follow-through.

**Reconcile vacancy savings against real capacity.** Positions held vacant for budget balance
still count as capacity in every plan unless that gap is tracked deliberately, so surfacing it
early is what keeps service from degrading unnoticed.

**Break attrition down by cause, not just rate.** Twelve percent concentrated in a single unit, at
eighteen months of tenure, tells you where to look — segmenting the rate is what makes it
actionable.

**Give knowledge transfer real time, not an offboarding checklist line.** Fifteen years of
undocumented judgement needs more than two weeks of handover — planning for that transfer is the
single most under-recognized opportunity in the domain.
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
