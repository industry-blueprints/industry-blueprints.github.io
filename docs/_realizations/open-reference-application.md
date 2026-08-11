---
id: open-reference-application
title: Open Sample Application
type: platform-realization
level: 6
realization_kind: sample
permalink: /platform/open-sample-application/
version: "0.1"
status: draft
description: The open Industry Modules platform running Constituent Services through reusable modules, YAML composition, shared storage, a staff workspace, and a resident portal.
last_updated: 2026-08-10
sources:
  - title: Industry Modules Platform repository
    url: https://github.com/industry-blueprints/platform
  - title: Constituent Services solution
    url: https://github.com/industry-blueprints/platform/tree/main/solutions/constituent-services
  - title: City demo
    url: https://github.com/industry-blueprints/platform/tree/main/examples/city-demo
reviewed: []
tracks: [information, architecture, trust-governance, ai-automation, executable]
relationships:
  builds_on:
    - pothole-on-maple-avenue
  adds:
    - TypeScript reference implementation
    - YAML solution composition
    - SQLite and memory storage adapters
    - Staff and public experience shells
    - Executable Pothole on Maple Avenue scenario
  realizes:
    - person
    - communication
    - task
    - request-management
    - case-management
    - constituent-management
    - municipal-constituent-services
    - request-management-architecture
    - case-management-architecture
    - constituent-management-architecture
    - municipal-constituent-services-architecture
    - pothole-on-maple-avenue
---

## What runs

The [Industry Modules Platform](https://github.com/industry-blueprints/platform) is the executable
half of this blueprint. Its city demo runs a staff workspace on port 4820 and a resident portal on
port 4840 over one tenant database. Constituent Services is one configured application alongside
Permits, Inspector General, and Asset Management.

The Constituent Services solution uses the same case-management, document-intake, approvals, and
experience code as other case-shaped applications. Its vocabulary, fields, permissions, lifecycle,
guards, lists, and forms are declared in solution configuration plus a small set of named guard
functions.

## Architecture mapping

| Blueprint concept | Reference implementation |
|---|---|
| Person | Tenant-shared `person-registry` entity with solution-scoped facets |
| Request / Case | `case-management` module with a Constituent Services extension |
| Lifecycle | Configured `request-lifecycle` executed by the core workflow engine |
| Task and decision gates | Workflow actions plus approval records and named guards |
| Communication and history | Activity timeline and solution interactions |
| Evidence | `document-intake` module and file-store seam |
| Constituent Management | `solutions/constituent-services` composition |
| Public and staff experiences | Portal shell and manifest-driven admin shell |
| Scenario | `pothole-on-maple` design file, seed code, and end-to-end tests |

Commands pass through runtime permission checks, workflow transition checks, and named guards.
Accepted work is stored through a capability-declaring adapter and recorded in audit history. The
same runtime serves both public and staff experiences, preventing channel-specific business logic.

## Run it

The repository requires Node.js 22 and pnpm.

```sh
git clone https://github.com/industry-blueprints/platform.git
cd platform
corepack enable
pnpm install
pnpm build
pnpm --filter @industry-modules/example-city-demo demo:city
```

Open `http://localhost:4840` as Jordan and report a pothole. Then open
`http://localhost:4820` as a Constituent Services coordinator to see the same request in the staff
queue. The standalone Constituent Services demo is also available with:

```sh
pnpm --filter @industry-modules/example-constituent-demo demo:web
```

## AI participation

When a model provider is configured, role-gated assistants use tools derived from the experience
and the acting user's permissions. The portal intake guide gathers required details and proposes a
request. The staff assistant can query permitted records and explain guard failures. Mutating tools
propose first; a person reviews the prefilled action before execution, and the approved command is
audited as that person.

## What this proves

- One domain module can support materially different solution lifecycles without a code fork.
- Public and staff experiences can share business logic while enforcing different permissions.
- Workflow guards make required evidence and approvals visible before a transition.
- Shared master data can remain one tenant record while exposing solution-specific facets.
- A reference scenario can serve documentation, demo seed data, and automated tests.

## Limits

This is reference software, not a production deployment profile. The current solution is a
municipal 311-style realization of Constituent Management, not proof that its taxonomy, service
targets, retention, security roles, or accessibility choices fit every jurisdiction. Production
use requires threat modeling, policy mapping, operational controls, scale testing, and local
accessibility and legal review.
