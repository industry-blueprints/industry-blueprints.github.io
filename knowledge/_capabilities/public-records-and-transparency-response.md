---
type: Capability
title: Public Records & Transparency Response
description: Finding, reviewing, redacting, and releasing records on request —
  against a statutory clock, with no search infrastructure.
resource: https://industry-blueprints.github.io/capabilities/public-records-and-transparency-response/
tags: [capability, transparency, foia, public-records, redaction, privacy]

generated: { by: human:jhofmann, at: 2026-07-27T11:30:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/inform.md
  - predicate: has_participant
    target: /personas/records-manager.md
  - predicate: has_participant
    target: /personas/privacy-officer.md
  - predicate: has_participant
    target: /personas/constituent.md
    note: Requesters include journalists, litigants, businesses, and residents
  - predicate: uses_data
    target: /data-entities/case.md
    note: A request is a case with a statutory clock
---

## Purpose

To fulfil the public's right of access to government information: locate responsive records,
apply exemptions correctly, redact what must be withheld, and release the rest within the
statutory period.

The capability where **transparency and privacy meet and have to be reconciled per record, under
a clock.** That reconciliation is a judgement call with real consequences in both directions —
over-redaction defeats the right of access; under-redaction is a privacy breach.

## Desired outcomes

- Requests acknowledged and answered within statutory timelines
- Searches complete enough that responsive material is not missed
- Exemptions applied consistently and defensibly
- Redaction accurate — no personal information released, no over-withholding
- Frequently requested material published proactively so it stops being requested

## Key processes

Request intake and acknowledgement · clarification and scoping · fee estimation · search across
systems and custodians · responsiveness review · exemption analysis · redaction · release and
partial-denial notice · appeal handling · proactive publication of frequent subjects

## Key data

Request records ([Case](/data-entities/case/)) with statutory deadlines · custodian and system
inventory · search terms and results · exemption determinations with rationale · redaction logs ·
release packages · appeal outcomes

## Measures

| Measure | Class |
|---|---|
| Responses within statutory period | Process |
| Median days to response, by complexity | Process |
| Appeals filed, and appeals upheld | Process |
| Over-redaction identified on appeal | Process |
| Repeat requests for the same material | Output |
| Requester able to obtain what they needed | Outcome |

## Level variance

- **Federal.** Freedom of information framework with defined exemption categories, formal appeal
  rights, and published backlog reporting.
- **State.** State public records acts with wide variation in scope, timelines, fees, and
  exemptions. Some are far more demanding than the federal regime.
- **County / municipal.** Same state obligations, usually no dedicated staff, and requests handled
  by a clerk or attorney alongside their actual job.

## What to get right

**Give search a unified owner and system.** Responsive material spread across mail, shared drives,
case systems, phones, and collaboration tools needs a search that covers all of them; asking staff
to self-search is neither complete nor defensible.

**Treat redaction with equal care in both directions.** One missed identifier is a breach;
systematic over-redaction is a denial of access. Both deserve attention, even though only one
tends to get noticed.

**Publish frequently requested material proactively.** Reviewing the same material from scratch
each time a request comes in costs more than publishing it once and ending the cycle.

**Scope the request before the clock effectively starts.** A vague request left unclarified
consumes days while the statutory period runs; scoping it early protects that time.

**Record the rationale behind every exemption determination.** Captured reasoning is what lets an
appeal be defended and keeps the next similar request decided consistently.

**Verify AI-assisted search and redaction with a human before release, every time.** It is one of
the highest-value applications in this library and one of the highest cost of error, so human
verification stays a firm requirement — see
[AI disclosure and human review](/governance/ai-disclosure-and-human-review/).
