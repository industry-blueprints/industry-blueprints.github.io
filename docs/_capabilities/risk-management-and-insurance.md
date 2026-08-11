---
id: risk-management-and-insurance
title: Risk Management & Insurance
type: capability
level: 2
version: '0.1'
status: draft
description: Identifying, treating, and financing enterprise risk — including the
  claims that arrive whether or not anyone identified the risk first.
last_updated: '2026-08-11'
capability_area: govern
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

## Lifecycle
Risk identification and assessment · risk appetite setting · treatment selection and assignment ·
control design and testing · insurance placement and renewal · claims intake, investigation, and
settlement · loss run analysis · recovery and subrogation · business continuity planning ·
incident and near-miss reporting

## Domain model
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

## What to get right

**Keep the register live and use it in decisions.** A register compiled in a workshop, formatted,
and filed only helps if it's revisited more than annually and actually consulted during the
decision it was meant to inform.

**Write risks at the right altitude.** "Cyber attack" as a single line is not actionable. Neither
is a list of two hundred items — pitch each risk at a level someone can act on.

**Assign owners who can act on the cause.** A risk assigned to someone with no authority over its
cause stays unmanaged even when it's reported as managed.

**Treat insurance as financing, not as a reduction in exposure.** Recognizing the difference is
what keeps premiums from rising until someone notices it.

**Code claims data by cause.** Loss runs that show cost by department but not by what happened
leave nothing preventable — coding by cause is what makes prevention possible.

**Test continuity plans before the event.** A plan written for an audit, filed, and first opened
during the event it was written for arrives with a contact list four years out of date — testing
it catches that in advance.

**Recognize retained risk in the budget.** Self-insured losses absorbed departmentally read as
overspend unless they're recognized as the cost of a risk decision.
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
