---
title: Evidence Management & Chain of Custody
summary: Ability to register physical and digital evidence and maintain its provenance, custody, and access controls.
description: "Ability to register physical and digital evidence and maintain its provenance, custody, and access controls."
status: Draft
tier: Tier 2 · Practitioner
scope: All
updated: 2026-08-19
owner: Content team
workload: Investigations
parent_title: Investigations
parent_url: /workloads/investigations/
order: 9
sections:
  - Overview
  - Maturity Levels
  - Collect and Register Evidence
  - Document Provenance, Custody, and Disposition
  - Maintain Chain of Custody and Access Controls
  - Associate Evidence with Cases and Subjects
  - Classify and Enrich Digital Evidence
  - Extract Entities and Searchable Content from Evidence
  - Detect Duplicate or Related Evidence
  - Identify Missing Custody Documentation
  - Architecture
  - Microsoft Technology Mapping
related:
  - type: Workload
    title: Investigations
    url: /workloads/investigations/
    relationship: HAS_CAPABILITY
    summary: The broader workload this capability supports.
sources: []
---

## Overview

Ability to collect and register physical and digital evidence, document provenance, possession, transfer, storage, examination, and disposition, maintain chain of custody and evidence access controls, and associate evidence with subjects, allegations, events, and cases.

This capability is the authoritative record of what evidence exists, where it has been, and who has handled it. It excludes analysis of what the evidence shows, which belongs to the analytical capabilities that draw on it.

## Maturity Levels

| Stage | Typical characteristics |
| --- | --- |
| Not performed | Evidence is retained without a consistent register or custody record. |
| Manual / ad hoc | Paper custody forms travel with the item and are filed separately from the case. |
| Standardized | Every item is registered with a unique identifier and an unbroken custody record. |
| Integrated | Evidence records link to cases, subjects, and events, with access controlled per item. |
| Automated / optimized | Digital evidence is classified and made searchable on ingest, with custody gaps flagged for review. |

<p class="eyebrow">Use case</p>

## Collect and Register Evidence

Registration establishes the item as evidence: a unique identifier, a description sufficient to distinguish it from similar items, the date, time, and location it was obtained, the authority it was obtained under, and the person who took possession. For physical items this means tagging and packaging at the point of seizure. For digital material it means a forensically sound acquisition — a write-blocked image, an exported mailbox, a downloaded server log — captured with the tooling and process the organization can later defend, alongside a cryptographic hash computed at the moment of acquisition.

The gap between seizure and registration is where chain of custody most often fails in practice. An item photographed at a site visit and entered into the system three days later has an unexplained three-day hole, and no amount of later diligence closes it. Registration should therefore happen at the point of collection, on whatever device is available in the field, with the record synchronizing when connectivity returns rather than waiting for someone to return to the office.

<p class="discovery-label">Discovery questions</p>

- What kinds of evidence does this program collect — physical items, devices, exported records, media, or all of these?
- Where does registration happen today, and how long after collection?
- What authority is evidence collected under, and is that recorded per item?
- How is digital evidence acquired, and is the process one the organization could defend if challenged?
- Is a hash computed at acquisition, and by what tool?
- What happens when evidence is collected somewhere with no connectivity?
- Who is permitted to take initial custody, and what training or certification does that require?

<p class="pattern-label">Implementation pattern</p>

- Configure the evidence repository to issue a unique item identifier at the point of collection, not at the point of office intake.
- Capture the collecting person, date, time, location, and the authority relied on as required fields on registration.
- Compute a cryptographic hash at acquisition for every digital item and store it separately from the artifact it describes.
- Support offline field registration that synchronizes on reconnection, so an unavoidable delay in transmission does not become an unexplained gap in custody.
- Model physical and digital items in one register with a shared identifier scheme, so a case's evidence inventory is complete rather than split by medium.
- Record the acquisition method and tooling for digital evidence, so the process can be described and defended later.
- Write registration to the append-only activity log as the first custody entry, and treat it as the origin of the item's chain.

<p class="eyebrow">Use case</p>

## Document Provenance, Custody, and Disposition

Every subsequent event in an item's life has to be recorded: transfer between people, movement between storage locations, release to a laboratory for examination and its return, production to counsel or a court, and eventual disposition — returned to its owner, destroyed, or retained. Each entry needs who, what, when, from where, to where, and why, and each transfer needs both sides recorded so possession is never ambiguous about who held the item at a given moment.

The record has to be continuous, and continuity is what makes it useful. A custody log with an unexplained interval invites the argument that the item could have been altered during it, and that argument is made against the investigation rather than against the record-keeping. Correction therefore has to work by superseding entry rather than by edit — a mistaken transfer entry is corrected by a new entry explaining the error, never by changing the original, because a custody log that can be edited is not evidence of anything.

<p class="discovery-label">Discovery questions</p>

- What custody events are recorded today, and on paper or in a system?
- How is a transfer recorded — by the person releasing, the person receiving, or both?
- Where is evidence stored, and how many distinct storage locations exist?
- What happens when an item goes to an external laboratory or partner organization for examination?
- How are corrections to a custody record handled today?
- What triggers disposition, and who authorizes it?
- Could the program produce a complete custody history for an item seized three years ago?

<p class="pattern-label">Implementation pattern</p>

- Model every custody event as an append-only entry with actor, timestamp, origin, destination, and reason, and never permit an entry to be edited.
- Record corrections as new superseding entries that reference the entry they correct, so the error and its correction both remain visible.
- Require both release and receipt to be recorded on a transfer, so possession is unambiguous at every moment.
- Track storage location as a structured hierarchy — facility, room, container, position — rather than as free text.
- Model examination as a custody event with an expected return, so an item at a laboratory is visibly outstanding rather than simply absent.
- Use a workflow engine to gate disposition behind a recorded authorization, and to block disposition while a legal hold applies.
- Record disposition with its method, witness where required, and the authority relied on, so the item's chain is closed rather than simply ending.

<p class="eyebrow">Use case</p>

## Maintain Chain of Custody and Access Controls

Chain of custody is the assertion that an item is what it purports to be and has not been altered since it was obtained. Maintaining it means keeping the custody record continuous and demonstrating the item's integrity — for digital evidence, by verifying its hash against the value recorded at acquisition whenever it is accessed or transferred, and for physical items, through tamper-evident packaging and seal records that make interference visible.

Access control operates at the item, not at the case. A person cleared to work a case may still be excluded from a particular item — material subject to a protective order, evidence implicating a colleague in an internal matter, content whose handling requires specific certification. Working copies matter here too: examination should proceed against a verified copy while the original stays sealed, and the record should show which copy was examined and that it verified against the original before the work began.

<p class="discovery-label">Discovery questions</p>

- How is the integrity of a digital item verified today, and at what points?
- What tamper-evident measures are used for physical items, and are seal numbers recorded?
- Is evidence access controlled per item, or does case access imply access to everything in the case?
- Which categories of evidence require restricted handling, and on what basis?
- Do examinations work from originals or from verified copies?
- What happens when a hash verification fails, and who is notified?
- How would the organization demonstrate that an item was not altered while in its possession?

<p class="pattern-label">Implementation pattern</p>

- Use a cryptographic integrity service to verify a digital item's hash on every access, transfer, and export, and record each verification as a custody event.
- Configure a failed verification to raise an immediate alert and lock the item pending review, rather than logging quietly.
- Enforce access at item granularity through the entitlement service, so case access never implies access to every item within the case.
- Model working copies as derived items linked to their original, and record the verification that preceded the copy.
- Keep originals sealed and examine copies, so an examination cannot alter the authoritative artifact.
- Record tamper-evident seal numbers on physical items and verify them at each transfer.
- Store integrity values separately from the artifacts they describe, so a single compromised store cannot produce a self-consistent alteration.
- Report verification failures and restricted-item access attempts, so integrity problems surface as a program signal rather than a per-item incident.

<p class="eyebrow">Use case</p>

## Associate Evidence with Cases and Subjects

Evidence acquires meaning from what it connects to. An item links to the case it was collected under, the subjects and entities it concerns, the allegation it bears on, the event it documents, and often to other items — a device and the image taken from it, a document and the interview in which it was discussed. Recording these associations is what lets an investigator find the material relevant to a question rather than reading the whole inventory, and what lets a report of investigation cite the specific item supporting each finding.

Association is complicated by the fact that one item can serve several matters, and that the matters may have different access rules. A device seized in one case may hold material relevant to a second case whose team is not cleared for the first. The association model therefore has to express that a relationship exists while still enforcing each side's restrictions on the content, so a legitimate connection is visible to the people entitled to act on it without becoming a route around the controls on either case.

<p class="discovery-label">Discovery questions</p>

- Which relationships need to be represented — to cases, subjects, allegations, events, or other items?
- How would an investigator today find every item bearing on a particular allegation?
- How often does one item serve more than one case, and how is that handled?
- What happens when a linked case has access restrictions the requester does not meet?
- How are derived items — images, extractions, working copies — related back to their source?
- How does a finding in a report cite the evidence supporting it?
- Who may create or remove an association, and is that recorded?

<p class="pattern-label">Implementation pattern</p>

- Model associations as typed relationships to cases, subjects, entities, allegations, events, and other items, rather than as descriptive text on the item.
- Store subjects and entities as records the evidence register references, shared with the case system rather than duplicated.
- Allow an item to associate with multiple cases, and evaluate entitlements per case at read time so each case's restrictions continue to apply.
- Surface the existence of a cross-case association without exposing content the viewer is not cleared to open.
- Link derived items to their source item explicitly, so an extraction can always be traced back to the device it came from.
- Record association creation and removal in the append-only activity log with actor and basis.
- Support citation of a specific item and location within it, so findings can reference evidence precisely.

<p class="eyebrow">Use case</p>

## Classify and Enrich Digital Evidence

Digital evidence arrives in volumes and formats that resist manual handling: a mailbox export with two hundred thousand messages, a phone extraction spanning years of activity, a share drive with no consistent naming, hours of body-worn or surveillance footage. Before any of it can be worked, it needs to be typed, described, and given the metadata that makes it addressable — file type and format, creation and modification dates, device or account of origin, duration and participants for media, language for documents.

Enrichment is a preparatory step and should be recorded as one. Metadata proposed by a model is a characterization of the evidence, not part of it, and needs to remain distinguishable from metadata carried by the artifact itself. The original must never be modified by enrichment — no rewritten timestamps, no normalized filenames, no embedded tags — because an artifact altered by the system that ingested it has an integrity problem that is unnecessary and entirely avoidable.

<p class="discovery-label">Discovery questions</p>

- What volume and variety of digital evidence does this program handle in a typical matter?
- What has to be known about an item before an investigator can decide whether it is relevant?
- Which formats are most common, and are any of them proprietary or difficult to process?
- How is digital evidence described today, and by whom?
- How long does it currently take from ingestion to the point where evidence is workable?
- Where does derived metadata need to be distinguishable from metadata the artifact carried?
- What would the consequence be if enrichment altered an original artifact?

<p class="pattern-label">Implementation pattern</p>

- Treat ingested artifacts as immutable and write all derived metadata to a separate record linked to the item.
- Verify the item's hash before and after enrichment, so any modification to the original is detected immediately.
- Distinguish metadata carried by the artifact from metadata derived by the system, and label each with its source.
- Configure enrichment to run as a recorded processing event with its tooling and version, so results can be reproduced.
- Queue large acquisitions for background processing and show ingestion progress, so an investigator knows what is workable and what is still landing.
- Report ingestion-to-workable elapsed time by evidence type, since that interval is what determines whether investigators wait on the system.

<p class="ai-label">AI opportunity</p>

- Use classification to type and describe incoming digital evidence — document, correspondence, financial record, imagery, media — so large acquisitions become addressable without manual triage.
- Enrich media with derived attributes such as duration, speakers, and language, and imagery with detected objects and text, as proposals attached to the item record.
- Write every derived value as a labeled characterization distinct from the artifact's own metadata, never back into the artifact.
- Monitor classification accuracy by evidence type, and route low-confidence items to human description rather than accepting a weak label.

<p class="eyebrow">Use case</p>

## Extract Entities and Searchable Content from Evidence

Evidence that cannot be searched is evidence nobody will find. Scanned documents, photographed pages, audio recordings, and video all hold content that is invisible to search until it is transcribed or recognized, and a case whose material sits unsearchable effectively limits the investigation to what someone happened to open. Extraction produces a searchable text layer alongside each item, and pulls out the entities within it — people, organizations, accounts, addresses, dates, amounts, identifiers — so an investigator can ask which items mention a particular account rather than opening files until one does.

Extracted text is a derived representation and never replaces the original. Recognition and transcription both make errors, and they make them disproportionately on exactly the content that matters most — names, account numbers, dates — so a search result is a pointer to the source rather than a substitute for reading it. Anything relied on in a finding should be verified against the original artifact, and the extraction's tooling and version should be recorded so a disputed passage can be reproduced or re-run.

<p class="discovery-label">Discovery questions</p>

- What proportion of evidence is currently unsearchable — scans, photographs, audio, video?
- How does an investigator find a specific fact across a large body of evidence today?
- Which entity types would be most useful to extract in this program?
- What accuracy would be needed on names and identifiers for extraction to be trusted?
- Do recordings and documents arrive in more than one language?
- How would an investigator verify an extracted passage against its original?
- What happens if a finding rests on a mis-transcribed passage?

<p class="pattern-label">Implementation pattern</p>

- Use a text extraction service to produce a searchable text layer for scanned documents, imagery, and recordings at ingestion.
- Store extracted text as a derived representation linked to the item, leaving the original artifact untouched.
- Record the extraction tooling and version on every derived representation, so a disputed passage can be reproduced.
- Index extracted content in an entitlement-aware search service, so item-level restrictions apply to search results as they do to direct access.
- Return search results as pointers into the source artifact at a specific location, so verification takes one action.
- Preserve confidence and alternatives from recognition where the tooling provides them, so an uncertain passage is visibly uncertain.
- Report extraction coverage by evidence type, so material that silently failed to process is visible rather than assumed searchable.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to extract people, organizations, accounts, locations, dates, amounts, and identifiers from evidence content, and resolve them against existing entity records.
- Retain the source location for every extracted entity, so each one is verifiable in place against the original.
- Treat extraction output as an index into the evidence, never as a statement of what the evidence establishes.
- Configure extraction to return an explicit no-value rather than a plausible guess where content is illegible or ambiguous.
- Monitor extraction accuracy on names and identifiers specifically, since those carry the consequence and are where recognition fails most.

<p class="eyebrow">Use case</p>

## Detect Duplicate or Related Evidence

The same material reaches an investigation repeatedly. A document is produced by two custodians in response to separate requests, an email exists in the sender's mailbox and three recipients', a file is recovered both from a device image and from a server backup. Exact duplicates are identifiable by hash and can be collapsed to a single reviewable item with every source recorded — which is straightforward, and which removes a large fraction of review effort in any matter involving bulk digital collection.

Related evidence is the harder and more valuable case: near-duplicates such as successive drafts of a document, an email and its forwarded copy with added commentary, or the same photograph at different resolutions. These are not duplicates and must not be collapsed, because the differences between them are frequently the point — what changed between drafts, what was added when the message was forwarded. Grouping them for review while preserving each as a distinct item gives the investigator the comparison without discarding the evidence.

<p class="discovery-label">Discovery questions</p>

- How much duplication is typical in this program's evidence collections?
- Is deduplication performed today, and at what point in the process?
- What distinguishes a duplicate from a related item in this program's practice?
- How are successive drafts or forwarded messages currently handled in review?
- What must be preserved about every source of a collapsed duplicate?
- Should evidence be compared across cases, and what would permit that?
- What would the consequence be of collapsing two items that were meaningfully different?

<p class="pattern-label">Implementation pattern</p>

- Use the cryptographic integrity service to identify exact duplicates by hash at ingestion, before items enter review.
- Collapse exact duplicates into a single reviewable item while preserving every source, custodian, and acquisition as separate custody records.
- Present near-duplicates as a review group rather than a merge, so each item remains distinct and comparable.
- Show what differs between grouped items, so the investigator sees the change rather than inferring it.
- Never deduplicate across custody boundaries in a way that loses which custodian produced which copy, since that provenance is often itself evidence.
- Evaluate cross-case comparison against each case's entitlements at read time, so a match can be surfaced without exposing restricted content.
- Report deduplication ratio and grouping volume by matter, so review effort saved is measurable.

<p class="ai-label">AI opportunity</p>

- Use an entity resolution service with content similarity to propose near-duplicate and related evidence that hash comparison cannot detect.
- Explain each proposed relationship — shared content, common entities, sequential versions — so the investigator judges the grouping rather than accepting it.
- Tune toward grouping for review rather than collapsing automatically, and keep every merge of distinct items a confirmed human decision.
- Monitor grouping precision, since a wrong collapse removes evidence from review, which is considerably harder to detect than a missed duplicate.

<p class="eyebrow">Use case</p>

## Identify Missing Custody Documentation

Custody records fail in recognizable ways: a transfer recorded as released but never received, an item at a laboratory long past its expected return, a registration missing the authority it was collected under, an item with no recorded location, or a seal number that was never captured. Detecting these while the matter is open is what allows them to be corrected or explained. Discovering them at trial, when the item is being offered and its chain is examined, is not a records problem but an evidentiary one.

Detection has to be deterministic and continuous, because these are structural conditions rather than judgments — an unmatched transfer either exists or it does not. Flags prompt review rather than declaring a failure, since a legitimate explanation often exists, and resolving one should attach the explanation to the item so the same gap is not raised repeatedly. What the program should not do is treat the absence of flags as proof of a clean chain; the rules only find what they were written to look for.

<p class="discovery-label">Discovery questions</p>

- What custody documentation is mandatory in this program, and where is that defined?
- How would an incomplete custody record be discovered today, and at what point?
- Which gaps occur most often, and do they cluster around particular processes or locations?
- How long do items typically stay at an external laboratory, and how is an overdue return noticed?
- Who is accountable for correcting a custody gap once it is identified?
- What review of custody records happens before evidence is produced or offered?
- Has an evidentiary challenge ever turned on a custody gap in this program?

<p class="pattern-label">Implementation pattern</p>

- Use a rules engine to evaluate every item against required custody documentation — matched transfers, recorded location, collection authority, seal numbers, and expected returns.
- Run evaluation both on a schedule and on custody events, so a new transfer immediately re-tests the item it concerns.
- Route flags to the assigned custodian and the case investigator, since a gap usually needs both to resolve.
- Require a recorded explanation to resolve a flag, and attach it to the item so the same gap is not re-raised.
- Escalate unresolved gaps ahead of any production, disposition, or evidentiary proceeding involving the item.
- Report gap rates by type, location, and process, so systemic causes are addressed rather than individual items patched.
- Treat rule coverage as reviewable — record which conditions are tested, so the absence of flags is not mistaken for a verified chain.

<p class="ai-label">AI opportunity</p>

- Use detection to surface anomalous custody patterns that fixed rules do not anticipate — transfers at unusual hours, items repeatedly moved without examination, or sequences that deviate from the program's normal handling.
- Keep deterministic rules as the authority for required documentation, and use anomaly detection only to raise conditions nobody wrote a rule for.
- Present each anomaly with the comparable normal pattern, so a reviewer can judge whether the deviation matters.
- Monitor false-positive rates closely, since custody flags that prove routinely meaningless are the fastest way to train custodians to dismiss them.

## Architecture

Build toward this shape. It combines the implementation patterns and AI opportunities from the use cases above into one design, and it names no product or vendor. Agree on it before you evaluate any product, because it sets what any product you choose has to do.

Keep AI out of the evidence record itself. Models can sort evidence into types, describe it, make its contents searchable, and group items that look alike. They must never change the item, the custody record, or the integrity values. Everything that makes evidence admissible is computed by rules, not by a model.

<div class="architecture-stack" aria-label="Logical architecture for Evidence Management and Chain of Custody">
  <section class="architecture-layer architecture-layer--experience">
    <p class="architecture-layer-title"><span>01</span> Experience</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Field collection capture</strong><small>Registration at the point of seizure, offline-capable.</small></div>
      <div><strong>Evidence custodian workspace</strong><small>Transfers, storage, seals, examinations, and disposition.</small></div>
      <div><strong>Investigator evidence view</strong><small>Case inventory, search, and citation into source artifacts.</small></div>
    </div>
  </section>
  <section class="architecture-layer">
    <p class="architecture-layer-title"><span>02</span> Evidence and custody core</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Evidence item register</strong><small>Identifier, description, collection authority, and acquisition method.</small></div>
      <div><strong>Custody chain</strong><small>Append-only transfer, examination, and disposition events.</small></div>
      <div><strong>Storage and location</strong><small>Facility, container, position, seals, and expected returns.</small></div>
      <div><strong>Evidence relationships</strong><small>Cases, subjects, allegations, events, and derived items.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--platform">
    <p class="architecture-layer-title"><span>03</span> Shared solution services</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entitlement service</strong><small>Item-level access enforced wherever content is read.</small></div>
      <div><strong>Cryptographic integrity service</strong><small>Hash at acquisition, verify on every access and transfer.</small></div>
      <div><strong>Workflow and rules engines</strong><small>Disposition gates, legal hold, and custody gap evaluation.</small></div>
      <div><strong>Search and notification</strong><small>Entitlement-aware search over extracted content, and alerting.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--intelligence">
    <p class="architecture-layer-title"><span>04</span> Optional intelligence</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Classification and enrichment</strong><small>Evidence typed and described as labeled derived metadata.</small></div>
      <div><strong>Entity and content extraction</strong><small>Searchable text and entities with source locations retained.</small></div>
      <div><strong>Near-duplicate grouping</strong><small>Related items grouped for review, never collapsed automatically.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--records">
    <p class="architecture-layer-title"><span>05</span> Data and authoritative systems</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Evidence repository</strong><small>Write-once artifact storage with legal hold and retention.</small></div>
      <div><strong>Append-only activity log</strong><small>Immutable custody history with actor and timestamp.</small></div>
      <div><strong>Case data store</strong><small>Cases, subjects, and entities the register references.</small></div>
      <div><strong>Prior matter history</strong><small>Closed matters available for cross-case evidence comparison.</small></div>
    </div>
  </section>
  <aside class="architecture-controls"><strong>Control plane</strong><span>Identity and access · Evidence integrity · Legal hold · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation</span></aside>
</div>

### Baseline and additive components

Build the baseline first, because nearly every use case depends on it. Add each of the other components later, when you commit to the use case that needs it. Do not buy everything up front.

| Component | What it must do | When to build |
| --- | --- | --- |
| Evidence repository | Store artifacts write-once, with legal hold and retention applied per item | Build first |
| Evidence item register | Hold identity, description, collection authority, location, and relationships | Build first |
| Append-only activity log | Record every custody event with actor and timestamp, and never overwrite | Build first |
| Cryptographic integrity service | Hash at acquisition and verify on every access, transfer, and export | Build first |
| Entitlement service | Decide what each person may see at item granularity, wherever content is read | Build first |
| Workflow engine | Gate disposition and release behind a recorded authorization, and honor legal hold | Build first |
| Rules engine | Evaluate required custody documentation on a schedule and on custody events | Build first |
| Notification and queue service | Route custody flags, overdue returns, and verification failures to the right person | Build first |
| Physical custody tracking | Track facility, container, position, and seals for physical items | Build first |
| Case data store | Hold the cases, subjects, and entities the register associates evidence with | Build first |
| Search and retrieval | Search evidence and extracted content within the requester's item-level entitlements | Build first |
| Reporting | Report custody gaps, verification failures, ingestion throughput, and deduplication ratio | Build first |
| Forensic acquisition and imaging | Acquire digital evidence in a defensible, write-blocked, hash-verified manner | Add where the program seizes devices or images systems |
| Text extraction service | Produce a searchable text layer for scans, imagery, and recordings at ingestion | Add to unlock search across non-text evidence |
| Classification model | Type and describe incoming digital evidence as labeled derived metadata | Add to unlock automated triage of bulk acquisitions |
| Generative model with grounding and citation | Extract entities from evidence content with source locations retained | Add to unlock entity extraction across evidence |
| Entity resolution service | Propose near-duplicate and related evidence beyond exact hash matching | Add to unlock related-evidence grouping |
| Prior matter history | Make closed matters available for cross-case evidence comparison | Add to unlock cross-case duplicate detection |
| Model evaluation and monitoring | Track classification accuracy, extraction accuracy, and grouping precision | Add alongside any model component |

Create one custody record per item, and write its first entry when the item is collected. Every later event appends to that same record: transfer, examination, linking to a case, disposal. The record only works if it has no gaps, because a single unexplained period is enough to challenge the evidence and you cannot fill it in later. Most gaps open up between seizing something in the field and entering it into a system back at the office. That is why field capture is in the baseline.

Append-only and tamper-evident are not the same thing. An append-only table stops ordinary edits. To show a court that nobody altered the record, you need cryptographic chaining and, ideally, a copy your own organization cannot rewrite. Decide which one you need before you design the log, because adding tamper-evidence later leaves every existing entry without it.

## Microsoft Technology Mapping

Use this mapping to move from the logical architecture to a candidate Microsoft implementation. Keep the architecture above as the definition, and treat this as one realization of it — add or replace a realization section without changing anything upstream.

> Verify each mapping against current vendor documentation, record the evidence and review date, and confirm the support type before using any row in a customer conversation.

| Architecture component | Realize with | Support type |
| --- | --- | --- |
| Evidence repository | Azure Blob Storage with immutability policies for write-once retention and legal hold | Configurable |
| Evidence item register | A model-driven Power App on Dataverse | Configurable |
| Append-only activity log | Azure Confidential Ledger for tamper-evident custody entries; Dataverse auditing for administrative history | Configurable |
| Cryptographic integrity service | Azure Functions computing and verifying hashes, with values held in Azure Key Vault or Confidential Ledger separately from the artifacts | Configurable |
| Entitlement service | Microsoft Entra ID for identity; Dataverse security roles with row-level security for item-level scoping | Configurable |
| Workflow engine | Power Automate; Dataverse business process flows | Native |
| Rules engine | Dataverse business rules and scheduled Power Automate flows; Azure Functions where custody rules outgrow low-code | Configurable |
| Notification and queue service | Dataverse queues for work routing; Power Automate with Teams and Outlook | Native |
| Physical custody tracking | Power Apps mobile with device barcode scanning, writing to Dataverse | Configurable |
| Case data store | Microsoft Dataverse | Native |
| Search and retrieval | Azure AI Search, security-trimmed to the requester's item-level permissions | Configurable |
| Reporting | Power BI | Native |
| Forensic acquisition and imaging | No first-party equivalent; partner forensic tooling for write-blocked acquisition, imaging, and mobile extraction | Partner / custom |
| Text extraction service | Azure AI Document Intelligence for documents and scans; Azure AI Speech for audio; Azure AI Video Indexer for media | Native |
| Classification model | Azure AI Language custom classification, or Azure OpenAI with a structured output schema | Configurable |
| Generative model with grounding and citation | Azure OpenAI in Azure AI Foundry, grounded through Azure AI Search | Configurable |
| Entity resolution service | No direct first-party fit; combine Azure AI Search vector similarity with partner or custom near-duplicate logic | Partner / custom |
| Prior matter history | Dataverse, with Azure AI Search across closed matters | Configurable |
| Model evaluation and monitoring | Azure AI Foundry evaluations, Azure AI Content Safety, Azure Monitor | Configurable |
| Records and retention | Microsoft Purview records management and retention labels | Configurable |

### Resolve these four before committing

- **Decide which log is the evidentiary one.** Dataverse auditing records changes for administrative purposes and is not designed to be offered as proof that a custody chain was not altered. Azure Confidential Ledger provides tamper-evident, cryptographically verifiable entries and is the appropriate home for custody events. Settle this before design — a custody log built on Dataverse auditing cannot be upgraded retroactively.
- **Model retention and legal hold before enabling immutability.** Azure Blob immutability policies are deliberately hard to reverse: a locked time-based retention policy can be extended but not shortened, and applying one to evidence whose disposition schedule is still undecided creates artifacts the program cannot lawfully dispose of. Establish the retention model, the hold model, and their interaction first.
- **Verify item-level trimming end to end, not just in Dataverse.** Row-level security scopes the register, but extracted text lives in Azure AI Search and derived insights may reach Power BI and retrieval grounding. An item restricted by a protective order must be invisible on every one of those paths, and the search index is where that most often fails.
- **Compute and store integrity values outside the artifact's own store.** A hash held in the same store as the artifact it describes proves little, since anything able to alter one can alter the other. Compute at acquisition, store in Key Vault or Confidential Ledger, and verify on access — and confirm the acquisition tooling's hash and the platform's agree before the item is ever relied on.
