---
title: Field Investigation & Surveillance Support
summary: Ability to conduct and record site visits, observations, canvassing, and other field investigative activity.
status: Draft
tier: Tier 2 · Practitioner
scope: All
updated: 2026-08-19
owner: Content team
workload: Investigations
parent_title: Investigations
parent_url: /workloads/investigations/
order: 8
sections:
  - Overview
  - Maturity Levels
  - Conduct Site Visits and Field Activities
  - Capture Field Notes, Photographs, and Locations
  - Coordinate Field Personnel and Assignments
  - Convert Field Notes into Structured Reports
  - Extract Information from Authorized Imagery
  - Correlate Field Observations with Case Information
  - Architecture
related:
  - type: Workload
    title: Investigations
    url: /workloads/investigations/
    relationship: HAS_CAPABILITY
    summary: The broader workload this capability supports.
sources: []
---

## Overview

Ability to conduct site visits, observations, canvassing, field interviews, and other investigative activities, capture field notes, photographs, locations, and observations, and coordinate field personnel and assignments.

This capability covers investigative work performed away from the office and the record it produces. It excludes the authorization for that activity, which is approved and recorded through Investigative Case Management.

## Maturity Levels

| Stage | Typical characteristics |
| --- | --- |
| Not performed | Field activity is recalled from memory and written up long after the fact. |
| Manual / ad hoc | Notes and photographs are kept on personal devices and attached to the case later. |
| Standardized | Field activity is recorded against the case with date, location, and participants. |
| Integrated | Field capture happens on site into the case record, with time and location captured with it. |
| Automated / optimized | Dictated observations become structured reports and correlate against existing case information. |

<p class="eyebrow">Use case</p>

## Conduct Site Visits and Field Activities

Field activity spans a wide range: visiting a premises to observe operations, canvassing an area for witnesses, conducting an interview at someone's home or workplace, photographing a location or condition, verifying that a person or asset exists where records say it does, and — where authorized — observing a subject's movements over a period. Each has a different legal footing, and the footing determines what may lawfully be done: entering premises may require consent or a warrant, observation in a public place is generally permissible while sustained covert surveillance usually is not, and recording in some settings requires notification that recording in others does not.

Authorization is therefore the governing constraint rather than a preliminary. It has a scope, a permitted technique, a duration, and an expiry, and activity conducted outside any of those is unlawful rather than merely irregular — which means the system's job is to bind activity to a live authorization at the point it happens, not to record afterward that one existed. Renewal deserves particular attention: authorizations lapse on a date, extended operations require fresh approval, and an officer in the field is not well placed to track when a permission expired.

<p class="discovery-label">Discovery questions</p>

- What field activities does this program conduct, and how frequently?
- What authorization does each require, from whom, and for how long?
- How does an officer in the field know their authorization is current?
- What happens today when an authorization lapses mid-operation?
- Which techniques require specific approval, and which are prohibited outright?
- How is entry to premises authorized, and how is consent recorded when it is the basis?
- How would the program demonstrate that a given observation was made within an authorization's scope?

<p class="pattern-label">Implementation pattern</p>

- Model authorization as a structured record with scope, permitted techniques, geography, duration, and expiry, held against the field activity register.
- Bind every field activity and captured artifact to the authorization in force at the time, so scope can be tested per observation rather than per operation.
- Use a workflow engine to gate activity requiring approval, and to require fresh approval for renewal rather than extension by default.
- Configure the field capture client to show the current authorization and its remaining duration, and to refuse capture where none is live.
- Use a rules engine to warn ahead of expiry and to close out activity automatically when an authorization lapses.
- Draw permitted techniques by activity type from the policy and authority library, so what is allowed reflects current policy rather than recollection.
- Record consent, where consent is the basis for entry or recording, as a captured artifact with time and grantor.
- Log every authorization grant, renewal, variation, and lapse in the append-only activity log.

<p class="eyebrow">Use case</p>

## Capture Field Notes, Photographs, and Locations

What is recorded in the field, at the time, is what will be relied on later. Contemporaneous notes carry evidential weight that an account reconstructed days afterward does not, and the difference is frequently decisive when an observation is challenged. Capture means recording the observation, the time, the location, the conditions, and who was present, along with photographs or recordings where permitted — as they happen, on a device the organization controls, rather than in a notebook transcribed later or on a personal phone.

The device is where this capability is usually won or lost. Photographs taken on personal phones sit outside custody, accumulate in personal photo libraries, and arrive at the case days later with no reliable time or place. Field conditions also break assumptions: connectivity fails, so capture must work offline and synchronize later while preserving the original capture time; a device may be lost or seized, so material should not persist on it longer than necessary. Location itself needs care, since precision varies and an imprecise fix presented as exact is a misrepresentation of what was observed.

<p class="discovery-label">Discovery questions</p>

- How are field notes and photographs captured today, and on whose devices?
- How long after an observation is it typically written up?
- What happens where there is no connectivity, and how common is that?
- How is capture time established, and could it be challenged?
- What location precision is available and needed, and is uncertainty recorded?
- What happens to field material on a device that is lost, seized, or replaced?
- How does captured field material become evidence, and when does its custody begin?

<p class="pattern-label">Implementation pattern</p>

- Provide a managed field capture client so notes, photographs, and recordings are captured on organizational rather than personal devices.
- Capture observation time, location, and location precision at the moment of capture, and record precision explicitly rather than implying exactness.
- Support full offline capture with deferred synchronization, preserving original capture time rather than substituting the upload time.
- Compute an integrity value on each artifact at capture through the cryptographic integrity service, so later alteration is detectable.
- Route captured photographs and recordings into the evidence repository on synchronization, so custody begins at capture rather than at upload.
- Use the interview recording capture component for field interviews, so consent and advisement handling matches interviews conducted anywhere else.
- Configure the client to retain material only until synchronized and confirmed, so a lost device carries limited exposure.
- Distinguish observation from inference in the note structure, so what was seen stays separable from what the officer concluded.

<p class="eyebrow">Use case</p>

## Coordinate Field Personnel and Assignments

Field work has to be organized against people, geography, and time. Coordination assigns officers to activities based on availability, qualification, and location, sequences visits sensibly across an area, avoids two teams unknowingly approaching the same premises or subject, and keeps a current picture of who is deployed where. On multi-team operations it also maintains the shared operational picture that lets a supervisor direct activity as it develops.

Officer safety runs through all of it. Field officers work alone, enter premises whose occupants may be hostile, and sometimes conduct activity that would be dangerous if discovered — so check-in schedules, a duress path, and knowing an officer's last reported position are operational necessities. That capability is also continuous location tracking of staff, which carries its own obligations: what is collected, who may see it, how long it is kept, and whether it may be used for performance purposes are questions to settle explicitly with the workforce rather than to leave implied by what the technology makes possible.

<p class="discovery-label">Discovery questions</p>

- How is field work assigned and scheduled today, and by whom?
- How does the program know where its field officers are during a deployment?
- What check-in expectations exist, and what happens when one is missed?
- Is there a duress path, and has it been tested?
- How is deconfliction handled when two teams may approach the same subject or premises?
- What has been agreed with staff about location tracking — its scope, visibility, and retention?
- Could officer location data be used for performance management, and is that position stated?

<p class="pattern-label">Implementation pattern</p>

- Draw officer availability, qualification, and current deployment from resource and capacity data at the point of assignment.
- Maintain a current deployment picture showing assigned activity and last reported position for officers who are active.
- Configure check-in schedules per activity risk level, and use a notification service to escalate a missed check-in on a defined path.
- Provide a duress signal that reaches a monitored destination directly, and exercise it on a schedule rather than assuming it works.
- Run deconfliction against active field activity before an assignment is confirmed, so two teams do not unknowingly approach the same subject.
- Scope officer location retention to the operational purpose, and set a short retention period distinct from the case record.
- Enforce entitlements on officer location and deployment data, so it is visible to those coordinating the operation rather than broadly.
- State the permitted uses of officer location data in configuration, and report on access to it.

<p class="eyebrow">Use case</p>

## Convert Field Notes into Structured Reports

Field notes are made under conditions that do not favor structure — standing outside a premises, between visits, dictated while driving away. They are fragmentary, abbreviated, and personal to whoever wrote them, and turning them into a report someone else can rely on is work that typically happens at the end of a long day or gets deferred until the detail has faded. Converting captured notes and dictation into a structured draft — the activity, times, location, persons present, observations, and actions taken — puts a usable report in front of the officer while the events are fresh.

The original note remains the contemporaneous record. A structured draft is a convenience built from it, and its value depends on the officer reviewing and adopting it rather than accepting it unread, because the report is what will be relied on and the officer is the one attesting to it. Two failure modes matter specifically: smoothing a fragmentary note into confident prose can manufacture certainty the officer did not have, and inferring detail that the note does not contain — a time, a name, a sequence — introduces facts nobody observed.

<p class="discovery-label">Discovery questions</p>

- How are field notes turned into reports today, and how long after the activity?
- How much detail is typically lost between the note and the report?
- Do officers dictate observations, and in what conditions?
- What structure does a field report need in this program?
- What review or attestation does an officer give a report before it enters the record?
- How would a report containing detail the officer never observed be caught?
- What is the standing of the original note once a report exists?

<p class="pattern-label">Implementation pattern</p>

- Keep the original note or dictation as the contemporaneous record, with any structured report held as a derived artifact linked to it.
- Use a text extraction service to transcribe dictated observations, retaining the audio as the authoritative source.
- Populate a structured report template from the captured note, leaving unfilled any field the note does not support.
- Require explicit officer review and attestation before a draft becomes a field report of record.
- Mark which report content came from the note and which the officer added at review, so the derived and attested parts stay distinguishable.
- Preserve the officer's hedging and uncertainty rather than resolving it into definite statements.
- Record report generation, review, and attestation in the append-only activity log.
- Report the interval between activity and attested report, since that interval is what determines contemporaneity.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to draft a structured field report from captured notes and transcribed dictation.
- Populate only fields the source material supports, and leave the rest empty rather than inferring times, names, or sequences.
- Retain the officer's own qualifiers and expressions of uncertainty rather than paraphrasing them into confident prose.
- Cite the passage of the note behind each populated field, so the officer reviews against what they actually recorded.
- Monitor for invented detail specifically, since a fabricated time or name in an attested field report is the failure that carries real consequence.

<p class="eyebrow">Use case</p>

## Extract Information from Authorized Imagery

Field activity produces imagery in volume — photographs of premises, conditions, documents encountered on site, vehicles, and equipment, along with video where an operation warrants it. Much of what matters in that material is information rather than picture: a registration plate, a serial number, a company name on signage, text on a notice, the count and arrangement of items at a location. Extracting those into structured attributes makes the imagery searchable and connects what was observed to the rest of the case.

Imagery captures more than its subject, and that is the constraint. A photograph of a premises records the people who happened to be outside it; footage of a subject records everyone around them. Those third parties are not part of the investigation and have their own privacy interests, so extraction should be scoped to what the authorization covers and incidental material minimized rather than indexed comprehensively. Recognition also errs in ways that matter here — a misread plate or serial number points an investigation at the wrong person or asset — so extracted identifiers are leads to verify against an authoritative register, not facts.

<p class="discovery-label">Discovery questions</p>

- What imagery does field activity produce, and in what volume?
- What information is typically sought from it — identifiers, text, conditions, counts?
- How is that extracted today, and how long does it take?
- What does the authorization cover, and what falls outside it as incidental?
- How are third parties incidentally captured, and what is done about them?
- What is the consequence here of a misread identifier?
- Against what authoritative source would an extracted identifier be verified?

<p class="pattern-label">Implementation pattern</p>

- Scope extraction to the authorization in force, and exclude material and attributes it does not cover.
- Minimize incidental third-party content rather than indexing it, and apply a retention position to it distinct from the investigation's subjects.
- Write extracted attributes to a derived record linked to the image, never modifying the original artifact.
- Verify the image's integrity value before and after processing, so alteration during extraction is detectable.
- Treat every extracted identifier as a lead requiring verification against an authoritative register before it is relied on.
- Retain the region of the image behind each extracted value, so a reviewer can check it in place.
- Index extracted attributes in an entitlement-aware search service, so authorization-based restrictions apply to results.
- Report extraction accuracy on identifiers against verification outcomes, so error rates are measured rather than assumed.

<p class="ai-label">AI opportunity</p>

- Use a vision model to extract text, identifiers, objects, and conditions from authorized imagery, returning them as attributes on a derived record.
- Return the image region and a confidence value with each extraction, so an uncertain reading is visibly uncertain.
- Constrain extraction to the classes the authorization covers, and do not identify or index incidentally captured people.
- Configure the model to return no value rather than a plausible reading where an identifier is partially obscured.
- Evaluate accuracy on identifier characters specifically — plates, serial numbers, account references — since a single wrong character redirects an investigation.

<p class="eyebrow">Use case</p>

## Correlate Field Observations with Case Information

A field observation gains meaning against what the case already holds. A vehicle at a premises may be one a subject is known to use; a person seen entering may already appear as an associate; an address canvassed may match one in a records response; a company name on signage may be a party under examination. Surfacing those connections at the point the observation is recorded lets an officer act while they are still on scene, which is frequently the only moment the connection is actionable.

Correlation is a prompt, not a conclusion. A plate matching a known vehicle establishes that a plate matched, and the observation may be innocent — a shared address, a common name, a coincidental presence. Presented carelessly, a correlation reads as confirmation and can shape how an officer interprets everything that follows, which is a real risk when the person concerned may have no involvement. Proposals should therefore carry what matched and how strongly, stay marked as unconfirmed, and require an investigative step before becoming a recorded relationship.

<p class="discovery-label">Discovery questions</p>

- What would an officer most usefully know at the moment of an observation?
- How would they check an observation against the case record today, and how long would it take?
- Which correlations matter most here — vehicles, people, addresses, organizations?
- What connectivity is available in the field, and what happens without it?
- How would a coincidental match be distinguished from a meaningful one?
- What is the risk of an officer acting on a match that turns out to be coincidence?
- What step should be required before a correlation becomes a recorded relationship?

<p class="pattern-label">Implementation pattern</p>

- Resolve observed entities against the entity register rather than matching on free text, so a correlation rests on resolved identity.
- Return correlations with what matched and the strength of the match, so an officer can weigh a partial match differently from an exact one.
- Present correlations as unconfirmed proposals, visually distinct from recorded relationships.
- Require an investigative step and a recorded basis before a correlation becomes a recorded relationship.
- Enforce entitlements at correlation time, so a match against a restricted matter surfaces its existence and a contact point rather than its content.
- Support correlation against locally cached case data where connectivity is unreliable, with clear indication of cache age.
- Log correlation queries and their results, so field access to case information is auditable.
- Report confirmation rates by correlation type, so a type producing mostly coincidence is retired.

<p class="ai-label">AI opportunity</p>

- Use an entity resolution service to correlate observed people, vehicles, addresses, and organizations against the case record and prior matters.
- Return the specific attributes that matched rather than a similarity score, so an officer evaluates the evidence.
- Suppress correlations resting on attributes too common in the local population to discriminate.
- Keep correlations out of reports and analytical products until an investigator has confirmed them.
- Monitor confirmation rates and watch for correlations concentrating on particular addresses, communities, or name patterns, with a defined review path when they do.

## Architecture

Build toward this shape. It combines the implementation patterns and AI opportunities from the use cases above into one design, and it names no product or vendor. Agree on it before you evaluate any product, because it sets what any product you choose has to do.

Keep AI out of the record of what happened. Models can turn an officer's notes into a usable report and point out connections worth testing. They must never decide what was observed or establish who someone is. Authorization, capture time, integrity, and scope are all computed by rules, because an officer may have to defend each one.

<div class="architecture-stack" aria-label="Logical architecture for Field Investigation and Surveillance Support">
  <section class="architecture-layer architecture-layer--experience">
    <p class="architecture-layer-title"><span>01</span> Experience</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Field capture client</strong><small>Offline-capable capture on a managed device, bound to authorization.</small></div>
      <div><strong>Field coordinator console</strong><small>Deployment picture, check-ins, duress, and deconfliction.</small></div>
      <div><strong>Investigator field review</strong><small>Reports, imagery, correlations, and attestation.</small></div>
    </div>
  </section>
  <section class="architecture-layer">
    <p class="architecture-layer-title"><span>02</span> Field activity core</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Field activity register</strong><small>Activities, participants, and links to lines of inquiry.</small></div>
      <div><strong>Authorization and scope</strong><small>Permitted techniques, geography, duration, and expiry by policy version.</small></div>
      <div><strong>Observation and media capture</strong><small>Notes, imagery, time, location, and precision as captured.</small></div>
      <div><strong>Personnel deployment and safety</strong><small>Assignment, availability, check-ins, and last reported position.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--platform">
    <p class="architecture-layer-title"><span>03</span> Shared solution services</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entitlement service</strong><small>Activity- and item-level access, including officer location data.</small></div>
      <div><strong>Cryptographic integrity service</strong><small>Integrity values computed at capture, verified on access.</small></div>
      <div><strong>Workflow and rules engines</strong><small>Authorization gates, expiry warnings, and check-in escalation.</small></div>
      <div><strong>Search and notification</strong><small>Entitlement-aware search, duress routing, and deconfliction alerts.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--intelligence">
    <p class="architecture-layer-title"><span>04</span> Optional intelligence</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Note to structured report</strong><small>Drafts populated only from what the note supports.</small></div>
      <div><strong>Imagery information extraction</strong><small>Identifiers and text with image regions and confidence retained.</small></div>
      <div><strong>Observation correlation</strong><small>Unconfirmed matches against the register, with attributes shown.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--records">
    <p class="architecture-layer-title"><span>05</span> Data and authoritative systems</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Evidence repository</strong><small>Field imagery and recordings under custody from capture.</small></div>
      <div><strong>Document and attachment store</strong><small>Field notes and attested reports with review history.</small></div>
      <div><strong>Append-only activity log</strong><small>Immutable authorization, capture, and attestation history.</small></div>
      <div><strong>Case data store</strong><small>Cases, lines of inquiry, and entities observations correlate against.</small></div>
    </div>
  </section>
  <aside class="architecture-controls"><strong>Control plane</strong><span>Identity and access · Surveillance authorization · Incidental capture and minimization · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation</span></aside>
</div>

### Baseline and additive components

Build the baseline first, because nearly every use case depends on it. Add each of the other components later, when you commit to the use case that needs it. Do not buy everything up front.

| Component | What it must do | When to build |
| --- | --- | --- |
| Field activity register | Hold activities, authorizations, participants, and captured artifacts | Build first |
| Field capture client | Capture notes, imagery, time, and location offline on a managed device | Build first |
| Field personnel safety tracking | Maintain deployment picture, check-in schedules, and a duress path | Build first |
| Evidence repository | Hold field imagery and recordings write-once with integrity values | Build first |
| Document and attachment store | Retain field notes and attested reports with their review history | Build first |
| Append-only activity log | Record authorization, capture, and attestation events with actor and timestamp | Build first |
| Cryptographic integrity service | Compute integrity values at capture and verify them on access and processing | Build first |
| Entitlement service | Decide what each person may see, including officer location data | Build first |
| Workflow engine | Gate authorized activity and require fresh approval on renewal | Build first |
| Rules engine | Warn ahead of authorization expiry and escalate missed check-ins | Build first |
| Notification and queue service | Route duress signals, check-in escalation, and deconfliction alerts | Build first |
| Policy and authority library | Hold permitted techniques and field procedure with version and effective dates | Build first |
| Resource and capacity data | Show officer availability, qualification, and current deployment | Build first |
| Case data store | Hold the cases, lines of inquiry, and entities field activity serves | Build first |
| Search and retrieval | Search field activity and captured material within the requester's entitlements | Build first |
| Reporting | Report activity-to-report interval, extraction accuracy, and correlation confirmation | Build first |
| Interview recording capture | Capture field interviews under the same consent handling as any other interview | Add where field interviews are conducted |
| Text extraction service | Transcribe dictated observations and read text from imagery | Add to unlock dictation and imagery text |
| Generative model with grounding and citation | Draft structured reports from captured notes | Add to unlock report drafting |
| Entity register | Resolve observed people, vehicles, and organizations against known entities | Add to unlock correlation |
| Entity resolution service | Propose correlations between observations and the case record | Add to unlock correlation |
| Model evaluation and monitoring | Track invented detail, identifier accuracy, and correlation confirmation rates | Add alongside any model component |

Check the authorization at the moment of capture, in the capture app itself. The authorization says what may be done, where, using what technique, and until when, so store it as data the app can check rather than as a signed document. An officer in the field cannot reliably track an expiry date, so the app has to do it. That lets you defend an operation observation by observation, instead of saying an authorization existed somewhere.

Capture notes at the time, on a managed device that works offline. A note written during the activity is worth far more than an account written up days later. The usual problem is the tooling, not the officer: photos on personal phones with no reliable time or place, notebooks typed up the following week, dictation nobody transcribes. Keep the original capture time when the device syncs later, and send imagery straight to the evidence register so custody starts at the moment the photo was taken.
