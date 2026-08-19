---
title: Intake Assessment & Triage
summary: Ability to determine jurisdiction, assess credibility and severity, and decide whether to open, decline, refer, or consolidate a matter.
status: Draft
tier: Tier 2 · Practitioner
scope: All
updated: 2026-08-18
owner: Content team
workload: Investigations
parent_title: Investigations
parent_url: /workloads/investigations/
order: 2
sections:
  - Overview
  - Maturity Levels
  - Determine Jurisdiction and Investigative Authority
  - Assess Credibility, Severity, and Priority
  - Conduct Preliminary Inquiries
  - Accept, Decline, Refer, or Consolidate Matters
  - Summarize an Allegation for Triage
  - Recommend Relevant Policies or Investigative Criteria
  - Assist Risk-Based Prioritization
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

Ability to determine jurisdiction and investigative authority, assess a matter's credibility, severity, priority, and potential impact, conduct preliminary inquiries where needed, and decide whether to accept, decline, refer, or consolidate it.

This capability covers everything between a captured submission and a disposition decision. It includes any preliminary inquiry needed to make that decision, but not the investigation itself, which begins once a case is opened under Investigative Case Management.

## Maturity Levels

| Stage | Typical characteristics |
| --- | --- |
| Not performed | Triage decisions are made informally with no documented criteria. |
| Manual / ad hoc | Individual triage officers apply their own judgment with limited consistency. |
| Standardized | Documented criteria and a consistent disposition process apply across triage officers. |
| Integrated | Triage draws on prior case history and cross-references active matters automatically. |
| Automated / optimized | Risk-based prioritization and duplicate detection support triage, with the officer retaining decision authority. |

<p class="eyebrow">Use case</p>

## Determine Jurisdiction and Investigative Authority

Before anything else, the organization has to establish that it may lawfully investigate the matter in front of it. That test combines subject matter, the subject's affiliation or regulated status, geography, the time period involved, and the specific statutory or delegated authority being exercised — and it frequently produces a partial answer, where some allegations in a submission fall inside the organization's authority and others do not. Getting this wrong in either direction carries cost: investigating without authority taints everything that follows, while wrongly declining leaves a legitimate matter unexamined.

The determination has to be recorded with the authority it rests on, not just its outcome. Years later, an oversight body, a court, or a subject's counsel may ask on what basis the organization asserted authority, and the answer needs to be in the record rather than in the recollection of whoever made the call. Where authority is shared or concurrent with another organization, the record should also show whether that was resolved by agreement, by deconfliction, or simply left ambiguous.

<p class="discovery-label">Discovery questions</p>

- What statutory, regulatory, or delegated authority does the organization investigate under, and does it differ by matter type?
- Which factors determine whether a matter falls inside that authority — subject matter, affiliation, geography, time period, dollar threshold?
- How is a submission handled when only some of its allegations fall within the organization's authority?
- Where does authority overlap with another organization, and how is that resolved today?
- What is recorded when authority is asserted, and would it satisfy a challenge years later?
- Who has the standing to make or override a jurisdictional determination?
- How often does a matter turn out to be outside authority after work has already begun?

<p class="pattern-label">Implementation pattern</p>

- Encode the jurisdictional test in a rules engine keyed on subject matter, affiliation, geography, time period, and any applicable thresholds, so the determination is reproducible rather than reconstructed.
- Model authority as a structured attribute of the determination, naming the specific statute, regulation, or delegation being relied on rather than recording only a yes or no.
- Configure the platform to support a partial determination, so a submission can be accepted in part and referred or declined in part without losing the connection between the pieces.
- Represent concurrent and shared authority explicitly, and record how an overlap was resolved.
- Use a workflow engine to route determinations that fall outside settled rules to legal counsel for a recorded decision.
- Record every determination, its basis, and its author in the append-only activity log, and treat a later reversal as a superseding entry rather than an edit.
- Report the rate at which authority is revisited after acceptance, so rules that misjudge jurisdiction are found rather than absorbed.

<p class="eyebrow">Use case</p>

## Assess Credibility, Severity, and Priority

Assessment weighs what the submission actually supports. Credibility considers the specificity of the allegation, whether the reporter had a basis to know what they describe, whether supporting material corroborates it, and whether anything suggests a motive to fabricate — while recognizing that anonymous and low-detail submissions are not thereby untrue, only harder to act on. Severity and potential impact are separate axes: the harm alleged, the amount at stake, the number of people affected, the seniority or public trust of the subject, and any risk of continuing or escalating harm.

These judgments determine what happens to real people, so the criteria matter as much as the conclusion. Written criteria applied consistently across officers are what make a triage program defensible; undocumented judgment produces outcomes that vary by who happened to be on shift and cannot be explained afterward. The assessment record should show the factors considered and the weight given to them, so that a decision can be reviewed on its reasoning rather than only on its result.

<p class="discovery-label">Discovery questions</p>

- What criteria are used to assess credibility today, and are they written down anywhere?
- How is a specific but anonymous allegation treated compared with a vague but attributed one?
- Which dimensions of severity matter most in this program — harm, dollar value, people affected, position of trust, ongoing risk?
- How much variation exists between officers assessing similar matters, and how would the organization know?
- What is recorded about an assessment beyond its conclusion?
- Which matters bypass ordinary assessment because of who or what they involve?
- How does an assessment get revisited when new information arrives before disposition?

<p class="pattern-label">Implementation pattern</p>

- Externalize assessment criteria into a rules engine as named, weighted factors, so the same criteria apply to every matter and can be revised deliberately.
- Configure the platform to capture the factors considered and their assessed values, not only the resulting rating.
- Separate credibility, severity, and priority as distinct recorded dimensions, so a highly credible low-impact matter is not conflated with a severe but unsupported one.
- Surface prior matter history for the subjects and entities involved at the point of assessment, drawn from the case system rather than from an officer's memory.
- Use a workflow engine to route matters that meet defined sensitivity conditions to a designated reviewer regardless of assessed severity.
- Configure reassessment as a new recorded assessment that supersedes the previous one, preserving both.
- Report assessment distributions by officer and matter type, so inconsistency between officers becomes visible and correctable.

<p class="eyebrow">Use case</p>

## Conduct Preliminary Inquiries

Some matters cannot be assessed on what was submitted. A preliminary inquiry gathers just enough additional information to decide — confirming that a named person holds the position alleged, checking whether a payment described actually occurred, clarifying an ambiguous account with the reporter, or reviewing a program record that would corroborate or dispose of the allegation. It is bounded work with a decision as its object, and it is not an investigation.

The boundary is the hard part, and it is both a resource question and a rights question. A preliminary inquiry that quietly expands into full investigative activity consumes capacity that was never authorized and may exercise investigative powers, contact subjects, or create records that carry consequences for a person against whom nothing has yet been substantiated. Scope, permitted activities, and a time limit should be set when the inquiry opens, and the inquiry should either conclude in a disposition or convert into an opened case through a recorded decision.

<p class="discovery-label">Discovery questions</p>

- What proportion of submissions cannot be dispositioned on what was originally submitted?
- What kinds of checks does a preliminary inquiry typically involve, and which sources does it draw on?
- Which investigative activities are permitted during a preliminary inquiry, and which are not?
- Is the subject contacted during a preliminary inquiry, and what does that mean for them if nothing is substantiated?
- Is there a time limit, and what happens when it is reached without a decision?
- How is the transition from preliminary inquiry to opened case recorded and approved?
- What happens to the record of a preliminary inquiry that ends in a declination?

<p class="pattern-label">Implementation pattern</p>

- Model the preliminary inquiry as a distinct record with its own scope, permitted activities, time limit, and authorizing approval, rather than as an unnamed period before a case exists.
- Use a workflow engine to require a recorded approval to open a preliminary inquiry and another to extend it beyond its time limit.
- Configure the platform to gate activities not permitted at this stage, so expansion into investigative work requires opening a case rather than happening by drift.
- Enforce entitlements on preliminary inquiry records at read time, since they concern people against whom nothing has been substantiated.
- Configure conversion to an opened case to carry the inquiry's findings, activities, and authorizations forward without re-keying.
- Apply a defined retention position to inquiries that end in declination, so records about unsubstantiated allegations are not held indefinitely by default.
- Report preliminary inquiry duration and conversion rates, so inquiries functioning as unacknowledged investigations become visible.

<p class="eyebrow">Use case</p>

## Accept, Decline, Refer, or Consolidate Matters

Disposition is the decision this capability exists to produce: open a case, decline the matter, refer it to another organization better placed to act, or consolidate it into an existing case addressing the same underlying conduct. Each outcome needs its own recorded rationale, and each carries a different obligation — a referral needs confirmation that the receiving organization accepted it, a consolidation needs the original submission preserved rather than absorbed, and an acceptance needs to carry everything gathered so far into the opened case.

Declination deserves particular attention, because it is the outcome most likely to be questioned later and the one organizations record least well. A declined matter that resurfaces — because the conduct continued, because the reporter escalated, or because an oversight body reviewed a sample of closures — has to be explainable on the record that existed at the time. That means capturing the basis for declining, what was and was not checked, who approved it, and what the reporter was told, rather than closing with a status code and no reasoning.

<p class="discovery-label">Discovery questions</p>

- What disposition outcomes are available, and are they defined consistently across program areas?
- What rationale is recorded when a matter is declined, and would it withstand review two years later?
- Who has authority to decline, and does that change with the severity or sensitivity of the allegation?
- What is the reporter told when a matter is declined or referred, and who tells them?
- How is a referral tracked once it leaves the organization, and how does the organization learn whether it was accepted?
- When a matter is consolidated, what happens to the original submission and to the person who reported it?
- How would the organization detect that a declined matter should have been accepted?

<p class="pattern-label">Implementation pattern</p>

- Configure the platform to require a structured disposition category and a recorded rationale on every outcome, including declination.
- Capture what was checked before declining, so a later reviewer can distinguish a considered decision from an unexamined one.
- Use a workflow engine to gate disposition behind the approval authority appropriate to the matter's severity and sensitivity.
- Configure referrals to track acceptance by the receiving organization, so a referred matter cannot disappear between two organizations.
- Model consolidation to preserve every contributing submission and reporter, and to record the basis on which the matters were judged to be the same.
- Use a notification service to communicate the outcome to the reporter within the applicable confidentiality constraints, and record what was communicated.
- Configure acceptance to carry the submission, its attachments, assessment, and any preliminary inquiry forward into the opened case without re-keying.
- Report declination rates and reversal rates by category and officer, and review a sample of declinations on a defined cycle.

<p class="eyebrow">Use case</p>

## Summarize an Allegation for Triage

Triage officers work through a queue, and much of what reaches them is long, disorganized, or repetitive — a rambling letter, a forwarded email chain, a stack of attachments where the relevant page is one of forty. Reading each in full is what makes triage slow, and slow triage is what lets a serious matter sit in a queue behind routine ones. A summary that states the core allegation, the subjects, the timeframe, what supporting material exists, and what the submission does not establish lets an officer orient quickly and decide where to spend attention.

The summary supports the decision; it does not make it. An officer who dispositions from a summary without opening the underlying submission has effectively delegated a consequential judgment to a compression step, and what a summary omits is exactly what tends to matter — a detail that establishes credibility, a name that connects to an existing case. Summaries should cite what they draw from, state plainly what the submission leaves unaddressed, and never become the artifact the disposition rationale is written against.

<p class="discovery-label">Discovery questions</p>

- What does a triage officer read today before making a disposition, and how long does that take?
- What is the current queue volume and backlog, and how does a serious matter get noticed within it?
- What has to appear in a summary for an officer to orient without opening the full submission?
- How would the organization know if officers began dispositioning from summaries alone?
- What sourcing would an officer need before relying on a summary?
- How should a summary represent what the submission does not establish?
- Does summarized material ever become part of the record, and should it?

<p class="pattern-label">Implementation pattern</p>

- Enforce the officer's existing entitlements at retrieval time, so a summary cannot surface content they could not open directly.
- Configure summaries to carry their scope and generation timestamp, so a reader knows what the summary covers and how current it is.
- Present the summary alongside the underlying submission rather than in place of it, so verifying a statement takes one action.
- Keep generated summaries in a working state distinct from the disposition record, and require a deliberate logged action to place one in the official record.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to compose triage summaries from the submission and its supporting materials, rather than asking officers to read every submission in full to orient.
- Ground the model in the submitted content only, and require each material statement to cite the artifact and passage it came from.
- Configure the summary to state explicitly what the submission does not establish, so gaps are visible rather than smoothed over.
- Monitor summary fidelity against the underlying submissions on a defined cycle, and watch for officers dispositioning without opening the source.

<p class="eyebrow">Use case</p>

## Recommend Relevant Policies or Investigative Criteria

Whether conduct is actionable depends on the specific policy, statute, regulation, or program rule it would violate, and that body of authority is large, changes over time, and differs by program area. A triage officer assessing an allegation about procurement conduct, a licensing violation, and a personnel matter in the same afternoon cannot hold all of it in memory, and the applicable rule is frequently the one nobody thought to look for. Surfacing candidate authorities against the allegation's substance puts the relevant text in front of the officer at the point of decision.

Recommendation is a research aid, not a legal conclusion. The officer decides which authority applies; the system's job is to make the candidates and their actual text easy to reach, with enough context to judge relevance. Version matters more here than anywhere else on this page — an assessment made against a policy that has since been superseded, or worse against a superseded version presented as current, is a defect that surfaces only under challenge. Recommendations should name the version they refer to and the date it was in force.

<p class="discovery-label">Discovery questions</p>

- Which bodies of policy, statute, regulation, and program rule bear on triage decisions in this organization?
- How does an officer find the applicable authority today, and how confident are they that they found all of it?
- How often does the relevant rule turn out to be one the officer did not think to consult?
- Where does authoritative policy live, is it current, and is anyone responsible for keeping it so?
- How are superseded versions handled, and can the organization establish what was in force on a given date?
- What would an officer need to see to judge whether a recommended authority actually applies?
- Which determinations must be made by counsel rather than by a triage officer?

<p class="pattern-label">Implementation pattern</p>

- Maintain policies, statutes, regulations, and program rules as a managed library with version and effective-date metadata, rather than as documents scattered across shared drives.
- Configure search over that library to be entitlement-aware, since some internal policy is itself restricted.
- Present recommended authorities with their actual text and their effective version, so the officer evaluates the source rather than a paraphrase.
- Record which authorities were considered and which were relied on in the assessment, so the reasoning is reconstructable.
- Capture the version identifier of any authority relied on, so a later reviewer can establish what was in force at the time.
- Use a workflow engine to route determinations reserved to counsel rather than presenting them as triage decisions.

<p class="ai-label">AI opportunity</p>

- Use retrieval over the managed policy library to propose potentially relevant policies, statutes, and investigative criteria from the allegation's substance.
- Return the source text and effective version with every proposal, so the officer reads the authority rather than a summary of it.
- Restrict retrieval to the current in-force version by default, and make consulting a superseded version a deliberate action.
- Configure the model to return nothing rather than a loosely related authority when the library holds no good match.
- Monitor which proposals officers rely on and which they ignore, so a library that is stale or poorly scoped becomes visible.

<p class="eyebrow">Use case</p>

## Assist Risk-Based Prioritization

Prioritization decides what gets attention first when incoming volume exceeds capacity — which is the ordinary condition of most triage programs. Ordering the queue by risk rather than by arrival date means a serious matter is not waiting behind routine ones, but it also means the organization is making an explicit statement about what it considers serious, applied to every submission. That statement should come from policy, expressed as weighted criteria the organization can defend, rather than emerging implicitly from a model trained on past decisions.

Training on historical dispositions is the failure mode worth naming. If a program has historically under-attended a category of allegation, a model learned from those decisions reproduces that pattern and lends it the appearance of objectivity. Prioritization should therefore order what human criteria already identified rather than substitute for those criteria, keep the officer's authority to reorder intact, and be evaluated on the matters it ranked low that later proved serious — which requires a feedback path from case outcomes back into triage that most programs do not have.

<p class="discovery-label">Discovery questions</p>

- Does incoming volume exceed triage capacity, and by how much?
- How is the queue ordered today — arrival date, severity, officer preference, or something else?
- What does the organization consider high priority, and is that written as policy or held as practice?
- Which categories of allegation have historically received less attention, and why?
- What feedback exists from case outcomes back to the triage decisions that produced them?
- How would the organization detect that a low-ranked matter should have been ranked high?
- What authority does an officer have to reorder the queue, and how is that recorded?

<p class="pattern-label">Implementation pattern</p>

- Express prioritization criteria as policy-defined weighted factors in a rules engine, so the organization can state and defend what it treats as urgent.
- Keep deterministic rules as the authority for conditions that must always escalate, and use scoring to order within them rather than to decide them.
- Use a queue service to order the triage queue by the resulting priority while preserving the officer's ability to reorder with a recorded reason.
- Configure the platform to record proposed priority, final priority, and any override reason, so scoring accuracy is measurable against decisions.
- Establish a feedback path from case outcomes back to the triage assessment that produced them, so prioritization can be evaluated against what matters turned out to be.
- Review low-priority declinations on a sampled cycle rather than relying on exceptions to surface on their own.
- Report priority distribution and override rates by allegation category, so systematic under-attention becomes visible.

<p class="ai-label">AI opportunity</p>

- Use prediction to score incoming matters against policy-defined risk factors, ordering the queue rather than deciding disposition.
- Derive scoring from stated criteria rather than training on historical dispositions, so past under-attention is not learned and reproduced.
- Return the factors driving each score so an officer can judge the ranking rather than accept a number.
- Evaluate the model on matters it ranked low that later proved serious, and treat overall accuracy as the less informative measure.
- Monitor score distributions by allegation category and subject characteristics for disparate effect, with a defined path for review when a pattern appears.

## Architecture

Build toward this shape. It combines the implementation patterns and AI opportunities from the use cases above into one design, and it names no product or vendor. Agree on it before you evaluate any product, because it sets what any product you choose has to do.

Keep AI out of the decision. Models can prepare and order the work: summarize a submission, retrieve the relevant authority, rank the queue. Officers decide jurisdiction, credibility, and disposition, using rules the system applies consistently. Design that split deliberately, and hold to it whatever product you buy.

<div class="architecture-stack" aria-label="Logical architecture for Intake Assessment and Triage">
  <section class="architecture-layer architecture-layer--experience">
    <p class="architecture-layer-title"><span>01</span> Experience</p>
    <div class="architecture-nodes">
      <div><strong>Triage officer workspace</strong><small>Queue, submission, assessment, and disposition at the point of decision.</small></div>
      <div><strong>Supervisory review queue</strong><small>Approvals, sensitive matters, and sampled declination review.</small></div>
    </div>
  </section>
  <section class="architecture-layer">
    <p class="architecture-layer-title"><span>02</span> Triage core</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Jurisdiction and authority</strong><small>Determination, the authority relied on, and partial outcomes.</small></div>
      <div><strong>Assessment record</strong><small>Credibility, severity, and priority as separate recorded dimensions.</small></div>
      <div><strong>Preliminary inquiry</strong><small>Scope, permitted activities, time limit, and authorization.</small></div>
      <div><strong>Disposition and consolidation</strong><small>Accept, decline, refer, or consolidate with recorded rationale.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--platform">
    <p class="architecture-layer-title"><span>03</span> Shared solution services</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entitlement service</strong><small>Role- and matter-scoped access enforced wherever content is read.</small></div>
      <div><strong>Rules engine</strong><small>Jurisdictional tests, assessment criteria, and escalation conditions.</small></div>
      <div><strong>Workflow engine</strong><small>Approval gates for inquiry, disposition, and legal determination.</small></div>
      <div><strong>Search and notification</strong><small>Entitlement-aware search, queue routing, and reporter communication.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--intelligence">
    <p class="architecture-layer-title"><span>04</span> Optional intelligence</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Grounded summarization</strong><small>Triage summaries composed from cited submission content.</small></div>
      <div><strong>Policy and criteria retrieval</strong><small>Candidate authorities returned with source text and version.</small></div>
      <div><strong>Risk-based prioritization</strong><small>Queue ordering against policy-defined factors with stated reasoning.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--records">
    <p class="architecture-layer-title"><span>05</span> Data and authoritative systems</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Submission and case data store</strong><small>Submissions, assessments, dispositions, and opened cases.</small></div>
      <div><strong>Append-only activity log</strong><small>Immutable determination history with actor and timestamp.</small></div>
      <div><strong>Policy and authority library</strong><small>Statutes, regulations, and program rules with effective versions.</small></div>
      <div><strong>Prior matter history</strong><small>Closed and declined matters available for cross-reference.</small></div>
    </div>
  </section>
  <aside class="architecture-controls"><strong>Control plane</strong><span>Identity and access · Reporter confidentiality · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation</span></aside>
</div>

### Baseline and additive components

Build the baseline first, because nearly every use case depends on it. Add each of the other components later, when you commit to the use case that needs it. Do not buy everything up front.

| Component | What it must do | When to build |
| --- | --- | --- |
| Intake and triage platform | Hold the submission, assessment, preliminary inquiry, and disposition record | Build first |
| Submission and case data store | Store matters, subjects, determinations, and opened cases | Build first |
| Append-only activity log | Record every determination with actor, basis, and timestamp, and never overwrite | Build first |
| Entitlement service | Decide what each person may see, wherever content is read | Build first |
| Rules engine | Evaluate jurisdictional tests, assessment criteria, and escalation conditions | Build first |
| Workflow engine | Gate inquiry authorization, disposition, and legal determination behind a recorded approval | Build first |
| Notification and queue service | Order the triage queue and communicate outcomes to reporters | Build first |
| Prior matter history | Surface closed and declined matters for the subjects and entities in hand | Build first |
| Search and retrieval | Search submissions and prior matters within the requester's entitlements | Build first |
| Reporting | Report declination, reversal, override, and duration measures by officer and category | Build first |
| Policy and authority library | Hold statutes, regulations, and program rules with version and effective-date metadata | Add to unlock criteria recommendation |
| Generative model with grounding and citation | Compose triage summaries and retrieve authorities from cited source content | Add to unlock summarization and policy retrieval |
| Risk scoring model | Score matters against policy-defined factors and return the factors behind the score | Add to unlock risk-based prioritization |
| Outcome feedback path | Return case outcomes to the triage assessment that produced them | Add alongside risk-based prioritization |
| Model evaluation and monitoring | Track summary fidelity, proposal reliance, score distribution, and disparate effect | Add alongside any model component |

Record all four triage decisions in one structure: jurisdiction, assessment, preliminary inquiry outcome, and disposition. For each one, store what was decided, against what criteria, on what basis in the material, and by whom under what authority. Record a declination as fully as an acceptance. Most programs do the opposite, which is backwards, because a declined matter has no case file to explain it later and declinations are what an oversight body samples. When a decision changes, add the new one and keep the old rather than editing it.

## Microsoft Technology Mapping

Use this mapping to move from the logical architecture to a candidate Microsoft implementation. Keep the architecture above as the definition, and swap this section for another vendor stack without changing anything upstream of it.

> Verify each mapping against current vendor documentation, record the evidence and review date, and confirm the support type before using any row in a customer conversation.

| Architecture component | Realize with | Support type |
| --- | --- | --- |
| Intake and triage platform | Dynamics 365 Customer Service, or a model-driven Power App on Dataverse | Configurable |
| Submission and case data store | Microsoft Dataverse | Native |
| Append-only activity log | Dataverse auditing for record history; Microsoft Purview Audit for tenant activity | Configurable |
| Entitlement service | Microsoft Entra ID for identity; Dataverse security roles and row-level security for matter scoping | Configurable |
| Rules engine | Dataverse business rules and Power Automate; Azure Functions where jurisdictional or scoring logic outgrows low-code | Configurable |
| Workflow engine | Power Automate; Dataverse business process flows | Native |
| Notification and queue service | Dataverse queues for work routing; Power Automate with Teams, Outlook, and Azure Communication Services | Native |
| Prior matter history | Dataverse, with Azure AI Search across archived and declined matters | Configurable |
| Search and retrieval | Azure AI Search, security-trimmed to the requester's permissions | Configurable |
| Reporting | Power BI | Native |
| Policy and authority library | SharePoint with managed metadata and versioning, indexed by Azure AI Search | Configurable |
| Generative model with grounding and citation | Azure OpenAI in Azure AI Foundry, grounded through Azure AI Search | Configurable |
| Risk scoring model | Azure Machine Learning where factors are quantitative; Azure OpenAI with a structured output schema where criteria are policy-expressed | Configurable |
| Outcome feedback path | Dataverse relationships from case outcome back to the originating assessment, surfaced in Power BI | Configurable |
| Model evaluation and monitoring | Azure AI Foundry evaluations, Azure AI Content Safety, Azure Monitor | Configurable |
| Records and retention | Microsoft Purview records management and retention labels | Configurable |

### Resolve these four before committing

- **Keep the jurisdictional determination in rules, not in retrieval.** Azure AI Search will surface the relevant statute; concluding that it confers authority is a legal determination. Encode the test in Dataverse business rules or Azure Functions and use retrieval to put the authority text in front of the officer, rather than letting a grounded answer stand in for the determination.
- **Index the policy library by version, not only by document.** SharePoint versions documents, but an Azure AI Search index holds whichever snapshot was crawled, and a criteria recommendation grounded in superseded policy is indefensible under challenge. Carry effective-date metadata into the index and record the version identifier on any authority relied on.
- **Retain declination records under their own policy.** A declined matter never becomes a case, so it falls outside case retention in Dataverse and can be aged out or kept indefinitely by default — both wrong. Set an explicit Purview retention position for declinations and for preliminary inquiries that concluded without substantiation.
- **Build the outcome feedback path before the scoring model, not after.** Without a Dataverse relationship carrying case outcomes back to the originating assessment, there is no way to evaluate prioritization on the matters it ranked low that later proved serious. That evaluation is the whole basis for trusting the ranking, and retrofitting the relationship across closed matters is considerably harder than modeling it up front.
