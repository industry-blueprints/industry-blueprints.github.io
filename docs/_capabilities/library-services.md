---
id: library-services
title: Library Services
type: capability
level: 2
version: '0.1'
status: draft
description: Collections, digital access, public computing, and information help —
  the last public building anyone can enter without needing a reason.
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
To provide free public access to information, collections, digital resources, computing, space, and
help using them — physically and online, to everyone in the community.

**The library is the only public building most people can enter without needing a reason.** No
eligibility test, no appointment, no explanation. That property makes it the de facto front door
for people the rest of government has not reached, and it is why library staff spend a growing
share of their time on assistance the library was never funded to provide.

## Desired outcomes

- Collections responsive to the community's actual use and requests
- Digital resources available at hours and from places the building cannot serve
- Public computing and connectivity sufficient for the tasks people need to complete
- Help available for people whose task is a government form, not a book
- Space usable for study, meeting, and simply being somewhere warm and safe
- Programming reaching the segments least likely to walk in
- Access barriers — fines, identification, address requirements — kept low deliberately
- Staff supported for work that increasingly includes crisis and social need

## Lifecycle
Collection development, acquisition, and cataloguing · weeding and collection maintenance ·
circulation, holds, and interlibrary loan · digital resource licensing and access provision ·
e-book and streaming platform management · public computing and wireless provision · device and
hotspot lending · reference and information assistance · digital literacy and device help ·
assistance with government forms and applications · programming — early literacy, youth, adult
learning, job seeking, seniors · outreach, bookmobile, and homebound service · meeting and study
space booking · card registration and access policy · fine and fee policy administration ·
challenged material handling · social service referral and, in larger systems, on-site social work

## Domain model
Collection inventory with format, subject, and circulation history · circulation, holds, and
interlibrary loan activity · digital resource usage and licence cost per use · public computing
sessions and wireless usage · programme attendance by type and audience · card registration and
active borrower counts by area · reference and assistance interactions by type — including
government-form help · space bookings and occupancy · outreach service activity · material
challenges and their disposition · fine and fee revenue against collection cost

## Measures

| Measure | Class |
|---|---|
| Active borrowers as a share of the population, by area | Outcome |
| Circulation and digital use per capita, and their trend | Output |
| Cost per use, by format — print versus licensed digital | Input |
| Public computing sessions and unmet demand at peak | Outcome |
| Hold wait times for high-demand material | Process |
| Programme attendance against target audience, not total | Outcome |
| Assistance interactions that were government-service help | Outcome |
| Fine and fee revenue against the cost of collecting it | Input |
| Reach into areas with low library use | Outcome |

**Government-service assistance is a consequential measure that most libraries do not capture.** It
quantifies work the library absorbs on behalf of other agencies — benefit applications, tax forms,
unemployment claims, identity verification — and it is the strongest evidence available that
[digital service design](/capabilities/digital-service-design-and-accessibility/) elsewhere is
failing.

## Level variance

- **State.** State library agency administering federal library funding, statewide digital resource
  consortia and databases, interlibrary loan networks, and support for small and rural libraries.
- **County.** County library systems serving unincorporated areas and contracting municipalities,
  with branch networks and shared collections.
- **Municipal.** City libraries, frequently governed by an independent board with its own taxing
  authority in some states — which changes how funding decisions are made and who makes them.
  **Rural and small libraries** are often a single building with one or two staff and are the
  primary connectivity point for the area.

## What to get right

**Weigh licensed digital cost against print, not just convenience.** E-book and audiobook licensing
terms that cost far more per use than print and expire after a set number of loans mean the digital
collection consumes budget without accumulating an asset — the defining collection economics
problem of the last decade, worth negotiating and budgeting for deliberately.

**Size public computing to peak demand for deadline-driven tasks.** Benefit applications, job
applications, and court forms concentrate demand at specific hours; measuring turned-away demand is
what makes the right capacity visible.

**Reconsider fines as a revenue line.** Overdue fines often cost more to administer than they
collect, deter the households they are largest for, and remove access from the people who need it
most. Many systems have eliminated them and seen return rates hold.

**Set card registration requirements that do not exclude people without stable housing.** A proof-
of-address requirement excludes exactly the population that most needs the service.

**Measure programming reach, not just attendance.** Total attendance rises by serving the
already-engaged; tracking the segments who do not come is what shows whether outreach is working.

**Train and support staff for the crisis work they actually encounter.** Public libraries encounter
homelessness, overdose, and mental health crisis daily, and staff need training, protocol, and
social work support to do it well — see
[employee health, safety and wellbeing](/capabilities/employee-health-safety-and-wellbeing/).

**Record government form help as its own category.** Making the substantial hours spent helping
people complete other agencies' processes visible allows the cost to be attributed to the agency
that caused it.

**Name the broadband gap the library is absorbing.** Parking lot wireless use at night is real
demand; naming that dependency is what gets it into a digital inclusion plan.
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
