---
title: Asset Manager
summary: Owns fleet condition and the maintenance pipeline — assets by type, work orders by stage, the whole operation at a glance.
tags: [asset-management, oversight, government]
status: proven
platform_ref: "asset-management.solution.yaml"
platform_url: "https://github.com/industry-blueprints/platform/blob/main/solutions/asset-management/config/asset-management.solution.yaml"
related:
  - title: Fleet Maintenance Work Orders
    kind: Use Case
    url: /use-cases/fleet-maintenance-work-orders/
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

The Asset Manager watches the whole municipal fleet — vehicles, equipment, facilities — not any one work
order. Their app experience is a dashboard: assets in service vs. in repair, open work orders by stage,
work by maintenance category. When the numbers look off, they need to be able to drill straight into the
open orders driving them.

Assets themselves are **shared, tenant-wide master data** — the same vehicle registry other departments
can reference — while work orders are this solution's own process data. The Asset Manager sits at the
boundary between the two: they own the process, but the things the process acts on outlive any single
work order.
