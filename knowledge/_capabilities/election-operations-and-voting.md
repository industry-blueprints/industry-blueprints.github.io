---
type: Capability
title: Election Operations & Voting
description: Preparing ballots, opening polling places, and running every way of voting
  — a full-scale operation with an immovable date and no rehearsal.
resource: https://industry-blueprints.github.io/capabilities/election-operations-and-voting/
tags: [capability, elections, voting, ballots, polling-places, poll-workers, accessibility]

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
    note: The voter, whose experience is largely determined by where they happen to live
  - predicate: has_participant
    target: /personas/program-manager.md
  - predicate: has_participant
    target: /personas/hr-director.md
    note: Poll workers are a temporary workforce of thousands recruited, trained, and paid in weeks
---

## Purpose

To prepare and distribute ballots, establish and staff voting locations, operate every voting
method the jurisdiction offers, and ensure every eligible voter can cast a ballot that counts.

**This is a full-scale operation with an immovable date, no rehearsal, and no acceptable failure.**
Thousands of temporary workers, hundreds of locations, and equipment used a handful of days a year
must all work on one specified day — and every foreseeable problem must have been solved in
advance, because there is no recovery window.

## Desired outcomes

- Ballots correct for every district combination, proofed before printing
- Voting locations sufficient, accessible, and placed so wait times are equitable
- Poll workers recruited, trained, and supported well enough to apply the rules consistently
- Equipment tested, secured, and with a working fallback
- Mail and early voting operated to the same standard as election day
- Accessible voting genuinely private and independent, not assisted by default
- Language requirements met at every location that triggers them
- Wait times short and, critically, similar across the jurisdiction
- Provisional and curing processes that recover votes rather than discarding them

## Key processes

Ballot content assembly and district combination generation · proofing and logic and accuracy
testing · ballot printing and distribution · polling place identification, contracting, and
accessibility survey · precinct assignment and consolidation decisions · poll worker recruitment,
training, and payment · equipment preparation, testing, sealing, and deployment · chain of custody
for ballots and equipment · early voting operation · mail ballot application, issue, tracking, and
return · signature verification and cure notification · provisional ballot issue and resolution ·
accessible voting provision · language assistance and translated materials · election day support
and issue escalation · supply logistics · contingency operation for outage, weather, or threat

## Key data

Ballot styles by district combination with proofing sign-off · logic and accuracy test results ·
polling place inventory with accessibility survey results and capacity · precinct-to-location
assignment · poll worker roster with training completion and language capability · equipment
inventory with test, seal, and deployment records · chain of custody logs · mail ballot issue,
return, and status by voter · signature verification outcomes and cure notices · provisional
ballots issued with reason · wait time observations by location and hour · incident log

## Measures

| Measure | Class |
|---|---|
| Ballot styles proofed and logic-and-accuracy tested before use | Process |
| Polling places meeting accessibility requirements, surveyed not assumed | Process |
| Poll worker positions filled and trained before election day | Process |
| **Wait times by location — median and worst, not average** | Outcome |
| Mail ballots returned and accepted, versus rejected | Outcome |
| Rejected mail ballots successfully cured | Outcome |
| Provisional ballots issued, by reason, and later counted | Outcome |
| Accessible voting units deployed and functioning at every location | Process |
| Language assistance available where required | Process |
| Equipment failures and time to restore service | Outcome |

**Report wait times by location, never as a jurisdiction average.** The average is always
acceptable; the distribution is where the problem is, and long waits concentrate in specific
places with identifiable causes — too few machines, too few workers, or a consolidation decision.

## Level variance

- **State.** Certifies voting systems, sets ballot content rules and voting method availability,
  provides funding and training standards, and increasingly runs mail ballot tracking statewide.
- **County.** **Runs the election in most of the country** — printing, locations, poll workers,
  equipment, and mail operations, at a scale that dwarfs the office's normal staffing.
- **Municipal.** Runs elections in states where the function sits with towns and cities, with the
  same statutory obligations at a fraction of the capacity, and frequently the same clerk handling
  everything.

## What to get right

**Proof every ballot style before it prints.** A contest omitted, a candidate misspelled, a district
combination wrong — caught before printing costs a proofing pass; caught after is expensive and
visible.

**Survey polling place accessibility, don't assume it.** A survey never done, or done years ago,
leaves the accessible entrance locked, the path blocked, or the accessible unit unplugged in a
corner. Voting with assistance when independent private voting was required is a failure even when
the ballot is cast.

**Weigh consolidation against the queue it creates.** Locations reduced for cost or for lack of
workers push the resulting wait to fall unevenly and predictably.

**Train poll workers on the hard cases, not just the routine ones.** Provisional issue,
identification requirements, and voter challenges are where errors change outcomes, and they
typically get the least training time.

**Give signature review real scrutiny, and a fast path to cure.** Signatures compared by
non-experts against a specimen sometimes decades old reject disproportionately among younger and
older voters — and the cure process only works if the voter is reached in time.

**Get cure notifications to the voter before the deadline, not by mail alone.** A letter to a voter
whose ballot was rejected, sent by mail, too often arrives after the deadline.

**Back translated materials with a bilingual worker on site.** Translated materials present with no
bilingual worker at the location meet the requirement on paper only — see
[language access](/capabilities/language-access/).

**Rehearse the contingency, not just document it.** Power failure, equipment failure, or a location
becoming unavailable needs a rehearsed fallback — the same untested-plan pattern as
[continuity of operations](/capabilities/continuity-of-operations/), with a deadline that cannot
move.
