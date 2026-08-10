---
type: AI Integration
title: Triage Work Requests and Detect Duplicates
description: Turn eleven reports of one pothole into one work order and eleven
  notifications — the cheapest win in the domain.
resource: https://industry-blueprints.github.io/ai-integrations/work-request-triage-and-duplicate-detection/
tags: [ai, work-requests, triage, classification, deduplication, intake]

generated: { by: human:jhofmann, at: 2026-07-29T13:45:00Z }
status: draft
stale_after: 2027-07-29
depth: defined

industry: public-sector
government_levels: [state, county, municipal]
ai_modality: autonomous
ai_task_type: classification
minimum_level: 3

relationships:
  - predicate: assists
    target: /personas/maintenance-planner.md
  - predicate: assists
    target: /personas/customer-service-representative.md
---

## Business problem

Public reporting channels multiplied request volume without multiplying crew capacity. The same
defect arrives eleven times through five channels, in free text, with a location a resident could
describe rather than one a crew can navigate to.

The consequence is not just duplicated work orders. It is that **ten of those eleven residents
never hear that the pothole was filled**, because the notification attaches to the work order and
their report was a separate record nobody linked. The service was delivered and the experience was
of being ignored.

## What it does

Three tasks at intake, in order:

**Classify.** Map free-text description to a work type and a responsible unit. "There's water
coming up through the road" is a main break, not a pothole, and the classification changes the
priority and the crew.

**Resolve location to an asset.** Free text and a dropped pin to a coordinate, a network segment,
and where possible an asset identifier — the join that makes everything downstream possible, per
the [data model](/data-models/asset-and-work-management-data-model/).

**Detect duplicates.** Cluster reports by location proximity, work type, and time window, and link
them to one work request rather than creating parallel records.

The outcome is one work order, eleven linked reports, and eleven notifications when the crew
completes.

## What it is worth

| Effect | Mechanism |
|---|---|
| Fewer duplicate work orders | Crews not dispatched twice to the same defect |
| Fewer misroutes | Classification catching the main break described as a puddle |
| Requests that accumulate into asset history | Location resolved to an asset rather than to free text |
| Contact volume reduced | Notification closes the loop, removing "what happened to my report" calls that land on [constituent service](/capabilities/constituent-service-management/) |
| Triage capacity released | The [planner](/personas/maintenance-planner/) triages exceptions rather than every record |

**The notification effect is the one that surprises people.** The reduction in inbound contacts
about status frequently exceeds the saving from de-duplication, and it lands in a different
department's budget from the one that paid for the change.

## Prerequisites — why level 3

| Needed | Why |
|---|---|
| One work request record across channels | Classification across six parallel queues does not help; the queues are the problem |
| Authoritative address and network geometry | Location resolution is a [geospatial](/capabilities/geospatial-information-management/) dependency before it is a model one |
| An asset register with identifiers | To resolve *to* something |
| Requester contact captured with consent to notify | The notification is most of the value |
| A published work type taxonomy | The model's output has to map to the classes the organization dispatches on |

Level 3 rather than 2 because the single-record and geospatial prerequisites are genuine
integration work. **An organization at level 2 gets more from consolidating its intake channels
than from classifying them.**

## The boundary

**Suggest and link, never merge or close.** A duplicate link is reversible; a merge is not, and a
wrongly merged report means a second real defect goes unrecorded. Below a confidence threshold, the
record goes to a human.

**Priority is assigned by rule, not by the model.** Classification determines work type;
[triage](/processes/work-request-intake-and-triage/) determines priority from consequence and asset
criticality, on a published basis. A model that learns priority from historical decisions will
learn triage-by-visibility, which is the failure the process exists to correct — it would encode
"reports with photographs get done faster" as though it were policy.

**Safety-relevant classifications escalate on suspicion, not on confidence.** A report that might be
a gas smell, a live wire, or a sinkhole goes to immediate dispatch even at low confidence. The
asymmetry of consequences makes false positives cheap and false negatives unacceptable.

**Do not close on classification.** A request classified as another authority's asset is referred
with the owner named — a terminal state the requester can see, not a silent close.

## What to get right

**Unify intake before deploying.** A classifier on one of six channels leaves the other five
unclassified; consolidating intake first is what makes triage complete.

**Surface merge candidates for review, don't auto-merge.** Discussed above — a reviewed merge
keeps the second defect visible as a record instead of erasing it silently.

**Set priority from policy, not history.** Deriving it deliberately avoids encoding existing bias
as an automated rule.

**Resolve location against authoritative data.** A geocoder checked against a current address
list sends a crew to the right street instead of a confident wrong coordinate.

**Ask for a notification preference.** Notifying residents through the channel they chose turns a
good outcome into a good experience, not a complaint about contact.
