---
title: Subject, Entity & Relationship Management
summary: Ability to maintain records for people, organizations, and other entities, and represent the relationships among them across investigations.
description: "Ability to maintain records for people, organizations, and other entities, and represent the relationships among them across investigations."
status: Draft
tier: Tier 2 · Practitioner
scope: All
updated: 2026-08-19
owner: Content team
workload: Investigations
parent_title: Investigations
parent_url: /workloads/investigations/
order: 5
sections:
  - Overview
  - Maturity Levels
  - Maintain Entity Records
  - Associate Entities with Cases and Evidence
  - Identify Relationships Across Investigations
  - Extract and Resolve Entities Across Records
  - Suggest Potentially Related Entities
  - Explain Why Entities May Be Connected
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

Ability to maintain records for people, organizations, accounts, assets, locations, vehicles, events, and other entities, associate subjects, witnesses, victims, organizations, evidence, and cases, and identify relationships across investigations.

This capability is the authoritative register of who and what an investigation concerns, and how they connect. It excludes the analytical products built on those relationships, which belong to Investigative Analysis & Intelligence.

## Maturity Levels

| Stage | Typical characteristics |
| --- | --- |
| Not performed | Entities exist only as names typed into individual case narratives. |
| Manual / ad hoc | Investigators maintain their own lists of subjects and organizations per case. |
| Standardized | A defined entity record with consistent identifiers is used across cases. |
| Integrated | Entities are shared records that cases, evidence, and documents reference directly. |
| Automated / optimized | Entity resolution proposes matches and relationships across investigations, with investigators confirming. |

<p class="eyebrow">Use case</p>

## Maintain Entity Records

An entity record holds what the organization knows about a person, organization, account, asset, location, vehicle, or event, along with the identifiers that distinguish it from similar ones — names and known variants, dates of birth, registration and licence numbers, addresses, account numbers. Each attribute needs its own provenance and effective dates, because an address is true for a period rather than absolutely, and because an attribute asserted by a complainant carries different weight from one confirmed against an authoritative register.

The record also has to carry the person's relationship to the investigation, and that is where the care is required. Subject, witness, victim, complainant, and person of interest are different statuses with different implications for how someone may be treated and what may be recorded about them, and a person can hold different statuses in different matters or move between them as facts develop. An entity record is not a finding of wrongdoing, and the design should make that difficult to misread — the record's existence means only that the person appeared in a matter.

<p class="discovery-label">Discovery questions</p>

- Which entity types does this program need to track beyond people and organizations?
- Which identifiers are available and reliable, and which are self-asserted?
- How are name variants, transliterations, and married or former names handled?
- Is an attribute's source and effective date recorded, or only its current value?
- How is a person's status in a matter recorded, and can it differ across matters?
- What prevents an entity record from being read as a finding about the person?
- What rights does a person have to see or correct what is recorded about them, and does the system support that?

<p class="pattern-label">Implementation pattern</p>

- Build an entity register as a shared service that cases, evidence, and documents reference, rather than duplicating entities into each case.
- Model attributes with their own source, effective dates, and confidence, so a value is always traceable to who asserted it and when.
- Support multiple names and identifiers per entity, including variants and historical values, rather than overwriting on change.
- Model a person's status in a matter as a relationship attribute rather than a property of the entity, so status can differ across matters and change over time.
- Use reference data management to hold the entity type and status vocabularies, so they stay consistent across programs.
- Enforce entitlements on entity attributes at read time, since identifiers and addresses are frequently more sensitive than the fact that an entity exists.
- Record every attribute change in the append-only activity log, and support correction as a superseding assertion rather than an overwrite.
- Provide a correction path for a person disputing what is recorded, and record the dispute alongside the value.

<p class="eyebrow">Use case</p>

## Associate Entities with Cases and Evidence

Association is what makes an entity register useful: this person is the subject of that case, that organization employed them at the relevant time, this account received the payments, that device was seized from this address. Each association is a typed relationship with its own basis, effective dates, and source, so a later reader can tell an established employment relationship from one a complainant alleged and nobody has confirmed.

The same discipline that applies to entities applies harder to associations, because an association is a statement about a person's involvement. Linking someone to a case as a subject has consequences for them, and doing it on weak grounds — a name match, an unverified assertion — creates a record that will be read by people who did not make the link and cannot see how thin it was. Associations should therefore carry their basis and their confidence, and removing an incorrect one should leave a trace showing it was made and withdrawn, rather than silently disappearing.

<p class="discovery-label">Discovery questions</p>

- Which relationships between entities and cases matter most in this program?
- Is the basis for an association recorded, or only the association itself?
- How is an alleged relationship distinguished from a confirmed one?
- Do relationships need effective dates — was this person employed there at the relevant time?
- Who may create an association, and does that require any review?
- What happens when an association turns out to be wrong, and is the correction visible?
- How is an association handled when the two sides sit in cases with different access restrictions?

<p class="pattern-label">Implementation pattern</p>

- Model associations as typed relationships with basis, source, confidence, and effective dates, rather than as untyped links.
- Distinguish asserted relationships from confirmed ones, and require a source on either.
- Evaluate entitlements on both sides of a relationship at read time, so an association can be visible without exposing content the viewer cannot open.
- Record association creation, amendment, and removal in the append-only activity log, so a withdrawn link remains reconstructable.
- Use a workflow engine to require review before associating a person to a matter as a subject, where the program's policy warrants it.
- Support relationships between entities as well as to cases — employment, ownership, control, residence, familial — since those carry most of the investigative value.
- Report association volume and withdrawal rates, so a program creating links it later retracts can see that pattern.

<p class="eyebrow">Use case</p>

## Identify Relationships Across Investigations

The value of a shared register is that it makes connections visible that no single case could reveal. The same subject appears in three matters across two program areas, one vendor recurs across unrelated procurement complaints, several apparently separate cases share an address or a bank account. Surfacing these lets an investigator judge whether the matter in front of them is isolated or part of something larger, and lets an organization see patterns that its case-by-case structure would otherwise hide.

Cross-investigation visibility is also the point at which access control matters most. A connection to a restricted matter — an internal affairs case, a sealed proceeding, a matter another organization is working — has to be handled so that a legitimate lead is not lost while restricted content stays protected. The workable pattern is usually to surface that a connection exists and route the requester to whoever can act on it, rather than either exposing the content or hiding the connection entirely. Which of those a program chooses is a policy decision that should be made explicitly rather than falling out of a default.

<p class="discovery-label">Discovery questions</p>

- Can investigators see today that a subject appears in another program area's matters?
- What would happen if they could — is there policy governing that visibility?
- Which connection types are most valuable in this program — shared subjects, addresses, accounts, devices?
- How are restricted matters handled when they connect to an unrestricted one?
- Who decides whether a connection to a restricted matter is disclosed, and how quickly?
- How far back should cross-investigation comparison reach, including closed matters?
- What is the risk of investigators seeing connections they should not, and how is it currently managed?

<p class="pattern-label">Implementation pattern</p>

- Use a graph query service to traverse relationships across matters, so multi-step connections are discoverable rather than requiring an investigator to already suspect them.
- Enforce entitlements at traversal time, evaluating every node and edge against the requester rather than filtering results afterward.
- Support a referral pattern where a connection to restricted material surfaces its existence and a contact point, without exposing content.
- Make the disclosure position an explicit configuration per matter classification, so the policy is stated rather than emergent.
- Include closed and declined matters in cross-investigation comparison, since a pattern often only appears once earlier matters are counted.
- Log cross-matter queries and their results, so access to connection information is auditable in the same way as content access.
- Report recurring cross-matter connections at the program level, so systemic patterns reach oversight rather than staying with whoever noticed them.

<p class="eyebrow">Use case</p>

## Extract and Resolve Entities Across Records

Entities enter the register from unstructured sources — complaints, interview reports, records responses, evidence content — where they appear as names in narrative rather than as structured references. Extraction identifies them; resolution decides whether a mention corresponds to an entity already on file or to a new one. That second step is the hard one, and it is hard in both directions: the same person appears as Robert, Bob, and R. Smith across three documents, while two genuinely different people share a common name and a city.

Resolution errors are not symmetric in their consequences. A missed match leaves two records for one person, which is inefficient and eventually noticed. A false match attaches one person's history to another — their prior allegations, their associates, their record — inside a system whose readers will reasonably assume it is accurate. That is a serious harm to someone who may have no involvement in the matter at all and no way to know the link was made, which is why resolution proposes and a person decides, and why the merge has to be reversible.

<p class="discovery-label">Discovery questions</p>

- Where do entity mentions originate — complaints, interviews, records responses, evidence?
- How are entities entered today, and how much duplication has accumulated?
- Which identifiers are strong enough to resolve on, and which are merely suggestive?
- How common are shared names in the population this program deals with?
- What review currently precedes merging two records?
- Has a wrong match ever occurred, and how was it discovered and corrected?
- Could a merge be reversed today if it turned out to be wrong?

<p class="pattern-label">Implementation pattern</p>

- Use an entity resolution service to propose matches, and require human confirmation before any merge takes effect.
- Model a merge as a reversible link between records rather than a destructive rewrite, so an incorrect merge can be undone with both histories intact.
- Preserve every source record and its provenance through a merge, so it stays possible to see what each source actually asserted.
- Require identifier-based evidence rather than name similarity alone before a match is proposed for a person.
- Present the attributes that drove the proposal and those that conflict, so the reviewer sees the disagreement as well as the agreement.
- Tune resolution toward proposing candidates for review rather than auto-merging, and set thresholds against false-match cost rather than overall accuracy.
- Record every merge and unmerge in the append-only activity log with actor, basis, and timestamp.
- Report merge and unmerge rates, and review a sample of confirmed merges, since a false match is not self-announcing.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to extract entity mentions from narrative records and propose them for resolution against the register.
- Retain the source passage for every extracted mention, so a reviewer verifies the entity in the text that produced it.
- Use the entity resolution service, not the model, for the match decision, so resolution stays explainable in terms of the attributes compared.
- Configure extraction to return an explicit no-value where a mention is ambiguous, rather than resolving it to the nearest plausible entity.
- Monitor false-match rate specifically, and treat overall accuracy as the less informative measure given the asymmetric harm.

<p class="eyebrow">Use case</p>

## Suggest Potentially Related Entities

Beyond resolving whether two records describe the same entity, a register can propose that two different entities are connected — an individual and a company sharing a registered address, accounts that transact only with each other, people who appear together across multiple unrelated matters. These proposals point an investigator at connections worth examining, particularly in matters where the relevant structure is deliberately obscured.

The proposals are leads, and the distance between a lead and a finding has to stay visible. A shared address may indicate a shell arrangement or two tenants of the same building; co-occurrence across matters may indicate association or coincidence in a small community. The risk is that a proposal, once displayed, acquires the authority of the system that displayed it and gets repeated downstream as though it were established. Proposals should therefore be marked as such, carry their basis, and not be promoted into confirmed relationships without an investigative step that justifies it.

<p class="discovery-label">Discovery questions</p>

- What kinds of hidden connection matter most in this program — common control, shared addresses, transaction patterns?
- How would an investigator surface such a connection today, and how long would it take?
- What base rates apply — how common is a shared address or a shared surname in this population?
- What would an investigator need to see to judge whether a proposal is worth pursuing?
- How would a proposal be prevented from being repeated downstream as an established fact?
- What investigative step should be required before a proposal becomes a recorded relationship?
- What is the consequence of pursuing a proposed connection that turns out to be coincidence?

<p class="pattern-label">Implementation pattern</p>

- Keep proposed relationships in a separate state from recorded ones, and render them so the distinction is unmistakable.
- Require an investigative step and a recorded basis before a proposal is promoted to a recorded relationship.
- Present the evidence behind each proposal alongside how common that pattern is, so a shared address is read against how many entities share addresses generally.
- Exclude proposals from downstream products — summaries, analytical outputs, reports — unless they have been confirmed.
- Log which proposals were pursued, confirmed, and dismissed, so proposal usefulness is measurable rather than assumed.
- Report the confirmation rate by proposal type, and retire a proposal type that consistently produces coincidence.

<p class="ai-label">AI opportunity</p>

- Use an entity resolution service with graph analysis to propose non-obvious connections — shared attributes, transaction structure, or repeated co-occurrence across matters.
- Return the specific shared attributes behind each proposal rather than a similarity score, so an investigator evaluates the evidence.
- Suppress proposals that rest on attributes too common to be discriminating in the relevant population.
- Keep proposals out of any generated summary or analytical product until an investigator has confirmed them.
- Monitor the confirmation rate and watch for proposals concentrating on particular communities or name patterns, with a defined path for review when they do.

<p class="eyebrow">Use case</p>

## Explain Why Entities May Be Connected

A connection an investigator cannot evaluate is a connection they will either over-trust or ignore, and both are failures. A relationship summary states what links two entities and on what basis — the shared identifiers, the intermediate entities on the path, the matters in which they co-occur, and the dates over which the connection held — so the investigator can judge the strength of the link rather than accepting or discarding it on impression.

The explanation has to describe the record, not interpret it. Stating that two people share a registered address across a period is a description of what the register holds; characterizing that as concealment is an investigative conclusion. Keeping the summary to the former means it can be relied on as a starting point, and means what an investigator writes afterward is their own reasoning rather than a restatement of the system's. Every element of an explanation should cite the record that supports it, so any part can be checked.

<p class="discovery-label">Discovery questions</p>

- How does an investigator today assess whether a connection is meaningful?
- What would need to appear in an explanation for it to be useful rather than decorative?
- How should the strength of a multi-step connection be conveyed?
- Where is the line in this program between describing a relationship and characterizing it?
- What citation would an investigator need before relying on an explanation in their work?
- Do relationship summaries ever end up in reports, and should they?
- How would an explanation built on a wrong underlying link be caught?

<p class="pattern-label">Implementation pattern</p>

- Generate explanations from recorded relationships and their attributes, so an explanation can never assert a connection the register does not hold.
- Cite the specific records and attributes supporting every element of an explanation.
- Show the full path for a multi-step connection, including intermediate entities, rather than asserting that two endpoints are related.
- Include the dates over which a connection held, so a relationship that ended years before the conduct is visibly so.
- Enforce the requester's entitlements at generation time, so an explanation cannot reveal a restricted intermediate node.
- Keep explanations descriptive, and exclude characterization of intent, concealment, or wrongdoing.
- Keep generated explanations in a working state distinct from case work product, requiring a deliberate logged action to place one in the record.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to compose relationship summaries from recorded entities, relationships, and their attributes.
- Ground every statement in a cited record, and exclude anything the register does not hold from the summary.
- Configure the model to describe the connection and stop, leaving intent and significance to the investigator.
- Include proposed but unconfirmed relationships only when explicitly marked as such, or exclude them entirely.
- Monitor summaries for characterization creep, since the drift from describing a shared address to implying concealment is exactly the failure that matters here.

## Architecture

Build toward this shape. It combines the implementation patterns and AI opportunities from the use cases above into one design, and it names no product or vendor. Agree on it before you evaluate any product, because it sets what any product you choose has to do.

Keep AI out of the match decision. Models can pull names out of narrative text and write descriptions of relationships already recorded. The entity resolution service makes the actual match, by comparing attributes you can inspect, with a person confirming it. Nothing in the AI layer records a relationship on its own.

<div class="architecture-stack" aria-label="Logical architecture for Subject, Entity and Relationship Management">
  <section class="architecture-layer architecture-layer--experience">
    <p class="architecture-layer-title"><span>01</span> Experience</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Investigator entity view</strong><small>Entity, its attributes, and its matters at the point of work.</small></div>
      <div><strong>Relationship explorer</strong><small>Paths between entities with the basis for each hop.</small></div>
      <div><strong>Entity steward workspace</strong><small>Match confirmation, merges, unmerges, and corrections.</small></div>
    </div>
  </section>
  <section class="architecture-layer">
    <p class="architecture-layer-title"><span>02</span> Entity and relationship core</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entity register</strong><small>Canonical records with sourced, effective-dated attributes.</small></div>
      <div><strong>Identity resolution</strong><small>Candidate matches, thresholds, and reversible merges.</small></div>
      <div><strong>Relationship model</strong><small>Typed links with basis, confidence, and effective dates.</small></div>
      <div><strong>Proposal and provenance history</strong><small>Proposed versus recorded, and every merge and withdrawal.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--platform">
    <p class="architecture-layer-title"><span>03</span> Shared solution services</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entitlement service</strong><small>Attribute- and matter-scoped access enforced at read time.</small></div>
      <div><strong>Graph query service</strong><small>Traversal across matters with entitlements applied per hop.</small></div>
      <div><strong>Workflow and rules engines</strong><small>Merge review, subject association gates, and proposal thresholds.</small></div>
      <div><strong>Search and notification</strong><small>Entitlement-aware search and routing of match proposals.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--intelligence">
    <p class="architecture-layer-title"><span>04</span> Optional intelligence</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Entity extraction</strong><small>Mentions drawn from narrative with source passages retained.</small></div>
      <div><strong>Connection proposal</strong><small>Non-obvious links offered with their shared attributes.</small></div>
      <div><strong>Relationship explanation</strong><small>Descriptive summaries composed from cited records.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--records">
    <p class="architecture-layer-title"><span>05</span> Data and authoritative systems</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entity data store</strong><small>Entities, attributes, relationships, and merge history.</small></div>
      <div><strong>Append-only activity log</strong><small>Immutable attribute, association, and merge history.</small></div>
      <div><strong>Reference data</strong><small>Entity type, status, and relationship type vocabularies.</small></div>
      <div><strong>Case data store</strong><small>Cases and evidence the register links entities to.</small></div>
    </div>
  </section>
  <aside class="architecture-controls"><strong>Control plane</strong><span>Identity and access · Record correction and redress · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation</span></aside>
</div>

### Baseline and additive components

Build the baseline first, because nearly every use case depends on it. Add each of the other components later, when you commit to the use case that needs it. Do not buy everything up front.

| Component | What it must do | When to build |
| --- | --- | --- |
| Entity register | Hold canonical entities with sourced, effective-dated attributes and identifiers | Build first |
| Entity data store | Store entities, attributes, relationships, and merge history | Build first |
| Append-only activity log | Record every attribute, association, and merge change with actor and timestamp | Build first |
| Entitlement service | Decide what each person may see at attribute and matter granularity | Build first |
| Workflow engine | Gate merges and subject associations behind a recorded review where policy requires | Build first |
| Rules engine | Evaluate match thresholds, proposal suppression, and required-review conditions | Build first |
| Notification and queue service | Route match proposals and correction requests to the right steward | Build first |
| Reference data management | Maintain entity type, status, and relationship type vocabularies | Build first |
| Case data store | Hold the cases and evidence the register associates entities with | Build first |
| Search and retrieval | Search entities and attributes within the requester's entitlements | Build first |
| Reporting | Report merge and unmerge rates, proposal confirmation rates, and correction volumes | Build first |
| Entity resolution service | Propose candidate matches with the attributes that agree and conflict | Add to unlock assisted resolution |
| Graph query service | Traverse relationships across matters with entitlements applied per hop | Add to unlock cross-investigation discovery |
| Prior matter history | Make closed and declined matters available for cross-investigation comparison | Add to unlock connections spanning closed work |
| Generative model with grounding and citation | Extract mentions from narrative and compose cited relationship summaries | Add to unlock extraction and explanation |
| Model evaluation and monitoring | Track false-match rate, proposal confirmation, and disparate effect | Add alongside any model component |

Build one entity register and have cases, evidence, and documents point at it. Every capability on this site already assumes it exists: intake, case management, and evidence all say to store subjects and entities as records that several matters can reference. This capability is that component. Stand it up as its own service and the organization can recognize the same person across every case system it runs, and well beyond investigations.

Design merges so you can always undo them. Keep the source records and their provenance intact through a merge, so an unmerge restores both sides completely. The two errors are not equally serious. A missed match wastes effort, and someone eventually notices. A false match attaches one person's history to another in a system whose readers assume it is correct. Merges performed destructively cannot be made reversible afterwards.
