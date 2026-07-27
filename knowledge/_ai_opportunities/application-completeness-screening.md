---
type: AI Opportunity
title: Screen Applications for Completeness and Eligibility
description: Check what is present against what was required, so staff effort moves
  from document-opening to merit — and applicants get a specific, fast cure request.
resource: https://industry-blueprints.github.io/ai-opportunities/application-completeness-screening/
tags: [ai, grants, classification, extraction, intake, access]

generated: { by: human:jhofmann, at: 2026-07-27T14:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county]
ai_task_type: extraction
minimum_level: 3

relationships:
  - predicate: assists
    target: /personas/grants-manager.md
---

## Business problem

A meaningful share of applications are screened out for missing attachments, unsigned forms, or
budget arithmetic — not for merit. The screening is done by a person opening documents one at a
time, which takes days of staff effort per cycle and delays every downstream stage.

The cost is not only staff time. **Administrative rejection falls hardest on first-time and small
applicants**, which is one of the mechanisms by which funding concentrates with organizations that
already have grants staff — see [first-time applicant share](/kpis/first-time-applicant-share/).

## Target outcome

Every application checked against the published requirement list within minutes of submission,
with a specific cure request to the applicant naming exactly what is missing and by when.

## Why this one is a good fit

It sits on the safe side of the line drawn in
[merit review integrity](/governance/merit-review-integrity/). It answers *"is the audited
financial statement attached and is it for the right year?"* — a question with a verifiable
answer that a human can check in seconds — rather than *"is this a good application?"*

It also improves access rather than efficiency alone, which is unusual for an automation case and
worth stating in the business case explicitly.

## Minimum maturity level: 3

Requires a structured requirement list, applications received as structured submissions rather
than email attachments, and an applicant identity resolvable across cycles. At level 2 there is no
requirement list to check against — completeness is whatever the reviewing officer remembers.

## Prerequisites that are usually missing

1. **Requirements as a structured list**, mapped to expected attachments. Most notices state
   requirements in prose, so there is nothing to check against.
2. **A cure period in policy.** Detecting a missing item is only useful if the applicant may fix
   it. Without a cure window this automates rejection, which is worse than the current state.
3. **Eligibility criteria that are actually determinate.** "Must be a community-based
   organization" is not machine-checkable, and pretending otherwise is how eligible applicants
   get wrongly screened out.
4. **A defined owner for the threshold** at which an uncertain result goes to a human.

## How it works

Extract the required items from the submission, match them against the published requirement list,
and classify each as present, missing, or uncertain. Present and missing route automatically —
missing generates a specific cure request. **Uncertain always routes to a person.**

Eligibility is treated separately and more conservatively: only criteria that are objectively
determinate from structured data are checked automatically. Everything else is flagged for human
determination, with the relevant evidence surfaced.

## Human oversight

Staff-facing tier under
[AI disclosure and human review](/governance/ai-disclosure-and-human-review/), with one addition
specific to this use:

- **No application is rejected on an automated determination.** Missing items generate a cure
  request; ineligibility is confirmed by a person before it is communicated.
- Uncertain classifications route to a human, always.
- The applicant is told what was found missing and can contest it.
- Screening decisions are logged with what was seen, so a disputed rejection is reconstructible.

That first rule is the one that makes this safe. Automating detection is fine; automating
rejection is not.

## Success metrics

- Applications rejected for administrative reasons (should fall sharply)
- Cure requests issued, and cure success rate
- Staff hours spent on completeness screening
- [Time to award](/kpis/time-to-award/), screening stage specifically
- [First-time applicant share](/kpis/first-time-applicant-share/) of *awards* — the real test
- False-missing rate: items flagged missing that were in fact present

Track the last one deliberately. A false missing wastes an applicant's time and erodes trust in
the process, and it will not show up anywhere else.

## Risk level

**Low to moderate.** The output is checkable against a source document that remains available, and
the failure mode is recoverable if the no-automated-rejection rule holds. Without that rule the
risk level is high, because the harm — an eligible organization excluded on a false negative — is
invisible to the funder and consequential to the applicant.
