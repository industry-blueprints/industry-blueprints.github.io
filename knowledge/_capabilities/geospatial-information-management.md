---
type: Capability
title: Geospatial Information Management
description: Authoritative location, parcel, boundary, and asset geometry — the
  shared key most public-sector data resolves to, owned by somebody specific.
resource: https://industry-blueprints.github.io/capabilities/geospatial-information-management/
tags: [capability, geospatial, gis, parcel, address, location, authoritative-data]

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
  - predicate: uses_data
    target: /data-entities/location.md
---

## Purpose

To maintain authoritative spatial data — addresses, parcels, boundaries, centrelines, and asset
geometry — and to make it available as a service to every system that needs to resolve where
something is.

**[Location](/data-entities/location/) is the most widely shared key in public-sector data and the
most commonly duplicated.** An address is not a parcel is not a jurisdiction is not a point, and
government work routinely requires all four for the same request. The mapping between them is
authoritative data that somebody specific must own.

## Desired outcomes

- One authoritative source per spatial layer, with a named owner
- Address and parcel data maintained continuously as change occurs
- Geocoding available as a shared service rather than reimplemented per system
- Jurisdictional and service boundaries current and reconciled with each other
- Asset geometry maintained by the operational owner, not by a mapping team
- Spatial data published openly where it can be, with privacy assessed first

## Key processes

Address authority maintenance and assignment · parcel maintenance from recorded transactions ·
boundary maintenance — jurisdictional, service, district, zoning · centreline and network
maintenance · geocoding service operation · imagery and elevation acquisition · asset geometry
capture and update · spatial data quality assessment · publication as open data and as services ·
map product creation · field data collection support

## Key data

Address points with status and lifecycle · parcel geometry with ownership and legal reference ·
boundary layers with effective dates · road and utility centrelines with connectivity · imagery
with capture date and resolution · asset geometry linked to the operational asset register ·
metadata and lineage per layer · geocoder match rate and confidence

## Measures

| Measure | Class |
|---|---|
| Geocode match rate against operational address inputs | Process |
| Time from new address assignment to availability in services | Process |
| Parcel currency against recorded transactions | Process |
| Layers with a named owner and stated update cadence | Process |
| Systems consuming the shared service versus holding a copy | Process |
| Boundary discrepancies between layers | Outcome |
| Requests resolving to the wrong jurisdiction | Outcome |

**Geocode match rate is the operational measure with the widest blast radius.** Everything that
routes by location — service requests, inspections, dispatch, tax billing — degrades in proportion
to it.

## Level variance

- **Federal.** National geospatial framework data, imagery and elevation programmes, and
  statistical geography that state and local data are aggregated to.
- **State.** Statewide layers assembled from local authoritative sources, addressing and parcel
  aggregation programmes, and coordination of standards across jurisdictions.
- **County.** **Usually the authoritative source for parcels**, maintained from recorded deeds and
  surveys, and frequently the addressing authority for unincorporated areas. County parcel data is
  a dependency for a great deal of state and municipal work.
- **Municipal.** Addressing authority within city limits, utility and street asset geometry, and
  zoning — with the strongest operational dependency on the county parcel layer.

## What to get right

**Maintain one authoritative address list, not six.** A single authoritative source, rather than six
copies with six spellings, is what lets anyone answer what is happening at one property — the
identity resolution problem from the
[core data model](/data-models/core-public-sector-model/) in its spatial form.

**Update addressing and parcel data continuously, not in batches.** Continuous maintenance keeps new
construction routable immediately, closing the gap that otherwise shows up in emergency dispatch.

**Run GIS as a shared data service, not a map-making shop.** Operating as the custodian of a shared
service, rather than a cartographic team producing PDFs, is what makes integration actually happen.

**Reconcile boundaries across layers.** Keeping the service boundary, the tax district, and the
zoning layer consistent at the edges avoids each system being authoritative for its own
disagreeing version.

**Maintain asset geometry from the asset register.** Keeping the map and the maintenance system in
sync on what exists and where addresses the recurring problem in
[build and operate](/domains/build-and-operate/).

**Assess privacy before publishing spatial data.** Parcel plus permit plus service history is
frequently identifying even when each layer alone is not, so a privacy assessment ahead of
publication protects an open data programme from creating a
[privacy](/capabilities/privacy-management/) problem.

**Spread geodatabase knowledge beyond one person.** Given how many systems depend on it, documenting
and cross-training closes a severe continuity exposure.
