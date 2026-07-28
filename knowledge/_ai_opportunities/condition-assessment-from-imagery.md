---
type: AI Opportunity
title: Assess Asset Condition from Imagery
description: Turn a periodic, sampled, expensive survey into a continuous one — for the
  surface and linear assets where condition is actually visible.
resource: https://industry-blueprints.github.io/ai-opportunities/condition-assessment-from-imagery/
tags: [ai, assets, condition, computer-vision, pavement, inspection]

generated: { by: human:jhofmann, at: 2026-07-29T13:30:00Z }
status: draft
stale_after: 2027-07-29
depth: defined

industry: public-sector
government_levels: [state, county, municipal]
ai_task_type: image classification
minimum_level: 3

relationships:
  - predicate: assists
    target: /personas/asset-manager.md
  - predicate: assists
    target: /personas/public-works-director.md
---

## Business problem

Condition assessment is periodic because it is expensive. A jurisdiction surveys its pavement every
three to five years, its roofs on request, and its signs and markings when someone notices. Between
surveys the plan is built on data that is progressively describing a different estate.

The cost is not primarily the analysis — it is sending trained people to look at things. For
**surface and linear assets, the looking can be done by a camera on a vehicle that is already
driving the network.**

## Where it works, and where it does not

| Asset type | Viable | Why |
|---|---|---|
| Pavement — cracking, rutting, patching | **Strong** | Visible, high volume, well-established distress taxonomies |
| Signs, markings, signals | **Strong** | Visible, retroreflectivity and legibility are observable |
| Sidewalks, curb ramps, trip hazards | **Strong** | Also feeds accessibility obligations directly |
| Roofs, facades | Moderate | Aerial or drone imagery; membrane condition partially visible |
| Vegetation encroachment, drainage obstruction | Moderate | Visible, seasonal, high change rate |
| Buried mains, sewers | **Only via inspection camera** | Not observable from the surface; the imagery has to come from CCTV inspection, which is itself the expensive step |
| Mechanical and electrical plant | **No** | Condition is not primarily visual |

**Stating the boundary is the point.** The technique addresses the assets where periodic survey is
the constraint. It does not address buried infrastructure, which is where the largest renewal
exposure sits — see
[asset management](/capabilities/asset-management/). Claiming otherwise is the most common
overstatement in this space.

## What it changes

Condition moves from a **sample every few years** to a **census every few months**, at close to the
marginal cost of driving the network — which fleet, refuse, and inspection vehicles already do.

That change is what makes the rest of the domain work:

- [Criticality-based maintenance strategy](/patterns/criticality-based-maintenance-strategy/) can use condition-based triggers, because condition is actually known
- Deterioration *rate* becomes visible, not just current state — which is what forecasting needs
- [Renewal forecasting](/kpis/renewal-rate-against-replacement-value/) rests on current evidence
- [Condition currency](/kpis/condition-assessment-currency/) stops being the limiting factor

## Prerequisites — why level 3

| Needed | Why |
|---|---|
| An asset register with segments | A condition rating has to attach to something. Imagery of an unregistered network produces observations nobody can act on |
| Authoritative network geometry | Ratings are positioned against a segment — a [geospatial](/capabilities/geospatial-information-management/) dependency |
| A defined distress taxonomy and rating scale | The model outputs must map to the scale the organization already plans with, or nothing downstream can consume them |
| Condition modelled as a dated entity | Otherwise each pass overwrites the last and deterioration rate is lost — see the [data model](/data-models/asset-and-work-management-data-model/) |

**Level 3 is the honest floor**, and the register is the binding one. An organization without a
segmented asset register gets a large volume of imagery-derived observations with nowhere to put
them.

## The boundary

**Detection and rating, not prioritization.** The model observes distress and scores it against the
published scale. What gets renewed is a decision combining condition with criticality, budget, and
service consequence — and criticality is not visible in an image.

Two further constraints:

**Ratings carry the method.** An imagery-derived rating and an inspector-derived rating are not
interchangeable, and mixing them in one trend line without recording which is which produces an
apparent change in condition that is actually a change in method. The `method` field exists for
this.

**Validate against inspection, continuously.** A sample re-inspected by a person, compared with the
model's rating, is the only evidence the ratings are any good — and it is the same discipline as
comparing [failures against ratings](/kpis/condition-assessment-currency/). A model whose
agreement with inspectors is unmeasured is an assertion.

**Privacy applies.** Street-level imagery captures people, vehicles, and property. Faces and plates
require blurring before retention, and the retention period needs a decision — see
[privacy management](/capabilities/privacy-management/).

## Where it goes wrong

**Deployed without the register**, producing observations that cannot be attached to an asset.

**Method mixing**, described above, which fabricates a trend.

**Treated as a replacement for inspection** on classes where condition is not visual, which is most
mechanical plant and all buried assets.

**Vendor-scored, unvalidated.** A service returning scores on a proprietary scale, never compared
against local inspection, and used to rank a capital programme.

**Imagery retained indefinitely** with no privacy review, creating an incidental surveillance
dataset from an asset management programme.
