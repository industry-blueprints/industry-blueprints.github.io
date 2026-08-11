---
id: community-safety-programs
title: Community Safety Programs
type: capability
level: 2
version: '0.1'
status: draft
description: Prevention and intervention work — violence reduction, community risk
  reduction, and code-driven safety — measured against harm that did not occur.
last_updated: '2026-08-11'
capability_area: protect
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
To reduce harm before it occurs — through violence prevention and intervention, community risk
reduction, targeted code enforcement, injury prevention, and coordinated work with the people at
highest risk.

**Prevention competes badly for funding because its success is a non-event.** Response capacity is
visible and defensible; a fire that did not happen and an assault that did not occur are
statistical claims. The consequence is that prevention is funded from grants, runs in three-year
cycles, and disappears between them.

## Desired outcomes

- Programmes targeted using data on where and to whom harm concentrates
- Interventions selected from evidence rather than from availability
- Community organizations as delivering partners, not as consultees
- Cross-agency coordination for individuals at highest risk, with a lawful basis
- Outcomes evaluated honestly, including programmes that do not work
- Funding sustained beyond a grant cycle
- Prevention effort proportionate to where harm actually concentrates

## Lifecycle
Harm concentration analysis — geographic and individual · programme design and evidence review ·
community partner selection and contracting · outreach and participant engagement · credible
messenger and violence interruption delivery · hospital-based and crisis intervention · community
risk reduction — smoke alarms, home safety, targeted inspection · injury and fall prevention ·
targeted [code enforcement](/capabilities/enforcement-and-adjudication/) on high-risk properties ·
multi-agency high-risk case coordination · data sharing agreement establishment · evaluation and
outcome measurement · sustainability and funding planning

## Domain model
Incident and harm data by location, time, and type · concentration analysis identifying places and
individuals at highest risk · programme inventory with target population, evidence base, and cost ·
participant engagement and retention records · partner organization contracts and performance ·
cross-agency coordination records with consent basis · risk reduction activity — installations,
visits, inspections · outcome data with comparison basis · funding sources with expiry

## Measures

| Measure | Class |
|---|---|
| Harm concentration — share of incidents in the top locations and among identified individuals | Outcome |
| Programme reach within the identified high-risk population | Output |
| Participant engagement and retention | Process |
| Repeat involvement among participants | Outcome |
| Incident change in targeted areas against comparison areas | Outcome |
| Prevention spend as a share of total safety spend | Input |
| Programmes with an evaluation design agreed before launch | Process |
| Programmes continuing after their initial grant | Outcome |

**Comparison against non-targeted areas is what makes the outcome measure meaningful.** Incidents
fall and rise for many reasons, and a programme that claims a citywide decline is claiming
something it cannot support.

## Level variance

- **State.** Funds and evaluates prevention programming, operates injury prevention and behavioural
  health initiatives, and sets the frameworks locals deliver within.
- **County.** Behavioural health, justice diversion, and reentry programming, plus coordination for
  individuals cycling between health, housing, and justice systems — the population where
  cross-agency work has the largest effect and the greatest data-sharing difficulty.
- **Municipal / tribal.** **Where delivery happens.** Community violence intervention, fire
  department community risk reduction, targeted code enforcement on problem properties, and
  neighbourhood partnerships. Fire departments have moved substantially toward community risk
  reduction, which is the clearest example of prevention displacing response in public safety.

## Getting this right

**Target programmes to where harm concentrates.** Delivering them instead where partners already
operate is measurable against concentration data and frequently left unmeasured.

**Examine the evidence base before adopting a programme.** Programmes chosen because they are
known, funded, or politically attractive can include some with evidence of no effect or of harm.

**Treat community organizations as delivery partners, not subcontractors.** Contracting them to
deliver a design they had no part in, on terms and reporting requirements that exclude the smaller
organizations with the most access, repeats the same
[grants](/capabilities/grants-management-outbound/) burden problem.

**Design evaluation before the programme launches.** Without a baseline and a comparison, a claim
of effect can be neither supported nor refuted.

**Establish a lawful basis for cross-agency coordination before it is needed.** Without one, either
sharing is blocked and coordination fails, or it happens informally and creates a
[privacy](/capabilities/privacy-management/) exposure — the same problem as
[referral](/capabilities/referral-and-cross-agency-coordination/), with higher stakes.

**Sustain funding beyond the cycle the effect takes to appear.** Three-year grants for outcomes
that take longer end the programme just as its effect would become measurable.

**Keep prevention separate from enforcement where trust is the dependency.** Prevention programmes
delivered by or alongside enforcement functions give participation a perceived risk that suppresses
the engagement the programme depends on.

**Protect prevention funding under budget pressure.** The non-event tends to lose to the visible
response capacity every time unless it is deliberately protected.
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
