---
id: application-and-integration-management
title: Application & Integration Management
type: capability
level: 2
version: '0.1'
status: draft
description: The portfolio of systems, the interfaces between them, and their lifecycle
  — where the integrations outlive the projects that built them.
last_updated: '2026-08-11'
capability_area: inform
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
To maintain a known portfolio of applications, manage the interfaces that connect them, and move
systems deliberately through their lifecycle from acquisition to retirement.

**Integration is the durable asset and the unmanaged one.** Applications are procured, replaced,
and retired on visible cycles. The interfaces between them are built inside projects, owned by
nobody afterwards, and are the reason replacing any single system turns out to be a programme.

## Desired outcomes

- A known portfolio: every application, its owner, its business criticality, and its cost
- Integrations inventoried, owned, and documented independently of the projects that built them
- Data exchanged through defined interfaces rather than direct database access
- Lifecycle managed deliberately, with end-of-support known well in advance
- Technical debt visible as a position, with a stated plan
- Retirement actually completed, including the data

## Lifecycle
Application portfolio inventory and rationalization · business criticality and dependency
assessment · integration inventory and interface design · API definition, publication, and
versioning · data exchange standard adoption · environment and release management · vendor release
and end-of-support tracking · technical debt assessment · legacy modernization planning · system
retirement and data disposition · total cost of ownership tracking

## Domain model
Application inventory with owner, criticality, users, cost, and support status · integration
register with source, target, method, frequency, and owner · interface specifications and data
contracts · dependency map · environment inventory · release calendar · end-of-support dates ·
technical debt register with risk · retirement plans with data disposition

## Measures

| Measure | Class |
|---|---|
| Applications with a named business owner and recorded cost | Process |
| Integrations with a documented owner and specification | Process |
| Systems past or nearing end of support | Process |
| Point-to-point interfaces versus interfaces through a managed pattern | Process |
| Duplicate applications serving the same function | Outcome |
| Retirements completed, including data disposition | Process |
| Change lead time for a cross-system change | Outcome |

Cross-system change lead time is the measure that reveals what the integration estate actually
costs, and it is the number that makes the case for doing anything about it.

## Level variance

- **Federal.** Large portfolios with formal enterprise architecture, capital planning oversight,
  and legacy systems of extreme age carrying statutory functions.
- **State.** Agency portfolios under central architecture standards, with substantial mainframe and
  early-generation systems still running benefits, tax, and motor vehicle functions.
- **County / municipal.** Dozens of small vendor applications, one per department, each with its
  own data and no interfaces — the fragmentation that makes a shared
  case record hard, and the reason the level 2 to level 3
  transition is where most organizations stall.

## What to get right

**Maintain a portfolio someone can actually list.** Without it, cost, risk, and duplication are all
unanswerable and rationalization cannot start.

**Give every integration an owner beyond the project that built it.** Otherwise the project closes,
the interface runs for a decade, and the first person to look at it is the one whose replacement
project broke it.

**Integrate through defined interfaces, not direct database access.** One system reading another's
tables makes the second system unupgradeable and the coupling invisible until it fails.

**Manage integration growth through a pattern, not point-to-point connections.** Each new
connection built individually grows the count toward the square of the systems — which is how a
modest estate becomes unmodifiable.

**Track end-of-support dates before the incident finds them.** A vendor version that lost support
four years ago belongs on an active remediation plan, not in a surprise incident report.

**Finish retirements, including the data.** A replacement going live while the old system stays up
"for reporting" tends to still be running six years later, holding the only copy of historical
data.

**Consolidate duplicate systems across departments.** Three case management products because three
departments procured independently is a governance failure that surfaces as an integration cost.
See [enterprise portfolio governance](/capabilities/enterprise-portfolio-and-investment-governance/).

**Quantify technical debt as a position, not a description.** Known to be bad but never expressed
with a number and a plan, it never competes for funding.
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
