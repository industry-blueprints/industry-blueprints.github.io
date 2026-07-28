---
type: Capability
title: Fleet Management
description: Acquiring, maintaining, assigning, fuelling, and disposing of vehicles and
  equipment — where replacement deferral is the most reliably expensive saving available.
resource: https://industry-blueprints.github.io/capabilities/fleet-management/
tags: [capability, fleet, vehicles, replacement, utilization, electrification]

generated: { by: human:jhofmann, at: 2026-07-28T12:00:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/build-and-operate.md
  - predicate: has_participant
    target: /personas/fleet-manager.md
  - predicate: has_participant
    target: /personas/budget-director.md
    note: A replacement reserve either exists or the fleet ages — there is no third option
---

## Purpose

To provide the vehicles and equipment operations need — specifying and acquiring them, maintaining
them, assigning and tracking utilization, fuelling them, and disposing of them at the right point
in their life.

**Deferring vehicle replacement is the most reliably expensive saving in local government.**
Maintenance cost rises, availability falls, resale value collapses, and the deferral compounds into
a replacement cliff that arrives all at once. It is attractive because the cost appears in a
different budget line from the saving.

## Desired outcomes

- Replacement at economic life, funded from a reserve rather than from an annual capital fight
- Utilization measured, with under-used vehicles reassigned or removed
- Availability high enough that operations do not hold their own spare vehicles
- Right-sized specification — the vehicle the work needs, not the one the department wants
- Preventive maintenance completed on schedule
- Total cost of ownership known per vehicle and per class
- Fuel and charging infrastructure planned ahead of fleet transition, not after

## Key processes

Fleet planning and replacement cycle definition · specification and standardization · acquisition,
frequently through [cooperative
contracts](/capabilities/cooperative-and-shared-purchasing/) · upfitting · assignment and motor
pool operation · utilization monitoring · preventive and corrective maintenance · parts management
· fuel and charging management · telematics operation · accident and damage management · warranty
recovery · disposal and resale · replacement reserve funding · electrification and alternative fuel
transition planning

## Key data

Vehicle register with class, age, mileage or hours, assignment, and condition · lifecycle cost per
vehicle — acquisition, maintenance, fuel, downtime, resale · utilization by vehicle · maintenance
history and scheduled service compliance · fuel and energy consumption · telematics data · accident
and damage records · replacement schedule with reserve balance · disposal proceeds · charging and
fuelling infrastructure inventory

## Measures

| Measure | Class |
|---|---|
| Fleet age against replacement cycle, by class | Outcome |
| Vehicles past economic replacement point | Outcome |
| Availability — vehicles in service against fleet size | Outcome |
| Maintenance cost per mile or hour, by class and age | Input |
| Utilization distribution — and vehicles below threshold | Outcome |
| Preventive service completed on schedule | Process |
| Replacement reserve funded against requirement | Input |
| Resale value achieved against expected | Outcome |

**Utilization distribution regularly surprises people.** A meaningful share of most public fleets is
used rarely, and the vehicles are held because a department once needed one — which is a cheaper
problem to fix than any of the others on this list.

## Level variance

- **Federal.** Very large fleets managed centrally with government-wide leasing arrangements and
  mandated alternative fuel and emissions targets.
- **State.** Agency fleets plus specialized equipment — highway maintenance, law enforcement,
  inspection — frequently with a central fleet agency charging agencies internally.
- **County / municipal.** **The most diverse fleet per employee in government**: police vehicles,
  fire apparatus, ambulances, refuse trucks, plows, transit buses, mowers, and construction
  equipment, with lifecycles ranging from three years to twenty-five. Fire apparatus and transit
  buses have long lead times and very high unit costs, which makes reserve funding essential and
  rare.

## Where it goes wrong

**No replacement reserve.** Replacement competes annually with everything else, loses, and the
fleet ages until a cliff forces a bond issue.

**Deferral justified by low mileage.** Age and duty cycle drive deterioration for most public fleet
classes, and a low-mileage twenty-year plow is not a young asset.

**Utilization never measured.** Vehicles assigned permanently to departments, used occasionally,
and invisible in any pool.

**Specification by preference.** Larger and more equipped than the work requires, because the
specification is written by the requesting department with no standard.

**Maintenance deferred to keep vehicles available.** Which reduces availability within a year.

**Total cost of ownership unknown.** Acquisition in capital, fuel in one operating line,
maintenance in another, downtime nowhere — so replacement decisions are made on purchase price.

**Electrification planned as a procurement.** Vehicles ordered before charging infrastructure,
electrical capacity, and maintenance training exist, so the vehicles arrive and cannot be operated.

**Warranty and recall recovery missed.** Repairs paid for that the manufacturer owed — the same
[obligation tracking](/patterns/obligation-tracking/) gap seen in construction warranties.
