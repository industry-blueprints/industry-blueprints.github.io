---
type: Capability
title: Recruiting & Hiring
description: Filling positions through a merit process designed to prevent
  patronage — and therefore slower than the market it competes in.
resource: https://industry-blueprints.github.io/capabilities/recruiting-and-hiring/
tags: [capability, hiring, recruitment, merit, human-capital]

generated: { by: human:jhofmann, at: 2026-07-27T11:30:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/staff.md
  - predicate: has_participant
    target: /personas/hr-director.md
    note: Owns process integrity under merit rules
  - predicate: has_participant
    target: /personas/program-manager.md
    note: Hiring manager, and the one carrying the vacancy
---

## Purpose

To fill a funded position with a qualified person, through a process open to all eligible
applicants and defensible against challenge.

**The slowness is deliberate.** Merit systems exist to prevent patronage; announcement, structured
assessment, certified eligible lists, and preference rules are the mechanism. Blueprints that
propose to "speed up hiring" without engaging with why the delay exists are not usable.

## Desired outcomes

- Vacancies filled before service degrades
- A candidate pool that reflects the community served
- Selection defensible under merit rules and preference obligations
- Time-to-hire competitive enough that candidates do not accept elsewhere mid-process
- New hires who stay

## Key processes

Vacancy authorization and position review · announcement drafting and posting · applicant intake ·
minimum qualification screening · structured assessment · eligible list certification ·
interview and selection · preference application · reference and background clearance · offer
and acceptance · pre-boarding

## Key data

Position and classification ([Position](/data-models/core-public-sector-model/)) · announcements ·
applications and assessment results · eligible lists and their expiry · preference claims ·
clearance status · offer records

## Measures

| Measure | Class |
|---|---|
| Time to hire, by stage | Process |
| Offer acceptance rate | Process |
| Applicants per posting, and qualified applicants per posting | Output |
| Candidate pool composition versus community | Output |
| First-year retention of new hires | Outcome |
| Vacancy rate in critical roles | Outcome |

Measuring time-to-hire **by stage** matters: the delay is usually concentrated in one or two
steps, and organizations that measure only the total optimize the wrong ones.

## Level variance

- **Federal.** Highly codified, with government-wide platforms, formal veterans' preference, and
  specific hiring authorities that permit faster routes for defined circumstances.
- **State.** State civil service systems with substantial variation; often hires for roles that
  deliver locally administered programs.
- **County / municipal.** Merit rules apply with a much smaller HR function. Competes directly
  with neighbouring jurisdictions for the same small labor pool.

## Where it goes wrong

**Classification written for a job that no longer exists.** Recruiting a data engineer against a
1990s systems analyst specification, at that specification's pay band.

**Delay concentrated in the invisible steps.** Waiting for authorization, waiting for a panel to
convene, waiting for clearance. Rarely measured, so rarely fixed.

**Announcements written for compliance, not candidates.** Accurate, exhaustive, and unreadable —
which suppresses applications from exactly the candidates with other options.

**Eligible lists expiring unused**, so the whole process is re-run for the next vacancy in the
same role.

**Assessment automation as a high-risk shortcut.** Automated screening in a merit system carries
adverse-impact exposure, challenge risk, and usually a bargaining obligation, simultaneously.
Attractive on paper and rarely worth it without substantial validation — see
[HR Director](/personas/hr-director/).
