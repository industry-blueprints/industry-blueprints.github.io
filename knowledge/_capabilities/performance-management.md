---
type: Capability
title: Performance Management
description: Defining what success means, measuring it honestly, and changing
  something as a result — the last part being the one that usually fails.
resource: https://industry-blueprints.github.io/capabilities/performance-management/
tags: [capability, performance, measurement, outcomes, governance]

generated: { by: human:jhofmann, at: 2026-07-27T11:30:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/govern.md
  - predicate: has_participant
    target: /personas/agency-director.md
  - predicate: has_participant
    target: /personas/program-manager.md
  - predicate: has_participant
    target: /personas/elected-official.md
    note: Consumes the results, usually in public
  - predicate: has_participant
    target: /personas/chief-data-officer.md
---

## Purpose

To establish what the organization is trying to achieve, measure progress in a way that can be
defended, and act on what the measurement shows.

The first two are commonly done. The third is where the capability actually lives, and where most
implementations quietly stop.

## Desired outcomes

- Objectives that state an intended change in the world, not an activity level
- Measures that reflect outcomes, with process measures named as proxies for them
- Data produced as a byproduct of operations rather than assembled by hand
- Results reviewed on a cadence that permits correction
- Published information the public can actually interpret

## Key processes

Objective setting from strategy · measure definition and baselining · target setting · data
collection and validation · periodic review · corrective action and reallocation · public
reporting · measure retirement and revision

## Key data

Objective and measure register with definitions · baselines and targets · time series with
segmentation · data lineage back to operational source · review decisions and their follow-through

## Measures

Measuring the measurement capability, which is less circular than it sounds:

| Measure | Class |
|---|---|
| Objectives with at least one outcome measure | Process |
| Measures with a documented, reproducible definition | Process |
| Measures produced automatically versus assembled manually | Process |
| Reviews resulting in a documented decision | Process |
| Measures segmented by language, channel, or geography | Process |
| Public able to interpret published performance information | Outcome |

## Level variance

- **Federal.** Statutory strategic planning and performance reporting with published plans,
  and formal customer-experience measurement for designated high-impact services.
- **State.** Varies widely; often strongest where a federal funding condition requires it.
- **County / municipal.** Council or board-driven, frequently tied to the budget cycle, and
  usually reporting outputs because outcome data is not available.

## What to get right

**Report outcomes, not just outputs.** "4,200 permits issued" answers a question nobody asked. See
the [measurement framework](/meta/measurement-framework/) for the ladder and why government
clusters at the bottom of it.

**Choose measures for what matters, not what the system already emits.** Choosing by availability
means the organization optimizes what it happens to be able to count.

**Match measurement cadence to operational cadence, not just the annual report.** A yearly cycle
helps nobody manage on Tuesday, so operational teams build a shadow set and the two never
reconcile.

**Pair every target with a measure that detects gaming.** Any target under pressure will be
optimized; the paired measure is what catches it — the pairs are listed in the
[measurement framework](/meta/measurement-framework/).

**Give review meetings real decision rights.** Performance reviewed by people who can reallocate
something is what turns discussion into change.

**Report segments, not just the aggregate.** A measure can look healthy in aggregate while a
specific population is served badly, so the aggregate alone is not enough.
