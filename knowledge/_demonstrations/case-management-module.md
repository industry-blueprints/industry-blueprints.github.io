---
type: Demonstration
title: Case Management, Running
description: The case management module as working software — four department
  apps and a public portal built on one module, proving the reuse boundary the
  specification claims.
resource: https://industry-blueprints.github.io/demonstrations/case-management-module/
tags: [demonstration, case-management, reference-implementation, composability]

sources:
  - id: platform-repo
    resource: https://github.com/industry-blueprints/platform
    title: Industry Modules Platform — monorepo
  - id: city-demo
    resource: https://github.com/industry-blueprints/platform/tree/main/examples/city-demo
    title: City of Cedar Falls demo — four staff apps and a public portal

generated: { by: human:jhofmann, at: 2026-08-10T10:00:00Z }
status: draft
stale_after: 2027-02-10

industry: cross-industry
government_levels: [municipal]

relationships:
  - predicate: demonstrates
    target: /data-entities/case.md
    note: The entity, as an actual schema with a workflow over it
---

Layer 3 for [Case Management](/domain-modules/case-management/). The specification claims a reuse
boundary; this is the thing that either honours it or does not.

## What it demonstrates

**One module, four department applications.** Permits, Constituent Services, Inspector General,
and Asset Management run on the same case management code. They differ by YAML configuration and
a handful of guard functions — no module code and no UI code differs between them.

That is the claim in [the reuse boundary](/domain-modules/case-management/) made falsifiable. If
the boundary were drawn wrong, one of the four would have needed a fork, and it would be visible
in the diff.

**Configuration reshapes the lifecycle, not just the fields.** Permitting adds six fields and an
eight-state workflow with a plan-review guard, and issues `PERMIT-YYYY-NNNN` reference numbers.
The module underneath is unchanged.

**The public and staff sides share one record.** A resident reports a pothole in the portal; it
appears in the staff workspace as a case, ownership-scoped so the resident sees only their own.
This is the cross-channel single record that [Case](/data-entities/case/) argues is the
structural difference between a level 2 and a level 3 organization — running, rather than
asserted.

**Permissions are visible, not implied.** Switch personas and the available actions change.
Blocked actions explain exactly why they are blocked, which makes the permission model
inspectable instead of a matter of trust.

## Running it

Requires Node 22 and pnpm. From a clone of the
[platform repository](https://github.com/industry-blueprints/platform):

```bash
pnpm install && pnpm build
pnpm --filter @industry-modules/example-city-demo demo:city
```

That starts the whole city on one SQLite tenant database:

- **Staff workspace** — <http://localhost:4820> — four department apps behind one launcher, with per-app security roles
- **Public portal** — <http://localhost:4840> — permit applications, issue reporting, and fraud/waste/abuse reports under one identity

Report something in the portal and watch it arrive in the workspace.

## What to look at

- `modules/case-management/src/index.ts` — the manifest: entity, commands, events, queries, permissions, extension points
- `solutions/public-sector-permits/config/` — the YAML that turns the module into permitting
- `solutions/constituent-services/config/` — the YAML that turns the same module into 311

Reading the second and third against each other is the fastest way to see where the reuse
boundary actually falls.

## Limitations

Stated plainly, because a demonstration that oversells is worse than none.

- **v0, and pre-release.** The module is implemented; the platform's first milestone is not complete.
- **SQLite and dev personas.** No PostgreSQL adapter and no real identity provider yet, so this shows the domain model working, not a production deployment.
- **Fictional data.** The City of Cedar Falls is invented, and its sample records are illustrative.
- **Not everything in the specification is built.** Where the two disagree, the specification is the statement of intent and this is the statement of fact — see [the alignment contract](/domain-modules/case-management/).

MIT licensed.
