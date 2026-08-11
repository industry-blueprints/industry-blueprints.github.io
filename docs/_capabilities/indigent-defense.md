---
id: indigent-defense
title: Indigent Defense
type: capability
level: 2
version: '0.1'
status: draft
description: Providing counsel to people who cannot afford it, at a caseload and resourcing
  level that permits an actual defense rather than a formal one.
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
To provide legal representation to people accused of crimes who cannot afford counsel —
determining eligibility, appointing counsel early, and resourcing the representation sufficiently
that it is effective rather than nominal.

**The right to counsel is constitutionally required; the resourcing of it is not specified, and
that gap is the whole problem.** A jurisdiction can satisfy the letter of the requirement by
appointing an attorney carrying four hundred cases, and the resulting representation is a formality.

## Desired outcomes

- Counsel appointed at the first critical stage, including before the first appearance
- Eligibility screening that is quick and does not itself become a barrier
- Caseloads within published standards, with a mechanism to decline when exceeded
- Parity of resource with the prosecution — investigators, experts, support staff
- Independence from the judiciary and from the funding body in case decisions
- Client contact early and often enough to build an actual defense
- Continuity of counsel through the case
- Outcomes measured, not just dispositions counted

## Lifecycle
Indigency screening and eligibility determination · appointment and assignment · conflict checking
and conflict counsel referral · early client contact and interview · case investigation and
investigator assignment · expert engagement and funding request · discovery review · motion
practice · plea advice and negotiation · trial representation · sentencing advocacy and mitigation ·
appeal and post-conviction referral · caseload monitoring and overload declaration · holistic and
social service referral

## Domain model
Appointment records with date of appointment against date of arrest · eligibility determinations ·
caseload per attorney by case type and weight · client contact records with dates · investigator
and expert requests, approvals, and denials · discovery received and reviewed · motion activity ·
disposition and sentence outcomes · continuity — attorney changes per case · funding per case
compared with prosecution funding · overload declarations

## Measures

| Measure | Class |
|---|---|
| Time from arrest to counsel appointed | Process |
| Representation at the first appearance | Process |
| Caseload per attorney against the published standard | Input |
| Funding per case relative to prosecution funding per case | Input |
| Investigator and expert requests made, and approved | Process |
| Client contacts before the first substantive hearing | Process |
| Attorney changes during a case | Process |
| Outcomes — dismissals, acquittals, sentence relative to offer | Outcome |

**Funding parity is the measure that explains the others.** Where defense funding per case is a
fraction of prosecution funding, caseload, investigation, and expert access all follow from it, and
no amount of process improvement inside the defender office changes the constraint.

## Level variance

- **Federal.** Federal defender organizations and appointed panel counsel, funded through the
  judiciary and generally the best-resourced indigent defense in the country.
- **State.** Statewide public defender systems in some states, with state standards, oversight
  commissions, and caseload limits; in others, only partial funding with delivery left to counties.
- **County.** **The dominant delivery and funding level, and the source of the widest variation.**
  Public defender offices, contract systems, or assigned counsel panels — with flat-fee contract
  arrangements creating a direct financial incentive against spending time on a case, which is the
  most criticized structure in the field.
- **Municipal.** Representation in municipal court for offences carrying possible incarceration,
  frequently thin or unavailable in practice.
- **Tribal.** Right to appointed counsel applies in tribal court for certain sentences under
  federal law, and capacity to provide it is limited.

## What to get right

**Appoint counsel before the first appearance.** The bail decision, the initial plea offer, and the
first detention period all shape the case, so counsel needs to be in place before they happen, not
after.

**Give caseloads a real ceiling, with a mechanism to decline.** Holding caseloads to published
standards, backed by an actual ability to refuse further appointments, is what keeps the standard
more than advisory.

**Pay for effort, not for speed.** A fee structure that doesn't reward pleading quickly over
litigating removes a structural conflict that has nothing to do with any individual attorney's
integrity.

**Get investigator and expert requests approved and funded.** Approving these requests promptly, not
routinely denying them, gives the defense the evidence it needs.

**Make first client contact well before the courthouse.** Meeting the client ahead of the hearing,
not minutes before it in a corridor, gives real time to advise on a plea offer.

**Keep appointment and funding decisions independent of the case calendar.** Structuring
independence from the judge who appoints counsel and controls funding is what lets zealous advocacy
happen without a cost attached.

**Keep one attorney on a case throughout.** Continuity means somebody holds the whole case, and the
client isn't explaining their situation repeatedly to someone new each time.

**Measure outcomes, not just dispositions.** Measuring dismissals, acquittals, and sentences
relative to offer, rather than cases closed, rewards the behavior that actually serves the client.
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
