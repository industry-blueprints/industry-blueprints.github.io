---
type: Capability
title: Vital Records & Civil Registration
description: Registering births, deaths, and marriages and issuing certificates — the
  identity foundation almost every other service depends on.
resource: https://industry-blueprints.github.io/capabilities/vital-records-and-civil-registration/
tags: [capability, vital-records, civil-registration, birth, death, identity, certificates]

generated: { by: human:jhofmann, at: 2026-07-28T20:30:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/serve.md
  - predicate: has_participant
    target: /personas/constituent.md
    note: Registrant and applicant — frequently a bereaved family, or someone locked out of everything else
  - predicate: has_participant
    target: /personas/records-manager.md
    note: Permanent records with the longest retention obligation in government
  - predicate: has_participant
    target: /personas/privacy-officer.md
    note: The dataset most attractive to identity fraud, and the most permanent
---

## Purpose

To register life events — birth, death, marriage, divorce, and fetal death — maintain those records
permanently, issue certified copies to entitled parties, and supply the data that public health and
population statistics depend on.

**This is the root of civil identity.** A birth certificate is the breeder document for passports,
driving licences, benefits, employment, school enrolment, and voting. Someone who cannot obtain one
is effectively locked out of most of the rest of government — and the people most likely to be in
that position are those born at home, born to unmarried parents in earlier eras, displaced, or
elderly with no surviving documentation.

## Desired outcomes

- Registration promptly and completely, from every source that reports events
- Death registration fast enough to support families and to prevent identity misuse
- Certificates issued to entitled parties, with fraud controls that do not exclude the entitled
- Amendment and correction possible without litigation for ordinary errors
- Records preserved permanently, in more than one place
- Cause-of-death data accurate enough for public health use
- Access rules that protect against fraud without creating an identity trap
- Fees that do not put an essential document out of reach

## Key processes

Birth registration from hospitals, midwives, and home births · paternity acknowledgement and
parentage recording · death registration from providers, medical examiners, and funeral homes ·
cause-of-death certification and query resolution · fetal death registration · marriage licence
issue and return · divorce decree recording · delayed and late registration for events never
registered · amendment and correction · court-ordered changes including adoption and gender marker
· sealing and re-registration for adoption · certificate application, entitlement verification, and
issue · fraud control and security paper management · fee assessment and waiver · genealogical and
non-certified access after the confidentiality period · **data supply to public health and
statistics** · death data supply for benefit and voter list purposes · preservation, imaging, and
disaster protection of the permanent archive

## Key data

Birth records with parentage, place, and attendant · death records with cause certified by the
attending or certifying clinician · marriage and divorce records · fetal death records · amendment
and correction history with the basis for each · sealed records and their replacement records ·
certificate issue log with applicant, entitlement basis, and date · security paper inventory and
reconciliation · fee and waiver records · **event data extracts to public health, statistics, and
the death matching services other agencies rely on** · preservation and imaging status

## Measures

| Measure | Class |
|---|---|
| Time from event to registration, by event type | Process |
| Birth registration completeness against expected births | Outcome |
| Time from death to registration, and to data supply downstream | Process |
| Cause-of-death queries required before acceptance | Process |
| Certificate issue turnaround, by channel | Process |
| Applications refused, and the reasons | Outcome |
| Delayed registrations completed for people with no record | Outcome |
| Amendment requests, and time to resolve | Process |
| Fee waivers granted where hardship was established | Process |
| Security paper reconciled without discrepancy | Process |

**Delayed registration volume matters more than it looks.** Each one is a person who has been
living without provable identity, and how easy the jurisdiction makes that process determines
whether they can ever obtain housing, employment, or benefits.

## Level variance

- **State.** **Holds the state vital records office and the legal registry**, sets registration and
  access rules, certifies the record, and supplies the national statistics system. Electronic birth
  and death registration systems are state-operated.
- **County.** Local registrar function in many states — issuing certificates, registering events
  locally, and holding historical records. Frequently the counter the public actually visits, and
  the coroner or medical examiner certifying cause of death is a county office.
- **Municipal.** Town and city clerks act as registrars in some states, particularly in the
  Northeast, holding records going back centuries.

## Where it goes wrong

**No route for people with no record.** Delayed registration procedures that require documentation
the person does not have precisely because they were never registered — a circular requirement that
is the single most consequential failure here.

**Fraud controls that exclude the entitled.** Identity requirements for obtaining a birth
certificate that themselves require a birth certificate, or a photo identification the applicant
cannot get without one. The same structural trap described in
[identity and access management](/capabilities/identity-and-access-management/), with no
alternative route.

**Death data reaching downstream systems slowly.** Benefit payments continuing, voter records
remaining, and identity misuse of the deceased — all preventable by prompt supply to the systems
that need it, and dependent on registration speed.

**Cause of death certified without query.** Vague or implausible causes accepted, degrading the
public health statistics that [surveillance](/capabilities/public-health-protection/) depends on.

**Amendment requiring a court order for a clerical error.** A misspelling on a fifty-year-old record
treated as a legal contest.

**Fees as a barrier.** An essential document priced beyond people who need it for a benefit
application, with waivers unadvertised.

**Records held in one place.** Permanent records — sometimes the only copy — in a basement with no
imaging and no off-site duplicate, against a flood risk that
[hazard assessment](/capabilities/hazard-identification-and-risk-assessment/) has usually already
identified.

**Access rules unclear at the counter.** Entitlement applied inconsistently by different clerks, so
outcomes depend on who is working.
