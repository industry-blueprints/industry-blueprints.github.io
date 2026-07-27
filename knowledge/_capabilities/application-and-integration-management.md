---
type: Capability
title: Application & Integration Management
description: The portfolio of systems, the interfaces between them, and their
  lifecycle — where the integrations outlive the projects that built them.
resource: https://industry-blueprints.github.io/capabilities/application-and-integration-management/
tags: [capability, applications, integration, apis, portfolio, technical-debt]

generated: { by: human:jhofmann, at: 2026-07-27T23:45:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/inform.md
  - predicate: has_participant
    target: /personas/solution-architect.md
  - predicate: has_participant
    target: /personas/chief-information-officer.md
  - predicate: has_participant
    target: /personas/contract-manager.md
    note: Most of this portfolio is somebody else's software under a contract
---

## Purpose

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

## Key processes

Application portfolio inventory and rationalization · business criticality and dependency
assessment · integration inventory and interface design · API definition, publication, and
versioning · data exchange standard adoption · environment and release management · vendor release
and end-of-support tracking · technical debt assessment · legacy modernization planning · system
retirement and data disposition · total cost of ownership tracking

## Key data

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
  [case record](/data-entities/case/) hard, and the reason the level 2 to level 3
  [transition](/playbooks/constituent-service-level-2-to-3/) is where most organizations stall.

## Where it goes wrong

**No portfolio.** Nobody can list the applications in use, so cost, risk, and duplication are all
unanswerable and rationalization cannot start.

**Integrations built inside projects and orphaned.** The project closes, the interface runs for a
decade, and the first person to look at it is the one whose replacement project broke it.

**Direct database integration.** One system reading another's tables, which makes the second system
unupgradeable and the coupling invisible until it fails.

**Point-to-point growth.** Each new connection built individually, and the count grows toward the
square of the systems — which is how a modest estate becomes unmodifiable.

**End of support discovered at the incident.** The vendor stopped supporting the version four years
ago, and nobody was tracking it.

**Retirement that never finishes.** The replacement goes live, the old system stays up "for
reporting," and it is still running six years later holding the only copy of historical data.

**Duplicate systems by department.** Three case management products because three departments
procured independently — a governance failure that surfaces as an integration cost. See
[enterprise portfolio governance](/capabilities/enterprise-portfolio-and-investment-governance/).

**Technical debt described rather than quantified.** Known to be bad, never expressed as a position
with a plan, so it never competes for funding.
