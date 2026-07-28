---
type: Persona
title: Field Crew Lead
description: Runs a crew doing physical work away from a desk — and is the last
  chance to capture what actually happened.
resource: https://industry-blueprints.github.io/personas/field-crew-lead/
tags: [persona, field-service, crew, public-works, mobile, frontline]

generated: { by: human:jhofmann, at: 2026-07-29T09:00:00Z }
status: draft
stale_after: 2027-07-29
depth: defined

industry: public-sector
government_levels: [state, county, municipal]
persona_type: frontline
---

Also: Crew Chief, Foreman, Working Supervisor, Lead Worker, Field Supervisor. Across water and
sewer, streets, parks, facilities, signals, and fleet — the job differs and the constraints do not.

## Role summary

Takes a day's work orders, gets a crew and its equipment to each site, makes the judgment calls the
work order did not anticipate, keeps everyone safe, and records what was done.

**This is the last chance to capture what actually happened.** Whatever the crew lead does not
record — the parts used, the condition found, the reason it took twice as long — is lost, and every
downstream measure, plan, and cost figure inherits the gap.

## Goals

- The crew safe, and home at the end of the shift
- The job done properly the first visit
- The right parts and equipment on the truck before leaving the yard
- The record made without spending an hour at the depot doing data entry
- Enough discretion to handle what the work order did not foresee

## Decisions made

| Decision | Constrained by |
|---|---|
| Whether the site is safe to work, and what controls are needed | Traffic, excavation, confined space, energized plant |
| Whether the job as written matches what is actually there | Frequently it does not |
| Whether to complete now, return later, or escalate | Parts on hand, daylight, crew skills, other jobs queued |
| What to record, and in how much detail | Time, weather, cold hands, and whether the device works |
| When a repair is not worth repeating | Judgment, rarely captured anywhere |

## Pain points

**Dispatched without asset history.** No model, no prior work, no parts list — so the first visit is
diagnosis and the second visit is the repair.

**Mobile tools that need connectivity.** The work is in basements, vaults, rural stretches, and
during outages. Anything requiring a live connection fails exactly where the job is — see
[offline-first field capture](/patterns/offline-first-field-capture/).

**Paper in the field, keying at the depot.** Detail lost, entry delayed, and productive time spent
transcribing.

**A device per system.** Water uses one, streets another, facilities a third, and a crew working
across two carries two.

**Locate tickets that are late, wrong, or absent.** Excavation cannot start, or starts and hits
something.

**Being measured on jobs closed.** Which rewards closing rather than resolving, and quietly
penalizes the crew that does the diagnosis properly.

**Free-text locations.** "Corner of Main and 3rd" recorded rather than a coordinate or an asset
identifier, so the work cannot be mapped, aggregated, or matched to what was done before.

## Where AI actually helps

Photograph-to-asset matching, voice-to-text completion notes, and pre-populated findings from the
work type are all real assists — they reduce the recording burden, which is the largest single
source of lost data in the domain.

Two boundaries. **The safety prerequisite check is not an assist** — locate tickets, permits, and
isolation are verified by a person against
[work authorization and safety prerequisites](/governance/work-authorization-and-safety-prerequisites/).
And nothing that requires connectivity to function is usable here.

## Typical questions

- What is this asset, and what did we do to it last time?
- Are the locates clear, and are they current?
- Do I have the parts, or is this a return visit?
- Who do I call when the job is not what the order says?
- Why am I entering this twice?
