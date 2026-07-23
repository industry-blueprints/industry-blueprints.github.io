---
title: Permit Assistant
summary: Answers questions about applications, what's blocking them, and the work still open — through the same command pipeline every user action goes through.
tags: [permitting, ai-agent, government]
status: proven
platform_ref: "public-sector-permits.solution.yaml — agents"
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
  - title: Plan Review Workbench
    kind: App Experience
    url: /app-experiences/plan-review-workbench/
---

The Permit Assistant is scoped to two roles — permit technician and permitting manager — and to one
job: answer questions about applications, explain what's blocking a transition in plain language, and
propose (never silently execute) the next command a user might want to take.

The important design decision isn't the agent itself — it's that it has no special back door. Every
query it runs and every command it proposes goes through the exact same validation, authorization, and
audit pipeline a human clicking a button would go through. It knows about express vs. standard permit
tracks and checklist-gated blocking because that's declared in its instructions and knowledge pack, not
hard-coded — the same "solutions are data" idea that lets a new industry vertical exist as config, not a
fork.
