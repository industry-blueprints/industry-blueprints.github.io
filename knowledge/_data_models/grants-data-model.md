---
type: Data Model
title: Grants Management Data Model
description: The entities a grants capability needs, extending the core model rather
  than redefining it — with Grant Award as an Agreement subtype.
resource: https://industry-blueprints.github.io/data-models/grants-data-model/
tags: [data-model, grants, entities, awards, subawards]
mermaid: true
wide: true

generated: { by: human:jhofmann, at: 2026-07-27T14:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

entities:
  - title: Grant Award
    definition: An Agreement subtype. The binding award of funds for a public purpose, with conditions, a period of performance, and reporting obligations.
    target: /data-entities/grant-award.md
  - title: Funding Opportunity
    definition: The published notice — purpose, eligibility, criteria, weightings, timeline, and available funds.
  - title: Application
    definition: A submission against an opportunity, with its narrative, budget, attachments, and eligibility and completeness state.
    target: /data-entities/application.md
  - title: Review
    definition: One reviewer's independent assessment of one application against published criteria, with scores and comments.
  - title: Subaward
    definition: A Grant Award whose funding source is another award. Self-referential, which is how pass-through is modelled.
  - title: Budget Line
    definition: An approved amount by cost category, against which expenditure is coded and compared.
  - title: Drawdown
    definition: A request for and disbursement of funds, with supporting expenditure and liquidation state.
  - title: Expenditure
    definition: A cost incurred against an award and cost category, with allowability determination.
  - title: Performance Report
    definition: A periodic submission of programmatic and financial results for a reporting period.
  - title: Risk Assessment
    definition: A dated evaluation of a recipient producing a risk tier and a monitoring plan.
  - title: Monitoring Activity
    definition: A planned or completed review — desk review, site visit, audit follow-up — with scope and outcome.
  - title: Finding
    definition: An identified instance of non-compliance, with condition, criteria, cause, required action, and resolution state.
  - title: Corrective Action
    definition: The remediation committed to against a finding, with evidence and verification state.
  - title: Match Commitment
    definition: Cash or in-kind contribution pledged against an award, with its source and its realization state.
  - title: Closeout Record
    definition: Final reconciliation, unspent balance resolution, retention clock, and the fact of closure.

relationships:
  - predicate: part_of
    target: /industries/public-sector.md
  - predicate: used_by
    target: /capabilities/grants-management-outbound.md
  - predicate: used_by
    target: /capabilities/grants-management-inbound.md
---

**This model extends the [core public-sector model](/data-models/core-public-sector-model/); it
does not restate it.** Party, Organization, Document, Payment, Location, and Audit Event come from
the core unchanged. What is added here is what grants actually need beyond them.

## The structural decision

**Grant Award is an [Agreement](/data-entities/agreement/) subtype, and a subaward is a Grant
Award whose funding source is another Grant Award.**

That single self-reference is what makes the federal → state → local pass-through chain
representable. A state's subaward to a county is not a different entity; it is an award whose
parent is the state's own federal award, inheriting conditions that must flow down.

Organizations that model "awards we receive" and "awards we make" as separate systems — which is
most of them — cannot answer the question the whole compliance regime depends on: *which of the
conditions on money we passed down came from the money we received?*

```mermaid
erDiagram
  AGREEMENT ||--|| GRANT_AWARD : "specializes to"
  GRANT_AWARD ||--o{ GRANT_AWARD : "subawards to"
  GRANT_AWARD ||--o{ BUDGET_LINE : "is budgeted by"
  GRANT_AWARD ||--o{ MATCH_COMMITMENT : requires
  GRANT_AWARD ||--o{ DRAWDOWN : "is drawn by"
  GRANT_AWARD ||--o{ PERFORMANCE_REPORT : "is reported by"
  GRANT_AWARD ||--o| CLOSEOUT_RECORD : "concludes with"
  GRANT_AWARD }o--|| PARTY : "is awarded to"

  FUNDING_OPPORTUNITY ||--o{ APPLICATION : receives
  APPLICATION ||--o{ REVIEW : "is scored by"
  APPLICATION }o--o| GRANT_AWARD : "may result in"
  APPLICATION }o--|| PARTY : "is submitted by"

  BUDGET_LINE ||--o{ EXPENDITURE : "is spent against"
  DRAWDOWN ||--o{ EXPENDITURE : "is supported by"

  PARTY ||--o{ RISK_ASSESSMENT : "is assessed by"
  RISK_ASSESSMENT ||--o{ MONITORING_ACTIVITY : "plans"
  MONITORING_ACTIVITY ||--o{ FINDING : identifies
  FINDING ||--o{ CORRECTIVE_ACTION : "is remediated by"
  FINDING }o--|| GRANT_AWARD : "is raised against"
```

## Three modelling decisions worth arguing about

### Risk assessment attaches to the Party, not the Award

A recipient's risk is a property of the **organization**, informed by its history across every
award from every program in the funder. Attaching risk to the award — which most systems do — is
why a program officer cannot see that the same non-profit had a finding in a different department
last year.

This is the change that makes [risk-based monitoring](/patterns/risk-based-monitoring/) possible,
and it is a data-model decision rather than a monitoring one.

### Finding is separate from Corrective Action, and both have verification state

Collapsing them produces the most common failure in oversight: a finding "closed" because a plan
was received, not because remediation was evidenced. Keeping them distinct, each with its own
state, is what makes [repeat finding rate](/kpis/repeat-finding-rate/) computable and honest.

### Match Commitment is an entity, not a field

Match is pledged, then realized, then evidenced — three states, frequently in-kind, frequently
from a different fund. Modelled as an amount on the award, it becomes invisible until an auditor
asks for evidence of contributions nobody tracked.

## Standard mappings

Indicative and needing verification per implementation:

| Entity | Maps toward |
|---|---|
| Grant Award, Subaward | Federal financial assistance award data standards |
| Party (recipient) | Entity identifiers used in federal award reporting; Legal Entity Identifier where a global identifier is warranted |
| Expenditure, Budget Line | The funder's prescribed cost categories, mapped from the local chart of accounts |
| Finding | Single audit finding reference structures |

The recurring integration problem is the last one: recipients maintain one chart of accounts and
report into several funder-specific category schemes. Modelling the mapping explicitly — rather
than re-deriving it each reporting period — is what makes
[code once, report many](/processes/drawdown-reporting-and-closeout/) achievable.

## The entities

{% include entity-list.html items=page.entities columns=2 %}
