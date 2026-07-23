---
title: Maintenance Workbench
summary: A maintenance technician's assigned work orders and the equipment in their custody — nothing else.
tags: [asset-management, persona-app, government]
status: proven
platform_ref: "asset-management.solution.yaml — personaApps"
platform_url: "https://github.com/industry-blueprints/platform/blob/main/solutions/asset-management/config/asset-management.solution.yaml"
related:
  - title: Asset Manager
    kind: Persona
    url: /personas/asset-manager/
  - title: Fleet Maintenance Work Orders
    kind: Use Case
    url: /use-cases/fleet-maintenance-work-orders/
  - title: Maintenance Work Order Lifecycle
    kind: Process
    url: /processes/maintenance-work-order-lifecycle/
  - title: Operations Assistant
    kind: Agent Skill
    url: /agent-skills/operations-assistant/
---

The Maintenance Workbench gives a technician exactly two lists — their assigned work orders, and the
equipment currently in their custody — plus a record page for each open order with a completion-notes
section. No dashboards, no fleet-wide reporting, no other technicians' work.

Same composition pattern as the Plan Review Workbench in the permits vertical: declared list and record
pages over the same entities and commands the full admin app uses, scoped to one role.
