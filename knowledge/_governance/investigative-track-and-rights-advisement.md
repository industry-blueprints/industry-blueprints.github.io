---
type: Governance Control
title: Investigative Track & Rights Advisement
description: The controls around the decisions that cannot be taken back — track before
  contact, the right advisement for the track, and the evidence that both happened.
resource: https://industry-blueprints.github.io/governance/investigative-track-and-rights-advisement/
tags: [governance, investigations, rights, garrity, weingarten, due-process, oig]

generated: { by: human:jhofmann, at: 2026-07-30T12:30:00Z }
status: draft
stale_after: 2027-07-30
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal, tribal]

relationships:
  - predicate: constrains
    target: /capabilities/investigations.md
  - predicate: constrains
    target: /capabilities/labor-and-employee-relations.md
---

## What this control exists for

Most controls in this library reduce the cost of an error. This one exists because **the error
is unrecoverable.**

A public employee compelled to answer questions under threat of discipline receives immunity
from those statements being used in a criminal prosecution. Once the compelled interview has
happened, no later process, review, or apology restores the prosecution. There is no remediation
step in this control because there is no remediation available.

## The distinction that carries the whole control

**Deciding the track is not the same as knowing the answer.**

Organizations that get this wrong rarely decide to run an administrative interview first. They
*never decide anything* — an allegation looks like a personnel matter, it is handled as one, and
the track was determined by default at the moment someone picked up the phone.

The control therefore attaches to **contact**, not to conclusions. It requires that before any
person to whom rights attach is approached, a named individual has recorded a track decision.
The decision may be "administrative, and here is why the conduct alleged is not criminal." What
it may not be is absent.

## Required controls

| Control | Held by | Evidence |
|---|---|---|
| Track determined before subject contact | Named track owner | Dated record naming the decider and the basis |
| Prosecutor consulted where conduct could be criminal | Track owner | Consultation record with date and outcome |
| Parallel track sequence agreed in writing | Track owner and prosecutor | Written sequence, before either track proceeds |
| Rights advisement appropriate to the track | Interviewing investigator | Advisement recorded, with acknowledgement |
| Representation rights offered where applicable | Interviewing investigator | Offer and response recorded before questioning |
| Predication recorded before opening | Investigator or intake owner | Written basis, dated, retained on the case |
| Investigative file segregated from personnel file | Records owner | Separate file with distinct access control |
| Preservation hold placed at intake | Intake owner | Hold record naming systems and date |

## Rules

- **No contact with a subject before a track decision is recorded.** This binds HR, supervisors,
  management, and the investigator equally. It is most often broken by people who have never
  been told it exists, which makes publication part of the control rather than a nicety.
- The advisement given must match the track. An advisement designed for an administrative
  interview, given in a matter that has become criminal, is worse than none — it manufactures
  the immunity it was meant to avoid.
- **Representation rights are offered before questioning, not on request.** An employee who
  reasonably believes an interview may result in discipline is generally entitled to
  representation; denial taints the interview and frequently the resulting action.
- Predication is recorded as a basis, not as a conclusion. "Credible allegation" is a
  conclusion; the facts that made it credible are the basis.
- Where no dedicated investigative function exists, the track owner is named in policy anyway.
  An unnamed owner means the decision is made by whoever moves first.
- Reprisal allegations open as their own matter with their own track determination.
- **A declination is a control outcome, not a failure.** Matters declined with recorded
  predication are evidence the control is operating.

## What automation may and may not do

**May:** enforce that a track decision exists before a case can move to an interview stage;
prompt the advisement appropriate to the recorded track; place and track preservation holds;
route allegations to the register from every channel; segregate the investigative file by access
control; monitor case age and surface drift; detect that a matter alleging reprisal has been
appended to an existing case rather than opened separately.

**May not:** determine the track, assess predication, or decide whether conduct alleged could
constitute a crime. Each is an exercise of judgement with irreversible consequences for a named
person, and each must be attributable to a human who can be asked why.

The failure mode worth naming is the same one that appears in
[work authorization](/governance/work-authorization-and-safety-prerequisites/): **a well-designed
workflow can create false assurance.** A green checkmark reading "track: administrative" invites
everyone downstream to stop asking. The interface should present the track as a decision with an
owner and a date attached, and it should show the basis, not just the value.

## Evidence required

- Track decision, dated, with the decider named and the basis recorded
- Prosecutor consultation record where the conduct alleged could be criminal
- Written sequence for any parallel track, agreed before either proceeds
- Rights advisement recorded, with the advisement text used and acknowledgement captured
- Representation offer and response, recorded before questioning began
- Predication basis, retained on the case file
- Preservation holds with the systems named
- Access log for the investigative file, reviewed rather than merely retained

## Level variance

- **Federal.** Statutorily independent inspectors general with subpoena authority and, in many
  offices, law enforcement powers, operating under a defined framework for whistleblower
  protection and reprisal. Track determination usually happens inside an organization holding
  both capabilities, with established prosecutor relationships and formal advisement forms.
- **State.** Varies substantially. Medicaid fraud control units and program integrity units
  carry the discipline; general state employment matters frequently do not, and the two sit in
  the same government.
- **County / municipal.** **The doctrine applies identically and the infrastructure does not.**
  Allegations go to HR, to the attorney, or to an audit function with no investigative
  authority. The single highest-value action available at this level is naming the track owner
  in policy — it requires no system, no budget, and no headcount, and it converts a decision
  made by default into a decision made by someone.
- **Tribal.** Jurisdiction between tribal, state, and federal authority is resolved case by
  case, and must be resolved before contact rather than after.
