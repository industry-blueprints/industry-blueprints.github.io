---
title: Permit Application Intake & Review
summary: A resident submits a permit application through the public portal; staff review documents, review the plan, inspect the work, and issue or deny.
tags: [permitting, intake, government]
status: proven
platform_ref: "solutions/public-sector-permits/src/scenario.ts"
platform_url: "https://github.com/industry-blueprints/platform/blob/main/solutions/public-sector-permits/src/scenario.ts"
related:
  - title: Permitting Manager
    kind: Persona
    url: /personas/permitting-manager/
  - title: Permit Lifecycle
    kind: Process
    url: /processes/permit-lifecycle/
  - title: Plan Review Workbench
    kind: App Experience
    url: /app-experiences/plan-review-workbench/
  - title: Permit Assistant
    kind: Agent Skill
    url: /agent-skills/permit-assistant/
---

A resident applies for a permit — a deck, a remodel, a new sign — through the public portal. From that
single submission, the same record is worked by every downstream role without anyone re-keying anything:
a technician confirms required documents are attached, a plan reviewer checks the drawings against code,
an inspector verifies the work in the field, and a permitting manager makes the final issue/deny call.

The interesting part isn't any single step — it's that every stage gates the next one through required
checklist items (an unpaid fee, a missing inspection report) rather than a person having to remember what
still needs to happen. And not every application takes the same path: small, low-risk projects (a fence,
a sign under a valuation threshold) qualify for an **express lane** that skips plan review and inspection
entirely, on the same underlying case record.
