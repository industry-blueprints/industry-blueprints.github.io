---
title: Permit Lifecycle
summary: Intake → Document Review → Plan Review → Inspection → Issue/Deny — with an additive express template for low-risk permit types.
tags: [permitting, workflow, checklist, government]
status: proven
platform_ref: "ADR-0011 — Process templates and activity tracking"
platform_url: "https://github.com/industry-blueprints/platform/blob/main/docs/architecture/decisions/0011-process-templates-and-activities.md"
related:
  - title: Permitting Manager
    kind: Persona
    url: /personas/permitting-manager/
  - title: Permit Application Intake & Review
    kind: Use Case
    url: /use-cases/permit-application-intake-review/
  - title: Plan Review Workbench
    kind: App Experience
    url: /app-experiences/plan-review-workbench/
  - title: Permit Assistant
    kind: Agent Skill
    url: /agent-skills/permit-assistant/
---

The standard permit lifecycle moves through five stages: **Intake**, **Document Review**, **Plan
Review**, **Inspection**, and a final **Issue or Deny** decision. Each stage carries its own checklist of
activities — a required document, an intake fee, a plan-review sign-off — that must clear before the
record can advance. Nothing about the checklist is bolted on after the fact: it's declared once, on the
process template, and materialized automatically the moment a permit enters that stage.

Not every permit needs the full path. An **additive express template**, selected per-record by permit
type and project valuation, skips straight from intake to decision for small, low-risk work — same entity,
same commands, a different template. The two templates coexist; nothing about the standard path had to
change to add the express one.

Crucially, the full process is **browsable**, not just the current stage: a reviewer can click back into
a stage the permit already passed through and see exactly what happened there — what was completed, what
was skipped, what's still quietly open — not just what's active right now.
