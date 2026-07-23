---
title: Plan Review Workbench
summary: A single-purpose queue for plan reviewers — just the reviews waiting on them, decided in two clicks.
tags: [permitting, persona-app, government]
status: proven
platform_ref: "public-sector-permits.solution.yaml — personaApps"
platform_url: "https://github.com/industry-blueprints/platform/blob/main/solutions/public-sector-permits/config/public-sector-permits.solution.yaml"
related:
  - title: Permitting Manager
    kind: Persona
    url: /personas/permitting-manager/
  - title: Permit Application Intake & Review
    kind: Use Case
    url: /use-cases/permit-application-intake-review/
  - title: Permit Lifecycle
    kind: Process
    url: /processes/permit-lifecycle/
  - title: Permit Assistant
    kind: Agent Skill
    url: /agent-skills/permit-assistant/
---

A plan reviewer doesn't need the full permitting admin app — every entity, every workflow, every report.
They need one thing: the plan reviews currently waiting on them, and a fast way to approve or send back
each one. The Plan Review Workbench is exactly that — a tailored, role-scoped app experience composed
declaratively on top of the same permit data and the same commands the full admin app uses, with none of
the surrounding complexity.

This is the pattern behind every persona app in the platform: the same underlying entities, workflows, and
commands, recomposed into a narrower surface for a specific role, with zero bespoke UI code written per
persona.
