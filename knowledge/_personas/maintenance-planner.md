---
type: Persona
title: Maintenance Planner
description: Turns "this needs doing" into a job a crew can execute on the day —
  the role that decides whether preventive maintenance actually happens.
resource: https://industry-blueprints.github.io/personas/maintenance-planner/
tags: [persona, maintenance, planning, scheduling, work-management, public-works]

generated: { by: human:jhofmann, at: 2026-07-29T09:00:00Z }
status: draft
stale_after: 2027-07-29
depth: defined

industry: public-sector
government_levels: [state, county, municipal]
persona_type: specialist
---

Also: Work Planner, Scheduler, Maintenance Coordinator, Work Control. In small organizations this
is not a job title at all — it is something a supervisor does badly at seven in the morning while
the crews wait.

## Role summary

Takes an approved work requirement and makes it executable: identifies the asset and its history,
determines the labour and skills needed, reserves the parts, arranges access and permits, and puts
it on a schedule with a realistic duration.

**This is the pivotal role in the whole domain and the one most often unfilled.** Planning is what
separates a preventive maintenance programme that runs from one that is deferred every time
reactive demand rises. Where the planner does not exist, crews self-dispatch, parts are discovered
missing on site, and the [preventive-to-reactive
ratio](/kpis/preventive-to-reactive-ratio/) drifts in one direction only.

## Goals

- Every scheduled job executable on the day — crew, parts, access, and information all present
- Preventive work protected against the pull of reactive demand
- Realistic durations, so the schedule means something by mid-morning
- Crews arriving with asset history rather than discovering it
- Backlog visible, aged, and defensible when someone asks what it would cost to clear

## Decisions made

| Decision | Constrained by |
|---|---|
| Which backlog work goes on this week's schedule | Crew availability, parts lead time, seasonal window |
| Whether a job is planned or released as run-and-fix | Complexity, and whether the asset history is any good |
| How much duration to allow | Historical actuals, if they were ever captured |
| Whether to defer preventive work when reactive demand spikes | Nothing formal — this is where the spiral starts |
| Which jobs bundle into one visit to a site | Geography, access windows, crew skills |
| When a repeat repair becomes a renewal referral | Failure history and whether anyone is watching it |

## Pain points

**Reactive demand always wins.** Every deferred preventive task raises the probability of the
failure that consumes the capacity that would have done the next one. The planner sees the spiral
and has no authority to stop it.

**Parts discovered missing at the job.** Planning reserved them; nothing enforced the reservation,
and another crew took them.

**No usable asset history.** Completion recorded as a status rather than as findings, labour, and
parts, so the planner is estimating from scratch every time — see
[maintenance management](/capabilities/maintenance-management/).

**Durations that are fiction.** Estimates never compared against actuals, so the schedule is
optimistic by a consistent margin everyone privately corrects for.

**Emergency work with no re-planning.** Half the week's schedule displaced by Tuesday, and no
mechanism to re-sequence what was displaced — it just becomes backlog.

**Triage by visibility.** The pothole in a photograph outranks the valve about to fail, because one
generates pressure.

**Backlog absorbed rather than reported.** Held in the system, never aged or valued, so it is
invisible in the budget conversation where it would matter.

## Where AI actually helps

Duration estimation from historical actuals, duplicate work request detection, and bundling
suggestions by geography and access window are all genuine assists — see
[work request triage and duplicate detection](/ai-opportunities/work-request-triage-and-duplicate-detection/).

What does not help: anything that increases the volume of work requests without increasing the
capacity to plan them. A public reporting channel that triples requests into an unplanned backlog
makes this role's problem worse, not better.

## Typical questions

- What is actually on this asset's history, and did the last repair hold?
- Do we have the parts, and are they still there?
- What did this job take last time, not what do we think it takes?
- What did I displace this week, and when does it come back?
- How much of this backlog is safety-critical, and can I show that?
