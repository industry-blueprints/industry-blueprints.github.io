---
type: Capability
title: Justice Information Sharing
description: Moving accurate information across agencies that do not report to each
  other — under access rules stricter than anywhere else in government.
resource: https://industry-blueprints.github.io/capabilities/justice-information-sharing/
tags: [capability, information-sharing, criminal-history, cjis, interoperability, records]

generated: { by: human:jhofmann, at: 2026-07-28T19:00:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal, tribal]

relationships:
  - predicate: part_of
    target: /domains/justice-and-public-safety.md
  - predicate: has_participant
    target: /personas/chief-data-officer.md
  - predicate: has_participant
    target: /personas/solution-architect.md
    note: The integration problem here is genuinely hard and usually attempted as a system purchase
  - predicate: has_participant
    target: /personas/constituent.md
    note: The person whose record follows them, accurate or not, for decades
---

## Purpose

To move accurate, timely, and appropriately restricted information between the agencies in the
justice pipeline — arrest to charge to disposition to custody to supervision — and to maintain the
criminal history record that results.

**No agency in the chain reports to any other, and most are separately elected.** Police,
prosecutor, court, sheriff, and state supervision each own their record and their system, and the
information has to cross those boundaries by agreement rather than by direction. **This is the
single most consequential integration problem in the public sector**, and it is a governance
problem attempted repeatedly as a technology purchase.

## Desired outcomes

- One person identified consistently across every agency in the chain
- Dispositions reaching the criminal history repository, completely and promptly
- Custody, warrant, and protective order status current wherever it is queried
- Access controlled to the standard the data requires, with auditable logging
- Sharing governed by written agreement, not by relationship
- Individuals able to see, and correct, their own record
- Sealed and expunged records actually suppressed everywhere they exist
- Aggregate data available for cross-agency analysis, de-identified appropriately

## Key processes

Person identification and biometric matching across agencies · arrest reporting to the state
repository · **disposition reporting from courts to the repository** · custody and release status
exchange · warrant entry, service, and clearance · protective order registration and service status
· criminal history query and response · background check response for employment and licensing ·
incident and offence statistical reporting · access authorization, training, and audit under the
applicable security policy · information sharing agreement negotiation and maintenance ·
sealing and expungement propagation · record challenge and correction · cross-agency analytical
data provision

## Key data

Person identity resolved across agencies, biometrically where available · arrest records with
charge and tracking identifier · **disposition records linked to the originating arrest** ·
custody, release, and supervision status · warrant register with status · protective order register
· criminal history record per person · access authorizations and query audit log · information
sharing agreements with permitted purposes · sealing and expungement orders and their propagation
status · correction requests and outcomes

## Measures

| Measure | Class |
|---|---|
| **Arrests with a matching disposition in the repository** | Outcome |
| Time from disposition to repository update | Process |
| Records with an unresolved identity match across agencies | Process |
| Warrant and protective order status accuracy, sampled | Outcome |
| Access audits completed, and unauthorized queries identified | Process |
| Sealing and expungement orders propagated to every holding system | Process |
| Record correction requests, and time to resolve | Process |
| Agencies sharing under a current written agreement | Process |

**Arrests with a matching disposition is the number that defines this capability.** Incomplete
disposition reporting is a long-standing, well-documented national problem: a background check then
shows an arrest with no outcome, which a reader interprets as guilt. **The person who was acquitted
or whose case was dismissed carries the consequence** — in employment, housing, and licensing —
because of a records failure between two agencies.

## Level variance

- **Federal.** National criminal history and fingerprint systems, the security policy governing
  access to criminal justice information, and national crime data reporting standards.
- **State.** **Operates the state criminal history repository**, the fingerprint identification
  bureau, the message switch connecting local agencies to state and national systems, and the
  statewide reporting standards. State-level disposition reporting completeness is the binding
  constraint on record accuracy for everyone.
- **County.** Court dispositions, jail custody data, and prosecutor case data — three systems in one
  county that frequently cannot identify the same person, which is where the disposition reporting
  gap usually originates.
- **Municipal.** Records systems reporting arrests and incidents upward, often on interfaces built
  once and maintained by nobody.
- **Tribal.** Access to national systems where arrangements exist, with historic gaps that leave
  tribal records absent from checks and national records absent from tribal decisions.

## What to get right

**Get dispositions reported completely and promptly.** Updating the repository when the court
decides is what keeps an arrest from standing alone on the record permanently — otherwise this is
the most consequential data quality failure in government, measured by effect on individuals.

**Resolve identity across the chain, not by name alone.** Matching biometrically across systems,
rather than by name across five separate systems, keeps one person's record from splitting into
several or absorbing another's history — the
[identity resolution](/data-models/core-public-sector-model/) problem with liberty consequences.

**Negotiate the governance agreement before procuring a system.** Settling who owns what, who may
see what, and who is accountable for accuracy is the hard part; the system does not substitute for
it.

**Build shared, maintained interfaces instead of point-to-point ones.** A maintained shared
integration, rather than interfaces built individually between every pair of agencies, avoids the
failing-silently pattern described in
[application and integration management](/capabilities/application-and-integration-management/) —
here with warrants and release orders flowing through it.

**Propagate sealing and expungement everywhere a record lives.** Executing the order against the
court system, the jail system, the local records system, and the commercial aggregators that
copied it, not just the state repository, is what makes the relief real.

**Control and audit access at the system level.** Logging and auditing every query, not just
documenting authorization on paper, is what catches misuse before someone has to complain.

**Keep warrant and protective order status current in real time.** A roadside query answered from
current status, not one hours or days old, protects both officer safety and against a wrongful
arrest.

**Give individuals an accessible route to correct their record.** A clear challenge process, rather
than leaving the burden of proof on the individual who finds the error, makes correction achievable.
