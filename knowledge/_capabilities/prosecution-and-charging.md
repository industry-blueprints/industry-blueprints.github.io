---
type: Capability
title: Prosecution & Charging
description: Deciding whether and what to charge, meeting disclosure obligations, and
  resolving cases — where the charging decision constrains everything after it.
resource: https://industry-blueprints.github.io/capabilities/prosecution-and-charging/
tags: [capability, prosecution, charging, disclosure, diversion, plea, discretion]

generated: { by: human:jhofmann, at: 2026-07-28T18:00:00Z }
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
    note: The line prosecutor, exercising the widest individual discretion in the system
  - predicate: has_participant
    target: /personas/constituent.md
    note: Victim, witness, and defendant — with materially different standing in the process
  - predicate: has_participant
    target: /personas/elected-official.md
    note: The prosecutor is elected in most jurisdictions, which makes charging policy public policy
---

## Purpose

To review referred cases, decide whether the evidence and the public interest support a charge and
what that charge should be, meet disclosure obligations, and resolve cases through diversion, plea,
dismissal, or trial.

**The charging decision is the widest discretion in the system and the least examined.** It
determines exposure, bail posture, plea leverage, and collateral consequences that outlast the
sentence. It is made by an individual, usually quickly, usually with no requirement to record the
reasoning, and it constrains every actor downstream.

## Desired outcomes

- Screening on evidentiary sufficiency before charging, not after
- Charging policy stated, published, and applied consistently
- Reasoning recorded, particularly for declination and for charge reduction
- Disclosure obligations met from the outset and tracked as obligations
- Diversion available and used where it produces better outcomes at lower cost
- Case resolution driven by merit rather than by detention pressure on the defendant
- Victims consulted and informed at each decision point
- Charging patterns monitored for disparity

## Key processes

Referral intake and screening · evidentiary sufficiency review · charging decision and charge
selection · declination with recorded reason · diversion eligibility assessment and referral ·
[bail](/capabilities/pretrial-services-and-release-decisions/) position determination · disclosure
identification, tracking, and production · witness and law enforcement credibility disclosure
tracking · plea negotiation and offer policy · trial preparation and conduct · victim consultation
and notification · sentencing recommendation · appeal and post-conviction response · conviction
integrity review · case data reporting

## Key data

Referral register with source, offence, and screening outcome · charging decisions with charge
selected and reasoning · declination records with reason codes · diversion referrals and outcomes ·
disclosure log with items identified, produced, and dates · credibility disclosure register for
witnesses and officers · plea offers and dispositions · trial outcomes · victim contact and
consultation record · case age and disposition timeline · charging and disposition data
disaggregated by offence and demographics

## Measures

| Measure | Class |
|---|---|
| Time from referral to charging decision | Process |
| Referrals declined, and the reasons — evidentiary versus discretionary | Outcome |
| Charges filed that are later dismissed or reduced | Outcome |
| Disclosure produced within the required timeframe | Process |
| Disclosure failures identified at or after trial | Outcome |
| Diversion eligibility identified and take-up | Outcome |
| Case age at disposition, and cases past the speedy trial standard | Process |
| Charging and disposition disparity by demographic, controlling for offence | Outcome |
| Victims consulted before a plea resolution | Process |

**Charges later dismissed or reduced is the measure of screening quality.** A high rate means cases
are being filed that should not have been, and the cost of that error falls entirely on defendants
who were detained, employed, or housed in the interim.

## Level variance

- **Federal.** United States Attorneys with appointed leadership, national charging policy
  guidance, and substantially more resource per case than any other level.
- **State.** State attorneys general with defined jurisdiction, and appellate and post-conviction
  responsibility.
- **County.** **Where nearly all criminal prosecution happens**, under an elected district or state
  attorney whose charging policy is set locally and varies substantially between adjacent counties
  — which is a genuine feature of the system and the source of most variation in outcomes.
- **Municipal.** City attorneys prosecuting ordinance violations and lesser misdemeanours in
  municipal court.
- **Tribal.** Tribal prosecutors with jurisdiction limited by offence and offender, with serious
  offences frequently referred federally — and declination at that level leaving no prosecution at
  all.

## Where it goes wrong

**Charging before screening.** Filed on the arrest report, evidence assessed weeks later, and
dismissed — after the defendant has been detained, missed work, or lost housing.

**Reasoning unrecorded.** Declination and reduction decisions with no reason captured, so charging
policy cannot be audited, evaluated, or applied consistently across a large office.

**Disclosure managed as a task rather than as an obligation.** Exculpatory material is disclosable
from the outset and continuously; treating it as trial preparation is the most common cause of
reversal — and it is the [obligation tracking](/patterns/obligation-tracking/) pattern with
constitutional stakes.

**Credibility disclosure not maintained.** No standing register of officers with sustained
credibility findings, so the obligation is met case by case from memory.

**Overcharging as negotiation.** Charges filed above what the evidence supports to create plea
leverage, which produces pleas that reflect exposure rather than conduct.

**Detention as the resolution mechanism.** A defendant held pretrial accepts a plea to be released.
The plea is procedurally valid and tells you nothing about guilt — see
[pretrial services](/capabilities/pretrial-services-and-release-decisions/).

**Diversion available and unused.** Eligibility never assessed because assessment is an extra step
and the default is to proceed.

**Victims informed after the decision.** Consulted as a formality once the plea is agreed.

**No disparity analysis.** Charging and disposition data exists in the case system and is almost
never analysed by the office that holds it.
