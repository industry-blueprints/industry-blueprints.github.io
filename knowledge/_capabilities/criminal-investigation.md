---
type: Capability
title: Criminal Investigation
description: Carrying a case from report to clearance — assignment, evidence, forensics,
  and the decision to seek charges, against a caseload nobody can carry.
resource: https://industry-blueprints.github.io/capabilities/criminal-investigation/
tags: [capability, investigation, detectives, clearance, forensics, case-management]

generated: { by: human:jhofmann, at: 2026-07-28T17:30:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal, tribal]

relationships:
  - predicate: part_of
    target: /domains/justice-and-public-safety.md
  - predicate: has_participant
    target: /personas/caseworker.md
    note: The investigator, whose caseload determines which cases get worked at all
  - predicate: has_participant
    target: /personas/constituent.md
    note: Victim and witness, whose continued participation the case usually depends on
---

## Purpose

To take reported offences forward — screening for solvability, assigning cases, collecting and
analysing evidence, interviewing, identifying suspects, and presenting a case sufficient for a
charging decision.

**Distinct from [Investigations](/capabilities/investigations/) in the Govern domain**, which is the
administrative and integrity discipline. The evidentiary spine is similar; the authority, the
rights framework, and the destination are different.

**Caseload is the binding constraint and it is rarely stated honestly.** Assigning every reported
case to an investigator who cannot work them all means cases are worked by whoever pushes hardest,
which is not the same as by seriousness or solvability.

## Desired outcomes

- Case screening on documented solvability factors rather than on informal judgment
- Caseloads within a level at which assigned cases are actually worked
- Evidence submitted, analysed, and returned within useful timeframes
- Victims and witnesses kept informed, because participation depends on it
- Investigative steps documented contemporaneously
- Disclosure obligations to the defense met from the outset, not at trial
- Cleared cases genuinely resolved rather than administratively closed
- Cold and unsubmitted evidence backlogs known and worked down

## Key processes

Case screening and solvability assessment · assignment and caseload management · investigative
planning · scene and follow-up evidence collection · forensic submission, prioritization, and
result integration · database and record queries · witness and victim interviewing · suspect
interview under the applicable rights framework · surveillance and covert activity authorization ·
warrant application · digital evidence acquisition and analysis · case file preparation and
disclosure package · presentation to
[prosecution](/capabilities/prosecution-and-charging/) · clearance classification · cold case
review · victim update and notification

## Key data

Case register with offence, status, assigned investigator, and age · solvability factors recorded
at screening · investigative activity log with dates · evidence submissions with laboratory status
and turnaround · forensic results linked to cases · witness and victim contact and update record ·
warrant and authorization records · digital evidence inventory · disclosure package contents ·
clearance classification with basis · caseload by investigator · backlog of unsubmitted and
unanalysed evidence

## Measures

| Measure | Class |
|---|---|
| Clearance rate by offence type — and by clearance basis | Outcome |
| Cases assigned versus cases with documented investigative activity | Process |
| Caseload per investigator against a stated workable standard | Input |
| Forensic submission to result turnaround | Process |
| Unsubmitted evidence backlog, by age | Outcome |
| Victims receiving updates at defined intervals | Process |
| Cases declined by the prosecutor, and the reasons | Outcome |
| Disclosure failures identified at or after trial | Outcome |

**Clearance rate must be read with its basis.** A case closed by exceptional means or administrative
closure is not a case solved, and reporting the two together makes the headline number
uninterpretable — which is precisely why they are frequently reported together.

## Level variance

- **Federal.** Investigative agencies with national jurisdiction, substantial forensic and
  analytical capacity, and long-running complex cases.
- **State.** State bureaus providing investigative support and, critically, **the forensic
  laboratory most local agencies depend on** — which makes state laboratory capacity a direct
  determinant of local case outcomes.
- **County.** Sheriff's investigators, county-level crime laboratories in larger jurisdictions, and
  the medical examiner or coroner.
- **Municipal.** Dedicated investigative units in larger departments; in small departments the
  patrol officer who took the report is the investigator, alongside a full patrol assignment.
- **Tribal.** Investigation with jurisdictional complexity, frequently requiring federal
  involvement for serious offences.

## What to get right

**Fund forensic laboratory capacity to the actual submission volume.** Evidence submitted and
unanalysed for months or years lets cases age, witnesses disperse, and the statutory clock run.
Untested evidence backlogs — sexual assault kits most prominently — have been a recurring national
finding and are a laboratory capacity problem, not an investigative one — which matters, because
they are routinely reported as the latter.

**Screen cases for solvability rather than assigning all of them.** Without screening, the caseload
is nominal and the actual selection happens invisibly.

**Keep victims informed throughout, not only when something is needed from them.** Otherwise
participation collapses, and the case fails for want of a witness who concluded nobody was working
it.

**Document investigative steps as they're taken.** Actions taken and not recorded cannot be
disclosed, cannot be defended, and are indistinguishable at trial from actions not taken.

**Disclose exculpatory material from the outset, not at trial preparation.** Discovering it late is
the most common cause of case collapse and of the reversals that follow.

**Plan capacity for digital evidence volume.** Phone extractions, video from many sources, and
cloud data now dominate the workload in ordinary cases, and capacity scoped for an earlier era
falls behind.

**Keep classification practices independent of clearance pressure.** Where clearance is the
headline measure, classification practices can drift to protect it — and the measure stops
describing anything.

**Assign ownership for cold case review.** Cases with newly available forensic possibilities get
revisited only when someone owns the backlog.
