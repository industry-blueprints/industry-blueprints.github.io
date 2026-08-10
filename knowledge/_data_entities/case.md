---
type: Data Entity
title: Case
description: A unit of work carried from opening to disposition, with an owner,
  a history, and a record defensible after the fact.
resource: https://industry-blueprints.github.io/data-entities/case/
tags: [data-entity, case, case-management, workflow]

generated: { by: human:jhofmann, at: 2026-07-27T09:00:00Z }
status: draft
stale_after: 2027-07-27
depth: detailed

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /data-models/core-public-sector-model.md
  - predicate: used_by
    target: /processes/triage-and-routing.md
  - predicate: used_by
    target: /processes/knowledge-assisted-resolution.md
---

The workhorse entity of government. A service request, an application, an investigation, a
complaint, an appeal, a benefit review — all are cases, and modelling them as one entity with
type-specific extensions is what makes cross-departmental service possible at all.

## Why it matters more than it looks

The case record is the difference between maturity level 2 and level 3 in
[constituent service](/maturity-rubrics/constituent-service/), and the reason is structural:
**it is the only entity that spans channels, departments, and time for a single matter.**
Without one, a person who calls, then emails, then walks in is three unrelated events, and no
question about resolution can be answered.

## Attributes

| Attribute | Notes |
|---|---|
| Case identifier | Stable and quotable to the public. People read these over the phone |
| Case type | From the service catalogue. The most consequential field on the record |
| Subject party | Who it is about — often but not always the requester |
| Requester | Who raised it. Distinguish from subject: advocates, family, and staff raise cases for others |
| Channel of origin | Where it came in |
| Opened, due, closed timestamps | Due derives from case type and priority, not from a person typing a date |
| Status and substatus | See lifecycle |
| Priority | From published criteria, not self-report |
| Owner and owning unit | Both. A case with only a unit is a case nobody has |
| Related location | Where applicable |
| Related agreement | Where the case concerns a permit, licence, contract, or award |
| Disposition | How it ended, from a controlled vocabulary. Distinct from status |
| Resolution summary | What actually happened, readable by the next person |
| Related cases | Duplicates, predecessors, appeals, and cases about the same underlying problem |
| Retention class and disposition state | Attached to the case, not the system |

**Requester and subject are different parties.** Modelling only one is the most common structural
error in case models and it breaks the moment an advocate, a parent, a landlord, or a caseworker
raises something on someone else's behalf — which in human services is most of the time.

**Owner and owning unit are both required.** Unit-only ownership is how cases age invisibly:
everyone can see the queue and nobody is accountable for the item.

## Lifecycle

```
New → Triaged → In progress → { Resolved | Referred | Withdrawn | Rejected }
        ↓            ↓
     Referred    Awaiting requester → In progress
                      ↓
                   Closed (auto) 
Resolved → Reopened → In progress
```

Two states deserve attention because they are usually missing.

**Awaiting requester** stops the service clock while the organization is not the blocker. Without
it, timeliness measures punish staff for delays they cannot control, so staff avoid the state by
closing prematurely — which shows up later as a reopen.

**Referred** must be a real disposition with a tracked outcome, not a synonym for closed. A
referral that cannot be followed to a result is how "no wrong door" quietly becomes "start over
somewhere else."

## Disposition is not status

Status is where the case is. Disposition is how it ended, and it needs a controlled vocabulary
because it is the field every meaningful measure depends on:

`Resolved — request fulfilled` · `Resolved — information provided` · `Resolved — no action
required` · `Referred — outside jurisdiction` · `Rejected — ineligible` · `Rejected — insufficient
information` · `Withdrawn by requester` · `Closed — no response`

Free-text disposition makes [first contact resolution](/kpis/first-contact-resolution/)
unmeasurable, which is why so many organizations report it from a checkbox instead.

## Extensions by capability

Capability-specific models extend rather than replace:

- **Service request** adds asset reference, crew assignment, and Open311 service code.
- **Application** adds submitted form data, completeness state, and determination.
- **Investigation** adds allegations, findings, evidence chain, and subject rights.
- **Appeal** adds the decision under appeal, grounds, hearing schedule, and outcome.
- **Benefit review** adds eligibility factors, period covered, and notice history.

The shared spine — identifier, type, parties, ownership, lifecycle, disposition, retention — stays
constant, which is what lets one contact centre see across all of them.

## What to get right

- **Share one case across departments**, rather than opening the same matter three times because
  three units touched it. Related-case linking is a mitigation for when this slips, not a
  substitute for it.
- **Define status as a transition model**, not an enum any state can jump to any other from, so
  the audit trail can explain how something got where it is.
- **Distinguish reopened from new.** The distinction is what makes resolution measurement honest
  and surfaces repeat contact — the single most useful signal in the whole domain.
- **Model retention explicitly**, rather than leaving it implied by the system, so it survives
  migration.
- **Include anonymous cases in measurement.** Linking them where possible keeps them in the
  denominator, so every rate reflects reality rather than looking better than it is.

## AI relevance

Cases are where most AI in this library lands, because the record is text-heavy, high volume, and
consequential:

- [Intent classification](/ai-integrations/intent-classification-and-routing/) sets case type,
  the field everything downstream depends on
- [Contact summarization](/ai-integrations/contact-summarization/) writes the resolution
  summary — the field most often skipped
- Duplicate and related-case linking, which is otherwise done by memory
- Backlog triage against age, priority, and statutory deadline

All of it requires that AI-written content on the case is **permanently marked as such**. A case
record becomes evidence in complaints, appeals, and litigation, and a later reader must be able
to tell a human observation from a machine's. See
[AI disclosure and human review](/governance/ai-disclosure-and-human-review/).
