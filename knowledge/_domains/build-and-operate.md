---
type: Capability Domain
title: Build & Operate
description: Planning, building, maintaining, and running the physical estate —
  land, infrastructure, buildings, utilities, and fleet.
resource: https://industry-blueprints.github.io/domains/build-and-operate/
tags: [domain, assets, infrastructure, capital, utilities, transportation]

generated: { by: human:jhofmann, at: 2026-07-27T09:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
domain_type: mission
map_order: 70

capabilities:
  - title: Capital Planning & Programming
    definition: Deciding what gets built or replaced, over what horizon, within what funding envelope.
    target: /capabilities/capital-planning-and-programming.md
  - title: Project Delivery & Construction Management
    definition: Designing, procuring, and delivering capital projects to schedule, budget, and standard.
    target: /capabilities/project-delivery-and-construction-management.md
  - title: Asset Management
    definition: Knowing what is owned, its condition, its remaining life, and what it will cost to keep serviceable.
    target: /capabilities/asset-management.md
  - title: Maintenance Management
    definition: Preventive and corrective work — requests, orders, scheduling, parts, and completion.
    target: /capabilities/maintenance-management.md
  - title: Facilities Operations
    definition: Running buildings — space, security, energy, cleaning, and occupant services.
    target: /capabilities/facilities-operations.md
  - title: Transportation Operations
    definition: Operating roads, signals, transit, and the traffic network, including incidents and events.
    target: /capabilities/transportation-operations.md
  - title: Utility Operations
    definition: Producing and distributing water, wastewater, power, or waste services, with metering and service connections.
    target: /capabilities/utility-operations.md
  - title: Fleet Management
    definition: Acquiring, maintaining, assigning, fuelling, and disposing of vehicles and equipment.
    target: /capabilities/fleet-management.md
  - title: Land Use Planning & Zoning
    definition: Comprehensive planning, zoning administration, and development review.
    target: /capabilities/land-use-planning-and-zoning.md
  - title: Right-of-Way & Property Management
    definition: Acquiring, leasing, licensing, and disposing of real property and access to the public right of way.
    target: /capabilities/right-of-way-and-property-management.md
  - title: Environmental Management & Sustainability
    definition: Meeting environmental obligations and pursuing resilience and emissions commitments.
    target: /capabilities/environmental-management-and-sustainability.md
  - title: Work Order & Field Service Management
    definition: Dispatching, equipping, and tracking crews doing work away from a desk.
    target: /capabilities/work-order-and-field-service-management.md

relationships:
  - predicate: part_of
    target: /industries/public-sector.md
---

The domain with the longest time horizons in government. Decisions here commit money and
capacity for thirty to a hundred years, and are made by administrations that will not be in
office when the consequences arrive.

## What makes this domain distinct in government

**The asset base outlives every planning cycle.** A water main installed in 1955 is a current
operational concern. Capital planning is therefore a negotiation between accumulated deferred
maintenance and visible new construction, and the political incentives run toward the latter.

**Deferred maintenance is a liability nobody books.** Condition data is expensive to collect and
inconvenient to publish, so it frequently does not exist at the fidelity needed to argue for
funding — which perpetuates the gap. Asset condition data is the highest-leverage missing dataset
in most jurisdictions.

**Work happens in the field.** Unlike most of this model, the primary user is outdoors, on a
device, often without connectivity, wearing gloves. Designs validated at a desk fail here.

**Location is the organizing key.** Assets, work, permits, complaints, and parcels all resolve
to geography, which makes authoritative geospatial data a dependency rather than a visualization
layer. See [Location](/data-entities/location/).

## Level variance

- **Federal.** Vast holdings of land, buildings, and specialized infrastructure; typically funds
  rather than operates local transportation and water systems.
- **State.** Highway networks, state facilities, and the regulatory and funding relationship to
  local infrastructure.
- **County / municipal.** Owns and operates most of the infrastructure the public touches daily —
  local roads, water, wastewater, waste, parks, and facilities. Highest operational intensity,
  smallest teams.

## Where this domain connects

Capital delivery depends on [Acquire](/domains/acquire/) and consumes most of the capital budget
from [Fund](/domains/fund/). Service requests about physical things — a pothole, an outage —
arrive through [Serve](/domains/serve/) and become work orders here, which is one of the most
common cross-domain handoffs in local government and one of the most commonly broken.
