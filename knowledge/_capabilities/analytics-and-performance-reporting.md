---
type: Capability
title: Analytics & Performance Reporting
description: Turning operational data into measures, dashboards, and published
  performance information — and getting anyone to act on it.
resource: https://industry-blueprints.github.io/capabilities/analytics-and-performance-reporting/
tags: [capability, analytics, reporting, dashboards, measures, data]

generated: { by: human:jhofmann, at: 2026-07-27T23:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/inform.md
  - predicate: has_participant
    target: /personas/chief-data-officer.md
  - predicate: has_participant
    target: /personas/program-manager.md
    note: The intended actor — and the reason most dashboards fail, because they were not built for them
---

## Purpose

To turn operational data into measures that describe what is actually happening, deliver them to
the people who can act, and publish performance information externally where required or useful.

**Supplies the evidence for [performance
management](/capabilities/performance-management/) and depends entirely on
[data governance](/capabilities/data-governance-and-stewardship/) for its definitions.** Analytics
without agreed definitions produces three numbers for one question and an argument about which is
right.

## Desired outcomes

- One agreed definition per measure, published and versioned
- Measures calculable from source systems rather than assembled by hand
- Delivery to the point of decision, at the cadence decisions are made
- Disaggregation by population segment, not just totals
- Published performance information the public can actually interpret
- Analytical capacity spent on questions rather than on data preparation

## Key processes

Measure definition and cataloguing · data acquisition and pipeline development · quality validation
and reconciliation · calculation and aggregation · dashboard and report design · distribution and
access management · public performance publication · ad hoc analysis · statistical and evaluation
support · measure review and retirement

## Key data

Measure catalogue with definition, calculation, source, owner, and version · data pipeline lineage
from source to published figure · quality validation results and known limitations · report and
dashboard inventory with audience and usage · published performance series with methodology notes ·
segmentation dimensions available per measure

## Measures

| Measure | Class |
|---|---|
| Measures with a published, versioned definition | Process |
| Measures calculated automatically versus assembled manually | Process |
| Reporting latency from event to available figure | Process |
| Dashboards with recorded usage — and those without | Output |
| Analyst time spent on preparation versus analysis | Input |
| Measures capable of disaggregation by segment | Process |
| Decisions attributable to a reported measure | Outcome |

**Dashboards with no usage are the most useful thing on this list.** Every organization has them,
they cost maintenance indefinitely, and nobody deletes them because somebody once asked.

## Level variance

- **Federal.** Statutory performance reporting with published annual plans and reports, plus a
  formal evidence-building and evaluation framework with agency evaluation officers.
- **State.** Agency performance reporting to the legislature and executive, frequently tied to
  budget submission, plus programme evaluation obligations attached to federal funding.
- **County / municipal.** Community-facing performance reporting and, in larger jurisdictions,
  operational analytics on service delivery. Small jurisdictions typically have no analyst at all,
  and reporting is produced by the person who runs the service.

## What to watch for

**Agree one definition per question.** Different definitions in different systems turn the meeting
into a reconciliation exercise instead of a decision — the failure
[data governance](/capabilities/data-governance-and-stewardship/) exists to prevent.

**Revisit dashboards against actual usage.** Building to a specification gathered once and never
checking whether anyone opened it afterward leaves dead dashboards in place indefinitely.

**Free analysts from data assembly.** When most of the capacity goes to extracting, cleaning, and
joining, little is left for the analysis that was the point.

**Measure the outcome, not just what is easy to pull.** Volume, handle time, and throughput are in
the system; resolution and outcome take more work to capture and are often skipped as a result. See
[first contact resolution](/kpis/first-contact-resolution/) for what it takes to measure the harder
one honestly.

**Disaggregate before trusting an aggregate.** An acceptable average can conceal a segment being
failed — the same structural problem as regressive
[assessment](/capabilities/revenue-and-taxation/), and invisible without disaggregation.

**Give published performance a comparison and a trend.** A page of numbers with neither, and no
explanation of what good looks like, is not interpretable by the public it is published for.

**Retire measures once the decision they informed is settled.** Left in place for a decade past
that point, they keep consuming production effort each cycle for no return.

**Keep reporting latency inside the decision cycle.** Monthly figures available on the twentieth of
the following month serve decisions taken monthly, not decisions taken weekly.
