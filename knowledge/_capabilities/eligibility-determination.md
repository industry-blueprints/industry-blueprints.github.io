---
type: Capability
title: Eligibility Determination
description: Deciding whether someone qualifies, against criteria, with notice and
  appeal rights — where a wrong decision has a person on the other end of it.
resource: https://industry-blueprints.github.io/capabilities/eligibility-determination/
tags: [capability, eligibility, determination, benefits, due-process, verification]

generated: { by: human:jhofmann, at: 2026-07-28T09:00:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/serve.md
  - predicate: has_participant
    target: /personas/caseworker.md
    note: Applies criteria that are unambiguous on paper and ambiguous in half of real cases
  - predicate: has_participant
    target: /personas/constituent.md
    note: The applicant, for whom the determination is frequently consequential
  - predicate: has_participant
    target: /personas/program-manager.md
  - predicate: uses_data
    target: /data-entities/application.md
---

## Purpose

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

## Key processes

Criteria maintenance and interpretation guidance · application intake and completeness screening ·
identity and fact verification · data matching against internal and external sources · income,
household, and asset assessment · discretion and hardship determination · decision issue with
reasons · notice and appeal rights delivery · continuing eligibility review and redetermination ·
change of circumstance processing · quality assurance sampling

## Key data

Criteria with authority, effective dates, and interpretation guidance ·
[Application](/data-entities/application/) with declared facts and supporting evidence ·
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

## Where it goes wrong

**Procedural denial as the dominant failure mode.** A meaningful share of denials are for missing
documents, missed appointments, or an unreturned form — not for ineligibility. The same pattern
appears in [grants](/capabilities/grants-management-outbound/), where applications are screened out
administratively rather than on merit.

**Verification of facts already held.** Asking an applicant to prove something in the
organization's own records, because the systems do not talk — the practical cost of the
[integration](/capabilities/application-and-integration-management/) gap.

**Criteria ambiguous in real cases.** Clear on paper, indeterminate in half of actual
circumstances, so interpretation lands on the caseworker and consistency becomes impossible. This
is a [policy development](/capabilities/policy-development/) defect surfacing downstream.

**Notices that state the outcome and not the reason.** "You do not qualify" gives the applicant
nothing to correct and no basis for appeal.

**Churn at redetermination.** Eligible households losing benefit because a form arrived at a stale
address, then reapplying and being reinstated — which costs the programme more than continuous
enrolment would.

**Error rate measured, take-up not.** Both are quality measures; only one carries a financial
penalty, so only one gets managed.

**Automation crossing into the decision.** Extraction, matching, and completeness checking are
sound uses. Determining eligibility is a decision affecting a person's entitlement and requires the
boundary set out in
[AI disclosure and human review](/governance/ai-disclosure-and-human-review/).
