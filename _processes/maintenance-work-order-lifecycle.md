---
title: Maintenance Work Order Lifecycle
summary: Reported → Triaged → Scheduled → In Progress → Closed — gated by supervisor authorization and completion checklists.
tags: [asset-management, workflow, checklist, government]
status: proven
platform_ref: "asset-management.solution.yaml — workflow"
platform_url: "https://github.com/industry-blueprints/platform/blob/main/solutions/asset-management/config/asset-management.solution.yaml"
related:
  - title: Asset Manager
    kind: Persona
    url: /personas/asset-manager/
  - title: Fleet Maintenance Work Orders
    kind: Use Case
    url: /use-cases/fleet-maintenance-work-orders/
  - title: Maintenance Workbench
    kind: App Experience
    url: /app-experiences/maintenance-workbench/
  - title: Operations Assistant
    kind: Agent Skill
    url: /agent-skills/operations-assistant/
---

A work order moves from **Reported** through **Triaged**, **Scheduled**, and **In Progress** to
**Closed** — the same general-purpose case lifecycle used elsewhere in the platform, configured with
maintenance-specific stages and checklists rather than built from scratch. The Scheduled and In Progress
stages each carry their own required checklist items, so a work order can't quietly skip from "scheduled"
to "closed" without the actual authorization and completion steps happening.

This is the same underlying case-management module that drives permit applications and constituent
service requests — proof that one process module, reconfigured per solution, covers meaningfully
different domains without a fork.
