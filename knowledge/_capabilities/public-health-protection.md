---
type: Capability
title: Public Health Protection
description: Surveillance, investigation, immunization, environmental health, and
  outbreak response — where success is an event that did not happen.
resource: https://industry-blueprints.github.io/capabilities/public-health-protection/
tags: [capability, public-health, surveillance, outbreak, immunization, environmental-health]

generated: { by: human:jhofmann, at: 2026-07-28T15:00:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal, tribal]

relationships:
  - predicate: part_of
    target: /domains/protect.md
  - predicate: has_participant
    target: /personas/program-manager.md
  - predicate: has_participant
    target: /personas/constituent.md
    note: Patient, case, contact, and community — with strong confidentiality expectations
  - predicate: has_participant
    target: /personas/privacy-officer.md
    note: Health surveillance data carries the strictest handling obligations in government
---

## Purpose

To detect and prevent threats to population health — conducting surveillance, investigating cases
and outbreaks, delivering immunization, regulating environmental health risks, and responding when
something spreads.

**Success is invisible and failure is not.** An outbreak prevented produces no event; an outbreak
missed produces an inquiry. This asymmetry drives chronic under-investment between emergencies and
sharp, temporary over-investment during them, and the workforce leaves in the trough.

## Desired outcomes

- Surveillance sensitive enough to detect a signal early and specific enough to be actionable
- Reportable conditions received electronically from providers and laboratories
- Investigation initiated within timeframes that still permit interruption of transmission
- Contact tracing capacity that can scale without being rebuilt
- Immunization coverage maintained, with pockets of low coverage identified
- Environmental health inspection risk-based and current
- Data shared with health care and other jurisdictions under standing agreements
- Community trust maintained, because compliance depends on it

## Key processes

Notifiable condition surveillance and case reporting · syndromic surveillance · laboratory result
receipt and integration · case investigation and interview · contact tracing and monitoring ·
outbreak detection, investigation, and control · immunization delivery and registry maintenance ·
environmental health [inspection](/capabilities/inspections/) — food, water, vectors, housing ·
water quality monitoring · vector surveillance and control · health education and community
engagement · epidemiological analysis and reporting · isolation and quarantine administration ·
medical countermeasure distribution planning

## Key data

Case records with condition, demographics, and
[location](/data-entities/location/) · laboratory results linked to cases · contact records with
monitoring status · outbreak investigation records with epidemiological curve and source · reporting
provider and laboratory registry · immunization registry with coverage by area and cohort ·
environmental health inspection results · vector and environmental monitoring data · population
denominators for rate calculation · data sharing agreements with health care and neighbouring
jurisdictions

## Measures

| Measure | Class |
|---|---|
| Reportable conditions received electronically versus by fax or phone | Process |
| Time from laboratory result to investigation initiated | Process |
| Cases interviewed within the target window | Process |
| Contacts identified per case, and reached | Process |
| Immunization coverage by cohort — and the variance between areas | Outcome |
| Environmental inspections completed on the risk-based schedule | Process |
| Outbreaks detected by surveillance versus reported by a provider | Outcome |
| Surge capacity demonstrated by exercise | Process |

**Outbreaks detected by surveillance rather than reported by an alert clinician is the measure of
whether the surveillance system is working.** Most detections come from a clinician noticing
something, which is a valuable channel and not a system.

## Level variance

- **Federal.** National surveillance systems, laboratory reference capacity, outbreak investigation
  support on request, and the standards for reportable condition data exchange.
- **State.** Holds the primary public health authority in most states — the state laboratory, the
  immunization registry, disease reporting rules, and the legal powers for isolation and
  quarantine.
- **County.** **The delivery level in most of the country.** County or district health departments
  conduct investigation, contact tracing, immunization, and environmental health inspection.
  Governance varies significantly: some are state-operated, some county-operated, some independent
  districts, and the difference determines who can direct them in an emergency.
- **Municipal / tribal.** Large cities operate their own health departments with full authority.
  Tribal health authorities operate under distinct arrangements with federal health services.

## Where it goes wrong

**Reporting by fax.** Still widespread. Manual re-entry introduces delay and error at the point
where speed matters most — a
[integration](/capabilities/application-and-integration-management/) problem with a health outcome.

**Surveillance data without denominators.** Case counts with no reliable population base, so rates
cannot be computed and geographic comparison is meaningless.

**Contact tracing capacity built and disbanded.** Stood up in an emergency, released afterwards,
and rebuilt from nothing at the next one — with the trained people gone.

**Immunization coverage reported in aggregate.** An acceptable countywide rate concealing
neighbourhoods and schools well below the threshold where transmission is interrupted.

**Environmental health on a fixed calendar.** Annual inspection regardless of history, which is the
uniform-monitoring failure described in [inspections](/capabilities/inspections/).

**Confidentiality breached in a small community.** Case detail sufficient to identify someone in a
sparsely populated area, published in a routine report — after which reporting and cooperation drop.

**Data sharing negotiated during the outbreak.** Agreements with hospitals, laboratories, and
neighbouring jurisdictions arranged under time pressure, when they could have been standing.

**Authority unclear across governance models.** In an emergency, whether the state or the county
directs the local health department is discovered rather than known.
