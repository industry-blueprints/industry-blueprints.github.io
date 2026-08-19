---
title: Investigative Case Management
summary: Ability to open, assign, and track a case's status, milestones, and record through to resolution.
description: "Ability to open, assign, and track a case's status, milestones, and record through to resolution."
status: Draft
tier: Tier 2 · Practitioner
scope: All
updated: 2026-08-18
owner: Content team
workload: Investigations
parent_title: Investigations
parent_url: /workloads/investigations/
order: 3
sections:
  - Overview
  - Maturity Levels
  - Open and Maintain an Investigative Case
  - Assign Investigators and Case Team Members
  - Track Milestones, Deadlines, and Approvals
  - Maintain Related Cases and Associated Records
  - Generate an Up-to-Date Case Summary
  - Identify Overdue Actions or Gaps
  - Provide a Conversational Case Assistant
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

Ability to open and maintain an investigative case, assign investigators and case team members, track milestones, deadlines, status, and approvals, and maintain related cases and associated records through to resolution.

This capability is the system of record for a case's lifecycle — its status, ownership, deadlines, and links to related cases and records. It excludes the substance of the investigative work itself, which is tracked within the case but performed by other capabilities.

## Maturity Levels

| Stage | Typical characteristics |
| --- | --- |
| Not performed | Cases are tracked informally, often in individual investigators' own files. |
| Manual / ad hoc | A shared spreadsheet or log tracks case status with inconsistent updates. |
| Standardized | A case management system tracks status, assignment, milestones, and approvals consistently. |
| Integrated | The case system links related cases and records and surfaces overdue items automatically. |
| Automated / optimized | Case summaries and gap identification are generated from case activity, with the investigator confirming accuracy. |

<p class="eyebrow">Use case</p>

## Open and Maintain an Investigative Case

Opening a case establishes the authoritative record for a matter: a unique case number, the accepted allegation and its source, the subjects and entities involved, the investigative authority being exercised, and the opening date that starts any statutory or policy clock. Case type and sensitivity are usually set at this point as well, because they determine downstream access restrictions, retention requirements, and which approvals will be needed later.

Maintaining the case means keeping that record accurate as the matter develops — status changes, subjects or allegations added or dropped, scope changes, and every investigative activity logged against the case rather than living in an investigator's personal notes or inbox. The practical test is whether someone other than the assigned investigator can open the case file and understand where the matter stands and how it got there.

<p class="discovery-label">Discovery questions</p>

- What information has to be captured before a case number can be issued, and who decides it is complete?
- How are case type and sensitivity determined at opening, and what do those classifications control downstream?
- Where does investigative activity actually get recorded today — the case system, personal notes, email, or shared drives?
- If an investigator were unavailable tomorrow, could a colleague determine the status of their cases from the system alone?
- What event starts the clock on a case, and is that date captured consistently across case types?

<p class="pattern-label">Implementation pattern</p>

- Configure a case management platform to issue the case number, capture the accepted allegation and its source, and stamp the opening date that starts applicable clocks.
- Integrate the platform with triage so an accepted matter carries its allegation, source, and known subjects forward without re-keying.
- Use case type and sensitivity classifications set at creation to drive access, retention, and approval requirements, rather than applying them after the fact.
- Configure an append-only activity log so every assignment, task, document, approval, and status change is recorded with actor and timestamp.
- Record corrections as new superseding entries rather than edits, so case history stays reconstructable years later.

<p class="eyebrow">Use case</p>

## Assign Investigators and Case Team Members

Assignment matches a case to an investigator or team based on subject-matter expertise, access eligibility, current workload, geography, and any conflict of interest that would disqualify someone from working it. Complex matters usually need a case team rather than a single owner — a lead investigator alongside analysts, forensic or financial specialists, and a supervisory reviewer — each with a defined role and only the access that role requires.

Reassignment is the harder half. Cases change hands as staff rotate, workloads rebalance, or a conflict surfaces mid-investigation, and every handoff risks losing context that lived with the previous investigator. The record needs to preserve who held the case and when, what they did while they held it, and why it moved — both so the incoming investigator can pick it up cleanly and so the chain of responsibility holds up under later review.

<p class="discovery-label">Discovery questions</p>

- How is a new case matched to an investigator today, and who makes that call?
- Which factors carry the most weight in assignment — expertise, current caseload, geography, access eligibility?
- How are conflicts of interest identified at assignment, and what happens when one surfaces mid-investigation?
- When a case is reassigned, what does the incoming investigator actually receive, and what tends to get lost?
- For team-based matters, how are roles defined, and does access follow the role or the person?

<p class="pattern-label">Implementation pattern</p>

- Configure the case management platform to hold assignment as a structured record — assigned investigator, team members, roles, and effective dates — rather than a free-text field.
- Use an entitlement service so case access follows the assigned role and ends when the assignment ends.
- Configure conflict-of-interest checks to run at assignment against subjects, entities, and prior involvement, and to re-run when a subject is added mid-investigation.
- Surface current caseload and access eligibility to the assigning supervisor at the point of assignment, drawn from the case system rather than a side spreadsheet.
- Record every reassignment in the activity log with who held the case, over what period, and why it moved.
- Configure handoff to carry open tasks, pending requests, and deadlines to the incoming investigator rather than resetting them.

<p class="ai-label">AI opportunity</p>

- Use entity matching to surface potential conflicts an exact-match check would miss — name variants, shared addresses, or prior involvement recorded under a different case.
- Present matches as candidates for the assigning supervisor to confirm or dismiss, never as an automatic disqualification.

<p class="eyebrow">Use case</p>

## Track Milestones, Deadlines, and Approvals

Investigations carry deadlines from several directions at once: statutory or regulatory timeframes, internal policy targets, court or prosecutorial schedules, and commitments made to a complainant or an oversight body. Tracking them means knowing which clocks apply to a given case, when each started, what tolls or extends them, and how much time remains — surfaced far enough in advance to act, rather than discovered after a date has passed.

Approvals run alongside the deadlines. Certain steps typically cannot proceed without documented authorization: opening or closing a case, expanding scope, using particular investigative techniques, extending a deadline, or issuing a referral. The record should show what was approved, by whom, on what date, and on what basis, so that both the decision and the authority behind it can be reconstructed long after the fact.

<p class="discovery-label">Discovery questions</p>

- Which statutory, regulatory, or policy deadlines apply, and do they differ by case type or program area?
- How does an investigator know today what is due and when — the case system, a spreadsheet, a calendar, or memory?
- What events pause, toll, or extend a deadline, and how is that recorded?
- Which actions require documented approval before they can proceed, and who holds that authority?
- How far in advance is an approaching deadline surfaced, and to whom?
- When a deadline is missed, how is that discovered, and what happens next?

<p class="pattern-label">Implementation pattern</p>

- Configure the case management platform to derive applicable deadlines from case type and opening date, rather than relying on investigators to track them by hand.
- Model tolling and extension events explicitly, so a paused clock is recorded with its reason and its resumption condition.
- Use a workflow engine to gate actions that require authorization — opening, closing, scope changes, technique approvals, extensions, and referrals — so a step cannot proceed without a recorded decision.
- Record each approval with approver, date, and basis in the append-only activity log.
- Configure a notification service to surface approaching deadlines to the investigator and supervisor with enough lead time to act on them.
- Use reporting to show deadline performance by case type and program, so systemic timing problems are visible beyond the individual case.

<p class="ai-label">AI opportunity</p>

- Use prediction to flag cases at risk of missing a deadline, based on remaining work, current pace, and comparable closed cases.
- Show the factors behind a risk signal so a supervisor can judge it, and keep the deadline calculation itself deterministic rather than predicted.

<p class="eyebrow">Use case</p>

## Maintain Related Cases and Associated Records

The same subject, entity, location, or scheme often appears across multiple matters, sometimes in different program areas or field offices that have no routine visibility into each other. Linking related cases makes those connections visible — a repeat subject, a common vendor, a recurring pattern of allegations — and lets an investigator judge whether the matter in front of them is isolated or part of something larger. Links should carry a stated rationale, because "related" can mean the same subject, the same underlying scheme, or merely a similar fact pattern, and each warrants a different investigative response.

Associated records extend the same idea beyond cases: prior complaints that were declined, licensing or personnel history, earlier findings, and evidence held under a different matter. Access to linked material still has to honor the restrictions attached to each source, so linking must never become a path around case-level access controls.

<p class="discovery-label">Discovery questions</p>

- How would an investigator today discover that a subject already appears in another open matter?
- Do investigators across program areas or field offices have any visibility into each other's cases?
- Which kinds of relationships need to be represented — same subject, same scheme, similar pattern, shared entity?
- What records outside the case system need to be associated, such as declined complaints or licensing history?
- How are access restrictions enforced when a linked record is more sensitive than the case linking to it?

<p class="pattern-label">Implementation pattern</p>

- Configure the case management platform to store subjects and entities as records that multiple cases can reference, rather than as per-case text.
- Require a relationship type and rationale on every case link, distinguishing the same subject from the same scheme from a merely similar pattern.
- Enforce entitlements on linked material at read time, so a link can show that a related record exists without exposing content the viewer is not cleared to open.
- Configure search across cases and associated records to apply the same entitlements as direct access.
- Log link creation and removal in the activity log, so the basis for a connection stays reviewable.

<p class="ai-label">AI opportunity</p>

- Use an entity resolution service to propose candidate matches across cases, leaving confirmation to an investigator.
- Explain why two entities were matched — shared identifiers, name similarity, common addresses — so the investigator can judge the proposal rather than accept a score.
- Plan for false matches. A wrong link between subjects carries real consequences for the people involved, so proposals stay proposals until someone confirms them.

<p class="eyebrow">Use case</p>

## Generate an Up-to-Date Case Summary

Case summaries are needed constantly — for supervisory check-ins, handoffs, briefings to counsel or leadership, and periodic status reporting — and writing them by hand pulls investigators away from investigative work, which is why they are so often stale or skipped altogether. Generating a summary from activity already recorded on the case produces a current picture on demand: status, facts established so far, completed activities, open tasks, and upcoming deadlines.

A generated summary is a convenience, not a source. It should draw only on case content the requester is authorized to see, show what it drew from so any statement can be checked against the underlying record, and remain clearly distinguishable from the investigator's own written work product. It should never become the basis for a finding.

<p class="discovery-label">Discovery questions</p>

- Who asks for case summaries today, how often, and in what format?
- How long does producing a summary take, and who ends up doing it?
- What has to be in a summary for it to be useful to a supervisor, to counsel, or at a handoff?
- How current is the underlying case record — would a summary generated from it today actually be accurate?
- What sourcing or traceability would an investigator need before relying on a generated summary?
- Where is the line between a working summary and a document that becomes part of the official record?

<p class="pattern-label">Implementation pattern</p>

- Enforce the requester's existing entitlements at retrieval time, so a summary can never surface content they could not open directly.
- Configure summaries to carry their scope and generation timestamp, so a reader knows what the summary covers and how current it is.
- Keep generated summaries in a working draft state, distinct from case work product, and require a deliberate logged action to place one in the official record.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to compose case summaries from activity already recorded on the case, rather than asking investigators to write them by hand.
- Ground the model in retrieved case content only, and require each material statement to cite the artifact it came from.
- Monitor summary quality and source fidelity over time, with a defined path for reviewing outputs against the underlying record.

<p class="eyebrow">Use case</p>

## Identify Overdue Actions or Gaps

Cases stall in predictable ways: a records request goes unanswered and nobody follows up, a planned interview is never scheduled, a required approval is missed, or a matter sits untouched while attention goes elsewhere. Surfacing these conditions — overdue tasks, unanswered requests, approaching deadlines, missing required documentation, cases with no recent activity — lets an investigator or supervisor intervene before a stalled case becomes a missed statutory deadline or a defensibility problem.

Gap identification is a prompt for review, not a verdict on the investigation. Some flags will be legitimately explainable — a case properly on hold pending a related prosecution, an approval that does not apply to this matter type — so the investigator or supervisor needs to resolve or dismiss a flag with the reason recorded, rather than being pushed toward activity for its own sake.

<p class="discovery-label">Discovery questions</p>

- What are the most common ways a case stalls in this program?
- How does a stalled case get noticed today, and how long does that usually take?
- Which conditions should raise a flag — no recent activity, an unanswered request, a missing approval, an approaching deadline?
- Should a flag go to the investigator, the supervisor, or both, and does that change with case age or sensitivity?
- What legitimate reasons exist for a case to look stalled, and how would someone record that explanation?
- How would the program avoid flags becoming noise that investigators learn to ignore?

<p class="pattern-label">Implementation pattern</p>

- Configure a rules engine to evaluate open cases for overdue tasks, unanswered records requests, missing approvals, inactivity, and approaching deadlines.
- Run evaluation both on a schedule and on case events, so a status change re-tests the affected case immediately.
- Use a workflow or queue service to route flags to the assigned investigator and supervisor based on flag type and case sensitivity.
- Keep flags advisory — they should prompt review, never change case status on their own.
- Require a recorded reason to dismiss a flag, and allow time-bounded suppression rather than permanent silencing.
- Report recurring dismissals by rule, so a noisy rule gets retired or retuned instead of trained around.

<p class="ai-label">AI opportunity</p>

- Use classification to rank flagged cases by likely consequence, so a supervisor works the queue in a defensible order rather than by flag age alone.
- Keep deterministic rules as the detection layer and use ranking only to order what those rules already found, so nothing is silently suppressed by a model.

<p class="eyebrow">Use case</p>

## Provide a Conversational Case Assistant

Case files grow large and heterogeneous — documents, interview reports, correspondence, activity logs, evidence inventories — and locating a specific fact often depends on remembering where it was recorded. A conversational assistant lets an investigator ask in plain language, such as what a subject said about a particular transaction or which records requests remain outstanding, and receive an answer assembled from the case record with references back to the source material.

The controls matter more than the convenience. The assistant must operate strictly within the asking investigator's authorized access, so it cannot surface material from cases or evidence they are not cleared to see; answers must cite their sources so anything relied on can be verified against the original; and it should decline to answer rather than infer when the record does not support one. It helps an investigator navigate and recall the case record — it does not assess credibility, draw conclusions, or reach findings.

<p class="discovery-label">Discovery questions</p>

- What questions do investigators most often need to answer out of a case file?
- How long does finding a specific fact in a large case file take today?
- Which material would need to be excluded from an assistant's reach, and on what basis?
- How is an individual investigator's authorized access determined, and could it be enforced on every query?
- What level of citation would an investigator need before relying on an answer in their work?
- What would the consequence be if the assistant returned a confident but unsupported answer?

<p class="pattern-label">Implementation pattern</p>

- Scope every query to the asking investigator's entitlements at retrieval time, so the assistant cannot reach material they could not open directly.
- Log queries and responses so assistant use is auditable alongside other case activity.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model with retrieval over the case record to answer investigator questions asked in plain language.
- Require answers to cite the case artifacts they draw on, so any statement can be checked against the original.
- Configure the assistant to decline when the case record does not support an answer, rather than inferring or generalizing.
- Keep the assistant out of determinations — it should not assess credibility, weigh evidence, or characterize findings.
- Monitor answer fidelity and refusal behavior over time, with a defined path for reviewing outputs against the underlying record.

## Architecture

Build toward this shape. It combines the implementation patterns and AI opportunities from the use cases above into one design, and it names no product or vendor. Agree on it before you evaluate any product, because it sets what any product you choose has to do.

<div class="architecture-stack" aria-label="Logical architecture for Investigative Case Management">
  <section class="architecture-layer architecture-layer--experience">
    <p class="architecture-layer-title"><span>01</span> Experience</p>
    <div class="architecture-nodes">
      <div><strong>Investigator workspace</strong><small>Case record, tasks, deadlines, and history at the point of work.</small></div>
      <div><strong>Supervisor review queue</strong><small>Assignment, approvals, and flagged cases awaiting a decision.</small></div>
    </div>
  </section>
  <section class="architecture-layer">
    <p class="architecture-layer-title"><span>02</span> Case management core</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Case record and lifecycle</strong><small>Identity, classification, status, opening and closure.</small></div>
      <div><strong>Assignment and case team</strong><small>Roles, effective dates, and handoff.</small></div>
      <div><strong>Milestones and deadlines</strong><small>Derived clocks, tolling, and extensions.</small></div>
      <div><strong>Relationships and links</strong><small>Subjects, entities, and related cases.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--platform">
    <p class="architecture-layer-title"><span>03</span> Shared solution services</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entitlement service</strong><small>Role- and case-scoped access enforced wherever content is read.</small></div>
      <div><strong>Workflow engine</strong><small>Approval gates and state transitions.</small></div>
      <div><strong>Rules engine</strong><small>Case health evaluation on a schedule and on case events.</small></div>
      <div><strong>Search and notification</strong><small>Entitlement-aware search and routing to the right person.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--intelligence">
    <p class="architecture-layer-title"><span>04</span> Optional intelligence</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Grounded summarization</strong><small>Case summaries composed from cited case artifacts.</small></div>
      <div><strong>Conversational case assistant</strong><small>Plain-language questions answered from the case record.</small></div>
      <div><strong>Entity match proposals</strong><small>Candidate cross-case links for investigator confirmation.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--records">
    <p class="architecture-layer-title"><span>05</span> Data and authoritative systems</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Case data store</strong><small>Cases, subjects, entities, tasks, and assignments.</small></div>
      <div><strong>Append-only activity log</strong><small>Immutable case history with actor and timestamp.</small></div>
      <div><strong>Documents and evidence</strong><small>Case artifacts, correspondence, and associated records.</small></div>
    </div>
  </section>
  <aside class="architecture-controls"><strong>Control plane</strong><span>Identity and access · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation</span></aside>
</div>

### Baseline and additive components

Build the baseline first, because nearly every use case depends on it. Add each of the other components later, when you commit to the use case that needs it. Do not buy everything up front.

| Component | What it must do | When to build |
| --- | --- | --- |
| Case management platform | Hold the case record, assignment, tasks, milestones, and links | Build first |
| Case data store | Store cases, subjects, entities, tasks, and assignments | Build first |
| Append-only activity log | Record every case action with actor and timestamp, and never overwrite | Build first |
| Entitlement service | Decide what each person may see, wherever content is read | Build first |
| Workflow engine | Gate opening, closure, scope changes, techniques, and referrals behind a recorded approval | Build first |
| Notification and queue service | Route flags, approvals, and approaching deadlines to the right person | Build first |
| Search and retrieval | Search across cases and associated records within the requester's entitlements | Build first |
| Reporting | Report deadline performance, rule tuning signals, and portfolio trends | Build first |
| Rules engine | Evaluate open cases on a schedule and on case events | Add to unlock overdue and gap detection |
| Entity resolution service | Propose candidate subject and entity matches across cases | Add to unlock cross-case relationship discovery |
| Generative model with grounding and citation | Compose summaries and answer questions from cited case content | Add to unlock summarization and the case assistant |
| Model evaluation and monitoring | Track answer fidelity, refusal behavior, and drift over time | Add alongside any generative component |

Build one entitlement service and have everything ask it. Assignment, related records, summaries, and the case assistant all need the same answer: what may this person see, right now, in this content. Scope it before you build anything on top, because adding access control around a working generative feature is much harder than designing it in. Get this right and the optional intelligence layer is safe to add later.

## Microsoft Technology Mapping

Use this mapping to move from the logical architecture to a candidate Microsoft implementation. Keep the architecture above as the definition, and swap this section for another vendor stack without changing anything upstream of it.

> Verify each mapping against current vendor documentation, record the evidence and review date, and confirm the support type before using any row in a customer conversation.

| Architecture component | Realize with | Support type |
| --- | --- | --- |
| Case management platform | Dynamics 365 Customer Service, or a model-driven Power App on Dataverse | Configurable |
| Case data store | Microsoft Dataverse | Native |
| Append-only activity log | Dataverse auditing for record history; Microsoft Purview Audit for tenant activity | Configurable |
| Entitlement service | Microsoft Entra ID for identity; Dataverse security roles and row-level security for case scoping | Configurable |
| Workflow engine | Power Automate; Dataverse business process flows | Native |
| Notification and queue service | Power Automate with Teams and Outlook; Azure Service Bus for system-to-system | Native |
| Search and retrieval | Azure AI Search, security-trimmed to the requester's permissions | Configurable |
| Reporting | Power BI | Native |
| Rules engine | Dataverse business rules and scheduled Power Automate flows; Azure Functions where logic outgrows low-code | Configurable |
| Documents and evidence | SharePoint or Azure Blob Storage, with immutable storage where chain of custody requires it | Configurable |
| Entity resolution service | No direct first-party fit for investigative matching; Dynamics 365 Customer Insights offers identity resolution, otherwise partner or custom | Partner / custom |
| Generative model with grounding and citation | Azure OpenAI in Azure AI Foundry, grounded through Azure AI Search | Configurable |
| Conversational case assistant | Microsoft Copilot Studio, or a custom application over Azure OpenAI | Configurable |
| Model evaluation and monitoring | Azure AI Foundry evaluations, Azure AI Content Safety, Azure Monitor | Configurable |
| Records and retention | Microsoft Purview records management and retention labels | Configurable |

### Resolve these four before committing

- **Evaluate entity resolution on false-match behavior, not throughput.** Customer Insights targets commercial customer data rather than investigative subjects, and the difference matters when a wrong match attaches one person's history to another. Plan for partner or custom here.
- **Build security trimming deliberately into indexing and query.** Azure AI Search can honor per-document permissions but does not do so by default. An entitlement mistake here is what would let the assistant or a generated summary surface case content the requester could not otherwise open.
- **Settle the audit-versus-evidence question before design.** Dataverse audit history tracks changes for administrative purposes. Add a dedicated tamper-evident store where chain-of-custody-grade immutability is required, and decide this before design rather than during accreditation.
- **Design one retention position across all three stores.** Case records in Dataverse, documents in SharePoint, and evidence in Azure Storage each retain separately. Purview governs across them, but reconciling them into a single coherent position for a case is a design task, not a configuration switch.
