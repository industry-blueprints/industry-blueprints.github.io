---
title: Legal, Prosecutorial & Enforcement Coordination
summary: Ability to coordinate with counsel and enforcement partners and track legal process, approvals, and referral packages.
description: "Ability to coordinate with counsel and enforcement partners and track legal process, approvals, and referral packages."
status: Draft
tier: Tier 2 · Practitioner
scope: All
updated: 2026-08-19
owner: Content team
workload: Investigations
parent_title: Investigations
parent_url: /workloads/investigations/
order: 12
sections:
  - Overview
  - Maturity Levels
  - Coordinate with Counsel and Enforcement Partners
  - Track Legal Requests, Subpoenas, and Approvals
  - Assemble Materials for Legal Review
  - Organize a Draft Referral Package
  - Summarize Facts and Evidence for Counsel
  - Check a Package for Missing Required Content
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

Ability to coordinate with counsel, prosecutors, regulators, disciplinary authorities, or other enforcement partners, track legal requests, subpoenas, warrants, approvals, and referrals, and assemble materials for legal or enforcement review.

This capability covers working with legal and enforcement authorities while an investigation is active, including the compulsory process it depends on. It excludes the disposition decision itself, which belongs to Referral, Disposition & Case Closure.

## Maturity Levels

| Stage | Typical characteristics |
| --- | --- |
| Not performed | Legal coordination happens informally with no record of requests or advice. |
| Manual / ad hoc | Legal process is tracked in email and personal calendars. |
| Standardized | Requests, subpoenas, warrants, and approvals are tracked against the case with due dates. |
| Integrated | Legal process, approvals, and package contents are visible within the case record. |
| Automated / optimized | Referral packages are assembled from validated case material and checked for completeness before submission. |

<p class="eyebrow">Use case</p>

## Coordinate with Counsel and Enforcement Partners

Investigations of any consequence involve legal authorities well before disposition. Counsel advises on the sufficiency of evidence, the limits of authority, and the viability of a theory; a prosecutor may decline early, ask for specific additional work, or set conditions for accepting a referral; a regulator or disciplinary authority may run a parallel process against the same subject. Coordination means recording who was consulted, what they were asked, what they advised, and what the investigation did in response.

Two constraints shape how that record is built. Communications with counsel are typically privileged, and a record that mixes them with ordinary case material risks either inadvertent disclosure or a blanket privilege claim over the whole case file that will not survive challenge. And parallel proceedings interact — an administrative interview compelled under employment authority can jeopardize a criminal case, and evidence shared between tracks may carry restrictions in one that do not apply in the other. Which track holds primacy at a given moment is a decision that has to be recorded and honored by the system, not left as a shared understanding.

<p class="discovery-label">Discovery questions</p>

- Which legal and enforcement authorities does this program coordinate with, and at what points?
- How is legal advice recorded today, and is it separable from ordinary case material?
- What privilege applies to those communications, and who asserts it?
- How often do administrative, criminal, and regulatory tracks run in parallel here?
- How is primacy between parallel tracks decided and communicated?
- What restrictions attach to material shared between tracks?
- How would the program show what counsel advised and what was done in response?

<p class="pattern-label">Implementation pattern</p>

- Model each consultation as a structured record holding the authority consulted, the question posed, the advice given, and the resulting action, linked to the case and the line of inquiry it concerns.
- Classify legal advice as privileged at creation through a distinct record type, and enforce that classification through the entitlement service at read, search, and export rather than by folder placement.
- Exclude privileged records from search indexes exposed to non-privileged roles, so privileged content cannot surface through retrieval.
- Model parallel proceedings as related matters with a recorded primacy attribute, and use the rules engine to evaluate cross-track sharing requests against it.
- Tag material shared between tracks with the restrictions of its originating track, and carry those tags through any derived artifact.
- Use a workflow engine to gate actions requiring counsel concurrence, recording the concurrence against the version of the material reviewed.
- Log every consultation, advice record, and cross-track transfer in the append-only activity log.

<p class="eyebrow">Use case</p>

## Track Legal Requests, Subpoenas, and Approvals

Compulsory process has a lifecycle that must be evidenced end to end: an application stating the grounds, an authorization by whoever holds that power, issuance, service on a named recipient, a period for compliance, and a return recording what was obtained. Warrants add execution windows and return obligations with their own deadlines, and failure at any step can invalidate what the process produced — which makes this the part of investigative work where record-keeping most directly determines whether evidence survives.

The register also has to hold the grounds. An application asserts facts justifying the authority sought, and if those facts are later shown to have been wrong or overstated, everything obtained under it is exposed. Recording the grounds as they stood at application, linked to the material relied on at that time, is what lets the organization answer later what it knew when it applied. Scope matters equally: process obtained for one purpose does not extend to another, and material outside its scope needs handling as an over-collection rather than absorption into the case.

<p class="discovery-label">Discovery questions</p>

- What forms of compulsory process does this program use, and under which authorities?
- Who authorizes each, and what must an application establish?
- What execution windows, service requirements, and return obligations apply?
- How is the material relied on in an application preserved?
- What happens today when a return produces material outside the process's scope?
- How is compliance by the recipient tracked, and what follows non-compliance?
- Has process ever been challenged here, and what did the challenge turn on?

<p class="pattern-label">Implementation pattern</p>

- Model each instrument in a legal process register as a state machine — drafted, applied, authorized, issued, served, returned, closed — with the actor, timestamp, and artifact recorded at each transition.
- Snapshot the grounds asserted in an application together with references to the specific material relied on at that time, so the basis is reconstructable independent of later case developments.
- Derive execution windows, service deadlines, and return dates from instrument type through the rules engine, and escalate through the notification service ahead of each.
- Model scope as structured parameters — custodian, date range, record classes, subjects — and evaluate returned material against them at ingestion.
- Route material falling outside scope to a quarantine state requiring a recorded decision before it can enter the case, rather than admitting it by default.
- Link every returned item to the instrument that produced it, so any item in the case can be traced to its collection authority.
- Record partial and non-compliance as explicit states with follow-up actions, so an unsatisfied instrument stays visibly open.
- Log every state transition and scope decision in the append-only activity log.

<p class="eyebrow">Use case</p>

## Assemble Materials for Legal Review

Counsel and enforcement partners receive material as a defined production rather than access to the case system: a set of documents with an index, exhibit references, consistent numbering, and any required redactions applied. Assembly selects the material, resolves its form, applies numbering, generates the index, and records exactly what was produced and to whom — because the organization will need to answer that question precisely, sometimes years later.

Privilege and redaction are where assembly goes wrong. Privileged material inadvertently included in a production is difficult to recover from, and redaction applied as a visual overlay rather than removal of underlying content has repeatedly resulted in supposedly redacted text being recoverable from produced files. Redaction has to be destructive in the produced copy while leaving the original intact, and the pairing between them recorded, so the organization can show both what was withheld and why without re-exposing it.

<p class="discovery-label">Discovery questions</p>

- Who receives productions here, and in what form do they expect them?
- What privilege review happens before material is produced, and by whom?
- How are redactions applied today, and how are they verified?
- What numbering or referencing convention is used, and is it consistent across productions?
- Could the program state precisely what was produced to a given recipient two years ago?
- How are native files with embedded metadata handled?
- What happens when a production has to be corrected or supplemented?

<p class="pattern-label">Implementation pattern</p>

- Materialize each production as an immutable set with a manifest listing every item, its source identifier, its integrity value, and its sequential production number.
- Apply sequential production numbering across the set at assembly, and persist the mapping between production numbers and source item identifiers.
- Implement redaction as removal of underlying content in a derived copy — text layer, embedded metadata, and hidden content — never as an overlay, and verify the derived copy contains no recoverable redacted text.
- Retain the unredacted original linked to its redacted derivative, with the redaction basis recorded per region.
- Require a privilege review pass to complete against the full set before assembly can proceed, recording the reviewer and disposition per item.
- Generate the production index and any required privilege log from the register rather than by hand, so both reflect the actual set.
- Compute and store an integrity value for the assembled set and each item, and record recipient, timestamp, format, and delivery method.
- Model supplemental and corrective productions as new immutable sets linked to the original, never as amendments to a delivered set.

<p class="eyebrow">Use case</p>

## Organize a Draft Referral Package

A referral package is a structured argument: what is alleged, what the evidence establishes, which elements of the offense or violation each item supports, who the subjects and witnesses are, what investigative steps were taken, and what the receiving authority is being asked to do. Assembling one means selecting from everything the case holds and organizing it against the receiving authority's expected structure, which differs by authority and by matter type.

Drafting can be substantially automated because the structure is known and the material is already classified — but the mapping from evidence to elements is the analytical core and belongs to the investigator and counsel. A draft that asserts an item establishes an element it does not is worse than an empty template, because it invites acceptance of a connection nobody verified. The package also inherits every restriction on its constituent material, so grand jury material, compelled statements, and privileged content must be excluded or handled by rule rather than by an assembler's judgment.

<p class="discovery-label">Discovery questions</p>

- Which authorities receive referrals here, and does each expect a different structure?
- What must a package contain to be accepted by each?
- How long does assembling one take today, and who does it?
- How is evidence currently mapped to the elements it supports?
- Which categories of material must never enter a package, and how is that enforced?
- What review does a package get before submission?
- How often are packages returned as incomplete, and for what reasons?

<p class="pattern-label">Implementation pattern</p>

- Define package structures as versioned templates per receiving authority and matter type in the policy and authority library, holding required sections, item classes, and formats.
- Populate a draft package by selecting case material against template sections, leaving any section without qualifying material explicitly empty rather than filled.
- Model the mapping from evidence items to elements as explicit typed links requiring investigator or counsel confirmation, and never populate it automatically.
- Apply exclusion rules at selection time for restricted categories — privileged, compelled, grand jury, sealed, and out-of-scope material — enforced by the rules engine rather than by reviewer attention.
- Carry each item's handling markings into the package, and block assembly where an included item's markings conflict with the recipient's authorization.
- Route the assembled draft through workflow-gated investigator and counsel review before it can be submitted.
- Record the package version, its constituent item identifiers, and the template version used, so a submitted package is reproducible.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to draft package narrative sections from confirmed case facts, findings, and the evidence items already linked to them.
- Cite the case artifact behind every factual assertion, and omit rather than infer where the record does not support a statement.
- Propose candidate evidence-to-element mappings as suggestions for confirmation, and never write them into the package unconfirmed.
- Exclude restricted material from the model's retrieval scope entirely, so it cannot appear in a draft even as paraphrase.
- Monitor drafts for assertions whose citations do not support them, since a package is read as the organization's own considered position.

<p class="eyebrow">Use case</p>

## Summarize Facts and Evidence for Counsel

Counsel deciding whether to accept a matter, advise on sufficiency, or prepare for a proceeding needs the case reduced to what bears on their decision: the conduct alleged, the evidence for each component, the strength and weaknesses of that evidence, the witnesses and what each can speak to, and the problems — a gap in the chain, a witness who has changed their account, a suppression risk. Producing that today means an investigator writing it, which is slow and gets deferred.

A summary written for counsel must be candid about weakness, which is the opposite of how summaries are usually generated. A summary that presents only supporting evidence gives counsel a misleading picture at exactly the point where an accurate one matters most, and the problems counsel most needs to know about are precisely the ones a summarizer optimizing for coherence will leave out. Adverse material has to be surfaced deliberately rather than emerging incidentally, and the summary must reflect what the record contains rather than what the investigation concluded.

<p class="discovery-label">Discovery questions</p>

- What does counsel need to see here to make an acceptance or sufficiency decision?
- How is that produced today, and how long does it take?
- How are weaknesses and adverse material currently surfaced to counsel?
- What disclosure obligations attach to material favorable to the subject in this program?
- How is a witness's reliability or changed account recorded?
- What review does a summary get before counsel relies on it?
- What would the consequence be of counsel deciding on an incomplete picture?

<p class="pattern-label">Implementation pattern</p>

- Assemble summaries from confirmed findings, linked evidence, and the hypothesis structure, so both supporting and contradicting material is drawn from recorded links rather than selected narratively.
- Require the summary structure to include dedicated sections for adverse material, evidentiary gaps, and untested predictions, and render them as empty rather than omitting them when nothing is recorded.
- Query material flagged as favorable to the subject through the disclosure register and include it as a distinct section, so disclosure obligations are visible at the point counsel reviews.
- Include witness records with their account history, so a changed account appears as a fact about the record rather than a narrative aside.
- Cite the artifact and passage behind every assertion, and enforce the requester's entitlements at assembly time.
- Hold summaries as working artifacts distinct from case work product, requiring a deliberate logged action to place one in the record.
- Version summaries against the case state they were assembled from, and flag a summary whose underlying findings have since changed.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model with retrieval over confirmed findings and linked evidence to compose a summary structured for counsel review.
- Instruct the model to populate adverse material, gaps, and weakness sections explicitly, and to state when a required section has no content rather than omitting it.
- Cite the artifact and passage for every assertion, and exclude anything the record does not support.
- Keep the model out of assessing sufficiency, prospects, or whether a matter should be accepted.
- Monitor generated summaries for omitted adverse material specifically, since a summary that reads well by leaving out the problems is the failure mode that matters here.

<p class="eyebrow">Use case</p>

## Check a Package for Missing Required Content

Packages get returned. A required form is absent, an exhibit referenced in the narrative is not in the set, a chain of custody has a gap for one item, a witness statement is unsigned, numbering skips, a redaction was applied inconsistently across copies of the same document. Each is mechanical, each is discoverable before submission, and each costs weeks when discovered afterward — by the receiving authority, which also affects how the organization's work is regarded.

Completeness checking is deterministic and should be run as a gate rather than a review. The requirements are enumerable per receiving authority, the case data holds the answers, and a rule can test each one — which makes this a case where automation is unambiguously appropriate, because the checks are objective and the cost of missing one is entirely on the organization. What checking cannot establish is sufficiency; a complete package can still be a weak one, and the check should not be presented as a judgment about the matter's merit.

<p class="discovery-label">Discovery questions</p>

- What proportion of packages are returned as incomplete here, and for what reasons?
- What are the enumerated requirements per receiving authority, and are they documented?
- How is completeness checked today, and by whom?
- How long does a return-and-resubmit cycle cost?
- Which checks are objective, and which require judgment?
- How would an exhibit referenced but not included be caught today?
- Who is accountable when a package is returned?

<p class="pattern-label">Implementation pattern</p>

- Express completeness requirements as enumerated, versioned check definitions per receiving authority and matter type, held alongside the package template.
- Execute checks in the rules engine against the assembled package as a submission gate, and block submission on unresolved failures rather than warning.
- Test referential integrity across the set — every exhibit referenced in narrative present, every item in the manifest present, numbering contiguous, and every cross-reference resolvable.
- Verify chain-of-custody continuity for every evidence item in the package by querying the custody chain, and fail the check on any unexplained interval.
- Verify that redaction has been applied consistently across every copy of the same source document within the set.
- Require a recorded justification with approval to override a failed check, and record the override against the submitted package version.
- Report failure rates by check, authority, and matter type, so recurring failures are addressed at their source rather than caught repeatedly.
- Present check results as completeness only, with interface language that does not characterize the package's sufficiency or merit.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to detect narrative-level omissions deterministic checks cannot express — an element asserted without any evidence linked, a witness described but never listed, a date range in the narrative inconsistent with the exhibits.
- Cite the passage and the missing or conflicting item for every issue raised.
- Keep enumerated requirements in the rules engine as the authority, so no mandatory check depends on a model noticing it.
- Present model-detected issues as advisory alongside the deterministic gate, never as a substitute for it.
- Monitor precision, and disable any advisory check whose issues are routinely dismissed.

## Architecture

Build toward this shape. It combines the implementation patterns and AI opportunities from the use cases above into one design, and it names no product or vendor. Agree on it before you evaluate any product, because it sets what any product you choose has to do.

Keep AI out of what leaves the organization. Models can draft narrative and flag omissions. Privilege classification, exclusion rules, redaction, numbering, and completeness checks all run as rules. Never let a model decide what may be released, because you cannot recall a privileged or restricted item once it has gone out in a production.

<div class="architecture-stack" aria-label="Logical architecture for Legal, Prosecutorial and Enforcement Coordination">
  <section class="architecture-layer architecture-layer--experience">
    <p class="architecture-layer-title"><span>01</span> Experience</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Investigator coordination workspace</strong><small>Consultations, instruments, deadlines, and package drafts.</small></div>
      <div><strong>Privilege review workspace</strong><small>Item-level privilege disposition and privilege log generation.</small></div>
      <div><strong>Counsel and partner exchange</strong><small>Delivered productions, manifests, and receipt records.</small></div>
    </div>
  </section>
  <section class="architecture-layer">
    <p class="architecture-layer-title"><span>02</span> Legal coordination core</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Legal process register</strong><small>Instrument state, grounds snapshot, scope, service, and return.</small></div>
      <div><strong>Privilege and disclosure register</strong><small>Per-item privilege status, basis, and disclosure obligation.</small></div>
      <div><strong>Package assembly and production</strong><small>Immutable sets, manifests, numbering, and delivery records.</small></div>
      <div><strong>Consultation and concurrence</strong><small>Advice sought, given, acted on, and parallel-track primacy.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--platform">
    <p class="architecture-layer-title"><span>03</span> Shared solution services</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entitlement service</strong><small>Privilege- and marking-aware access at item granularity.</small></div>
      <div><strong>Redaction service</strong><small>Destructive redaction in derived copies with per-region basis.</small></div>
      <div><strong>Cryptographic integrity service</strong><small>Integrity values on produced sets and constituent items.</small></div>
      <div><strong>Workflow and rules engines</strong><small>Authorization gates, scope tests, and completeness checks.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--intelligence">
    <p class="architecture-layer-title"><span>04</span> Optional intelligence</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Package narrative drafting</strong><small>Sections drafted from confirmed facts with citations.</small></div>
      <div><strong>Counsel summarization</strong><small>Structured summaries with adverse material surfaced.</small></div>
      <div><strong>Advisory omission detection</strong><small>Narrative-level gaps raised alongside the deterministic gate.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--records">
    <p class="architecture-layer-title"><span>05</span> Data and authoritative systems</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Evidence repository</strong><small>Evidence items and custody chains verified into productions.</small></div>
      <div><strong>Document and attachment store</strong><small>Originals, redacted derivatives, and delivered sets.</small></div>
      <div><strong>Append-only activity log</strong><small>Immutable instrument, disposition, and delivery history.</small></div>
      <div><strong>Policy and authority library</strong><small>Package templates and enumerated checks by authority.</small></div>
    </div>
  </section>
  <aside class="architecture-controls"><strong>Control plane</strong><span>Identity and access · Privilege protection · Disclosure obligations · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation</span></aside>
</div>

### Baseline and additive components

Build the baseline first, because nearly every use case depends on it. Add each of the other components later, when you commit to the use case that needs it. Do not buy everything up front.

| Component | What it must do | When to build |
| --- | --- | --- |
| Legal process register | Track instrument state, grounds snapshot, scope, service, and return | Build first |
| Privilege and disclosure register | Hold per-item privilege status, basis, reviewer, and disclosure obligation | Build first |
| Package assembly and production | Produce immutable sets with manifests, numbering, and delivery records | Build first |
| Redaction service | Remove underlying content in derived copies and record the basis per region | Build first |
| Cryptographic integrity service | Compute integrity values on produced sets and constituent items | Build first |
| Entitlement service | Decide access at item granularity, honoring privilege and handling markings | Build first |
| Workflow engine | Gate authorization, privilege review completion, and submission | Build first |
| Rules engine | Evaluate scope tests, derived deadlines, and enumerated completeness checks | Build first |
| Notification and queue service | Escalate execution windows, return dates, and review queues | Build first |
| Policy and authority library | Hold package templates and enumerated checks by authority, with versions | Build first |
| Evidence repository | Supply evidence items and custody chains verified into productions | Build first |
| Document and attachment store | Retain originals, redacted derivatives, and delivered sets | Build first |
| Append-only activity log | Record instrument transitions, dispositions, and deliveries with actor and timestamp | Build first |
| Case data store | Hold the cases, findings, and lines of inquiry packages draw from | Build first |
| Search and retrieval | Search case material within entitlements, with privileged content excluded from non-privileged indexes | Build first |
| Reporting | Report instrument compliance, check failure rates, and package return reasons | Build first |
| Generative model with grounding and citation | Draft package narrative and counsel summaries from cited case content | Add to unlock drafting and summarization |
| Model evaluation and monitoring | Track citation fidelity, omitted adverse material, and advisory check precision | Add alongside any model component |

Record privilege once per item, before you assemble any production. For each item, store its privilege status, who decided that, on what basis, and what disclosure obligation applies. A production then becomes a query against decisions already made, rather than a fresh review under deadline pressure. Calls made ad hoc mid-production contradict earlier calls and cannot be reviewed afterwards. You cannot recall a privileged item once it goes out, and you cannot disclose favorable material on time if nobody has flagged that it exists.

Store each production as a fixed set that can be reproduced exactly. Record what was produced, to whom, when, in what form, and with what integrity values, and keep the actual set of items rather than a description of it. Someone will ask precisely what a recipient holds, sometimes years later and sometimes in court. Issue corrections as new sets linked to the original, never as edits to the original, because the delivered copy is already out of your hands. Make redaction remove the underlying content in the derived copy, because an overlay leaves recoverable text in a file you have already handed over.
