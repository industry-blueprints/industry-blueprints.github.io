---
type: Capability
title: Legal Counsel & Representation
description: Advising on authority and exposure before decisions are made, and
  representing the organization once they have been.
resource: https://industry-blueprints.github.io/capabilities/legal-counsel-and-representation/
tags: [capability, legal, counsel, litigation, authority]

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
    note: The client, and the one who decides whether advice is sought early or late
  - predicate: has_participant
    target: /personas/records-manager.md
    note: Legal holds and discovery run through records
  - predicate: has_participant
    target: /personas/contract-manager.md
    note: Contract disputes and terms review
---

## Purpose

To answer the question that precedes every other design question in government — *do we have the
authority to do this?* — and to represent the organization when its decisions are challenged.

**The authority question has no private-sector equivalent.** A public organization can only do
what it has been empowered to do, and discovering the answer late is the most expensive way to
discover it.

## Desired outcomes

- Authority confirmed before commitment, not after
- Legal risk stated in terms a decision-maker can weigh against other risks
- Advice sought early enough to shape the option, not only to bless it
- Litigation and claims managed with the record intact
- Legal holds applied promptly and released deliberately
- Recurring exposure fed back into policy rather than re-litigated

## Key processes

Authority and legal opinion requests · contract and agreement review · litigation and claims
management · legal hold issuance, tracking, and release · discovery response · settlement
authorization · administrative hearing representation · outside counsel engagement and oversight ·
legal risk reporting

## Key data

Matter register with status, exposure, and assigned counsel · opinion register, indexed so past
answers are findable · legal hold register with custodians and scope · privilege log · settlement
and judgment record · outside counsel spend by matter · claims history feeding
[risk management](/capabilities/risk-management-and-insurance/)

## Measures

| Measure | Class |
|---|---|
| Advice requests received before commitment versus after | Process |
| Time to first substantive response on a request | Process |
| Legal holds issued within the required interval of trigger | Process |
| Holds released when no longer required | Process |
| Opinions reused rather than re-researched | Process |
| Matters arising from a previously identified and unremediated cause | Outcome |
| Outside counsel spend as a share of total legal cost | Input |

The last outcome measure is the one that turns a legal function from reactive to preventive.

## Level variance

- **Federal.** In-house counsel with department-level litigating authority, and representation
  frequently conducted by a central justice function rather than the agency itself.
- **State.** An elected or appointed attorney general with independent standing, which can produce
  a genuine divergence between the agency's position and the state's.
- **County / municipal.** A county or city attorney who may be elected, may serve the governing
  body rather than the administration, and in small jurisdictions may be a contracted firm on
  retainer — which makes "call legal early" a decision with a visible invoice attached.

## Where it goes wrong

**Consulted after the decision.** Counsel asked to defend a commitment already made, when the
cheap intervention was available three months earlier.

**Advice as a veto rather than a risk statement.** "You can't do that" ends the conversation;
"this exposes you to X, mitigated by Y" lets a decision-maker choose. The second is harder and far
more useful.

**Opinions that cannot be found.** The same question researched four times in six years because
there is no indexed register.

**Legal holds that never end.** Applied on trigger, never released, so retention and
[disposition](/capabilities/records-and-information-management/) silently stop working across the
whole estate.

**Privilege asserted reflexively.** Over-assertion in response to
[public records requests](/capabilities/public-records-and-transparency-response/) is a common
finding and erodes trust in every legitimate assertion.

**Settlement patterns nobody analyses.** Repeated claims from one cause, each settled individually
and none traced back to the practice producing them.
