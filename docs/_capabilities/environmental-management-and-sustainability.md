---
id: environmental-management-and-sustainability
title: Environmental Management & Sustainability
type: capability
level: 2
version: '0.1'
status: draft
description: Meeting environmental obligations and pursuing resilience and emissions
  commitments — compliance and ambition, with different funding and different consequences.
last_updated: '2026-08-11'
capability_area: build-and-operate
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
To meet the organization's environmental obligations as a regulated entity — permits, discharge
limits, contamination, waste, and reporting — and to pursue sustainability, emissions, and climate
resilience commitments where it has adopted them.

**These are two capabilities sharing a name.** Compliance is mandatory, permit-driven, penalty-
backed, and generally funded. Sustainability is adopted, target-driven, reputationally backed, and
frequently unfunded. Managing them as one means the second is staffed from whatever the first does
not consume.

## Desired outcomes

- Every environmental permit inventoried, with conditions assigned and monitored
- Monitoring and reporting obligations met on their schedule, without a scramble
- Contaminated and legacy sites known, assessed, and managed
- Emissions inventoried on a consistent, repeatable basis
- Adopted targets backed by a costed plan with interim milestones
- Climate risk assessed against the asset portfolio and reflected in capital decisions
- Environmental review completed early enough not to become the project's critical path

## Lifecycle
Permit inventory and condition tracking · discharge and emissions monitoring · regulatory reporting
· stormwater programme operation and illicit discharge detection · hazardous material and waste
management · underground storage tank compliance · contaminated site assessment and remediation ·
environmental review for capital projects · greenhouse gas inventory · climate vulnerability and
risk assessment · sustainability target setting and progress reporting · green building and
procurement standards · tree canopy and natural resource management · community environmental
justice assessment

## Domain model
Permit register with conditions, monitoring requirements, and reporting deadlines · monitoring
results and exceedance records · reporting submissions with dates · hazardous material inventory by
site · contaminated site register with status and liability · environmental review documents and
determinations · greenhouse gas inventory with methodology and boundary · climate risk assessment
by asset and hazard · sustainability targets with baseline, interim milestones, and current
position

## Measures

| Measure | Class |
|---|---|
| Permit conditions with a named owner and a monitored due date | Process |
| Reporting submitted on time and complete | Process |
| Exceedances and notices of violation | Outcome |
| Contaminated sites assessed against those suspected | Process |
| Emissions against baseline and against the interim milestone | Outcome |
| Assets assessed for climate risk | Process |
| Capital projects where climate risk changed the design | Outcome |
| Environmental review duration against project schedule | Process |

**Interim milestones matter more than the target.** A commitment for a date beyond every current
term, with no milestone before it, cannot be missed by anyone currently accountable — which is
usually why the milestone is absent.

## Level variance

- **Federal.** Sets the regulatory framework and conducts environmental review for federal actions,
  with substantial remediation liability on its own sites.
- **State.** Holds delegated authority for most federal environmental programmes, issues permits to
  local governments and industry, and enforces against them.
- **County / municipal.** **Regulated entity more than regulator.** Wastewater discharge permits,
  stormwater programmes, landfill obligations, fuel storage, and legacy contamination on
  publicly-owned land. Also the level adopting the most ambitious climate commitments with the least
  dedicated capacity — and the level where climate risk to assets is most concrete, because the
  assets are the water plant, the treatment works, and the roads.

## What to get right

**Track permit conditions in a system, not just the permit itself.** Monitoring frequencies,
reporting dates, and operational limits need somewhere other than a PDF to live, so compliance does
not depend on one person remembering. The
obligation tracking pattern applies directly and is rarely
applied here.

**Assemble reporting data continuously, not in a scramble before the deadline.** Data pulled from
operations records well ahead of the deadline leaves room to catch errors before they become the
violation.

**Give sustainability its own capacity, not compliance's leftovers.** A single team that puts
statutory obligations first will only get to target work when nothing else is due — dedicated
capacity is what makes the target work happen on schedule.

**Back targets with a costed plan and interim milestones.** A commitment adopted by resolution needs
a baseline methodology, a milestone, and a funding line behind it, so reporting can describe
progress rather than just activity.

**Keep emissions inventory methodology consistent year to year.** A stable boundary and methodology
between inventories is what makes the trend interpretable.

**Feed climate risk assessments into the capital programme.** A vulnerability study only pays off if
it reaches the next [capital
programme](/capabilities/capital-planning-and-programming/) — the one place it can actually change
a decision.

**Start environmental review early, as analysis rather than a permit to obtain.** Starting it early
keeps it from becoming the project's critical path and from being blamed for a delay it only
discovered.

**Assess legacy sites before a project breaks ground.** Assessing contamination ahead of
construction keeps the remediation cost from landing unexpectedly on the project budget.
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
