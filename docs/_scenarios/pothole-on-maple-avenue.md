---
id: pothole-on-maple-avenue
title: Pothole on Maple Avenue
type: reference-scenario
level: 5
version: "0.1"
status: draft
description: Jordan Ellis reports a dangerous pothole, Public Works repairs it, and the request is confirmed and closed through the municipal constituent-services workflow.
last_updated: 2026-08-10
industries:
  - government
missions:
  - constituent-services
tracks: [business, experience-process, information, architecture, trust-governance, ai-automation, executable]
relationships:
  builds_on:
    - municipal-constituent-services
  personas:
    - service-seeker
    - service-coordinator
    - service-worker
    - service-supervisor
  adds:
    - Jordan Ellis
    - Maple Avenue service request
    - Golden-path request trace
    - Escalation variation
---

## Narrative

Jordan Ellis notices a pothole in the northbound lane of Maple Avenue near the library. Jordan uses
the public portal to report the problem, provides the location, marks the issue as high priority,
and attaches a photo.

Alicia Trent, a service coordinator, classifies the request as Streets & Sidewalks, sets response
and resolution targets, and assigns Public Works. Marcus Webb receives the work. He asks which lane
is affected, Jordan responds, and Marcus repairs the pothole. After recording resolution notes,
Marcus marks the request resolved. Alicia confirms the outcome and closes it.

The names and records in this scenario are fictional test data.

## Personas

| Person | Role | Responsibility in this scenario |
|---|---|---|
| Jordan Ellis | [Resident](/personas/service-seeker/) | Reports the issue, supplies clarification, sees only owned requests |
| Alicia Trent | [Service coordinator](/personas/service-coordinator/) | Triages, assigns, tracks, and closes the request |
| Marcus Webb | [Field agent](/personas/service-worker/) | Investigates, performs work, and records the resolution |
| Elena Voss | [Services supervisor](/personas/service-supervisor/) | Reviews an escalation in the variation path |

## Journey

```text
Jordan reports pothole with photo                    [submitted]
  ↓
Alicia starts triage, sets targets, assigns Public Works [triage]
  ↓
Alicia begins work; department-assigned guard passes [in-progress]
  ↓
Marcus requests exact lane details                   [pending-constituent]
  ↓
Jordan responds                                      [in-progress]
  ↓
Marcus records notes; resolution-notes guard passes  [resolved]
  ↓
Alicia confirms and closes                           [closed]
```

## Capability trace

| Step | Capability or Foundation |
|---|---|
| Identify Jordan | Person |
| Record portal submission and response | Communication |
| Capture, classify, and route the issue | Request Management |
| Coordinate extended work and lifecycle | Case Management |
| Ask for clarification and perform repair | Task |
| Maintain context and notify Jordan | Constituent Management |

## Data trace

```text
Person: Jordan Ellis
Communication: initial portal report
Request/Case: REQ-… “Pothole on Maple Avenue near the library”
Classification: streets-and-sidewalks
Department: public-works
Task: field investigation and repair
Communication: request for lane clarification
Communication: Jordan's response
Outcome: repaired; resolution notes recorded
```

The ellipsis in the reference number is intentional: the executable realization allocates the
sequence at runtime, so the scenario does not claim a fixed ID.

## Event trace

```text
RequestSubmitted
TriageStarted
DepartmentAssigned
WorkStarted
InformationRequested
InformationProvided
RequestResolved
RequestClosed
```

Names shown here are business-event names. A realization may use different technical event names
while preserving the meaning and order.

## AI trace

AI is optional. At intake it may ask Jordan for missing topic or location facts, then propose the
request for review. During work it may explain why a transition is blocked or summarize the
timeline. It does not decide that the repair occurred, approve escalation, or close the request.

## Architecture trace

The public portal submits a permissioned command to the Constituent Services runtime. The runtime
uses the person registry, case-management workflow, document intake, activity history, storage,
and notification services. Staff use the same records through the staff workspace. Ownership and
role permissions are evaluated server-side for every query and command.

## Escalation variation

For a recurring or contentious issue, Alicia moves in-progress work to Escalated and opens an
escalation review. Work cannot resume until Elena approves the review. The approval is a separate
record and guard condition, leaving both the decision and the resumed transition auditable.
