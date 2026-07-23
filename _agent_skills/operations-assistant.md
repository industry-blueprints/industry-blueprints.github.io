---
title: Operations Assistant
summary: Ask about the fleet, work orders, and what's blocking them — scoped to asset managers and maintenance technicians.
tags: [asset-management, ai-agent, government]
status: proven
platform_ref: "asset-management.solution.yaml — agents"
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
  - title: Maintenance Workbench
    kind: App Experience
    url: /app-experiences/maintenance-workbench/
---

The Operations Assistant answers questions about the fleet and the maintenance pipeline for the two roles
who actually run it — asset managers and maintenance technicians. Like every agent in the platform, it
has no privileged access of its own: it queries and proposes commands through the identical pipeline a
person clicking through the Maintenance Workbench or the Ops Dashboard would use, so anything it does is
validated, authorized, and audited exactly the same way.
