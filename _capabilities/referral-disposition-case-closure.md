---
title: Referral, Disposition & Case Closure
summary: Ability to refer matters for action, record outcomes and closure rationale, and complete retention requirements.
status: Draft
tier: Tier 2 · Practitioner
scope: All
updated: 2026-08-19
owner: Content team
workload: Investigations
parent_title: Investigations
parent_url: /workloads/investigations/
order: 14
sections:
  - Overview
  - Maturity Levels
  - Refer Matters for Prosecution or Other Action
  - Record Outcomes and Closure Rationale
  - Track Referral Acceptance and Downstream Action
  - Complete Retention and Disposition Requirements
  - Prepare Closure Summaries
  - Identify Unresolved Tasks Before Closure
  - Recommend Applicable Disposition Categories
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

Ability to refer matters for prosecution, civil action, administrative action, disciplinary action, recovery, or other disposition, record investigative outcomes and closure rationale, track referral acceptance and downstream actions, and complete retention and disposition requirements.

This capability closes the matter and hands it to whoever acts on it. It excludes the action taken by the receiving authority, which happens outside the investigative organization.

## Maturity Levels

| Stage | Typical characteristics |
| --- | --- |
| Not performed | Cases stop being worked without a recorded closure decision. |
| Manual / ad hoc | Closure is recorded as a status change, with rationale kept in narrative form. |
| Standardized | Referral and closure follow defined categories with a documented rationale and approval. |
| Integrated | Referral acceptance and downstream outcomes are tracked back against the originating case. |
| Automated / optimized | Unresolved tasks and records are checked before closure, with disposition categories proposed for approval. |

<p class="eyebrow">Use case</p>

## Refer Matters for Prosecution or Other Action

A referral hands a matter to an authority empowered to act on it: a prosecutor, a civil litigation office, a disciplinary or human resources authority, a licensing board, a debt recovery function, or another agency with jurisdiction the investigating organization lacks. One investigation frequently produces several referrals at once — the same conduct may support criminal prosecution, administrative sanction, and financial recovery — and each runs on its own timeline with its own acceptance criteria and its own outcome.

Concurrent referrals interact in ways that matter. A criminal referral commonly takes precedence, and administrative action proceeding in parallel can prejudice it; material admissible in one track may be restricted in another; and a declination in one does not determine the others. Modeling referrals as independent tracked objects against a single case, each with its own recipient, package, state, and constraints, is what lets the organization see the whole picture and honor the sequencing rules between tracks rather than relying on an investigator to hold them in mind.

<p class="discovery-label">Discovery questions</p>

- Which authorities receive referrals from this program, and for what kinds of matter?
- How often does one investigation produce more than one referral?
- What sequencing rules apply between criminal, administrative, and recovery tracks?
- What must be established before a referral may be made, and who approves it?
- How is a referral transmitted, and is receipt confirmed?
- What restrictions attach to material referred into each track?
- What happens when one track declines and others remain open?

<p class="pattern-label">Implementation pattern</p>

- Model each referral in a referral and outcome register as an independent record holding the receiving authority, referral type, package version, transmission method, and state, linked to the originating case.
- Support multiple concurrent referrals per case, and model inter-track constraints — precedence, hold, and material restrictions — as evaluable rules rather than as guidance.
- Use the rules engine to block or warn on an administrative referral while a criminal track holds precedence, configured per program rather than assumed.
- Gate referral through a workflow engine against the approval authority for its type, and record the approver against the package version referred.
- Assemble the referral package through the package assembly and production component, so what was transmitted is an immutable set with a manifest and integrity values.
- Carry each referred item's handling markings into the referral, and block transmission where markings conflict with the recipient's authorization.
- Record transmission and receipt confirmation as distinct state transitions, so an unacknowledged referral stays visibly outstanding.
- Log every referral state transition in the append-only activity log.

<p class="eyebrow">Use case</p>

## Record Outcomes and Closure Rationale

Closure records what the investigation established, what was done about it, and why the matter is finishing. That is more than a status change: it needs the findings reached, the disposition of each allegation and each subject, the referrals made, the rationale where no action followed, and the approval of whoever holds closure authority. Matters close for many reasons — substantiated and referred, not substantiated, insufficient evidence, subject no longer employed, statute expired, complainant withdrew — and the reason drives both the retention schedule and how the closure counts in program statistics.

The rationale is what gets examined later. A matter closed as insufficient evidence will be read differently from one closed as unfounded, and a closure whose recorded reason does not match the findings is the kind of discrepancy an oversight review is designed to find. Closure also has to be per subject and per allegation rather than only per case, because a matter with three subjects may substantiate against one and clear the other two, and recording a single case-level outcome erases the distinction for the people who were cleared.

<p class="discovery-label">Discovery questions</p>

- What closure reasons does this program use, and are they defined?
- Is closure recorded per case, per allegation, or per subject?
- Who holds closure authority, and does it vary by outcome or severity?
- What rationale is recorded when no action follows a substantiated finding?
- How does the closure reason relate to the findings reached?
- How do closure reasons feed program statistics and reporting?
- What notification do subjects and complainants receive on closure?

<p class="pattern-label">Implementation pattern</p>

- Model closure as a structured record holding per-allegation and per-subject dispositions from a controlled vocabulary, alongside the case-level outcome.
- Derive the case-level outcome from constituent dispositions rather than capturing it independently, so the two cannot diverge.
- Require a rationale on every disposition, and use the rules engine to reject closure where a disposition conflicts with the findings register determination it corresponds to.
- Gate closure through a workflow engine against the authority appropriate to the outcome and matter sensitivity.
- Record the closure reason as structured data feeding program reporting, so statistics derive from the record rather than from separate tallies.
- Model subject and complainant notification obligations as tracked items generated at closure, with recipient, content constraints, and due date.
- Support reopening as a state transition creating a new investigative period linked to the original, preserving the earlier closure record intact.
- Log closure, notification, and reopening in the append-only activity log.

<p class="eyebrow">Use case</p>

## Track Referral Acceptance and Downstream Action

A referral leaves the organization but the matter does not end. The receiving authority may accept, decline, request additional work, or take an action months or years later — a prosecution, a settlement, a disciplinary sanction, a recovery. Those outcomes matter to the investigating organization: they measure whether its work is usable, they inform how future matters are prepared, and oversight bodies routinely ask what became of referrals.

Latency is the design problem. Downstream outcomes arrive long after the case closed and the investigator moved on, sometimes years later, often through an informal channel — a phone call, a mention in a meeting, a news report. Without a mechanism that keeps the referral open for outcome capture independently of the case's own closure, the information arrives with nowhere to go and is lost. The consequence is an organization that cannot say what proportion of its referrals resulted in action, which is among the most basic questions it will be asked.

<p class="discovery-label">Discovery questions</p>

- What proportion of referrals are currently tracked to an outcome?
- How does the organization learn what a receiving authority did?
- How long do downstream outcomes typically take to arrive?
- Who is responsible for capturing an outcome after the case has closed?
- Is there any agreement with receiving authorities about reporting back?
- What is done with declination reasons today?
- How would the organization answer what became of last year's referrals?

<p class="pattern-label">Implementation pattern</p>

- Keep referral records in an open outcome-pending state independent of the originating case's closure state, so a closed case can still receive outcome updates.
- Model downstream outcomes as a sequence of dated events against the referral rather than a single terminal field, since matters progress through acceptance, charge, resolution, and recovery.
- Assign outcome-tracking ownership to a role rather than the individual investigator, so tracking survives staff turnover.
- Use the rules engine to schedule follow-up prompts by referral type and expected authority timescales, and escalate on prolonged silence.
- Provide a structured intake path for outcomes learned informally, so an outcome mentioned in conversation can be recorded against the referral with its source.
- Capture declination reasons as structured values, and report them by authority and reason so recurring causes are visible.
- Where an agreement with a receiving authority allows, integrate outcome feeds through source integration connectors rather than relying on manual notification.
- Report referral acceptance and outcome rates by authority, referral type, and period.

<p class="eyebrow">Use case</p>

## Complete Retention and Disposition Requirements

Closing a case starts a retention clock rather than ending the organization's obligations. Records have a schedule determined by their category, the matter type, and frequently the outcome — a substantiated matter often retained far longer than an unfounded one — and at the end of that period they must be destroyed, transferred to an archive, or retained permanently. Evidence has its own disposition path: returned to its owner, destroyed under witness, or retained while related proceedings continue.

Retention is the obligation that fails silently. Nothing alerts an organization that it destroyed records too early or held them past their schedule; the failure surfaces only when someone asks for a record that no longer exists or discovers holdings that should have gone years ago. Legal hold complicates it further, since a hold suspends disposition and must be released before the clock resumes, and a hold applied to a case has to reach the evidence, documents, and derived artifacts across every store they live in — which is exactly where a hold implemented per system rather than centrally leaks.

<p class="discovery-label">Discovery questions</p>

- What retention schedules apply here, and what determines which one a case falls under?
- Does the outcome affect the retention period in this program?
- What is the disposition path at end of retention — destruction, transfer, permanent retention?
- How is evidence disposition handled, and who authorizes it?
- How is legal hold applied, and does it reach every store holding case material?
- How would the organization know a record was destroyed early or retained too long?
- Who is accountable for executing disposition when it falls due?

<p class="pattern-label">Implementation pattern</p>

- Compute the applicable retention schedule at closure through a retention and disposition engine, deriving it from record category, matter type, and recorded outcome, and persist the computed schedule with its inputs.
- Model disposition as a scheduled obligation with an owner and a due date, rather than as a background process nobody watches.
- Implement legal hold as a central assertion evaluated by every store — case, evidence, document, and derived artifact — so a hold cannot be honored in one system and missed in another.
- Block any disposition action while a hold applies, and require an explicit recorded release before the retention clock resumes.
- Model evidence disposition separately per item with its own authorization, witness where required, and method, and reconcile it against the case's disposition state.
- Execute disposition as a recorded, reversible-until-committed workflow step producing a certificate of what was destroyed, transferred, or retained.
- Retain disposition metadata after the records themselves are gone, so the organization can show what existed and how it was disposed of.
- Report upcoming, overdue, and executed dispositions, and reconcile holdings against schedules on a recurring cycle.

<p class="eyebrow">Use case</p>

## Prepare Closure Summaries

Closure produces summaries for several audiences: a case closure record for the file, a notification to the complainant, a communication to the subject, a management summary where systemic issues emerged, and statistical returns. Each draws on the same closed case — the allegation, what was established, the disposition, and any referral — and each is constrained differently in what it may contain.

Notification content is where care is needed, because these documents go to people rather than into a file. A complainant may be entitled to know the outcome but not the evidence or the subject's identity; a subject cleared of an allegation should receive that unambiguously rather than in language that leaves the matter hanging; and neither should receive material that would compromise a referral still pending. Constraints of that kind are enumerable per recipient type, and applying them by rule at generation is more reliable than expecting a person drafting under closure pressure to recall them.

<p class="discovery-label">Discovery questions</p>

- Which closure documents does this program produce, and for whom?
- What is each recipient entitled to be told, and what must be withheld?
- How is a cleared subject informed, and in what terms?
- What constraints apply while a referral remains pending?
- How are these documents produced today, and how long does it take?
- What review do they receive before going to a recipient?
- Where do closure statistics come from, and are they reconciled to the case record?

<p class="pattern-label">Implementation pattern</p>

- Derive every closure document from the closure record and findings register rather than from another document, so no two accounts of the outcome can diverge.
- Define per-recipient content rules as versioned configuration — identity disclosure, evidence detail, referral status, appeal rights — and apply them through the rules engine at generation.
- Suppress content referencing pending referrals where disclosure would prejudice them, evaluated against the referral register's current state rather than at a fixed point.
- Apply identity suppression through the redaction service on derived documents, retaining the unredacted derivation linked to the record.
- Require explicit unambiguous outcome wording for cleared subjects, drawn from approved templates rather than composed per matter.
- Gate recipient-facing documents through review before transmission, and record dispatch with recipient, date, and version.
- Generate statistical returns from the closure record's structured dispositions, so reported figures reconcile to the case data by construction.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to draft closure documents from the closure record, findings, and referral state against per-recipient templates.
- Cite the closure record and finding behind each statement, and omit rather than infer where the record does not support one.
- Apply recipient content rules before generation so restricted material is outside the model's scope, rather than relying on the model to omit it.
- Keep determination and outcome wording fixed from approved text, constraining generation to surrounding explanation.
- Monitor drafts for content that would prejudice a pending referral and for wording that leaves a cleared subject's status ambiguous.

<p class="eyebrow">Use case</p>

## Identify Unresolved Tasks Before Closure

Cases close with loose ends. An interviewee's promised document never arrived, a records request is still outstanding, evidence sits unreturned, an approval was never recorded, a subject notification was never sent, a finding has no supporting evidence link. Each is individually small and each is far cheaper to resolve while the matter is open than after the team has dispersed — and some, like an unexecuted evidence disposition or an unsent statutory notification, remain live obligations regardless of the case's status.

The checks are objective, which makes closure a natural gate rather than a review. What the gate must not do is force resolution of items that are legitimately unresolvable: a records request the recipient will never answer, a task overtaken by events, a commitment from a witness who has withdrawn. The right behavior is to require every open item to be explicitly closed, cancelled with a reason, or converted into a tracked post-closure obligation — so nothing is abandoned silently, and closure does not become an act of forgetting.

<p class="discovery-label">Discovery questions</p>

- What typically remains open when a case closes here?
- How is that discovered today, and at what point?
- Which open items are legitimately unresolvable, and how are they currently handled?
- Which obligations survive closure and must continue to be tracked?
- What happens to unreturned evidence when a case closes?
- Who is accountable for post-closure obligations once the team disperses?
- What would make a closure gate helpful rather than an obstacle to work around?

<p class="pattern-label">Implementation pattern</p>

- Execute closure readiness checks in the rules engine as a gate, evaluating open tasks, outstanding records requests, unexecuted evidence disposition, missing approvals, unsent notifications, and findings without supporting evidence links.
- Require every open item to reach an explicit terminal state — completed, cancelled with a recorded reason, or converted to a tracked post-closure obligation — before closure proceeds.
- Model post-closure obligations as records surviving the case's closed state with their own owner, due date, and escalation path.
- Query the evidence repository for items still in custody against the case, and require a disposition decision per item rather than a case-level acknowledgement.
- Require a recorded justification with approval to override an unresolved check, and record the override against the closure.
- Route unresolved statutory or notification obligations to a monitored queue rather than permitting override, since those persist independently of the case.
- Report override rates and post-closure obligation aging, so closure pressure that produces abandoned items is visible.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to surface commitments and obligations recorded only in narrative — an undertaking in an interview report, a promise in correspondence — that structured checks cannot detect.
- Cite the passage behind every item raised, so the investigator can judge whether it remains live.
- Keep enumerated readiness checks in the rules engine as the authority, so no mandatory condition depends on a model noticing it.
- Present model-detected items as advisory alongside the deterministic gate, never as a substitute for it.
- Monitor precision, and disable any advisory check whose items are routinely dismissed.

<p class="eyebrow">Use case</p>

## Recommend Applicable Disposition Categories

Disposition categories are usually enumerable and rule-governed: a substantiated finding against an employee with a given severity leads to a defined disciplinary path, a loss above a threshold triggers referral to a recovery function, particular conduct requires mandatory referral to a prosecuting authority. Applying them consistently matters because inconsistency in disposition — comparable conduct treated differently across cases — is a fairness problem and a common finding of oversight review.

Proposing the applicable categories from the recorded findings and case attributes gives the decision-maker a starting position derived from policy rather than from recollection. The decision remains theirs, and the design has to keep it so: mandatory referral conditions should be enforced as rules rather than proposed, while discretionary categories are offered with the policy provision behind each. Where a decision-maker departs from a proposal, the reason is worth capturing, since a pattern of departures usually indicates policy that no longer matches practice rather than repeated error.

<p class="discovery-label">Discovery questions</p>

- What disposition categories exist here, and where are the rules defining them written?
- Which dispositions are mandatory given particular findings, and which are discretionary?
- How consistently are comparable matters disposed of today?
- What thresholds trigger referral to recovery, discipline, or prosecution?
- Who decides disposition, and what discretion do they hold?
- How would inconsistency across similar matters be detected?
- What happens when policy and actual practice have diverged?

<p class="pattern-label">Implementation pattern</p>

- Express disposition rules as versioned, enumerated definitions in the policy and authority library, keyed on finding determination, severity, subject category, loss threshold, and conduct type.
- Enforce mandatory disposition conditions in the rules engine as blocking requirements rather than proposals, so a required referral cannot be omitted.
- Propose discretionary categories with the specific policy provision and case attributes behind each, so the decision-maker evaluates the basis.
- Record the proposed disposition, the decided disposition, and a departure reason where they differ.
- Compare each disposition against comparable closed matters on the same attributes, and surface material divergence for the approver.
- Report departure rates by rule and by decision-maker, and route rules with persistent departure to policy review rather than to enforcement.
- Version disposition rules with effective dates, so a past decision can be evaluated against the policy in force at the time.

<p class="ai-label">AI opportunity</p>

- Use classification over recorded findings and case attributes to propose discretionary disposition categories where the applicable rule is not fully determinate.
- Return the policy provision and case attributes driving each proposal rather than a category alone.
- Keep mandatory conditions in the rules engine, so no required disposition depends on a model proposing it.
- Monitor proposals for disparate outcomes across subject characteristics, with a defined review path when a pattern appears.
- Evaluate on approver acceptance and on consistency with comparable closed matters, not on aggregate accuracy.

## Architecture

Build toward this shape. It combines the implementation patterns and AI opportunities from the use cases above into one design, and it names no product or vendor. Agree on it before you evaluate any product, because it sets what any product you choose has to do.

Keep AI out of discharging obligations. Models can draft closure documents and flag commitments recorded only in narrative. Mandatory dispositions, closure gates, retention calculation, and legal hold all run as rules. The failures in this capability are silent, and they surface years later.

<div class="architecture-stack" aria-label="Logical architecture for Referral, Disposition and Case Closure">
  <section class="architecture-layer architecture-layer--experience">
    <p class="architecture-layer-title"><span>01</span> Experience</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Investigator closure workspace</strong><small>Readiness checks, dispositions, referrals, and notifications.</small></div>
      <div><strong>Approver review</strong><small>Closure authority, disposition comparison, and overrides.</small></div>
      <div><strong>Outcome and obligation tracking</strong><small>Post-closure obligations, referral outcomes, and disposition due dates.</small></div>
    </div>
  </section>
  <section class="architecture-layer">
    <p class="architecture-layer-title"><span>02</span> Closure core</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Referral and outcome register</strong><small>Recipient, package version, state, and dated downstream events.</small></div>
      <div><strong>Closure record</strong><small>Per-allegation and per-subject dispositions with rationale.</small></div>
      <div><strong>Retention and disposition schedule</strong><small>Computed schedule, hold state, and disposition obligations.</small></div>
      <div><strong>Post-closure obligations</strong><small>Notifications and commitments surviving the closed state.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--platform">
    <p class="architecture-layer-title"><span>03</span> Shared solution services</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entitlement service</strong><small>Case- and item-level access through and after closure.</small></div>
      <div><strong>Retention and disposition engine</strong><small>Schedule computation, hold evaluation, and disposition execution.</small></div>
      <div><strong>Redaction service</strong><small>Recipient-specific suppression on closure documents.</small></div>
      <div><strong>Workflow and rules engines</strong><small>Closure gates, mandatory dispositions, and track precedence.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--intelligence">
    <p class="architecture-layer-title"><span>04</span> Optional intelligence</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Closure document drafting</strong><small>Recipient-scoped drafts cited to the closure record.</small></div>
      <div><strong>Narrative obligation detection</strong><small>Commitments recorded only in prose, raised advisorily.</small></div>
      <div><strong>Disposition proposal</strong><small>Discretionary categories with policy provisions returned.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--records">
    <p class="architecture-layer-title"><span>05</span> Data and authoritative systems</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Case data store</strong><small>Cases, tasks, requests, and their open states at closure.</small></div>
      <div><strong>Findings register</strong><small>Determinations dispositions are validated against.</small></div>
      <div><strong>Evidence repository</strong><small>Items requiring per-item disposition and hold evaluation.</small></div>
      <div><strong>Policy and authority library</strong><small>Retention schedules, disposition rules, and recipient templates.</small></div>
    </div>
  </section>
  <aside class="architecture-controls"><strong>Control plane</strong><span>Identity and access · Legal hold · Outcome notification · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation</span></aside>
</div>

### Baseline and additive components

Build the baseline first, because nearly every use case depends on it. Add each of the other components later, when you commit to the use case that needs it. Do not buy everything up front.

| Component | What it must do | When to build |
| --- | --- | --- |
| Referral and outcome register | Track recipient, package version, state, and dated downstream outcomes independently of case closure | Build first |
| Closure record | Hold per-allegation and per-subject dispositions, rationale, and derived case outcome | Build first |
| Retention and disposition engine | Compute schedules from category, matter type, and outcome, evaluate holds, and execute disposition | Build first |
| Entitlement service | Decide access at case and item granularity, through and after closure | Build first |
| Workflow engine | Gate closure, referral, and disposition execution behind the appropriate authority | Build first |
| Rules engine | Evaluate closure readiness, mandatory dispositions, track precedence, and recipient content rules | Build first |
| Notification and queue service | Route readiness failures, outcome follow-ups, and disposition due dates | Build first |
| Append-only activity log | Record closure, referral, disposition, and reopening events with actor and timestamp | Build first |
| Case data store | Hold cases, tasks, and requests whose open states gate closure | Build first |
| Findings register | Supply the determinations dispositions are validated against | Build first |
| Evidence repository | Supply items requiring per-item disposition and hold evaluation | Build first |
| Policy and authority library | Hold retention schedules, disposition rules, and recipient templates with versions | Build first |
| Search and retrieval | Search closed matters and referrals within the requester's entitlements | Build first |
| Reporting | Report acceptance rates, declination reasons, override rates, and disposition aging | Build first |
| Package assembly and production | Produce referral packages as immutable sets with manifests and integrity values | Add where referrals carry formal document productions |
| Redaction service | Apply recipient-specific identity and content suppression to closure documents | Add where subject or complainant notifications are produced |
| Source integration connectors | Receive outcome feeds from receiving authorities where an agreement allows | Add where automated outcome reporting is available |
| Generative model with grounding and citation | Draft closure documents and surface obligations recorded only in narrative | Add to unlock drafting and narrative detection |
| Model evaluation and monitoring | Track citation fidelity, prejudicial content, and disposition proposal consistency | Add alongside any model component |

Track obligations that outlive closure as records of their own. Closing a case ends the investigative work. It does not end the referrals awaiting acceptance, the retention clocks, the evidence awaiting disposal, the notifications owed to subjects and complainants, or the outcomes that arrive years later. Give each of these an owner, a due date, and an escalation path, and assign them to a role rather than to the investigator, who will have moved on. Otherwise an organization ends up unable to say what became of its referrals, holding evidence nobody can authorize releasing, and finding unsent statutory notices during an audit.

Calculate the retention schedule when the case closes, and store what it was calculated from. Derive it from the record category, the matter type, and the recorded outcome. Keep that derivation next to the result, so a later disposal can be justified and reconciled. Retention fails silently: nothing tells you records went early or stayed too long until someone asks for a record that is gone. Hold legal hold centrally, as one assertion every store checks. A hold implemented separately in each system gets applied only in the ones someone remembered.
