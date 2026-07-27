---
type: Persona
title: Privacy Officer
description: Answers whether the organization may do the thing it has already
  built, and is consulted late by design rather than by malice.
resource: https://industry-blueprints.github.io/personas/privacy-officer/
tags: [persona, privacy, governance, compliance, cross-cutting]

generated: { by: human:jhofmann, at: 2026-07-27T11:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
persona_type: specialist
---

Also: Senior Agency Official for Privacy, Data Protection Officer, or — in most local
governments — a portion of the attorney's or clerk's job.

## Role summary

Ensures personal information is collected lawfully, used for the purpose it was collected for,
shared only where permitted, retained no longer than necessary, and protected throughout.
Conducts privacy assessments, publishes notices, handles subject requests, and coordinates
breach response.

## Goals

- No unlawful collection, use, or disclosure
- Assessments completed before a system goes live, not after
- Notices that describe what actually happens
- Subject requests answered within the statutory period
- A breach handled correctly if one occurs

## Decisions made

- Whether a proposed use is compatible with the purpose of collection — the central question,
  and rarely a clean yes or no
- Whether an assessment is required, and what it must cover
- Whether a data sharing arrangement is permissible and what it needs
- What is the minimum data necessary, against a project that wants everything
- Whether an incident is a reportable breach

## Pain points

- **Consulted after the design is fixed.** Asked to approve something already built and
  frequently already announced. The answer is then either yes or a crisis.
- **"We already have the data" is treated as authorization.** Lawful collection for one purpose
  is not permission for another, and this is the most common misunderstanding they correct.
- **Privacy versus transparency, per record, on a clock.** Public records obligations and privacy
  obligations meet in redaction, and the reconciliation is a judgement call.
- **Data minimization loses every argument** against a stakeholder who wants a field "just in case."
- **AI arrives as a fait accompli.** Staff already pasting constituent information into
  general-purpose tools, discovered by accident.
- **No enforcement mechanism.** Can advise, document, and escalate. Rarely stop.

## What this persona needs from a blueprint

Privacy considerations stated **in the architecture**, not in an appendix — what is collected,
why, who sees it, how long it is kept. Explicit consent and authorization modelling, so
permission is a data structure rather than an assumption. And AI patterns that specify what
leaves the organization's boundary, because that is the first question they will ask and the one
most designs cannot answer.

## Typical questions

- "What is the authority for collecting this?"
- "Is this use compatible with why we collected it?"
- "Where does this data physically go, and who can see it?"
- "What is the minimum you actually need?"
