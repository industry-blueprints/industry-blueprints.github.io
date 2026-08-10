---
type: Capability
title: Right-of-Way & Property Management
description: Acquiring, leasing, licensing, and disposing of real property and access to
  the public right of way — a portfolio most jurisdictions cannot fully enumerate.
resource: https://industry-blueprints.github.io/capabilities/right-of-way-and-property-management/
tags: [capability, property, right-of-way, acquisition, leasing, encroachment, surplus]

generated: { by: human:jhofmann, at: 2026-07-28T12:30:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/build-and-operate.md
  - predicate: has_participant
    target: /personas/program-manager.md
  - predicate: has_participant
    target: /personas/contract-manager.md
    note: Leases, licences, and franchises are agreements with obligations and renewal dates
  - predicate: uses_data
    target: /data-entities/location.md
---

## Purpose

To manage the organization's interests in real property — acquiring what projects require, holding
and leasing what it owns, granting and controlling access to the public right of way, and disposing
of what it no longer needs.

**The right of way is the most valuable asset most local governments own and the least
inventoried.** Utilities, telecommunications carriers, small cell installations, sidewalk cafés,
construction staging, and encroachments all occupy it, frequently under permissions granted decades
ago by people no longer present and recorded nowhere searchable.

## Desired outcomes

- A complete inventory of owned property and property interests
- Acquisition conducted lawfully and fairly, with relocation obligations met
- Right-of-way occupancy permitted, recorded, and charged consistently
- Encroachments identified and resolved before they establish a claim
- Leases and licences managed with renewal dates, escalations, and obligations tracked
- Surplus property identified, and disposal tested against internal need first
- Franchise and pole attachment agreements current and revenue correctly collected

## Key processes

Property inventory and title research · appraisal and valuation · negotiated acquisition ·
eminent domain proceedings where unavoidable · relocation assistance · easement acquisition and
maintenance · right-of-way permit issue for utility and construction work · pavement restoration
requirements and warranty · encroachment identification and resolution · franchise and attachment
agreement negotiation · lease administration — both as landlord and tenant · surplus determination
and disposal · vacation and abandonment of right of way · records recording

## Key data

Property register with parcel, acquisition date, cost, use, and restrictions · title and deed
records with encumbrances · easement inventory with terms and beneficiaries · appraisals and
acquisition files · relocation case records · right-of-way permits with location, term, restoration
obligation, and warranty · encroachment register with status · lease and licence register with
term, rent, escalation, and renewal date · franchise agreements with fee basis and audit rights ·
surplus inventory and disposal records

## Measures

| Measure | Class |
|---|---|
| Property interests inventoried against those known to exist | Process |
| Acquisitions completed by negotiation rather than condemnation | Outcome |
| Right-of-way permits with restoration verified after work | Process |
| Restoration warranty claims made before expiry | Process |
| Encroachments identified and resolved in the period | Process |
| Leases renewed or renegotiated before expiry | Process |
| Franchise fee revenue verified against the agreement basis | Process |
| Surplus property held with no identified use | Input |

**Restoration verification is the measure with the clearest financial consequence.** Utility cuts
that are not restored to standard shorten pavement life materially, and the cost transfers silently
from the utility to the road budget.

## Level variance

- **Federal.** Very large land and building holdings with formal disposal procedures and
  substantial identified excess property.
- **State.** Highway right-of-way acquisition at scale under federally influenced relocation
  requirements, plus state property portfolios.
- **County.** Road right of way, park and open space holdings, and tax-foreclosed property, which
  frequently arrives unwanted and in poor condition.
- **Municipal.** Streets, alleys, and utility corridors, plus a heterogeneous holding of parcels
  acquired for reasons nobody now remembers. **Small cell and telecommunications attachment has
  made right-of-way management materially more consequential**, with state statutes in many
  jurisdictions now limiting what local governments may charge or require.

## What to get right

**Maintain a complete property inventory.** Without one, the jurisdiction cannot list what it
owns, and parcels get maintained, insured, and taxed-exempt without anyone knowing why they are
held.

**Follow up on right-of-way restoration.** Once the cut is made, tracking the trench settlement
and the warranty against expiry is what keeps the road from failing early — see
[obligation tracking](/patterns/obligation-tracking/).

**Resolve encroachments before they establish.** A fence, a structure, or a use in the right of
way, caught early, doesn't get the chance to become a legal claim.

**Inventory easements, not just the project file.** Acquired for a specific utility run and
recorded but not inventoried, an easement only surfaces when the next project needs to know —
inventorying it up front avoids that.

**Track lease renewal dates actively.** A renewal date left in a document nobody is watching lets
below-market rent extend for another term unnoticed — the same discipline as
[renewal lead time](/kpis/renewal-lead-time/) in contracts.

**Audit franchise fees against the agreement.** The agreement provides audit rights; using them
catches fees calculated by the payer on a basis nobody has checked.

**Offer surplus property internally before disposal.** Checking with other departments first
avoids one department selling land another was about to purchase.

**Start acquisition planning early in design.** Identifying right-of-way needs at design
completion instead of earlier makes acquisition the critical path and condemnation the
schedule-driven option — starting sooner keeps both in reserve.
