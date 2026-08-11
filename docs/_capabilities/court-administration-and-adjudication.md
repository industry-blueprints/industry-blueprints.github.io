---
id: court-administration-and-adjudication
title: Court Administration & Adjudication
type: capability
level: 2
version: '0.1'
status: draft
description: Filing, docketing, scheduling, hearing, and disposing of cases — and
  managing the jury, the record, and the money the court collects.
last_updated: '2026-08-11'
capability_area: justice-and-public-safety
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
To receive filings, maintain the docket and the record, schedule and hold proceedings, support
adjudication, enter and communicate dispositions, manage juries, and administer the financial
obligations the court imposes.

**Most people who come to court do not have a lawyer.** In eviction, debt, family, and traffic
matters, self-represented litigants are the majority on at least one side. A court designed around
represented parties is designed around the minority of its users, and the resulting outcomes are
frequently determined by procedure rather than by merit.

## Desired outcomes

- Filing available without a lawyer, in forms a person can complete
- Docket managed actively, with case age monitored and continuances controlled
- Scheduling that respects the time of parties, witnesses, and jurors
- Proceedings accessible — physically, linguistically, and remotely where appropriate
- Self-represented litigants supported without the court giving legal advice
- Dispositions entered promptly and transmitted to every agency that needs them
- Juries summoned and used efficiently, and representative of the community
- Financial obligations assessed with ability to pay considered

## Lifecycle
Filing intake — in person, by mail, electronic · fee assessment and waiver · case initiation and
docketing · service of process management · calendaring and scheduling · continuance management ·
hearing and trial conduct support · interpreter provision · record creation and transcription ·
self-help and navigation support · judgment and disposition entry · disposition transmission to
law enforcement, corrections, and state repositories · warrant issue and recall · jury summons,
qualification, selection, and payment · fine, fee, and restitution assessment and collection ·
ability-to-pay determination · sealing, expungement, and record correction · appeal record
preparation · problem-solving court operation

## Domain model
Case register with type, parties, status, and age · docket entries and the court record ·
scheduling and continuance history with reasons · representation status by party · disposition
records with transmission confirmation · warrant register with issue and recall · jury pool,
summons response, and utilization · financial obligations assessed, paid, and outstanding ·
ability-to-pay determinations · interpreter requests and provision · sealing and expungement orders
· access and remote appearance data

## Measures

| Measure | Class |
|---|---|
| Case age at disposition against time standards, by case type | Process |
| Cases past the applicable speedy trial or time standard | Outcome |
| Continuances per case, and the reasons | Process |
| Self-represented parties as a share of parties, by case type | Outcome |
| Hearings where a party failed to appear — and why | Outcome |
| Time from disposition to transmission to other agencies | Process |
| Jury summons response rate, and pool representativeness | Outcome |
| Juror time spent waiting versus serving | Input |
| Financial obligations assessed with an ability-to-pay determination | Process |

**Failure-to-appear reasons are more informative than the rate.** Most non-appearance is
transportation, childcare, work, or a notice that did not arrive — not evasion — and treating it
uniformly as contempt generates warrants that compound a scheduling problem into a custody problem.

## Level variance

- **Federal.** Federal district and appellate courts with their own administrative office, uniform
  electronic filing, and published time standards.
- **State.** **State court systems hear the overwhelming majority of cases.** A state
  administrative office sets standards, technology, and reporting, with trial courts operated at
  county level and funding split between state and county in most states.
- **County.** Operates the trial courts — criminal, civil, family, probate, juvenile — and holds
  the clerk function, which is frequently a separately elected office with its own systems.
- **Municipal.** Municipal courts handling ordinance, traffic, and lesser criminal matters. **Where
  these courts are a revenue source for the city, the conflict is structural** and has been the
  subject of significant findings.
- **Tribal.** Tribal courts applying tribal law, with jurisdiction and full faith and credit
  questions arising at every boundary.

## What good looks like here

**Design forms, notices, and procedure for the self-represented majority.** Assuming
representation, in case types where most parties have none, makes the outcome a function of
procedural literacy.

**Write notices a person can act on, and verify the address.** A hearing date in a document that
does not explain what happens if you cannot attend, sent to an address of record that may be stale,
turns non-appearance into contempt rather than a scheduling gap. The same
[service failure](/capabilities/enforcement-and-adjudication/) as in administrative enforcement,
with a warrant at the end of it.

**Schedule around the time of parties, witnesses, and jurors.** Summoning everyone for the same
morning holds jurors for days without being selected and costs witnesses and parties a day of pay
per appearance.

**Manage continuances actively.** Each one reasonable in isolation, they are collectively the cause
of case age — and every continuance is another lost day for anyone who had to attend.

**Transmit dispositions to every agency that needs them.** Without transmission, law enforcement,
corrections, and the state criminal history repository don't receive the decision — records stay
open, warrants stay active, and background checks report charges that were dismissed. A
[justice information sharing](/capabilities/justice-information-sharing/) failure with lifelong
consequences for the individual.

**Keep fines and fees separate from the court's own funding.** Where the court funds itself or the
municipality from what it imposes, assessment stops being about the offence — the same inversion as
[enforcement revenue targets](/capabilities/enforcement-and-adjudication/), with incarceration
available at the end.

**Assess ability to pay before obligations escalate.** Imposed uniformly and left unpaid, they
escalate to licence suspension or a warrant, which removes the means of paying.

**Make expungement available without requiring a lawyer.** Relief that exists on paper and requires
a petition and usually a lawyer is claimed by only a small fraction of eligible people.

**Correct jury pool sources that under-represent.** Uncorrected summons non-response skews the
pool, and the constitutional expectation is not met.
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
