---
type: Capability
title: Investigations
description: Establishing whether a specific person or entity did a specific thing —
  to a standard that holds, without destroying the criminal case in the process.
resource: https://industry-blueprints.github.io/capabilities/investigations/
tags: [capability, investigations, oig, misconduct, fraud, whistleblower, evidence]

generated: { by: human:jhofmann, at: 2026-07-28T16:00:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal, tribal]

relationships:
  - predicate: part_of
    target: /domains/govern.md
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

## Key processes

Allegation intake — hotline, web, walk-in, referral, anonymous · complaint triage and predication
assessment · jurisdiction and track determination · prosecutor consultation and coordination ·
investigative planning · evidence identification, collection, and chain of custody · digital
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
| Track determined before subject interview | Process |
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

## Where it goes wrong

**The administrative interview conducted first.** Discussed above, and the most consequential
mistake available. Frequently made in good faith by an HR investigator who was never told the
matter might be criminal.

**No predication requirement.** Investigations opened on any complaint, so capacity goes to matters
with no basis and the ones that matter drift.

**Investigations that drift.** Months without determination. The subject cannot clear their name,
the reporter concludes nothing will happen, and the record degrades — memories fade and systems
overwrite.

**Reporter identity leaking.** Once it happens, reporting stops, and the organization's ability to
detect anything internally goes with it. Small organizations are structurally exposed: an
allegation with three possible sources identifies the source.

**Reprisal unaddressed.** The original allegation is investigated and the retaliation that follows
is treated as an unrelated personnel matter — which is how organizations teach people not to
report.

**Evidence handled as documents.** Files copied to a shared drive with no chain of custody, so a
matter that later becomes criminal or civil arrives with unusable evidence.

**Investigators with no data access.** Cross-system access is exactly what an investigation needs
and exactly what role-based access control is designed to prevent, so investigators work from
exported spreadsheets emailed by administrators — which is both a control gap and an evidence
problem. Designing a lawful, logged, break-glass investigative access path is an
[identity and access management](/capabilities/identity-and-access-management/) decision that
almost nobody makes deliberately.

**Findings without a stated standard.** "Substantiated" with no statement of what standard was
applied, which cannot support discipline that survives a grievance.

**Systemic causes never referred.** The individual is disciplined, the process that permitted the
conduct is untouched, and the next person does the same thing — the same failure as
[audit findings closed without addressing cause](/kpis/repeat-finding-rate/).

**Investigative files in the personnel file.** Allegations that were unfounded, permanently
accessible to future supervisors.

**Public records tension unresolved.** Investigative files are frequently exempt while open and
disclosable when closed, and the interaction with
[public records response](/capabilities/public-records-and-transparency-response/) is worked out
during the first request rather than before it.
