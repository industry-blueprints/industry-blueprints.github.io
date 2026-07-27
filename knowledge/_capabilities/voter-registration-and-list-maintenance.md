---
type: Capability
title: Voter Registration & List Maintenance
description: Establishing who is eligible to vote and keeping the list accurate — where
  both an inflated roll and an over-aggressive purge are failures.
resource: https://industry-blueprints.github.io/capabilities/voter-registration-and-list-maintenance/
tags: [capability, elections, voter-registration, list-maintenance, eligibility, franchise]

generated: { by: human:jhofmann, at: 2026-07-28T20:00:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/govern.md
  - predicate: has_participant
    target: /personas/constituent.md
    note: The voter — for whom a registration error is discovered at the polling place
  - predicate: has_participant
    target: /personas/chief-data-officer.md
    note: The roll is master data with the hardest accuracy requirement in government
  - predicate: uses_data
    target: /data-entities/location.md
    note: Registration resolves to an address, which determines every contest a voter is entitled to
---

## Purpose

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

## Key processes

Registration intake — online, by mail, in person, at motor vehicle and public assistance agencies ·
eligibility verification against identity and citizenship sources · duplicate detection and merge ·
address standardization and validation · **district and precinct assignment from the address** ·
change of address and name processing · interstate and intrastate transfer · list maintenance
against death, felony status, and change-of-address data · notice and waiting-period compliance
before removal · challenge and provisional resolution · voter record lookup and self-service
correction · address confidentiality programme handling · registration statistics reporting ·
pre-registration of minors approaching eligibility

## Key data

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

## Where it goes wrong

**District assignment by approximation.** An address matched to the wrong precinct or split
district, so the voter receives a ballot with the wrong contests — the failure that makes
[authoritative parcel and address data](/capabilities/geospatial-information-management/) a
democratic requirement rather than an operational nicety.

**List maintenance from unreliable matches.** Removals driven by name-and-birthdate matching across
states, which over-matches on common names and disproportionately affects some communities. The
statutory notice and waiting requirements exist precisely because the matching is imperfect.

**Registrations submitted and never processed.** Received near a deadline, entered late, and the
voter arrives to find no record — most common where registration volume peaks and staffing does not.

**Verification by document burden.** Requiring documentation that eligible people do not have,
rather than verifying against sources the state already holds.

**Address changes not propagating.** A voter who moves within the jurisdiction, updates their
address with one agency, and remains registered at the old one.

**No accessible self-check.** A lookup that is hard to find or hard to use, so voters cannot
discover a problem while there is still time to fix it.

**Confidential records mishandled.** Address confidentiality programme participants appearing in a
published roll or an extract — a safety failure with a narrow window to prevent.

**Deadline-driven surge unplanned.** Registration volume in the final week is predictable every
cycle and staffed for as though it were not.
