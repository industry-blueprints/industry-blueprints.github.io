---
id: technology-service-management
title: Technology Service Management
type: capability
level: 2
version: '0.1'
status: draft
description: Service desk, incident and change management, and the operational running
  of technology — the internal equivalent of constituent service.
last_updated: '2026-08-11'
capability_area: inform
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
To run technology as a service: take requests and incidents, restore service, control change,
eliminate recurring causes, and maintain a reliable picture of what exists.

**Structurally the same capability as [constituent service
management](/solutions/constituent-management/), with staff as the constituents.** The
same triage, case record, knowledge, routing, and resolution problems apply, and the same maturity
progression describes it. An organization that has solved one has most of the answer to the other,
and almost never notices.

## Desired outcomes

- One route in, with requests and incidents distinguished and handled differently
- Restoration prioritized by service impact, not by who called
- Recurring incidents eliminated rather than efficiently repeated
- Change controlled proportionately — emergency changes possible without abandoning control
- An asset and configuration picture accurate enough to be relied on during an incident
- Knowledge governed, so the same answer is given twice

## Lifecycle
Service catalogue definition · request intake and fulfilment · incident logging, triage, and
escalation · major incident management and communication · problem investigation and known-error
management · change request, assessment, and approval · release and deployment · configuration and
asset management · service level definition and reporting · knowledge article creation and review ·
end-user device lifecycle

## Domain model
Service catalogue with owners and service levels · request and incident records with category and
resolution · problem records linked to their incidents · change records with risk, approval, and
outcome · configuration items and their relationships · asset register with lifecycle state ·
knowledge articles with owners and review dates · service level attainment

## Measures

| Measure | Class |
|---|---|
| First-contact resolution at the service desk | Outcome |
| Time to restore, by priority | Process |
| Incidents linked to a known problem | Process |
| Repeat incidents from an unresolved cause | Outcome |
| Change success rate, and changes causing incidents | Outcome |
| Emergency changes as a share of total | Process |
| Configuration accuracy, sampled | Process |
| Knowledge articles used at the point of resolution | Process |

**Emergency change share is the diagnostic.** A high proportion means the standard change path is
too slow to use, and the answer is to fix the path rather than to police the exceptions — the same
logic as split purchases in
[purchasing and requisitioning](/capabilities/purchasing-and-requisitioning/).

## Level variance

- **Federal.** Large-scale service management, frequently delivered through shared service
  providers with formal service level agreements between agencies.
- **State.** Central technology service organizations serving agencies on a chargeback basis, which
  makes service level performance a billing conversation as well as an operational one.
- **County / municipal.** Small teams supporting an unusually wide estate — office systems,
  public safety, utilities, libraries, schools in some structures — with twenty-four-hour
  obligations for dispatch and emergency services and no round-the-clock staffing to match.

## What to get right

**Separate requests from incidents into their own queues.** A password reset and a failed dispatch
system need different handling, not prioritization by arrival order alone.

**Set priority by service impact.** Measurable and defensible, unlike priority set by the caller's
seniority.

**Give problem management dedicated time, not spare time.** Investigating causes rather than just
closing incidents efficiently is what stops the same failure from being resolved two hundred
times — the most expensive habit in this capability.

**Make the standard change path fast enough to use.** A weekly board with a five-day lead time
pushes real work into the emergency category, which turns the control into theatre — fixing the
path keeps it real.

**Keep the configuration database current.** Populated during an implementation and left to decay,
it gets consulted during a major incident exactly when it's wrong — active maintenance is what
keeps it trustworthy.

**Govern knowledge instead of leaving it in individual heads.** Otherwise the same investigation
gets repeated by whoever picks it up, and resolution time depends on which technician answered —
see grounded knowledge retrieval.

**Measure service levels end to end, not just at the desk.** Response time alone can look
acceptable while restoration, owned by teams outside the measure, leaves the user's experience
worse than the numbers show.

**Read shadow IT as a signal about the central route, not a discipline problem.** Departments
buying their own systems when the central route is slow are telling you something about that
route.
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
