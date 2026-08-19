---
title: "Geospatial Information Management"
summary: "Authoritative location, parcel, boundary, and asset geometry — the shared key most public-sector data resolves to, owned by somebody specific."
status: Starter
tier: Tier 1 · Catalog
scope: All
area: inform
order: 6
updated: 2026-08-19
owner: Content team
sections:
  - Overview
  - Personas
  - Common Processes
  - Outcomes and Measures
---

## Overview

To maintain authoritative spatial data — addresses, parcels, boundaries, centrelines, and asset
geometry — and to make it available as a service to every system that needs to resolve where
something is.

**Location is the most widely shared key in public-sector data and the
most commonly duplicated.** An address is not a parcel is not a jurisdiction is not a point, and
government work routinely requires all four for the same request. The mapping between them is
authoritative data that somebody specific must own.

## Personas

- Chief Data Officer

## Common Processes

1. Address authority maintenance and assignment
2. parcel maintenance from recorded transactions
3. boundary maintenance — jurisdictional, service, district, zoning
4. centreline and network maintenance
5. geocoding service operation
6. imagery and elevation acquisition
7. asset geometry capture and update
8. spatial data quality assessment
9. publication as open data and as services
10. map product creation
11. field data collection support

## Outcomes and Measures

- One authoritative source per spatial layer, with a named owner
- Address and parcel data maintained continuously as change occurs
- Geocoding available as a shared service rather than reimplemented per system
- Jurisdictional and service boundaries current and reconciled with each other
- Asset geometry maintained by the operational owner, not by a mapping team
- Spatial data published openly where it can be, with privacy assessed first

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
