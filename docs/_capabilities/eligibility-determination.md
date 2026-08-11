---
id: eligibility-determination
title: Eligibility Determination
type: capability
level: 2
version: '0.1'
status: draft
description: Deciding whether someone qualifies, against criteria, with notice and
  appeal rights — where a wrong decision has a person on the other end of it.
last_updated: '2026-08-11'
capability_area: serve
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
To decide whether a person or organization qualifies for a service, benefit, or authorization —
applying published criteria to verified facts, issuing a decision with reasons, and providing a
route to challenge it.

**Two errors, and they are not symmetric.** Wrongly denying someone eligible causes immediate,
concentrated harm to a person who usually has no reserve. Wrongly approving someone ineligible
causes diffuse cost and an overpayment recovery later. Programmes that treat both as equally bad
optimize for the second, and the resulting burden falls on applicants who are entitled.

## Desired outcomes

- Criteria published, current, and expressed in terms an applicant can self-assess against
- Verification proportionate to risk, using data the organization already holds
- Determinations consistent between assessors and over time
- Decisions issued with reasons specific enough to act on
- Notice and appeal rights given plainly, with the deadline stated
- Continuing eligibility reviewed without requiring the applicant to reapply from nothing
- Discretion exercised where the rules permit it, and recorded when it is

## Lifecycle
Criteria maintenance and interpretation guidance · application intake and completeness screening ·
identity and fact verification · data matching against internal and external sources · income,
household, and asset assessment · discretion and hardship determination · decision issue with
reasons · notice and appeal rights delivery · continuing eligibility review and redetermination ·
change of circumstance processing · quality assurance sampling

## Domain model
Criteria with authority, effective dates, and interpretation guidance ·
Application with declared facts and supporting evidence ·
verification results and their source · determination record with reasoning and the criteria
applied · notice issued and its delivery evidence · redetermination schedule and outcomes · change
of circumstance history · quality review findings

## Measures

| Measure | Class |
|---|---|
| Time from complete application to determination | Process |
| Applications denied for procedural reasons rather than on merit | Outcome |
| Determination consistency across assessors, sampled | Outcome |
| Decisions overturned on appeal | Outcome |
| Verification performed from data already held | Process |
| Continuing eligibility lapses causing avoidable loss of benefit | Outcome |
| Take-up among the estimated eligible population | Outcome |

**Take-up is the measure that reframes the capability.** A programme reaching sixty percent of its
eligible population has a larger problem than its error rate, and it is the measure least often
reported because it requires estimating the denominator.

## Level variance

- **Federal.** Programme rules set nationally with prescribed verification requirements, quality
  control sampling, and error rate measurement carrying financial consequences for administering
  states.
- **State.** Administers most large means-tested programmes under federal rules, frequently through
  integrated eligibility systems covering several programmes at once — which is where the largest
  and most troubled public sector system implementations occur.
- **County.** Delivers eligibility face to face in many states, holding the caseworker relationship
  while operating a state system under state rules.
- **Municipal.** Smaller local programmes — utility assistance, fee waivers, housing — usually with
  simple criteria and no verification infrastructure.

## What to get right

**Deny on merit, not on missing paperwork.** A meaningful share of denials are for missing
documents, missed appointments, or an unreturned form — not for ineligibility. The same pattern
appears in [grants](/capabilities/grants-management-outbound/), where applications are screened out
administratively rather than on merit.

**Verify from records the organization already holds.** Asking an applicant to prove something
already in the organization's own records reflects a system that does not talk to itself — the
practical cost of the
[integration](/capabilities/application-and-integration-management/) gap.

**Write criteria that hold up in real cases, not just on paper.** Criteria clear on paper but
indeterminate in half of actual circumstances push interpretation onto the caseworker and make
consistency impossible. This is a [policy development](/capabilities/policy-development/) defect
surfacing downstream.

**State the reason, not just the outcome.** "You do not qualify" gives the applicant nothing to
correct and no basis for appeal; a specific reason gives them both.

**Keep eligible households enrolled through redetermination.** Losing benefit because a form
arrived at a stale address, then reapplying and being reinstated, costs the programme more than
continuous enrolment would.

**Manage take-up with the same rigor as error rate.** Both are quality measures; only one carries a
financial penalty, so make sure both get managed.

**Keep automation to extraction and checking, and leave the decision to a person.** Extraction,
matching, and completeness checking are sound uses. Determining eligibility is a decision affecting
a person's entitlement and requires the boundary set out in
AI disclosure and human review.
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
