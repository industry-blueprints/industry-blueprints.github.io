---
id: voter-registration-and-list-maintenance
title: Voter Registration & List Maintenance
type: capability
level: 2
version: '0.1'
status: draft
description: Establishing who is eligible to vote and keeping the list accurate —
  where both an inflated roll and an over-aggressive purge are failures.
last_updated: '2026-08-11'
capability_area: govern
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
To register eligible voters, maintain an accurate and current list, assign each registrant to the
correct districts, and remove records that are no longer valid — under statutory rules that
constrain both how records are added and how they are removed.

**Both directions of error are failures, and they are not symmetric.** An inflated roll carries
duplicate and outdated records and erodes confidence. An over-aggressive removal disenfranchises an
eligible voter, who usually discovers it at the polling place with no time to fix it. The second is
the harder harm to reverse and the one statutory safeguards exist to prevent.

## Desired outcomes

- Registration available through every channel the law permits, with low friction
- Eligibility verified against authoritative sources rather than by document burden
- Each registrant assigned to the correct precinct and every district that applies to their address
- List maintenance performed on a documented, lawful basis with required notice
- Duplicates and deceased records removed without removing living, eligible voters
- Records transferable when a voter moves within the state
- Voters able to check and correct their own registration easily
- Confidentiality protected for participants in address confidentiality programmes

## Lifecycle
Registration intake — online, by mail, in person, at motor vehicle and public assistance agencies ·
eligibility verification against identity and citizenship sources · duplicate detection and merge ·
address standardization and validation · **district and precinct assignment from the address** ·
change of address and name processing · interstate and intrastate transfer · list maintenance
against death, felony status, and change-of-address data · notice and waiting-period compliance
before removal · challenge and provisional resolution · voter record lookup and self-service
correction · address confidentiality programme handling · registration statistics reporting ·
pre-registration of minors approaching eligibility

## Domain model
Voter record with identity, address, districts, status, and history · registration source and date
· eligibility verification results and their source · duplicate match candidates and resolutions ·
[address and district geography](/capabilities/geospatial-information-management/) with effective
dates · list maintenance actions with basis, notice sent, and waiting period · transfer records ·
challenges and their disposition · confidential records under restricted access · registration
counts by district and by demographic where lawfully collected

## Measures

| Measure | Class |
|---|---|
| Registration rate against the estimated eligible population, by segment | Outcome |
| Time from application to registration confirmed | Process |
| Applications rejected, and the reasons | Outcome |
| District assignment accuracy, verified by audit | Process |
| Duplicate records identified and resolved | Process |
| Removals performed with documented basis and required notice | Process |
| **Eligible voters removed in error, discovered at the polls** | Outcome |
| Provisional ballots cast due to registration status | Outcome |
| Self-service lookups and corrections completed without staff | Process |

**Provisional ballots cast for registration reasons is the diagnostic.** Each one is a voter whose
record did not match reality at the moment it mattered, and the reasons — moved, never processed,
wrongly removed, wrong precinct — point directly at which part of this capability failed.

## Level variance

- **State.** Operates the statewide voter registration database that federal law requires, sets
  eligibility and list maintenance rules, and manages interstate data comparison arrangements.
- **County.** **The registrar in most states** — processing registrations, running list maintenance,
  and answering for accuracy, while operating inside a state system it does not control.
- **Municipal.** Registration and list maintenance in states where towns and cities hold the
  function, frequently with very small offices carrying the same statutory obligations.

## What to get right

**Assign districts from authoritative address data.** Matching an address precisely to the
correct precinct and split district is what gives the voter a ballot with the right contests —
the reason [authoritative parcel and address data](/capabilities/geospatial-information-management/)
is a democratic requirement rather than an operational nicety.

**Give list maintenance matching a wide enough margin, with notice and waiting periods honored.**
Name-and-birthdate matching across states over-matches on common names and disproportionately
affects some communities; the statutory notice and waiting requirements exist precisely because
the matching is imperfect, and following them is what protects eligible voters.

**Staff for registration volume as it peaks, especially near deadlines.** Processing applications
as they arrive, rather than letting them back up near a deadline, is what keeps a voter's record
in place when they arrive to vote.

**Verify eligibility against sources the state already holds.** Verifying that way instead of
requiring documentation eligible people do not have removes an unnecessary barrier.

**Propagate address changes across agencies.** Updating a voter's registration when they update
their address elsewhere is what keeps them from remaining registered at the old one.

**Make self-check easy to find and use.** An accessible lookup is what lets voters discover a
problem while there is still time to fix it.

**Protect confidential records deliberately.** Keeping address confidentiality programme
participants out of a published roll or extract is a safety requirement with a narrow window to
get right.

**Plan staffing for the predictable deadline-driven surge.** Registration volume in the final week
is predictable every cycle; staffing for it is what keeps the surge from overwhelming the office.
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
