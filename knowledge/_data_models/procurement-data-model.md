---
type: Data Model
title: Procurement & Contract Data Model
description: The entities procurement needs, extending the core — and the structural
  parallel with grants that suggests both should share more than they do.
resource: https://industry-blueprints.github.io/data-models/procurement-data-model/
tags: [data-model, procurement, contracts, suppliers, entities]
mermaid: true
wide: true

generated: { by: human:jhofmann, at: 2026-07-27T16:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

entities:
  - title: Contract
    definition: An Agreement subtype. The binding arrangement to obtain goods or services, with deliverables, service levels, and payment terms.
    target: /data-entities/contract.md
  - title: Supplier
    definition: A Party in the supplier role, with eligibility, certifications, remittance details, and performance history.
    target: /data-entities/supplier.md
  - title: Solicitation
    definition: The published opportunity — requirement, criteria, weightings, timeline, and terms.
  - title: Response
    definition: A supplier's submission against a solicitation, with technical and commercial components and responsiveness state.
  - title: Evaluation
    definition: One evaluator's scoring of one response against published criteria, with comments.
  - title: Requisition
    definition: An internal request to buy, with funding source, approval chain, and resulting order.
  - title: Purchase Order
    definition: A commitment against a contract or vehicle, encumbering budget.
  - title: Deliverable
    definition: A defined output owed under a contract, with acceptance criteria and due date.
  - title: Acceptance
    definition: The record that a deliverable met its criteria — or did not, with reasons.
  - title: Obligation
    definition: A tracked commitment by either party, with owner, due date, and satisfaction state.
  - title: Service Level
    definition: A measurable performance standard, its measurement method, and the entitlement triggered on breach.
  - title: Performance Record
    definition: A dated assessment of supplier performance, satisfactory or otherwise, visible beyond the department.
  - title: Contract Vehicle
    definition: A pre-competed arrangement — cooperative, framework, or schedule — that others may buy from without competing.
  - title: Protest
    definition: A challenge to a solicitation or award, with grounds, evidence relied upon, and outcome.
  - title: Debarment Record
    definition: An exclusion from receiving public money, its source, scope, and period.

relationships:
  - predicate: part_of
    target: /industries/public-sector.md
  - predicate: used_by
    target: /capabilities/sourcing-and-solicitation.md
  - predicate: used_by
    target: /capabilities/contract-administration.md
  - predicate: used_by
    target: /capabilities/vendor-and-supplier-management.md
---

**Extends the [core public-sector model](/data-models/core-public-sector-model/).** Party,
Organization, Document, Payment, Location, and Audit Event come from the core unchanged.
[Contract](/data-entities/contract/) specializes [Agreement](/data-entities/agreement/), exactly
as [Grant Award](/data-entities/grant-award/) does.

## The parallel with grants

Building this model immediately after the
[grants model](/data-models/grants-data-model/) surfaced something worth stating plainly: **these
are the same process with different vocabulary.**

| Procurement | Grants | Shared shape |
|---|---|---|
| Solicitation | Funding Opportunity | A published competitive opportunity with criteria and a deadline |
| Response | Application | A submission from an organization against that opportunity |
| Evaluation | Review | One assessor's independent scoring against published criteria |
| Contract | Grant Award | An Agreement binding the parties |
| Supplier | Recipient | A Party in a role, with eligibility and performance history |
| Performance Record | Monitoring Finding | A dated assessment of how the party actually performed |
| Debarment Record | Debarment Record | Literally the same thing |

The governance concerns are the same too: conflict of interest, published criteria, recorded
rationale for departing from scores, substantive debriefs — compare
[merit review integrity](/governance/merit-review-integrity/) with
[competition and evaluation integrity](/governance/competition-and-evaluation-integrity/) and note
how much is duplicated.

**This is a candidate for promotion to the core model.** The core states the rule: an entity
needed by three or more capabilities should move up. Competitive award is currently used by two —
so the recommendation is to watch it. If licensing or a third domain needs the same shape, promote
**Opportunity**, **Response**, and **Evaluation** to the core and let procurement and grants
specialize them.

The practical consequence today is smaller and still useful: an organization building either
capability should look at what it already has for the other, because the answer is usually "most
of it."

## Entity relationships

```mermaid
erDiagram
  AGREEMENT ||--|| CONTRACT : "specializes to"
  SOLICITATION ||--o{ RESPONSE : receives
  RESPONSE ||--o{ EVALUATION : "is scored by"
  RESPONSE }o--|| SUPPLIER : "is submitted by"
  RESPONSE }o--o| CONTRACT : "may result in"
  SOLICITATION ||--o{ PROTEST : "may be challenged by"

  CONTRACT ||--o{ DELIVERABLE : owes
  CONTRACT ||--o{ OBLIGATION : imposes
  CONTRACT ||--o{ SERVICE_LEVEL : "is measured by"
  CONTRACT ||--o{ PURCHASE_ORDER : "is ordered against"
  CONTRACT }o--|| SUPPLIER : "is held by"
  CONTRACT }o--o| CONTRACT_VEHICLE : "may be placed under"

  DELIVERABLE ||--o{ ACCEPTANCE : "is accepted by"
  ACCEPTANCE ||--o{ PAYMENT : authorizes
  REQUISITION ||--o| PURCHASE_ORDER : becomes

  SUPPLIER ||--o{ PERFORMANCE_RECORD : accumulates
  SUPPLIER ||--o{ DEBARMENT_RECORD : "may be subject to"
  PARTY ||--|| SUPPLIER : "acts as"
```

## Three modelling decisions

### Acceptance authorizes Payment

Modelled as an explicit relationship, not a workflow convention. If payment can be raised without
a linked acceptance record, it will be — that is the path of least resistance under load, and it
is the most common control failure in contract administration.

Making acceptance a **prerequisite in the model** is what turns "payment follows acceptance" from
a policy into a fact.

### Obligation is a first-class entity

Service levels, reporting requirements, review meetings, notice periods, and price mechanisms are
commitments with owners and dates. Left as prose inside the agreement document they are invisible
to every queue and calendar in the organization — which is exactly why
[contract handover](/processes/contract-handover-and-performance/) fails.

Extracting them into tracked Obligations is the mechanism behind
[obligation tracking](/patterns/obligation-tracking/), and it applies equally to grant conditions,
licence conditions, and permit conditions.

### Performance Record attaches to the Supplier, not the Contract

Same reasoning as risk attaching to the Party in the
[grants model](/data-models/grants-data-model/). A supplier's history is a property of the
organization, across contracts and across departments. Attached to the contract, it is invisible
to the next evaluation panel — which is how a supplier that performed badly for one department
wins an award from another.

## The entities

{% include entity-list.html items=page.entities columns=2 %}
