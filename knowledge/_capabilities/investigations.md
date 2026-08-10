---
type: Capability
title: Investigations
description: Establishing whether a specific person or entity did a specific thing —
  to a standard that holds, without destroying the criminal case in the process.
resource: https://industry-blueprints.github.io/capabilities/investigations/
tags: [capability, investigations, investigative-case-management, oig, inspector-general,
  misconduct, fraud, program-integrity, whistleblower, evidence, case-management]

generated: { by: human:jhofmann, at: 2026-07-28T16:00:00Z }
status: draft
stale_after: 2027-07-28
depth: detailed

industry: public-sector
government_levels: [federal, state, county, municipal, tribal]

relationships:
  - predicate: part_of
    target: /domains/govern.md
  - predicate: has_participant
    target: /personas/investigator.md
    note: Holds the decisions that cannot be taken back
  - predicate: has_participant
    target: /personas/internal-auditor.md
    note: Frequently housed with audit, and a distinct discipline from it
  - predicate: has_participant
    target: /personas/hr-director.md
    note: Owns the disciplinary consequence, and the due-process constraints on reaching it
  - predicate: has_participant
    target: /personas/privacy-officer.md
    note: Investigative files are the most access-restricted records the organization holds
  - predicate: has_participant
    target: /personas/records-manager.md
    note: The file is the evidentiary record, with its own retention and disclosure regime
  - predicate: uses_data
    target: /data-entities/case.md
---

## Purpose

To receive allegations, determine whether there is a basis to investigate, gather and preserve
evidence, interview subjects and witnesses, and reach a documented finding about whether specific
conduct occurred — supporting administrative action, recovery, referral for prosecution, or
closure.

**Investigation is not audit.** Audit examines systems and controls against criteria and reports on
whether they are working. Investigation examines whether an identified person or entity did an
identified thing. Different evidentiary standards, different rights attach, different outputs, and
frequently different statutory authority — [internal
audit](/capabilities/internal-audit/) and this capability are commonly housed together and are
not the same discipline.

## The constraint that shapes everything

**A public employee compelled to answer questions under threat of discipline receives immunity from
those statements being used in a criminal prosecution.** The doctrine is well established, and its
practical effect is that **conducting the administrative interview first can destroy the criminal
case.**

There is no private-sector equivalent, the error is unrecoverable, and it is made by organizations
that treat an allegation as an HR matter and interview the subject on day two. Deciding the track —
administrative, criminal, or parallel with a coordinated sequence agreed with the prosecutor — is
the first substantive decision in any investigation involving an employee, and it must be made
before anyone is interviewed.

Related and separate: employees represented by a union generally have the right to representation
at an interview they reasonably believe may result in discipline. Denying it taints the interview
and frequently the resulting action.

## Desired outcomes

- Allegations received through channels people will actually use, including anonymously
- Predication assessed before an investigation opens, and recorded
- Track determined — administrative, criminal, parallel — before the subject is interviewed
- Evidence collected and held so that it survives becoming a criminal or civil matter
- Subject and witness rights observed, and the observance documented
- Findings reached against a stated standard of proof
- Reporters protected, and reprisal investigated as its own matter
- Systemic causes referred to management, not only individual conduct addressed
- Investigations concluded in a period that is fair to everyone involved

## Kinds of investigation, one discipline

The spine below is common. What differs is the authority, the standard, and the consequence.

| Kind | Typically sits with | Distinctive feature |
|---|---|---|
| **Misconduct and integrity** | Inspector general, ethics office | Employee rights doctrine applies in full; may become criminal |
| **Fraud, waste and abuse** | Inspector general, audit | Financial recovery and debarment as outcomes alongside discipline |
| **Program integrity** | Benefit and health programmes | High volume, data-matching driven, administrative disqualification track |
| **Workplace — EEO, harassment, safety** | HR, EEO office | Complainant rights and confidentiality obligations run alongside the subject's |
| **Regulatory and licensing complaint** | Licensing boards, regulators | Subject is a licensee, not an employee; consequence is the authorization |
| **Procurement and contractor** | Procurement, inspector general | Supplier is the subject; suspension and debarment available |

## Processes

[Allegation Intake & Track Determination](/processes/allegation-intake-and-track-determination/) —
the front of the discipline, and where the irreversible decision described above is either made
deliberately or made by default.

Also: investigative planning · evidence identification, collection, and chain of custody · digital
evidence preservation and forensic imaging · document and data requests · witness interviews ·
subject interview with rights advisement · surveillance and covert activity authorization ·
analysis and finding formulation · report of investigation · referral for prosecution ·
management referral for systemic issues · administrative action support and testimony · reprisal
and whistleblower retaliation investigation · case closure and file retention · public reporting

## Key data

Allegation register with source, date, anonymity status, and triage outcome · predication record
with the basis for opening or declining · **investigative [case](/data-entities/case/) file with
restricted access, separate from the personnel file** · evidence register with chain of custody ·
interview records with rights advisement documented · subpoena and data request log · analysis work
product · report of investigation with findings against the standard applied · referral records and
prosecutor disposition · management referrals and their response · reprisal complaint records ·
recovery and debarment outcomes

## Measures

| Measure | Class |
|---|---|
| Time from allegation receipt to triage decision | Process |
| Investigations opened with predication documented | Process |
| [Track determined before subject contact](/kpis/track-determined-before-subject-contact/) | Process |
| Median and outlier case age, by kind | Process |
| Findings by disposition — substantiated, unsubstantiated, unfounded | Outcome |
| Referrals accepted for prosecution, and their outcome | Outcome |
| Administrative actions overturned on appeal or grievance | Outcome |
| Reprisal complaints received following a report | Outcome |
| Management referrals resulting in a systemic change | Outcome |
| Allegations received through the hotline — a rising number is usually good | Output |

**Two of these read backwards from instinct.** Rising hotline volume generally means the channel is
trusted; an organization receiving no allegations is not an organization without misconduct. And
**reprisal complaints following a report are the measure of whether reporter protection is real** —
tracked nowhere in most organizations, and the single best predictor of whether anyone will report
next time.

Case age needs outliers reported alongside the median. A drifting investigation harms the subject,
the reporter, and confidence in the process simultaneously, and medians conceal them.

## Level variance

- **Federal.** Statutorily independent inspectors general with subpoena authority, law enforcement
  powers in many offices, dual reporting to the agency head and to Congress, semiannual public
  reporting, and a defined framework for whistleblower protection and reprisal complaints. The most
  developed investigative infrastructure in government, and the model others are measured against.
- **State.** Inspectors general or equivalent in some states and some agencies, Medicaid fraud
  control units with law enforcement authority, program integrity units inside benefit agencies,
  and licensing board investigators for professional conduct. Authority varies substantially by
  state and is frequently narrower than the federal model.
- **County / municipal.** **Usually no dedicated investigative function at all.** Allegations go to
  HR, to the attorney, or to an internal audit function that has no investigative authority; some
  larger jurisdictions have an independent inspector general or ethics commission. The employee
  rights doctrine applies with full force regardless, which means the risk of a compelled interview
  destroying a criminal case is highest exactly where the least expertise exists.
- **Tribal.** Investigative authority under tribal law with jurisdictional questions that must be
  resolved case by case.

## What to get right

**Determine the track before the first interview.** Discussed above, and the single most
consequential decision in the sequence. It is easy to miss in good faith when an HR investigator
was never told the matter might be criminal — naming the track owner in policy closes that gap.

**Require and record predication before opening.** A documented basis for opening keeps capacity
directed at matters that warrant it, rather than spread thin across complaints with no basis while
the ones that matter drift.

**Move investigations to a determination promptly.** Reaching a finding in a reasonable period lets
the subject clear their name, keeps the reporter's confidence that something will happen, and
protects the record before memories fade and systems overwrite.

**Protect reporter identity actively.** Protecting it is what keeps reporting flowing — once
identity leaks, the organization's ability to detect anything internally goes with it. Small
organizations need particular care here: an allegation with three possible sources can identify the
source on its own.

**Investigate reprisal as its own matter.** Treating retaliation that follows a report as seriously
as the original allegation is what teaches people that reporting is safe.

**Handle evidence with a documented chain of custody.** Building the chain in from the start, rather
than copying files to a shared drive, keeps evidence usable if the matter becomes criminal or
civil.

**Give investigators a lawful, logged access path.** Designing deliberate break-glass access for
cross-system investigative work, rather than leaving investigators to work from spreadsheets
exported by administrators, closes both a control gap and an evidence problem. This is an
[identity and access management](/capabilities/identity-and-access-management/) decision worth
making deliberately.

**State the standard behind every finding.** Naming the standard applied when a finding is
"substantiated" is what lets discipline survive a grievance.

**Refer systemic causes, not just individual conduct.** Referring the process that permitted the
conduct, alongside disciplining the individual, is what keeps the next person from doing the same
thing — the same discipline behind
[audit findings closed only after addressing cause](/kpis/repeat-finding-rate/).

**Keep investigative files out of the personnel file.** Restricting access, even for allegations
that were unfounded, keeps them from being permanently visible to future supervisors.

**Resolve the public records question before the first request.** Working out in advance how
investigative files move from exempt while open to disclosable when closed keeps the interaction
with
[public records response](/capabilities/public-records-and-transparency-response/) from being
figured out under pressure.

## Governance

[Investigative Track & Rights Advisement](/governance/investigative-track-and-rights-advisement/)
— the control around the decisions with no recovery path. It is unusual among the controls in
this library in having **no remediation step**, because none is available: once the compelled
interview has happened, no later process restores the prosecution.

Its sharpest requirement costs nothing to implement. **Name the track owner in policy**, even
where no investigative function exists. An unnamed owner does not mean the decision goes unmade;
it means the decision is made by whoever moves first.
