---
title: Permitting Manager
summary: Owns the permitting pipeline — oversight of volume, bottlenecks, and the final issue/deny decision.
tags: [permitting, oversight, government]
status: proven
platform_ref: "public-sector-permits.solution.yaml"
platform_url: "https://github.com/industry-blueprints/platform/blob/main/solutions/public-sector-permits/config/public-sector-permits.solution.yaml"
related:
  - title: Permit Application Intake & Review
    kind: Use Case
    url: /use-cases/permit-application-intake-review/
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

The Permitting Manager doesn't review individual applications line by line — they watch the whole
pipeline. Their job is to know where volume is piling up, which permits are stuck and why, and to make
the final call on permits that have cleared every gate: issue, or deny.

That means their app experience is a **dashboard**, not a work queue: permits by stage, by type, and a
list of anything that's crossed into "ready for decision." When something looks wrong — a permit sitting
in plan review for two weeks — they need to be able to click straight into it and see the real reason,
not guess.

They're also one of two roles (alongside the permit technician) who gets the Permit Assistant — an AI
agent that can explain *why* a specific permit is blocked in plain language, without them having to trace
through workflow guards themselves.
