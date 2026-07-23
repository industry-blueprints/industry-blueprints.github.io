---
title: Fleet Maintenance Work Orders
summary: A work order must link a real asset, be authorized by a supervisor, and record completion notes before it can close.
tags: [asset-management, maintenance, government]
status: proven
platform_ref: "solutions/asset-management/src/scenario.ts"
platform_url: "https://github.com/industry-blueprints/platform/blob/main/solutions/asset-management/src/scenario.ts"
related:
  - title: Asset Manager
    kind: Persona
    url: /personas/asset-manager/
  - title: Maintenance Work Order Lifecycle
    kind: Process
    url: /processes/maintenance-work-order-lifecycle/
  - title: Maintenance Workbench
    kind: App Experience
    url: /app-experiences/maintenance-workbench/
  - title: Operations Assistant
    kind: Agent Skill
    url: /agent-skills/operations-assistant/
---

A piece of equipment needs repair. A work order gets opened against it — never floating free, always
linked to a real asset in the shared registry — scheduled, and assigned to a maintenance technician. An
operations supervisor has to authorize it before work starts, and the technician has to record completion
notes before it can close.

The technician's own view is narrow by design: their assigned work orders, and the equipment currently in
their custody — not the whole fleet, not other technicians' queues.
