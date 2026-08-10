---
type: Capability
title: Intergovernmental Relations
description: Coordinating with other levels and units of government on shared
  mandates, shared money, and delivery neither party controls alone.
resource: https://industry-blueprints.github.io/capabilities/intergovernmental-relations/
tags: [capability, intergovernmental, coordination, mandates, federalism]

generated: { by: human:jhofmann, at: 2026-07-27T19:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal, tribal]

relationships:
  - predicate: part_of
    target: /domains/govern.md
  - predicate: has_participant
    target: /personas/agency-director.md
  - predicate: has_participant
    target: /personas/program-manager.md
    note: Runs the joint programme and absorbs the coordination cost
  - predicate: has_participant
    target: /personas/grants-manager.md
    note: Most intergovernmental relationships are constituted through money with conditions
---

## Purpose

To manage the relationships through which one government's decisions become another
government's obligations — mandates flowed down, funds passed through, services delivered
jointly, and data shared across boundaries.

**Almost every significant public service is delivered by more than one level of government.**
The capability that makes that work is rarely named, resourced, or assigned to anyone.

## Desired outcomes

- Mandates understood, costed, and planned for before their effective date
- Conditions attached to received funds translated for those who must apply them
- Joint services with clear accountability for each part
- Data shared where lawful and useful, with the agreement written down
- Positions coordinated with peer jurisdictions where interests align

## Key processes

Mandate identification and impact assessment · intergovernmental agreement negotiation and
maintenance · joint programme governance · data-sharing agreement development · pass-through
condition translation · peer coordination and association engagement · dispute and escalation
handling

## Key data

Register of intergovernmental agreements with terms, renewal dates, and owners · mandate register
with funding status and effective dates · data-sharing agreements and their permitted purposes ·
joint programme accountability matrix · contact directory that survives staff turnover

## Measures

| Measure | Class |
|---|---|
| Mandates identified before effective date | Process |
| Agreements with a current owner and a live renewal date | Process |
| Funded versus unfunded mandate cost carried | Input |
| Conditions translated into local guidance before flow-down | Process |
| Joint services with documented accountability for each part | Process |
| Time to establish a new data-sharing agreement | Process |

That last one is the most consequential and the least measured. Where it runs to months, delivery
routes around it — usually by moving data in ways nobody approved.

## Level variance

- **Federal.** Sets conditions that flow to states and, through them, to local government. Rarely
  observes what the condition costs three levels down.
- **State.** The pivot position — recipient and imposer simultaneously, inheriting federal
  conditions and passing them to locals. The hardest seat in the structure, and the same shape as
  the pass-through problem in [grants inbound](/capabilities/grants-management-inbound/) and
  [outbound](/capabilities/grants-management-outbound/).
- **County / municipal.** Mostly on the receiving end, with the least capacity to absorb
  conditions and the least influence over them. Also the level where joint service agreements with
  neighbouring jurisdictions are most common and most informal.
- **Tribal.** A government-to-government relationship with distinct legal standing that is
  frequently modelled incorrectly as a stakeholder relationship.

## What to get right

**Give unfunded mandate costs a visible line item.** Naming the cost in the operating budget, rather
than letting it land silently, keeps it visible in the conversation about whether the mandate was
worth it.

**Translate conditions rather than forwarding them verbatim.** Translation is the actual work —
without it, federal terms reach a small jurisdiction or a three-person non-profit with no capacity
to interpret them.

**Keep agreements current with a named owner.** Reviewing an arrangement periodically, rather than
letting it outlive its signatories, keeps both parties able to produce and understand what they
operate under.

**Assert the lawful basis for data sharing directly.** A clearly asserted authority, instead of one
nobody will claim, keeps sharing from happening informally or not at all — the alternative shows up
downstream as an identity resolution problem in the
[core data model](/data-models/core-public-sector-model/).

**Assign each part of a joint service to one accountable party.** Explicit assignment is what
joint accountability actually requires.

**Document relationships beyond one person.** Recording the context means it doesn't leave entirely
when that person retires.
