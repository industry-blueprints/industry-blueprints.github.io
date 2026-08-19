---
title: Allegation, Tip & Referral Intake
summary: Ability to receive allegations, tips, and referrals from any channel and route them to the right investigative organization.
status: Draft
tier: Tier 2 · Practitioner
scope: All
updated: 2026-08-18
owner: Content team
workload: Investigations
parent_title: Investigations
parent_url: /workloads/investigations/
order: 1
sections:
  - Overview
  - Maturity Levels
  - Receive Complaints, Tips, and Referrals Across Channels
  - Capture Allegations and Supporting Documents
  - Route Submissions to the Appropriate Investigative Organization
  - Extract Entities from Unstructured Submissions
  - Classify and Route Incoming Matters
  - Identify Duplicate or Related Complaints
  - Architecture
  - Microsoft Technology Mapping
  - Custom App Development Mapping
related:
  - type: Workload
    title: Investigations
    url: /workloads/investigations/
    relationship: HAS_CAPABILITY
    summary: The broader workload this capability supports.
sources: []
---

## Overview

Ability to receive complaints, hotline tips, referrals, suspicious activity reports, and internally generated leads through any channel, capture them with their supporting documents, and route each submission to the appropriate investigative organization.

This capability covers the moment a matter first reaches the organization — through a hotline, web form, email, walk-in, mandatory reporter, or another agency — and ends when the submission is captured as a structured record and routed. It excludes the judgment calls about jurisdiction, credibility, and priority that follow; those belong to Intake Assessment & Triage.

## Maturity Levels

| Stage | Typical characteristics |
| --- | --- |
| Not performed | Submissions are handled ad hoc by whoever receives them; no consistent record. |
| Manual / ad hoc | A shared inbox or log captures submissions; routing depends on individual judgment. |
| Standardized | A defined intake system and consistent routing rules apply across channels. |
| Integrated | All intake channels feed one system, with documents and metadata captured together. |
| Automated / optimized | Submissions are structured and routed automatically from unstructured content, with staff confirming edge cases. |

<p class="eyebrow">Use case</p>

## Receive Complaints, Tips, and Referrals Across Channels

Matters arrive through channels the organization only partly controls: a hotline call taken by an operator, a web form completed by a member of the public, an email to a general mailbox, a walk-in at a field office, a statutory report from a mandatory reporter, a referral from another agency, and leads generated internally by audit, data analysis, or an investigator's own observation. Each channel produces a different shape of information — a structured form, a narrative voicemail, a letter, a spreadsheet of flagged transactions — and the intake record has to normalize all of them into one submission with a single identifier, a received timestamp, and an identified channel of origin.

The reporter's relationship to the matter is established here and rarely revisited. Whether a person is named, confidential, or anonymous determines what can be disclosed later, whether they can be contacted for clarification, and what whistleblower or informant protections attach. Anonymous submissions in particular need a way to accept follow-up without ever resolving an identity. Acknowledgement is part of receipt too — a reporter who hears nothing back often submits again through a different channel, which is how one matter becomes three records.

<p class="discovery-label">Discovery questions</p>

- Through which channels can a matter reach the organization today, and does each one produce a record?
- What is the mandated or expected response time from receipt, and when does that clock start?
- How is a reporter's status — named, confidential, or anonymous — established and recorded at first contact?
- What can an anonymous reporter be told, and is there any way to follow up with them?
- Which submissions arrive under a statutory reporting obligation, and do those carry different handling requirements?
- What happens to a submission that arrives outside business hours or through an unstaffed channel?
- How does a reporter know their submission was received, and what are they told to expect next?

<p class="pattern-label">Implementation pattern</p>

- Configure an intake platform to issue a single submission identifier at first contact, regardless of the channel the matter arrived through.
- Capture channel of origin, received timestamp, and receiving staff member on every submission, so response clocks are calculated from a recorded event rather than reconstructed.
- Integrate each channel — public web form, hotline telephony, monitored mailbox, walk-in entry, and interagency referral interface — into the same submission record rather than maintaining a separate log per channel.
- Model reporter status as a structured classification set at first contact, and enforce it wherever submission content is displayed, exported, or disclosed.
- Configure anonymous submissions to support follow-up through a claim code or reference number that never resolves to an identity.
- Use a notification service to issue acknowledgement with the reference number and expected next step, so a reporter has no reason to resubmit through another channel.
- Configure an append-only activity log so every action on a submission is recorded with actor and timestamp from the moment of receipt.

<p class="eyebrow">Use case</p>

## Capture Allegations and Supporting Documents

An allegation is only actionable once its substance is recorded in a usable form: what is alleged to have happened, who is said to have done it, when and where, which program or authority it touches, and how the reporter came to know it. Structured capture matters because these fields drive everything downstream — routing, duplicate detection, jurisdictional assessment, and eventually the case record — while the reporter's own narrative still needs to be preserved verbatim, because paraphrasing at intake loses detail that turns out to matter later.

Supporting documents arrive alongside the allegation and are separated from it with remarkable ease: photographs texted to an investigator, a bank statement handed over at a walk-in, a spreadsheet attached to an email that gets forwarded and re-forwarded. Attaching them to the submission record at the point of intake, with their own provenance — who supplied them, when, and in what form — is what keeps them usable if the matter becomes a case. Scanned and photographed material needs to be made searchable at capture, or it becomes content nobody can find.

<p class="discovery-label">Discovery questions</p>

- What minimum information must be captured before a submission is considered complete enough to route?
- Which allegation details need to be structured for downstream use, and which should stay as the reporter's own words?
- What kinds of supporting material typically arrive, and through what channels?
- How are documents associated with a submission today, and where do they end up living?
- What provenance is captured for supplied material — who provided it, when, and in what form?
- How much submitted material is scanned or photographed, and can anyone search it today?
- What happens when a reporter provides additional material days or weeks after the original submission?

<p class="pattern-label">Implementation pattern</p>

- Configure the intake platform to capture allegation, subjects, timeframe, location, and program area as structured fields, while preserving the reporter's narrative verbatim alongside them.
- Use a controlled allegation taxonomy for the structured classification, so routing and duplicate detection operate on consistent values.
- Attach supporting documents to the submission record at the point of intake, and record who supplied each item, when, and through which channel.
- Configure a document capture service to apply text extraction to scanned and photographed material at ingestion, so submitted content is searchable rather than opaque.
- Store submitted documents in their original form as received, and treat any derived text or conversion as an additional representation rather than a replacement.
- Configure later-supplied material to attach to the original submission through its reference number, rather than creating a second submission.
- Enforce entitlements on submission content and attachments at read time, so sensitive material is protected before any case-level access controls exist.

<p class="eyebrow">Use case</p>

## Route Submissions to the Appropriate Investigative Organization

Routing decides which organization takes the matter — a program integrity unit, an inspector general office, an internal affairs division, a licensing board, a criminal referral to a prosecuting authority, or another agency entirely. The rules are usually a combination of subject matter, allegation type, jurisdiction, the subject's affiliation, and geography, and they are frequently encoded nowhere but in the experience of long-tenured intake staff. Writing them down is often the highest-value part of implementing this capability, independent of any technology.

Routing is rarely a single hop. Matters get redirected when the first recipient determines it is not theirs, split when one submission contains allegations belonging to different organizations, and escalated immediately when the content indicates imminent harm, an officer-involved matter, or an allegation against senior leadership. The record needs to show every hop with its basis and timestamp — both so a matter cannot quietly stall between two organizations that each believe the other has it, and so the organization can answer later how long a submission actually took to reach the right desk.

<p class="discovery-label">Discovery questions</p>

- Which organizations can receive a routed submission, and what distinguishes their remits?
- Are the routing rules written down anywhere, or do they live in the judgment of experienced intake staff?
- What proportion of submissions get redirected after the initial route, and why?
- How is a submission handled when it contains allegations belonging to more than one organization?
- Which conditions require immediate escalation rather than standard routing?
- How does the organization know a routed submission was actually received and acted on?
- What is the recourse when two organizations each believe a matter belongs to the other?

<p class="pattern-label">Implementation pattern</p>

- Externalize routing rules into a rules engine keyed on allegation type, subject affiliation, program area, and jurisdiction, so the logic is inspectable and changeable without code.
- Maintain the receiving organizations and their remits as reference data, so routing targets stay current as the organization reorganizes.
- Use a workflow engine to record acceptance or rejection by the receiving organization, so no submission sits unacknowledged between two desks.
- Configure every routing hop to be recorded with its basis, actor, and timestamp, and preserve the full routing chain rather than only the current owner.
- Model splitting explicitly, so one submission can generate multiple routed matters that retain their link to the original.
- Configure high-severity indicators to trigger immediate escalation and notification, bypassing standard queue handling.
- Use reporting to show time-to-route and redirect rates by allegation type and organization, so rules that misroute consistently are found and corrected.

<p class="eyebrow">Use case</p>

## Extract Entities from Unstructured Submissions

Most submissions arrive as narrative rather than as data: a two-page letter, a transcribed voicemail, a forwarded email chain, a scanned complaint form completed by hand. Someone has to read each one and pull out the elements the intake record needs — subjects and their identifiers, organizations, dates and periods, locations, dollar amounts, program names, and the allegations themselves. On a high-volume hotline this reading is the bottleneck, and it is also where consistency erodes, because two staff members reading the same letter will structure it differently.

Extraction proposes those elements from the submitted text so intake staff confirm and correct rather than transcribe. The confirmation step is not a formality — extraction on investigative content mishandles exactly what matters most, misattributing an action to the wrong named person or reading a date reference incorrectly. Every extracted value should remain traceable to the passage it came from so a reviewer can check it in place, and the reporter's original narrative stays the source of record regardless of what was extracted from it.

<p class="discovery-label">Discovery questions</p>

- What share of submissions arrive as unstructured narrative rather than completed structured fields?
- How long does structuring a typical submission take today, and who does it?
- Which entity types actually matter for downstream routing and duplicate detection?
- How consistently do two staff members structure the same submission today?
- What would the consequence be of an extraction error that named the wrong subject?
- What review would intake staff need before accepting a proposed value?
- Do submissions arrive in more than one language, and how are those handled today?

<p class="pattern-label">Implementation pattern</p>

- Configure the intake platform to present extracted values as a draft the intake specialist confirms or corrects, never as a completed record.
- Retain the source passage for every extracted value, so a reviewer can verify the value against the text in place.
- Preserve the reporter's original narrative as the source of record, distinct from any structure derived from it.
- Log accepted, corrected, and rejected extractions in the activity log, so extraction quality is measurable rather than assumed.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to extract allegations, subjects, dates, locations, amounts, and organizations from narrative submissions, returning them as proposals for staff confirmation.
- Ground extraction in the submitted content only, and require each proposed value to reference the passage it came from.
- Configure the model to return an explicit no-value rather than inferring a plausible one when the submission does not state something.
- Monitor correction rates by entity type, so the field the model handles worst is visible and can be improved or dropped.

<p class="eyebrow">Use case</p>

## Classify and Route Incoming Matters

Classification proposes where a submission should go and how urgently, using the same dimensions a person would apply — subject, allegation type, jurisdiction, and urgency — but applied consistently across every submission regardless of who is on shift or how large the backlog is. It is most valuable at the extremes: surfacing the rare submission that needs attention within the hour, and moving the routine high-volume categories through without occupying an experienced specialist.

The routing decision stays with staff. A model proposes a destination and a priority with its reasoning; the intake specialist confirms, changes it, or escalates. Keeping the human decision explicit protects against two failures that matter differently — a misrouted submission that reaches the wrong organization and loses days, and an under-prioritized submission describing imminent harm. Deterministic rules should continue to handle the escalation conditions the organization has committed to catching, with classification narrowing the queue rather than deciding it.

<p class="discovery-label">Discovery questions</p>

- What is the current submission volume, and how much of it falls into a small number of routine categories?
- How much does routing consistency vary across staff or across shifts?
- Which conditions must never be missed, and would the organization accept a model as the only thing catching them?
- Would a proposed route be accepted at a glance, or does each submission get read in full regardless?
- What confidence would staff need before a proposal changes how much scrutiny a submission receives?
- How would a misroute be detected today, and how long would it take?
- Which categories are high volume but low consequence, and could they be handled differently from the rest?

<p class="pattern-label">Implementation pattern</p>

- Keep deterministic rules as the authority for escalation conditions and jurisdictional constraints, and use classification to order and pre-fill within them.
- Configure the intake platform to present a proposed organization and priority as a pre-filled decision the specialist confirms or overrides.
- Record the proposed value, the confirmed value, and the specialist's override reason, so proposal accuracy is measurable against outcomes.
- Use a queue service to order confirmed submissions by priority, so the most consequential matters are worked first rather than the oldest.
- Report override rates by category and by organization, and retire or retrain any proposal category that staff routinely reverse.

<p class="ai-label">AI opportunity</p>

- Use classification to propose the receiving organization, allegation category, and urgency from the submission content.
- Return the factors behind each proposal, so a specialist can judge the reasoning rather than accept a score.
- Evaluate the model on missed high-urgency submissions rather than overall accuracy, since the rare severe matter is the one that carries consequence.
- Monitor for drift as allegation patterns and program areas change, with a defined path for revalidating the model against recent decisions.

<p class="eyebrow">Use case</p>

## Identify Duplicate or Related Complaints

The same matter frequently arrives more than once. A reporter who gets no acknowledgement submits again through another channel; several employees report the same conduct independently; a referring agency sends a matter that a member of the public already reported; a long-running scheme generates complaints across months. Opening separate cases for the same underlying matter splits the evidence, produces conflicting findings, and lets a pattern of repeated allegations against one subject look like a series of isolated single complaints.

Detection at intake compares an incoming submission against recent and historical submissions on subjects, entities, locations, timeframes, and narrative similarity, and flags candidates before a case is opened. Duplicate and related are different findings and need different handling — a true duplicate merges into the existing record while preserving both reporters, whereas a related matter stays separate with a documented link. Both determinations should be made by staff, since incorrectly merging two distinct matters buries a real allegation inside another case, which is considerably harder to detect than a duplicate that slipped through.

<p class="discovery-label">Discovery questions</p>

- How often does the same matter arrive more than once, and how is that usually noticed?
- At what point today would a duplicate be caught — intake, triage, case opening, or not at all?
- What distinguishes a true duplicate from a related but separate matter in this program?
- How far back should a comparison reach, and does that differ by allegation type?
- What happens to the second reporter when submissions are merged?
- What would the consequence be of merging two matters that were actually distinct?
- Can submissions be compared across program areas or field offices today, or only within one?

<p class="pattern-label">Implementation pattern</p>

- Configure the intake platform to run duplicate and relationship detection before a submission is routed or a case is opened.
- Store subjects, entities, and locations as records that submissions reference, so comparison operates on resolved entities rather than free text.
- Present duplicate and related as separate outcomes with separate handling, and require staff confirmation for either.
- Configure a merge to preserve every contributing submission and reporter, so no reporter's account is lost inside a consolidated record.
- Require a relationship type and rationale on any link between separate submissions, and record it in the activity log.
- Enforce entitlements when displaying a candidate match, so a flagged relationship can be surfaced without exposing content the specialist is not cleared to see.
- Report merge and unmerge rates, so overly aggressive consolidation is visible.

<p class="ai-label">AI opportunity</p>

- Use an entity resolution service to propose candidate duplicates and related submissions across subjects, entities, locations, and timeframes.
- Use semantic similarity over narrative content to catch matters described in different words that a field-level comparison would miss.
- Explain each proposal — shared identifiers, name similarity, overlapping timeframe, narrative overlap — so staff can evaluate it rather than trust a score.
- Tune toward proposing candidates for review rather than merging automatically, and keep every merge a confirmed human decision.

## Architecture

Build toward this shape. It combines the implementation patterns and AI opportunities from the use cases above into one design, and it names no product or vendor. Agree on it before you evaluate any product, because it sets what any product you choose has to do.

<div class="architecture-stack" aria-label="Logical architecture for Allegation, Tip and Referral Intake">
  <section class="architecture-layer architecture-layer--experience">
    <p class="architecture-layer-title"><span>01</span> Experience</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Public submission channels</strong><small>Web form, hotline, mailbox, and walk-in entry into one record.</small></div>
      <div><strong>Intake specialist workspace</strong><small>Submission review, structuring, routing, and duplicate confirmation.</small></div>
      <div><strong>Referring agency exchange</strong><small>Interagency referrals received and acknowledged as structured submissions.</small></div>
    </div>
  </section>
  <section class="architecture-layer">
    <p class="architecture-layer-title"><span>02</span> Intake core</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Submission record</strong><small>Single identifier, channel, timestamp, and reporter status.</small></div>
      <div><strong>Allegation capture</strong><small>Structured fields alongside the reporter's verbatim narrative.</small></div>
      <div><strong>Document capture</strong><small>Attachment, provenance, and text extraction at ingestion.</small></div>
      <div><strong>Routing and disposition</strong><small>Routing chain, acceptance, splits, and escalations.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--platform">
    <p class="architecture-layer-title"><span>03</span> Shared solution services</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entitlement service</strong><small>Reporter confidentiality and content access enforced wherever content is read.</small></div>
      <div><strong>Rules engine</strong><small>Routing rules, escalation conditions, and jurisdictional constraints.</small></div>
      <div><strong>Workflow engine</strong><small>Acceptance, redirection, and merge decisions as recorded steps.</small></div>
      <div><strong>Search and notification</strong><small>Entitlement-aware search, acknowledgement, and queue routing.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--intelligence">
    <p class="architecture-layer-title"><span>04</span> Optional intelligence</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Entity and allegation extraction</strong><small>Structured proposals drawn from narrative submissions.</small></div>
      <div><strong>Routing classification</strong><small>Proposed organization and urgency with stated factors.</small></div>
      <div><strong>Duplicate and relationship detection</strong><small>Candidate matches across entities and narrative content.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--records">
    <p class="architecture-layer-title"><span>05</span> Data and authoritative systems</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Submission data store</strong><small>Submissions, subjects, entities, and routing history.</small></div>
      <div><strong>Append-only activity log</strong><small>Immutable submission history with actor and timestamp.</small></div>
      <div><strong>Document and attachment store</strong><small>Supplied material in original form with provenance.</small></div>
      <div><strong>Reference data</strong><small>Allegation taxonomy, organizations, remits, and jurisdictions.</small></div>
    </div>
  </section>
  <aside class="architecture-controls"><strong>Control plane</strong><span>Identity and access · Reporter confidentiality · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation</span></aside>
</div>

### Baseline and additive components

Build the baseline first, because nearly every use case depends on it. Add each of the other components later, when you commit to the use case that needs it. Do not buy everything up front.

| Component | What it must do | When to build |
| --- | --- | --- |
| Intake platform | Hold the submission record, allegation fields, attachments, and routing state | Build first |
| Submission data store | Store submissions, subjects, entities, and routing history | Build first |
| Channel integrations | Land web, hotline, mailbox, walk-in, and interagency submissions in one record | Build first |
| Document and attachment store | Retain supplied material in original form with its provenance | Build first |
| Append-only activity log | Record every action on a submission with actor and timestamp | Build first |
| Entitlement service | Enforce reporter confidentiality and content access wherever content is read | Build first |
| Rules engine | Evaluate routing, escalation, and jurisdictional constraints deterministically | Build first |
| Workflow engine | Record acceptance, redirection, splitting, and merge decisions | Build first |
| Notification and queue service | Acknowledge reporters and route work by priority | Build first |
| Reference data management | Maintain the allegation taxonomy, organizations, remits, and jurisdictions | Build first |
| Search and retrieval | Search submissions and attachments within the requester's entitlements | Build first |
| Reporting | Report time-to-route, redirect rates, override rates, and merge rates | Build first |
| Text extraction service | Make scanned and photographed submissions searchable at ingestion | Add to unlock structuring of non-digital submissions |
| Generative model with grounding and citation | Propose entities and allegations from narrative content with source passages | Add to unlock extraction from unstructured submissions |
| Classification model | Propose receiving organization and urgency with stated factors | Add to unlock assisted routing |
| Entity resolution service | Propose duplicate and related submissions across entities and narrative content | Add to unlock duplicate detection at intake |
| Model evaluation and monitoring | Track proposal accuracy, override rates, and drift over time | Add alongside any model component |

Decide who may see a reporter's identity in one shared service, and apply it from the moment a report arrives. Every screen, search result, export, and duplicate check asks that service the same question: what may be shown about who reported this. Build the anonymous channel at the same time, including a way for the reporter to follow up without giving a name. Get this wrong and you expose someone who reported misconduct, and nothing you do later undoes it.

## Microsoft Technology Mapping

Use this mapping to move from the logical architecture to a candidate Microsoft implementation. Keep the architecture above as the definition, and treat this as one realization of it — add or replace a realization section without changing anything upstream.

> Verify each mapping against current vendor documentation, record the evidence and review date, and confirm the support type before using any row in a customer conversation.

| Architecture component | Realize with | Support type |
| --- | --- | --- |
| Intake platform | Dynamics 365 Customer Service, or a model-driven Power App on Dataverse | Configurable |
| Submission data store | Microsoft Dataverse | Native |
| Public submission channels | Power Pages for the web form; Dynamics 365 Customer Service channels for voice and email | Configurable |
| Referring agency exchange | Azure API Management with Azure Logic Apps for partner integration | Configurable |
| Document and attachment store | SharePoint or Azure Blob Storage, with immutable storage where retention requires it | Configurable |
| Append-only activity log | Dataverse auditing for record history; Microsoft Purview Audit for tenant activity | Configurable |
| Entitlement service | Microsoft Entra ID for identity; Dataverse security roles and row-level security for confidentiality scoping | Configurable |
| Rules engine | Dataverse business rules and Power Automate; Azure Functions where routing logic outgrows low-code | Configurable |
| Workflow engine | Power Automate; Dataverse business process flows | Native |
| Notification and queue service | Power Automate with Teams, Outlook, and Azure Communication Services; Dataverse queues for work routing | Native |
| Reference data management | Dataverse reference tables with Power Apps administration | Native |
| Search and retrieval | Azure AI Search, security-trimmed to the requester's permissions | Configurable |
| Reporting | Power BI | Native |
| Text extraction service | Azure AI Document Intelligence; Azure AI Speech for hotline audio | Native |
| Generative model with grounding and citation | Azure OpenAI in Azure AI Foundry, grounded through Azure AI Search | Configurable |
| Classification model | Azure AI Language custom classification, or Azure OpenAI with a structured output schema | Configurable |
| Entity resolution service | No direct first-party fit for investigative matching; combine Azure AI Search vector similarity with partner or custom resolution logic | Partner / custom |
| Model evaluation and monitoring | Azure AI Foundry evaluations, Azure AI Content Safety, Azure Monitor | Configurable |
| Records and retention | Microsoft Purview records management and retention labels | Configurable |

### Resolve these four before committing

- **Design the anonymous channel before selecting the portal.** Power Pages supports authenticated and anonymous submission, but an anonymous reporter who can still return, check status, and add material requires a claim-code mechanism that never resolves to an identity. Specify that behavior as a requirement rather than expecting it from portal configuration.
- **Enforce confidentiality below the interface.** Dataverse row-level security and column security can scope reporter identity, but a submission surfaced through search, exported to a report, or included in a model prompt leaves that boundary. Apply the control at every read path — search index, Power BI dataset, and retrieval grounding — not only on the form.
- **Evaluate duplicate detection on false merges, not recall.** Vector similarity in Azure AI Search finds candidates well; deciding that two submissions are the same matter is a different problem. Keep merges as confirmed human decisions and measure the rate at which distinct matters were consolidated.
- **Separate hotline audio handling from the rest of the pipeline.** Azure AI Speech transcribes reliably, but a recording is itself submitted material subject to retention and confidentiality, and transcription accuracy on names and identifiers is where extraction errors originate. Decide retention of the audio, the transcript, and any derived structure as three separate positions.

## Custom App Development Mapping

Use this mapping where the program builds the capability rather than configuring a vendor platform — typically when the intake domain model is unusual, when data residency or air-gap constraints rule out a hosted suite, or when an existing engineering team already runs the surrounding systems. The same architecture applies; only the realization changes.

> Verify each component's license, maintenance status, and security posture before adopting it, record the version and review date, and name who owns its upkeep.

The third column states how much of each component the team writes. Read the `Build` rows as the real scope of a custom effort — everything else is assembly.

| Architecture component | Realize with | Build or adopt |
| --- | --- | --- |
| Intake platform | A web application framework carrying the submission domain model — Django, Rails, Spring Boot, or ASP.NET Core | Build |
| Submission data store | PostgreSQL, with JSONB for channel-specific payloads alongside relational core entities | Adopt |
| Public submission channels | An application-hosted web form; a telephony provider such as Twilio or Amazon Connect for the hotline; a provider webhook or IMAP listener for the monitored mailbox | Adopt and extend |
| Referring agency exchange | A versioned REST or SFTP interface behind an API gateway such as Kong or APISIX, with per-partner credentials and schema validation | Build |
| Document and attachment store | S3-compatible object storage — AWS S3 or MinIO — with object lock where write-once retention is required | Adopt |
| Append-only activity log | An insert-only table with UPDATE and DELETE revoked from the application role; hash-chain rows where tamper evidence is required | Build |
| Entitlement service | A Zanzibar-style authorization service such as OpenFGA or SpiceDB, or a policy engine such as Open Policy Agent, with an OIDC provider such as Keycloak for identity | Adopt and extend |
| Rules engine | A rules library such as Drools or json-rules-engine, with routing rules held as versioned data rather than compiled logic | Adopt and extend |
| Workflow engine | A durable execution or BPM engine — Temporal, Camunda, or Flowable — so approvals and routing survive process restarts | Adopt |
| Notification and queue service | A message broker such as RabbitMQ or Kafka for work routing, with an email and SMS provider for reporter acknowledgement | Adopt |
| Reference data management | Effective-dated reference tables in the primary database with an administrative interface | Build |
| Search and retrieval | OpenSearch or Elasticsearch with document-level security; pgvector where similarity search can stay in the primary database | Adopt and extend |
| Reporting | Metabase or Apache Superset over a read replica or reporting schema | Adopt |
| Text extraction service | Apache Tika for document text, Tesseract or a hosted OCR service for scans, and Whisper for hotline audio | Adopt |
| Generative model with grounding and citation | A hosted model API, or self-hosted inference through vLLM or Ollama where residency requires it, with retrieval and citation assembled in application code | Adopt and extend |
| Classification model | A supervised baseline such as scikit-learn or fastText trained on labeled routing decisions, or a hosted model constrained to a structured output schema | Adopt and extend |
| Entity resolution service | A probabilistic record linkage library such as Splink, Zingg, or dedupe, with blocking and thresholds tuned to investigative data | Adopt and extend |
| Model evaluation and monitoring | Langfuse or MLflow for tracing and experiment tracking, with Evidently for drift monitoring | Adopt and extend |
| Records and retention | No off-the-shelf equivalent — implement retention schedules, legal hold, and defensible disposition in the application | Build |

### Resolve these four before committing

- **Cost the `Build` rows honestly.** Records retention, legal hold, and defensible disposition have no library to adopt, and they are the components a vendor platform quietly supplies. A custom effort that budgets for the intake application and treats retention as a later increment will reach accreditation without it.
- **Enforce entitlements once, above every read path.** A self-assembled stack has at least four ways to read a submission — the primary database, the search index, the reporting replica, and retrieval grounding — and an authorization check written into the application's query layer covers only the first. Put the decision in the entitlement service and call it from each path.
- **Make the append-only log append-only in the database, not by convention.** A table is append-only when the application role has no UPDATE or DELETE grant. Add row hash-chaining and off-host shipping where the log has to serve as evidence rather than as a debugging aid.
- **Count the operational commitments before choosing self-hosted.** Search, a broker, a workflow engine, an authorization service, and model inference are five systems to patch, upgrade, and carry on-call. That burden, not licensing, is what decides whether a custom build is cheaper than a configured platform over the life of the program.
