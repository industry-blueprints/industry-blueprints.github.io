---
id: supply-and-inventory-management
title: Supply & Inventory Management
type: capability
level: 2
version: '0.1'
status: draft
description: Holding, issuing, and replenishing physical goods — where the cost of
  a stockout is measured in service failure, not lost sales.
last_updated: '2026-08-11'
capability_area: acquire
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

## Lifecycle
Item catalogue and standardization · demand forecasting · reorder point and safety stock setting ·
replenishment ordering against contracts · receipt and put-away · issue and charge-out · cycle
counting · obsolescence and expiry review · surplus and disposal · emergency stockpile management
and rotation · critical item identification

## Domain model
Item master with unit of issue and substitutions · stock on hand by
location and bin · issue history by consuming unit · reorder points,
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

## What to get right

**Revisit reorder points against current consumption and lead times.** A judgment made years ago
and never revisited drifts out of date as both change.

**Record issues at the point of issue.** Without that, staff take what they need from an open
store, on-hand figures drift from reality within weeks, and no consuming operation is ever
charged.

**Use cycle counting instead of relying on an annual count.** A full physical inventory that
requires a shutdown produces a large adjustment and leaves the numbers wrong for the other
fifty-one weeks; cycle counting keeps them accurate year-round, even though it looks like more
work.

**Rotate emergency stock through normal consumption.** Managing the two inventories as one is what
keeps pandemic and disaster supplies from being purchased, stored, discarded unused, and
repurchased.

**Standardize items across departments.** Consolidating six equivalent products into one purchased
in real volume also creates a substitution option during a shortage.

**Assess criticality and size service levels accordingly.** Treating a cheap consumable and the
part that grounds an ambulance the same way misses the distinction that actually matters.

**Check internal demand before disposing of surplus.** That's what keeps one department from
scrapping what another is about to buy.
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
