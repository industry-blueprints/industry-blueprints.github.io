---
type: Capability
title: Cybersecurity Operations
description: Protecting, detecting, responding, and recovering across an estate that
  includes water treatment, traffic signals, and emergency dispatch.
resource: https://industry-blueprints.github.io/capabilities/cybersecurity-operations/
tags: [capability, cybersecurity, incident-response, detection, resilience, ransomware]

generated: { by: human:jhofmann, at: 2026-07-27T23:30:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/inform.md
  - predicate: has_participant
    target: /personas/chief-information-officer.md
  - predicate: has_participant
    target: /personas/privacy-officer.md
    note: Most significant incidents are also privacy incidents, with separate notification clocks
---

## Purpose

To protect the organization's systems and data, detect attacks and compromise, respond to incidents
and recover from them — across an estate that includes systems where the consequence of compromise
is physical.

**Public sector cybersecurity has an operational technology problem most sectors do not.** Water
treatment controls, traffic signals, building systems, and emergency dispatch sit alongside
ordinary IT, frequently on the same network, frequently unpatched because the vendor will not
certify the patch. **The consequence of compromise there is not data loss.**

## Desired outcomes

- Assets known — including the operational technology nobody inventoried
- Vulnerabilities remediated on a risk-based schedule, with compensating controls where patching is impossible
- Detection coverage across the estate, with alerts someone actually reviews
- Incidents contained quickly, with a plan rehearsed before it was needed
- Backups isolated, tested, and proven restorable
- Recovery objectives set by service criticality and validated
- Third-party and supply chain risk assessed before connection

## Key processes

Asset inventory and classification · vulnerability scanning and remediation · patch and
configuration management · network segmentation, including IT/OT separation · endpoint and email
protection · security monitoring and detection engineering · alert triage and investigation ·
incident response and containment · forensic preservation · breach assessment and notification
coordination · backup and recovery validation · tabletop exercises · third-party security
assessment · security awareness

## Key data

Asset inventory with owner, criticality, and exposure · vulnerability findings with age and risk ·
patch and configuration compliance state · network segmentation map · detection coverage by asset
class · alert and incident records with timeline · backup inventory with last successful restore
test · recovery objectives by service · third-party assessments and connection inventory

## Measures

| Measure | Class |
|---|---|
| Assets inventoried, including operational technology | Process |
| Critical vulnerabilities remediated within target | Process |
| Detection coverage across asset classes | Process |
| Time to detect, contain, and recover | Process |
| Backups restore-tested in the period | Process |
| Recovery objectives validated by exercise, not asserted | Process |
| Systems unpatchable, with compensating controls documented | Process |
| Third parties assessed before connection | Process |

**Restore-tested backups is the measure that determines what a ransomware event costs.** Backups
that exist and have never been restored are an assumption.

## Level variance

- **Federal.** Continuous monitoring programmes, binding directives, mandated incident reporting
  timelines, and centrally provided detection and threat intelligence.
- **State.** State security operations centres frequently offering monitoring services to local
  government, National Guard cyber support in some jurisdictions, and mandatory incident reporting
  to a state authority.
- **County / municipal.** **The most attacked and least resourced level.** Ransomware against local
  government is routine, the operational technology exposure is greatest here — water, wastewater,
  traffic, emergency services — and the security team is often one person or a managed provider.
  Cyber insurance requirements have become a de facto control framework, and increasingly a
  precondition of coverage.

## Where it goes wrong

**Operational technology outside the inventory.** SCADA, building management, and signal systems
managed by an engineering department, unknown to IT, unpatched for a decade, and network-reachable.

**Backups on the same network.** Encrypted along with everything else, which is the difference
between a bad week and an existential event.

**Recovery objectives asserted, never tested.** A four-hour target on a system nobody has attempted
to restore.

**Alerts nobody reads.** Detection deployed, volume overwhelming, and no one funded to triage —
so the alerting exists and the detection does not.

**Patching blocked by vendor certification.** A common and genuine constraint, and the answer is a
documented compensating control, not indefinite deferral.

**Incident plan first opened during the incident.** Contact list stale, decision authority unclear,
and the notification clock running under two regimes at once.

**Security spending driven by insurance renewal.** Controls implemented to answer a questionnaire
rather than to address the actual exposure.

**No segmentation.** One compromised workstation reaching the treatment plant, because the network
was built flat and never revisited.
