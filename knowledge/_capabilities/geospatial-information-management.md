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

## Where it goes wrong

**Every system with its own address list.** Six copies, six spellings, none authoritative, and no
ability to answer what is happening at one property — the identity resolution problem from the
[core data model](/data-models/core-public-sector-model/) in its spatial form.

**Addressing and parcel maintenance as batch work.** Updated quarterly, so new construction is
unroutable for months and emergency dispatch has a gap.

**GIS as a map-making service.** Treated as a cartographic team producing PDFs rather than as the
custodian of a shared data service, so integration never happens.

**Boundaries that disagree.** The service boundary, the tax district, and the zoning layer
inconsistent at the edges, and each system authoritative for its own version.

**Asset geometry maintained separately from the asset register.** The map and the maintenance
system disagree on what exists and where — the recurring problem in
[build and operate](/domains/build-and-operate/).

**Publishing spatial data without privacy assessment.** Parcel plus permit plus service history is
frequently identifying, even when each layer alone is not — a
[privacy](/capabilities/privacy-management/) failure created by an open data programme.

**One person who knows the geodatabase.** Common, and a severe continuity exposure given how many
systems depend on it.
