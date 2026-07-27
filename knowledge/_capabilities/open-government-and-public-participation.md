---
type: Capability
title: Open Government & Public Participation
description: Meeting notice and access duties, publishing open data, and running
  consultation that changes something.
resource: https://industry-blueprints.github.io/capabilities/open-government-and-public-participation/
tags: [capability, transparency, open-data, participation, consultation, open-meetings]

generated: { by: human:jhofmann, at: 2026-07-27T19:30:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/govern.md
  - predicate: has_participant
    target: /personas/constituent.md
    note: The participant — and the one whose time is spent when participation is theatre
  - predicate: has_participant
    target: /personas/chief-data-officer.md
    note: Open data publication is a data governance obligation with an external deadline
  - predicate: has_participant
    target: /personas/elected-official.md
    note: Open meeting duties attach to the deliberating body
---

## Purpose

To meet the statutory duties that public business be conducted visibly, publish data the public
can use, and involve people affected by a decision in making it — early enough that involvement
can change the outcome.

**Three distinct obligations frequently run as one.** Open meetings is procedural compliance. Open
data is a publishing capability. Participation is a design practice. Merging them under one banner
usually means the first is done, the second is partial, and the third is decorative.

## Desired outcomes

- Meeting notice, agendas, and materials published within statutory windows
- Deliberation occurring in public where the law requires it
- High-value datasets published in usable, machine-readable form on a schedule
- Consultation reaching those affected, not only those already organized
- Input demonstrably reflected in decisions, or a stated reason it was not
- Participation that does not require a weekday evening and a car

## Key processes

Meeting notice and agenda publication · minutes and record production · executive session
justification and record · open data inventory and prioritization · dataset publication and
refresh · data quality and de-identification review · consultation design and channel selection ·
outreach to under-represented groups · input analysis and disposition · feedback to participants

## Key data

Meeting calendar with notice timestamps · agendas, packets, minutes, and recordings · executive
session register with cited justification · open data inventory with owner, refresh cadence, and
last publication · consultation register with method, reach, and disposition · participation
demographics against population

## Measures

| Measure | Class |
|---|---|
| Meetings noticed within the statutory window | Process |
| Agenda packets published with sufficient reading time | Process |
| Datasets refreshed on their stated schedule | Process |
| Datasets with a documented owner | Process |
| Consultation reach against affected population, by segment | Output |
| Input items with a recorded disposition | Process |
| Decisions materially changed by consultation | Outcome |

The last one is the only measure that distinguishes participation from its appearance, and it is
almost never collected.

## Level variance

- **Federal.** Advisory committee requirements, formal comment processes tied to
  [rulemaking](/capabilities/rulemaking-and-regulatory-administration/), and government-wide open
  data expectations with machine-readable inventories.
- **State.** State open meetings and public records acts setting notice periods and permitted
  executive session grounds, with the specifics varying enough that they must be checked per
  jurisdiction.
- **County / municipal.** The level where open meeting law binds most tightly and most visibly —
  a quorum discussing business outside a noticed meeting is a violation, including by email
  thread. Also the level with the least capacity to run genuine engagement, and the most direct
  consequences when it is skipped.

## Where it goes wrong

**Notice met, access not.** A packet published at the statutory minimum, three hundred pages, at
five o'clock the night before.

**Serial email as deliberation.** A quorum reaching agreement across a reply-all chain, which is a
meeting in substance and frequently a violation in law.

**Executive session used as a default.** Grounds cited generically, with more discussed inside
than the exemption covers.

**Open data as a dumping ground.** Hundreds of stale datasets with no owners, published once and
never refreshed, which is worse than publishing ten that are current — a
[data governance](/capabilities/data-governance-and-stewardship/) failure wearing a transparency
label.

**Publishing without privacy review.** Re-identification from a dataset that looked anonymous, and
a [privacy](/capabilities/privacy-management/) incident created by a transparency programme.

**Consultation after the decision.** Preferred option already selected, comment period run,
nothing changes. Detectable, and it is why participation rates fall.

**Reaching only the organized.** Responses from associations and habitual attenders, none from the
people most affected, and the result reported as community input.

**Engagement designed around a weekday evening in a municipal building** — which selects for
people with transport, childcare, and no second job.
