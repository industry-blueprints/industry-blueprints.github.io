---
id: recruiting-and-hiring
title: Recruiting & Hiring
type: capability
level: 2
version: '0.1'
status: draft
description: Filling positions through a merit process designed to prevent patronage
  — and therefore slower than the market it competes in.
last_updated: '2026-08-11'
capability_area: staff
industries:
- public-sector
tracks:
- business
- experience-process
- information
- architecture
- trust-governance
- ai-automation
relationships:
  builds_on: []
  personas: []
  adds: []
---

## Business definition
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

## Lifecycle
Vacancy authorization and position review · announcement drafting and posting · applicant intake ·
minimum qualification screening · structured assessment · eligible list certification ·
interview and selection · preference application · reference and background clearance · offer
and acceptance · pre-boarding

## Domain model
Position and classification (Position) · announcements ·
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

## What to get right

**Keep classifications current with the job.** Recruiting a data engineer against a 1990s systems
analyst specification, at that specification's pay band, undersells the role before it is even
posted.

**Measure and manage the invisible steps.** Waiting for authorization, waiting for a panel to
convene, waiting for clearance is where delay concentrates, and it stays unfixed until it is
measured.

**Write announcements for candidates, not just for compliance.** Accurate and exhaustive is not
the same as readable, and an unreadable posting suppresses applications from exactly the
candidates with other options.

**Keep eligible lists current and put them to use** before they expire unused, so the whole
process doesn't have to be re-run for the next vacancy in the same role.

**Validate assessment automation before relying on it.** Automated screening in a merit system
carries adverse-impact exposure, challenge risk, and usually a bargaining obligation,
simultaneously. Attractive on paper and rarely worth it without substantial validation — see
HR Director.
## Architecture

The architecture boundary for this capability follows the responsibilities, lifecycle, and
information described above. A dedicated architecture artifact has not yet been developed for
this inventory entry.

## Trust and governance

Trust concerns include authority to act, access to operational records, accountable decisions,
retention, and an auditable history. Applicable controls vary with the workload, jurisdiction,
and information sensitivity; a dedicated trust model has not yet been developed for this draft.

## AI and automation

AI and automation opportunities have not yet been evaluated for this capability. Future
patterns remain bounded by the authority, access, decision, and audit controls of the
underlying work.
