---
type: Capability
title: Privacy Management
description: Notices, impact assessments, minimization, subject rights, and breach
  handling — for data people had no choice about providing.
resource: https://industry-blueprints.github.io/capabilities/privacy-management/
tags: [capability, privacy, data-protection, consent, breach, minimization]

generated: { by: human:jhofmann, at: 2026-07-27T23:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/inform.md
  - predicate: has_participant
    target: /personas/privacy-officer.md
  - predicate: has_participant
    target: /personas/chief-data-officer.md
  - predicate: has_participant
    target: /personas/constituent.md
    note: The data subject, who in most cases could not decline to provide the data
---

## Purpose

To govern how personal information is collected, used, shared, retained, and disposed of — through
notices, impact assessments, minimization, subject rights, and breach response.

**Consent is largely unavailable as a lawful basis in government.** A person applying for a
benefit, paying a tax, or reporting a problem cannot meaningfully decline. The basis is statutory
authority, which puts the whole weight of protection on **necessity, minimization, and purpose
limitation** rather than on a choice the person never had.

## Desired outcomes

- Every collection of personal data traceable to an authority and a stated purpose
- Only the data actually needed collected, and kept only as long as needed
- Notices that describe what genuinely happens, in language people can read
- Impact assessment performed before a new use, not after
- Sharing governed by a written basis and a defined purpose
- Subject rights honoured within statutory windows
- Breaches detected, contained, notified, and learned from

## Key processes

Data inventory and mapping · authority and purpose determination · privacy notice drafting and
publication · privacy impact assessment · minimization and retention review · data sharing
agreement review · de-identification and re-identification risk assessment · subject access,
correction, and objection handling · consent management where consent applies · vendor and
third-party privacy review · breach detection, containment, assessment, and notification ·
privacy training

## Key data

Inventory of personal data holdings by system, category, and purpose · authority citation per
collection · published notices with version history · impact assessments and their conditions ·
[consent and authorization](/data-models/core-public-sector-model/) records where applicable ·
data sharing agreements with permitted purposes · subject request log with deadlines · breach
register with cause, scope, and notification record

## Measures

| Measure | Class |
|---|---|
| Systems with a current privacy assessment | Process |
| New uses assessed before implementation | Process |
| Subject requests fulfilled within the statutory window | Process |
| Data holdings beyond their retention period | Process |
| Sharing arrangements with a documented purpose and basis | Process |
| Time from breach detection to containment, and to notification | Process |
| Breaches arising from a previously identified weakness | Outcome |

## Level variance

- **Federal.** A statutory privacy framework requiring published notices for systems of records,
  formal privacy impact assessments, senior privacy officials, and defined breach response
  obligations.
- **State.** State privacy statutes plus sector-specific regimes for health, education, tax, and
  criminal justice data — which frequently conflict on retention and sharing, and must be
  reconciled per dataset rather than in general.
- **County / municipal.** Holds unusually sensitive data — health, housing, child welfare, police,
  utility usage — with rarely a dedicated privacy officer. The tension with
  [public records obligations](/capabilities/public-records-and-transparency-response/) is at its
  sharpest here, because the same small team handles both.

## What to get right

**Collect only the data a field is actually used for.** Social security numbers, dates of birth,
and demographic detail gathered by default and never used converts an unnecessary field into a
permanent liability; collecting deliberately avoids that.

**Write notices for the person reading them, not for lawyers.** A notice that is compliant,
comprehensive, and read by nobody satisfies the obligation and informs no one; plain language does
both.

**Perform impact assessment before go-live, while findings can still change the design.** Done
afterward as a documentation exercise, the findings arrive too late to act on.

**Govern sharing by written agreement, not by relationship.** Two agencies exchanging data because
they always have, with no written purpose limitation, leaves no way to stop it when the purpose
changes.

**Verify de-identification rather than assuming it.** A dataset published as anonymous can be
re-identifiable from three fields, most often when combined with a
[geospatial](/capabilities/geospatial-information-management/) attribute — checking catches that
before publication.

**Set and act on a retention schedule.** Storage is cheap and deletion requires a decision; without
one, the holding grows until a breach makes its size the story.

**Prepare a breach response plan before a breach happens.** A plan, a notification template, and
clear decision authority in place ahead of time are what let the response run well once the clock
is running.

**Reconcile privacy and transparency at the record level, not as opposing goals.** They are both
obligations on the same record, and reconciling them is a
[data governance](/capabilities/data-governance-and-stewardship/) decision rather than a trade-off
to pick a side of.
