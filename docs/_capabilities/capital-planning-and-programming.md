---
id: capital-planning-and-programming
title: Capital Planning & Programming
type: capability
level: 2
version: '0.1'
status: draft
description: Deciding what gets built or replaced, over what horizon, within what
  funding envelope — against a deferred maintenance backlog nobody wants to price.
last_updated: '2026-08-11'
capability_area: build-and-operate
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
To decide which capital assets get built, renewed, or replaced over a multi-year horizon, sequence
them against available funding, and maintain a programme that reflects condition and need rather
than accumulated commitments.

**The structural problem is that maintenance and renewal compete with new construction on unequal
terms.** New assets are visible, attributable, and fundable through
[debt](/capabilities/debt-and-capital-financing/). Renewal of an asset that still works is none of
those things, and the resulting deferred maintenance backlog grows until a failure makes it urgent.

## Desired outcomes

- A capital programme driven by condition and level-of-service evidence, not by advocacy
- Deferred maintenance quantified and reported alongside new construction
- Whole-life cost considered at the point of approval, including the operating cost created
- Funding sources matched to asset life
- Projects sequenced against realistic delivery capacity, not just funding availability
- A programme that survives a change of administration in some recognizable form

## Lifecycle
Needs identification from [asset condition](/capabilities/asset-management/) · level-of-service
definition · project scoping and cost estimation · whole-life cost analysis · prioritization and
scoring · funding source identification and matching · multi-year programme development ·
annual capital budget adoption · programme re-baselining · grant and external funding pursuit ·
public and stakeholder consultation on the programme

## Domain model
Capital project register with scope, estimate, phase, and funding source · condition and remaining
life data from the asset register · deferred maintenance backlog with value and risk · level of
service targets and current performance · prioritization scores and their criteria · funding
sources with eligibility and expiry · delivery capacity assessment · operating cost implications of
each project

## Measures

| Measure | Class |
|---|---|
| Deferred maintenance backlog value, and its trend | Outcome |
| Renewal spend as a share of asset replacement value | Input |
| Projects with a whole-life cost analysis at approval | Process |
| Estimate accuracy from programming to award | Outcome |
| Programme delivered against programme planned | Output |
| Projects added outside the prioritization process | Process |
| Assets operating past their assessed useful life | Outcome |

**Renewal spend against replacement value is the single most diagnostic number in this domain.**
Sustained below the rate at which assets consume their life, the backlog is growing regardless of
what the budget says.

## Level variance

- **Federal.** Facility and infrastructure portfolios of enormous scale, with formal capital
  planning requirements and appropriations that determine what can be committed when.
- **State.** Transportation programmes on multi-year cycles with federal funding formulas
  attached, plus higher education, corrections, and state facility portfolios.
- **County.** Roads, bridges, jails, courts, health facilities, and parks — frequently with a
  bridge inventory whose condition ratings are public and politically consequential.
- **Municipal.** Water, sewer, streets, buildings, and parks, funded through a mix of rates, taxes,
  and debt. **Smallest jurisdictions frequently have no capital plan at all**, replacing assets on
  failure, which is the most expensive possible strategy.

## What to get right

**Ground the programme in condition data.** Assembling it from departmental requests and political
priorities instead means nobody is maintaining the condition assessment that would rank them — the
dependency on [asset management](/capabilities/asset-management/) that makes this capability
possible.

**Quantify deferred maintenance with a risk attached.** Known to be large but never expressed as a
number, it never competes for funding against a new facility.

**Fund the operating budget alongside new construction.** A facility approved on capital cost alone
opens with no funded staffing or maintenance line, creating the next backlog on day one.

**Programme against need, not just what is fundable.** Building only what grants will pay for is
rational under the constraint and produces an estate that does not match the service.

**Keep cost estimates current.** Programmed at an old cost and bid at current cost, the difference
gets absorbed by cutting scope on something else.

**Keep the prioritization scoring honest when projects are inserted outside the process.**
Re-sequencing priorities by advocacy is legitimate politically and corrosive if the scoring is then
presented as objective.

**Size the programme to delivery capacity.** A funded programme larger than the organization can
design, procure, and inspect lets everything slip together — the same constraint as portfolio
[capacity](/capabilities/enterprise-portfolio-and-investment-governance/) in the technology estate.
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
