---
title: Investigative Planning & Tasking
summary: Ability to develop investigative plans and lines of inquiry, assign tasks, and revise strategy as facts emerge.
description: "Ability to develop investigative plans and lines of inquiry, assign tasks, and revise strategy as facts emerge."
status: Draft
tier: Tier 2 · Practitioner
scope: All
updated: 2026-08-19
owner: Content team
workload: Investigations
parent_title: Investigations
parent_url: /workloads/investigations/
order: 4
sections:
  - Overview
  - Maturity Levels
  - Develop Investigative Plans and Lines of Inquiry
  - Assign Investigative Tasks and Track Completion
  - Coordinate Investigative Resources and Deadlines
  - Revise Investigative Strategy as Facts Emerge
  - Suggest Potential Investigative Steps
  - Identify Unanswered Questions or Inconsistencies
  - Recommend Task Sequencing
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

Ability to develop investigative plans, objectives, and lines of inquiry, assign investigative tasks and track their completion, coordinate investigative resources and deadlines, and revise strategy as new facts emerge.

This capability covers deciding what investigative work needs to happen and in what order — the plan, its lines of inquiry, and the tasks that carry it out. It excludes performing that work directly, which belongs to the capabilities the plan tasks out to.

## Maturity Levels

| Stage | Typical characteristics |
| --- | --- |
| Not performed | Investigative approach is entirely informal and undocumented. |
| Manual / ad hoc | Plans exist as personal notes with inconsistent detail across investigators. |
| Standardized | Documented plans and task tracking apply consistently across cases. |
| Integrated | Plans, tasks, and resource coordination are visible within the case management system. |
| Automated / optimized | Suggested investigative steps and task sequencing support planning, with the investigator deciding. |

<p class="eyebrow">Use case</p>

## Develop Investigative Plans and Lines of Inquiry

A plan states what the investigation is trying to establish and how. It converts an accepted allegation into objectives — the specific factual questions that, once answered, would substantiate or refute it — and then into lines of inquiry, each a coherent thread of work aimed at one of those questions. A financial line, a testimonial line, and a documentary line may run concurrently against the same allegation and reach different conclusions, which is precisely why they are planned as separate threads rather than as one undifferentiated list of things to do.

The plan is also where the boundaries get set. Scope limits what the investigation will and will not examine, techniques record which investigative methods are authorized and by whom, and the plan states what evidence would be sufficient to conclude in either direction — written before the work starts, so the standard is not adjusted afterward to match what was found. Plans are typically protected work product rather than evidence, a distinction that has to be built into how they are stored and disclosed rather than asserted after a discovery request arrives.

<p class="discovery-label">Discovery questions</p>

- What does an investigative plan look like in this program today, and is there a standard form?
- At what point in the matter is a plan written, and who approves it?
- How are objectives and lines of inquiry expressed — as questions to answer, as tasks to perform, or not distinguished?
- Which investigative techniques require specific authorization, and where is that recorded?
- Is it stated up front what evidence would be sufficient to substantiate or refute the allegation?
- How is an investigative plan treated for disclosure purposes, and does the system reflect that?
- What happens on matters where no plan is written — how common is that, and what drives it?

<p class="pattern-label">Implementation pattern</p>

- Configure the case management platform to hold the plan as a structured record with objectives, lines of inquiry, scope, and authorized techniques, rather than as an attached document.
- Model each line of inquiry as a first-class record that tasks attach to, so work can be traced to the question it was meant to answer.
- Record the sufficiency standard — what would substantiate and what would refute — at plan approval, and preserve it unchanged through later revisions.
- Use a workflow engine to gate plan approval and technique authorization, so investigative methods requiring authority cannot be tasked before it is recorded.
- Apply plan templates by matter type as a starting structure the investigator adapts, rather than as a checklist to complete.
- Classify plans as work product distinct from case evidence, and enforce that classification through the entitlement service at read and export time.
- Record plan creation and approval in the append-only activity log with actor, timestamp, and the authority relied on.

<p class="eyebrow">Use case</p>

## Assign Investigative Tasks and Track Completion

Tasks are how a plan becomes work. Each carries an owner, a due date, the line of inquiry it serves, and enough specificity that completion is unambiguous — "interview the supervisor identified in the complaint about the approval of the March invoices" rather than "conduct interviews." Assignment considers who is qualified, who has capacity, and who is eligible to see the material, and on team-based matters it spans specialists whose work the lead investigator coordinates but does not perform.

Completion is where planning systems most often decay into decoration. A task marked done that produced no artifact, a task quietly abandoned when the investigator moved on, or a task list that stopped being updated three weeks in all leave a plan that no longer describes the investigation. Tasks should close against something — a document collected, an interview report filed, a records request issued — so completion is observable rather than asserted, and so the case record shows what the work actually produced.

<p class="discovery-label">Discovery questions</p>

- How are investigative tasks recorded and assigned today, and does the assignee see them where they work?
- What makes a task specific enough to act on in this program?
- What evidence of completion is required, and is anything attached to the task when it closes?
- How are tasks assigned to specialists or external contributors who work outside the case system?
- How does an investigator know which of their tasks across all their cases needs attention first?
- What happens to open tasks when a case is reassigned or an investigator leaves?
- How would a supervisor discover that a task list has stopped being maintained?

<p class="pattern-label">Implementation pattern</p>

- Configure the case management platform to hold tasks as structured records with owner, due date, parent line of inquiry, and completion criteria.
- Require tasks to close against a produced artifact or a recorded outcome, so completion is observable rather than asserted.
- Use the entitlement service to confirm the assignee is eligible for the material the task requires before the assignment takes effect.
- Give each investigator a single cross-case task view, so priority is judged across their whole caseload rather than per case.
- Use a notification service to route assignment, reassignment, and approaching due dates to the owner and their supervisor.
- Configure reassignment and case handoff to carry open tasks forward with their due dates and history intact rather than resetting them.
- Record task creation, assignment, completion, and abandonment in the append-only activity log.
- Report task age, completion rate, and the proportion of tasks closing without an artifact, so decaying task discipline is visible.

<p class="eyebrow">Use case</p>

## Coordinate Investigative Resources and Deadlines

Investigative work competes for scarce and specialized capacity — forensic accountants, digital forensics examiners, surveillance teams, interpreters, laboratory analysis — much of it shared across cases and sometimes across organizations. Coordination means knowing what a plan will require, when, and whether it will be available, far enough ahead that a six-week lead time for a forensic examination is discovered while the plan is being written rather than when the statutory deadline is three weeks out.

Deadlines arrive from outside the plan and constrain it. The case carries statutory and policy clocks, the court or prosecutor may impose dates, and individual tasks have their own due dates derived from all of these. Planning has to work backward from the binding constraint, and where capacity cannot meet it, that has to surface as an explicit decision — extend, reprioritize, narrow scope, or accept the risk — recorded as such rather than absorbed silently by an investigator working longer hours.

<p class="discovery-label">Discovery questions</p>

- Which specialized resources do investigations depend on, and who controls their allocation?
- What are the typical lead times for those resources, and are they visible when a plan is written?
- How is an investigator's available capacity known at the point tasks are assigned?
- Which deadlines constrain the plan, and how are task due dates derived from them?
- What happens today when required capacity cannot meet a binding deadline?
- How are resources coordinated when they sit in a different organization or a shared service?
- How far ahead does the program see a capacity conflict, and who acts on it?

<p class="pattern-label">Implementation pattern</p>

- Model resource requirements on the plan itself, so specialized capacity is requested when work is planned rather than when it is due.
- Maintain resource and capacity data — availability, qualifications, and current commitments — as a queryable source rather than a periodically circulated spreadsheet.
- Use a rules engine to derive task due dates from case-level deadlines, so a change to a statutory clock propagates to the tasks that serve it.
- Configure the platform to surface conflicts between required capacity and binding deadlines while the plan can still be changed.
- Use a workflow engine to record the decision when capacity cannot meet a deadline — extend, reprioritize, narrow scope, or accept risk — with its approver.
- Route resource requests that cross organizational boundaries through a recorded request and acceptance rather than direct arrangement.
- Report resource lead times and conflict frequency by resource type, so recurring capacity shortfalls become a program-level finding rather than a per-case struggle.

<p class="eyebrow">Use case</p>

## Revise Investigative Strategy as Facts Emerge

Investigations rarely follow their original plan. An interview opens a line nobody anticipated, a records response disproves the theory the plan was built around, a new subject appears, or an early assumption turns out to be wrong. Revision is the normal condition of investigative work, and a plan that never changes across a long matter usually indicates the plan stopped being used rather than that it was unusually good.

What matters is that revision is deliberate and recorded. The record should show what changed, what prompted it, and who approved it — particularly where a revision expands scope onto new subjects or conduct, which is the point at which an investigation can drift beyond the authority it was opened under. Superseded versions have to remain reconstructable, because a later reviewer will need to see what the investigation was trying to establish at the time a decision was made, not only what it concluded in the end.

<p class="discovery-label">Discovery questions</p>

- How often do investigative plans change in practice, and what usually triggers a revision?
- Is a plan revision recorded as a change, or does the current version simply overwrite the previous one?
- What approval is required to expand scope onto a new subject or new conduct?
- How would someone reconstruct what the plan was at a particular point in the investigation?
- What happens to tasks that belonged to a line of inquiry that has been closed or abandoned?
- How is a disproved theory recorded, and is that visible to whoever writes the final report?
- How would the program notice a plan that has stopped being revised on a long-running matter?

<p class="pattern-label">Implementation pattern</p>

- Model plan revision as a new version that supersedes the previous one, so every prior state stays reconstructable rather than being overwritten.
- Require a stated prompt for each revision — the finding, interview, or record that occasioned it — recorded alongside the change.
- Use a workflow engine to require approval where a revision expands scope onto new subjects or conduct, distinguishing that from routine adjustment within scope.
- Preserve closed and abandoned lines of inquiry with their outcome, so work that disproved a theory remains part of the record rather than disappearing.
- Configure tasks belonging to a closed line of inquiry to be explicitly cancelled with a reason rather than silently deleted.
- Record every revision in the append-only activity log with actor, timestamp, and approval where required.
- Report revision frequency and elapsed time since last revision, so long-running matters with static plans surface for supervisory review.

<p class="eyebrow">Use case</p>

## Suggest Potential Investigative Steps

Planning quality varies with experience. An investigator who has worked twenty procurement fraud matters knows which records to request first, which third parties are likely to hold corroborating material, and which steps commonly get skipped and cause problems later. That knowledge is generally undocumented and leaves with the person. Proposing candidate steps from the case's known facts and the organization's approved procedures puts a starting set in front of a less experienced investigator, and gives an experienced one a check against omission rather than a substitute for judgment.

The constraint is that suggestions must come from approved procedure and case content, not from open-ended generation about how to investigate. A step proposed for a technique the organization has not authorized, or for a matter type whose procedure differs, is worse than no suggestion — it invites investigative activity that will not survive review. Suggestions are candidates the investigator accepts, adapts, or rejects, and the plan remains theirs.

<p class="discovery-label">Discovery questions</p>

- Where does investigative know-how live in this program — documented procedure, training, or individual experience?
- Are there approved investigative procedures by matter type, and are they current?
- What is the experience distribution across investigators, and how are new investigators brought up?
- Which steps are most commonly omitted, and how is that usually discovered?
- What would an investigator need to see alongside a proposed step to judge whether it applies?
- Which techniques require authorization and must never appear as a routine suggestion?
- How should a proposed step that the investigator rejects be recorded, if at all?

<p class="pattern-label">Implementation pattern</p>

- Maintain approved investigative procedures in a policy and authority library with version and effective-date metadata, so suggestions can be grounded in current authority.
- Present suggested steps as candidates the investigator adds, edits, or dismisses, never as tasks created automatically.
- Restrict suggestion to techniques authorized for the matter type, and exclude anything requiring separate authorization from routine proposal.
- Show the procedure and the case facts behind each suggestion, so the investigator evaluates the basis rather than the phrasing.
- Record which suggestions were accepted, adapted, and rejected, so proposal quality is measurable against practice.
- Report acceptance rates by matter type and procedure, so a stale or poorly scoped procedure library becomes visible.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model with retrieval over approved procedures and comparable closed matters to propose candidate investigative steps from the case's known facts.
- Ground every proposal in a cited procedure or a prior matter, and surface that citation with the suggestion.
- Configure the model to propose nothing rather than improvise a step when the procedure library holds no applicable guidance.
- Exclude techniques requiring specific authorization from the proposal set, so authorization is never implied by a suggestion.
- Monitor acceptance and rejection rates by matter type, and treat a category investigators consistently reject as a signal to fix the underlying procedure rather than the prompt.

<p class="eyebrow">Use case</p>

## Identify Unanswered Questions or Inconsistencies

An investigation accumulates material faster than anyone rereads it. A subject's account in a second interview may not match the first, a date in a records response may contradict a witness statement, and an objective set in the original plan may have quietly gone unaddressed while attention went to a more productive line. Surfacing these — open objectives with no completed work, contradictions between sources, and assertions no one has attempted to corroborate — lets an investigator close gaps while the matter is still open rather than discovering them during report review or, worse, at a hearing.

A flagged inconsistency is an observation, not a finding. Two sources can disagree because one is mistaken, because memories differ, because a document is ambiguous, or because someone is lying — and distinguishing those is investigative work, not a system output. The value is in reliably noticing that the disagreement exists across a large body of material; the investigator decides what it means, and the record should capture that resolution so the same gap is not re-flagged indefinitely.

<p class="discovery-label">Discovery questions</p>

- How does an investigator today check that every objective in the plan has been addressed?
- At what point are contradictions between sources usually noticed — during the work, at report writing, or later?
- How large does a case file typically get, and is it realistic to reread it before closing?
- Which kinds of inconsistency matter most in this program — dates, amounts, sequence of events, attribution?
- What review happens before a report of investigation is finalized, and what does it catch?
- How should an investigator record that a flagged inconsistency has been considered and resolved?
- What would make gap flags useful rather than noise investigators learn to dismiss?

<p class="pattern-label">Implementation pattern</p>

- Use a rules engine to detect structural gaps deterministically — objectives with no completed tasks, lines of inquiry with no artifacts, required steps not performed for the matter type.
- Evaluate gaps both on a schedule and on case events, so completing a task re-tests the objective it served.
- Present each flag with the material behind it, so the investigator judges it in place rather than searching for the source.
- Require a recorded resolution to dismiss a flag, and keep that resolution attached so the same gap is not re-raised.
- Route unresolved flags to supervisory review before findings are finalized, rather than relying on the investigator to self-check.
- Report recurring dismissals by rule, so a rule producing noise is retuned or retired instead of trained around.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model over the case record to surface contradictions between sources that a structural rule cannot detect — differing accounts of the same event, inconsistent dates, or an assertion no source corroborates.
- Cite both sides of every proposed inconsistency, so the investigator reads the underlying statements rather than a characterization of them.
- Present inconsistencies as observations for investigative judgment, and keep the model out of assessing credibility or explaining why sources differ.
- Keep deterministic rules as the detection layer for structural gaps, and use the model only where the gap is semantic.
- Monitor precision on flagged inconsistencies, since a high false-positive rate is what causes investigators to stop reading the flags at all.

<p class="eyebrow">Use case</p>

## Recommend Task Sequencing

Order matters in investigative work, and getting it wrong is expensive in ways that are hard to reverse. Interviewing a subject before obtaining the documents that would test their account forfeits the opportunity to put those documents to them. Approaching a witness before securing records can prompt evidence to disappear. Some steps carry long lead times and must start early to land on time, and some cannot begin until an authorization is granted or a prior result is in hand. Sequencing works these dependencies, lead times, and deadlines into an order that respects all of them.

Most of this is constraint satisfaction rather than prediction — dependencies, durations, availability, and fixed dates produce a defensible order arithmetically. What benefits from judgment is noticing dependencies nobody wrote down, particularly the investigative-sequence conventions experienced investigators observe without articulating. A recommended order is a proposal; the investigator retains authority to sequence differently, because operational factors the system cannot see routinely override the arithmetic.

<p class="discovery-label">Discovery questions</p>

- Which sequencing conventions does this program observe — records before interviews, subject last, or others?
- Which tasks have long lead times that must start early to meet a deadline?
- What dependencies exist between tasks, and are they written down or held as practice?
- What are the consequences in this program of interviewing a subject too early?
- How is task order decided today, and does it vary by investigator?
- What operational factors would legitimately override a recommended sequence?
- How would a sequencing mistake be noticed, and at what cost?

<p class="pattern-label">Implementation pattern</p>

- Model dependencies between tasks explicitly, so the constraint is data rather than convention held in an investigator's head.
- Use a scheduling and dependency solver to order tasks against dependencies, durations, resource availability, and fixed deadlines.
- Encode program sequencing conventions as dependency rules — records before subject interview, authorization before technique — so they apply consistently rather than by recollection.
- Present the recommended sequence as a proposal the investigator accepts or overrides, with an override reason recorded.
- Surface the critical path and the tasks that must start now to meet a binding deadline, rather than presenting an undifferentiated ordered list.
- Recompute the sequence when a task completes, a deadline moves, or a resource becomes unavailable, so the order stays current.
- Report override reasons, so conventions that exist in practice but not in the dependency rules get captured.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to propose dependencies that were never recorded, drawing on approved procedure and comparable closed matters, and add confirmed ones to the solver's inputs.
- Keep the sequencing arithmetic itself deterministic, so a recommended order can be explained by its constraints rather than by a model's output.
- Explain each proposed dependency in terms of the investigative reason for it, so the investigator can judge whether it applies to this matter.
- Monitor which proposed dependencies are confirmed and which are rejected, and promote consistently confirmed ones into the deterministic rule set.

## Architecture

Build toward this shape. It combines the implementation patterns and AI opportunities from the use cases above into one design, and it names no product or vendor. Agree on it before you evaluate any product, because it sets what any product you choose has to do.

Keep AI out of the arithmetic. Work out dependencies, deadlines, and missing steps with rules, so you can explain any ordering or flag by the constraints behind it. Use a model only for what rules cannot reach: a dependency nobody recorded, a contradiction between two accounts, a step drawn from written procedure. Treat each of those as a proposal for someone to accept.

<div class="architecture-stack" aria-label="Logical architecture for Investigative Planning and Tasking">
  <section class="architecture-layer architecture-layer--experience">
    <p class="architecture-layer-title"><span>01</span> Experience</p>
    <div class="architecture-nodes">
      <div><strong>Investigator planning workspace</strong><small>Plan, lines of inquiry, and a cross-case task view at the point of work.</small></div>
      <div><strong>Supervisor caseload view</strong><small>Plan approvals, capacity conflicts, and unresolved gaps awaiting review.</small></div>
    </div>
  </section>
  <section class="architecture-layer">
    <p class="architecture-layer-title"><span>02</span> Planning and tasking core</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Plan and lines of inquiry</strong><small>Objectives, scope, authorized techniques, and sufficiency standard.</small></div>
      <div><strong>Task and dependency model</strong><small>Owners, due dates, completion criteria, and dependencies.</small></div>
      <div><strong>Resource and deadline coordination</strong><small>Required capacity, lead times, and derived due dates.</small></div>
      <div><strong>Plan revision history</strong><small>Superseding versions with their prompt and approval.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--platform">
    <p class="architecture-layer-title"><span>03</span> Shared solution services</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entitlement service</strong><small>Role- and case-scoped access, including work product protection.</small></div>
      <div><strong>Workflow engine</strong><small>Plan approval, technique authorization, and scope expansion gates.</small></div>
      <div><strong>Rules engine</strong><small>Deadline derivation, dependency rules, and structural gap detection.</small></div>
      <div><strong>Search and notification</strong><small>Entitlement-aware search, task routing, and deadline alerts.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--intelligence">
    <p class="architecture-layer-title"><span>04</span> Optional intelligence</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Investigative step suggestion</strong><small>Candidate steps grounded in cited procedure and prior matters.</small></div>
      <div><strong>Gap and inconsistency detection</strong><small>Semantic contradictions surfaced with both sources cited.</small></div>
      <div><strong>Dependency proposal</strong><small>Unrecorded dependencies offered to the deterministic solver.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--records">
    <p class="architecture-layer-title"><span>05</span> Data and authoritative systems</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Case data store</strong><small>Plans, lines of inquiry, tasks, dependencies, and assignments.</small></div>
      <div><strong>Append-only activity log</strong><small>Immutable plan and task history with actor and timestamp.</small></div>
      <div><strong>Policy and authority library</strong><small>Approved investigative procedures with effective versions.</small></div>
      <div><strong>Prior matter history</strong><small>Comparable closed matters available for grounding proposals.</small></div>
    </div>
  </section>
  <aside class="architecture-controls"><strong>Control plane</strong><span>Identity and access · Work product protection · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation</span></aside>
</div>

### Baseline and additive components

Build the baseline first, because nearly every use case depends on it. Add each of the other components later, when you commit to the use case that needs it. Do not buy everything up front.

| Component | What it must do | When to build |
| --- | --- | --- |
| Case management platform | Hold the plan, its lines of inquiry, tasks, assignments, and revisions | Build first |
| Case data store | Store plans, tasks, dependencies, assignments, and resource requirements | Build first |
| Append-only activity log | Record plan revisions and task actions with actor and timestamp, and never overwrite | Build first |
| Entitlement service | Decide what each person may see, wherever content is read, including work product | Build first |
| Workflow engine | Gate plan approval, technique authorization, and scope expansion behind a recorded approval | Build first |
| Rules engine | Derive due dates from case deadlines and evaluate structural gaps on a schedule and on events | Build first |
| Notification and queue service | Route task assignments, approaching deadlines, and approvals to the right person | Build first |
| Resource and capacity data | Show availability, qualifications, and current commitments at the point of planning | Build first |
| Search and retrieval | Search plans, tasks, and prior matters within the requester's entitlements | Build first |
| Reporting | Report task age, completion, revision frequency, override reasons, and resource conflicts | Build first |
| Scheduling and dependency solver | Order tasks against dependencies, durations, availability, and fixed deadlines | Add to unlock sequencing recommendation |
| Policy and authority library | Hold approved investigative procedures with version and effective-date metadata | Add to unlock step suggestion grounded in procedure |
| Prior matter history | Surface comparable closed matters for grounding suggestions and dependencies | Add to unlock proposals drawn from prior practice |
| Generative model with grounding and citation | Propose steps, contradictions, and dependencies from cited procedure and case content | Add to unlock the three proposal use cases |
| Model evaluation and monitoring | Track acceptance rates, flag precision, and drift over time | Add alongside any model component |

Store each task as its own record with an owner, a due date, completion criteria, and dependencies. Free-text checklists support none of what follows. Due dates can only be derived from case deadlines if that relationship is stored as data. A sequence can only be calculated if dependencies are recorded. A gap can only be detected if each task points at the objective it serves. Work can only be carried forward at handoff if there is something structured to carry.

Use one policy and authority library across capabilities. It is the same component Intake Assessment & Triage uses for statutes and criteria. Build one versioned library with effective dates, and let each capability pull the part it needs.

## Microsoft Technology Mapping

Use this mapping to move from the logical architecture to a candidate Microsoft implementation. Keep the architecture above as the definition, and treat this as one realization of it — add or replace a realization section without changing anything upstream.

> Verify each mapping against current vendor documentation, record the evidence and review date, and confirm the support type before using any row in a customer conversation.

| Architecture component | Realize with | Support type |
| --- | --- | --- |
| Case management platform | Dynamics 365 Customer Service, or a model-driven Power App on Dataverse | Configurable |
| Case data store | Microsoft Dataverse | Native |
| Append-only activity log | Dataverse auditing for record history; Microsoft Purview Audit for tenant activity | Configurable |
| Entitlement service | Microsoft Entra ID for identity; Dataverse security roles with row-level and column security for work product scoping | Configurable |
| Workflow engine | Power Automate; Dataverse business process flows | Native |
| Rules engine | Dataverse business rules and scheduled Power Automate flows; Azure Functions where deadline or gap logic outgrows low-code | Configurable |
| Notification and queue service | Dataverse queues for work routing; Power Automate with Teams and Outlook | Native |
| Resource and capacity data | Dynamics 365 Field Service resource scheduling, or Dataverse tables with Power BI capacity views | Configurable |
| Search and retrieval | Azure AI Search, security-trimmed to the requester's permissions | Configurable |
| Reporting | Power BI | Native |
| Scheduling and dependency solver | Microsoft Project for the Web for dependency-aware scheduling; Azure Functions with a constraint solver where sequencing rules are program-specific | Partner / custom |
| Policy and authority library | SharePoint with managed metadata and versioning, indexed by Azure AI Search | Configurable |
| Prior matter history | Dataverse, with Azure AI Search across closed matters | Configurable |
| Generative model with grounding and citation | Azure OpenAI in Azure AI Foundry, grounded through Azure AI Search | Configurable |
| Model evaluation and monitoring | Azure AI Foundry evaluations, Azure AI Content Safety, Azure Monitor | Configurable |
| Records and retention | Microsoft Purview records management and retention labels | Configurable |

### Resolve these four before committing

- **Decide where tasks live before choosing a task surface.** Planner and To Do give investigators a familiar interface but hold tasks outside Dataverse, which breaks dependency modeling, deadline derivation, and gap detection — everything this capability's value rests on. Keep tasks in Dataverse as the system of record and treat any Microsoft 365 task surface as a synchronized view.
- **Enforce work product protection as a distinct classification, not as case access.** Investigative plans are typically protected work product while case evidence is not, and Dataverse row-level security applied at case granularity does not make that distinction. Model plans as separately classified records and confirm the boundary holds through Azure AI Search results, Power BI datasets, and retrieval grounding.
- **Confirm Project for the Web models the dependencies you actually need.** It handles conventional predecessor relationships well, but investigative sequencing conventions — authorization before technique, records before subject interview — are program rules rather than schedule dependencies. Expect to encode those separately and treat the scheduling tool as one input rather than the sequencing authority.
- **Establish the acceptance-tracking path before enabling suggestions.** Proposal quality can only be judged by what investigators accept, adapt, and reject, and that requires recording the disposition of every suggestion against the matter type and procedure that produced it. Model that relationship in Dataverse first — retrofitting it across matters where suggestions were already shown is not possible.
