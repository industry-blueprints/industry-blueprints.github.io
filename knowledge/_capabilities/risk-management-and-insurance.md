---
type: Capability
title: Risk Management & Insurance
description: Identifying, treating, and financing enterprise risk — including the
  claims that arrive whether or not anyone identified the risk first.
resource: https://industry-blueprints.github.io/capabilities/risk-management-and-insurance/
tags: [capability, risk, insurance, claims, liability, resilience]

generated: { by: human:jhofmann, at: 2026-07-27T19:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/govern.md
  - predicate: has_participant
    target: /personas/agency-director.md
  - predicate: has_participant
    target: /personas/internal-auditor.md
    note: Assurance over whether treatments are operating, not whether they were designed
  - predicate: has_participant
    target: /personas/budget-director.md
    note: Retained risk is a budget position whether or not it is recognized as one
---

## Purpose

To know what could stop the organization achieving its objectives, decide what to do about each
one, and finance the exposure that remains — through insurance, self-insurance, reserves, or an
explicit decision to carry it.

**Risk that is financed but not identified is still financed.** Every organization carries
retained risk; the difference is whether it appears in the budget as a decision or as a surprise.

## Desired outcomes

- Risks identified at the level of the objective they threaten, not as a generic list
- Each significant risk with an owner who can actually act on it
- Treatment decisions recorded, including deliberate acceptance
- Claims handled promptly and analysed for cause
- Cost of risk understood as a whole: premiums, retained losses, and administration
- Loss patterns fed back into operations rather than only into next year's premium

## Key processes

Risk identification and assessment · risk appetite setting · treatment selection and assignment ·
control design and testing · insurance placement and renewal · claims intake, investigation, and
settlement · loss run analysis · recovery and subrogation · business continuity planning ·
incident and near-miss reporting

## Key data

Risk register with owner, assessment, treatment, and review date · claims register with cause
coding · loss runs by category and location · insurance policy register with limits, retentions,
and renewal dates · exposure schedules — property, vehicles, employees, operations · continuity
plans with tested recovery objectives

## Measures

| Measure | Class |
|---|---|
| Significant risks with a named owner and a current review | Process |
| Total cost of risk — premium plus retained losses plus administration | Input |
| Claims closed within target, by category | Process |
| Repeat claims from a previously identified cause | Outcome |
| Continuity plans tested in the period | Process |
| Insurable exposures with current, accurate schedules | Process |

Repeat claims from a known cause is the measure that distinguishes risk management from insurance
buying.

## Level variance

- **Federal.** Largely self-insured, with claims handled under statutory tort and administrative
  claims frameworks rather than commercial policies. Enterprise risk management is a formal,
  directed discipline.
- **State.** Frequently operates a self-insurance fund covering agencies and sometimes local
  entities, with actuarial reserving and internal charge-back.
- **County / municipal.** The most commercially exposed level, and the most common user of
  **risk pools** — jurisdictions grouping to self-insure collectively. Pool membership often
  brings loss-control requirements that function as de facto operational standards, which is a
  significant and under-recognized lever on local practice.

## Where it goes wrong

**A register nobody revisits.** Compiled in a workshop, formatted, filed. Reviewed annually at
best, and never during the decision it was meant to inform.

**Risks written at the wrong altitude.** "Cyber attack" as a single line is not actionable.
Neither is a list of two hundred items.

**Owners who cannot act.** A risk assigned to someone with no authority over its cause is
unmanaged and reported as managed.

**Insurance mistaken for treatment.** Financing an exposure is not reducing it, and premiums rise
until someone notices the difference.

**Claims data uncoded by cause.** Loss runs that show cost by department but not by what happened,
so nothing can be prevented.

**Continuity plans never tested.** Written for an audit, filed, and first opened during the event
they were written for — at which point the contact list is four years out of date.

**Retained risk invisible in the budget.** Self-insured losses absorbed departmentally show up as
overspend rather than as the cost of a risk decision.
