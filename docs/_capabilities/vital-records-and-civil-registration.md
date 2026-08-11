---
id: vital-records-and-civil-registration
title: Vital Records & Civil Registration
type: capability
level: 2
version: '0.1'
status: draft
description: Registering births, deaths, and marriages and issuing certificates —
  the identity foundation almost every other service depends on.
last_updated: '2026-08-11'
capability_area: serve
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

## Lifecycle
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

## Domain model
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

## What to get right

**Give people with no record a real route to get one.** Delayed registration procedures that
require documentation the person does not have, precisely because they were never registered,
create a circular requirement — a genuine alternative route is the single most consequential fix
here.

**Design fraud controls with an alternative path for the entitled.** Identity requirements for
obtaining a birth certificate that themselves require a birth certificate, or a photo
identification the applicant cannot get without one, recreate the same structural trap described
in [identity and access management](/capabilities/identity-and-access-management/) — an
alternative route is what breaks the loop.

**Supply death data to downstream systems promptly.** Fast supply is what stops benefit payments
continuing, voter records remaining, and identity misuse of the deceased.

**Query implausible causes of death before certifying.** Vague or implausible causes, checked
before acceptance, are what keeps the public health statistics that
[surveillance](/capabilities/public-health-protection/) depends on accurate.

**Give clerical errors a clerical fix.** A clerical correction path handles a misspelling on a
fifty-year-old record without requiring a court order.

**Keep fees within reach and advertise waivers.** An essential document priced beyond people who
need it for a benefit application needs both a reasonable fee and a visible waiver path.

**Keep permanent records in more than one place.** Imaging and an off-site duplicate protect the
archive against the flood risk that
[hazard assessment](/capabilities/hazard-identification-and-risk-assessment/) has usually already
identified.

**Make access rules explicit and consistent at the counter.** Clear, consistently applied
entitlement rules keep outcomes from depending on who is working.
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
