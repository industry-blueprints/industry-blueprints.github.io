---
type: Capability
title: Supply & Inventory Management
description: Holding, issuing, and replenishing physical goods — where the cost of a
  stockout is measured in service failure, not lost sales.
resource: https://industry-blueprints.github.io/capabilities/supply-and-inventory-management/
tags: [capability, inventory, supply-chain, warehousing, stock, resilience]

generated: { by: human:jhofmann, at: 2026-07-27T21:15:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/acquire.md
  - predicate: has_participant
    target: /personas/chief-procurement-officer.md
  - predicate: uses_data
    target: /data-entities/location.md
    note: Stock is held somewhere, and the somewhere is frequently not recorded
---

## Purpose

To hold the right quantity of the right consumables and parts, issue them to the operations that
need them, and replenish before anything runs out — at an inventory cost the organization can
justify.

**The cost of a stockout here is a service that stops.** A missing part grounds a vehicle; a
missing consumable closes a clinic. That asymmetry justifies more buffer than a commercial
just-in-time model would, and the justification has to be made explicitly or the buffer gets cut.

## Desired outcomes

- Stock levels set from demand and lead time rather than from habit
- Issues recorded at the point of issue, charged to the consuming operation
- Accurate on-hand quantities without an annual shutdown to count
- Obsolete and expiring stock identified before it is written off
- Critical items identified, with resilience stock sized deliberately
- Emergency stock rotated through normal use rather than held until expiry

## Key processes

Item catalogue and standardization · demand forecasting · reorder point and safety stock setting ·
replenishment ordering against contracts · receipt and put-away · issue and charge-out · cycle
counting · obsolescence and expiry review · surplus and disposal · emergency stockpile management
and rotation · critical item identification

## Key data

Item master with unit of issue and substitutions · stock on hand by
[location](/data-entities/location/) and bin · issue history by consuming unit · reorder points,
safety stock, and lead times · supplier and contract per item · expiry and lot tracking where
applicable · cycle count variances · surplus and disposal record

## Measures

| Measure | Class |
|---|---|
| Stockout rate on critical items | Outcome |
| Inventory accuracy from cycle counts | Process |
| Inventory value and turns by category | Input |
| Value written off for obsolescence or expiry | Outcome |
| Emergency stock rotated rather than expired | Process |
| Emergency issues outside the normal process | Process |
| Lead time variance by item | Process |

Segment the stockout measure by criticality. An aggregate service level hides the only failures
that matter.

## Level variance

- **Federal.** Large-scale logistics operations with defence and health supply chains, formal
  supply classification, and strategic stockpiles held under national policy.
- **State.** Central stores serving agencies, plus emergency management stockpiles for disaster
  response and public health.
- **County / municipal.** Fleet parts, water and sewer materials, road salt and aggregate, medical
  supplies for emergency services, and election materials — high-consequence items in modest
  quantities, often managed on a spreadsheet by the person who also orders them.

## Where it goes wrong

**Reorder points set once.** From a judgment made years ago, never revisited against actual
consumption or current lead times.

**Issues untracked.** Staff take what they need from an open store. On-hand figures drift from
reality within weeks and no consuming operation is ever charged.

**Annual count as the only count.** A full physical inventory that requires a shutdown, produces a
large adjustment, and leaves the numbers wrong for the other fifty-one weeks. Cycle counting
solves this and is resisted because it looks like more work.

**Emergency stock held until expiry.** Pandemic and disaster supplies purchased, stored, and
discarded unused, then repurchased. Rotating them through normal consumption is the standard
answer and requires the two inventories to be managed as one.

**No item standardization.** Six equivalent products across departments, none purchased in
sufficient volume to matter, and no substitution possible during a shortage.

**Criticality unassessed.** Every item managed to the same service level, so the cheap consumable
and the part that grounds an ambulance get identical treatment.

**Surplus disposed of without checking internal demand.** One department scraps what another is
about to buy.
