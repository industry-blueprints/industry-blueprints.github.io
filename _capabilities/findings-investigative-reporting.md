---
title: Findings & Investigative Reporting
summary: Ability to document findings with their supporting evidence and produce reports of investigation through quality review.
description: "Ability to document findings with their supporting evidence and produce reports of investigation through quality review."
status: Draft
tier: Tier 2 · Practitioner
scope: All
updated: 2026-08-19
owner: Content team
workload: Investigations
parent_title: Investigations
parent_url: /workloads/investigations/
order: 13
sections:
  - Overview
  - Maturity Levels
  - Document Findings and Supporting Evidence
  - Produce Reports, Narratives, and Exhibits
  - Conduct Supervisory and Quality Review
  - Draft an Investigative Narrative from Case Facts
  - Summarize Evidence Supporting and Contradicting a Finding
  - Review Drafts for Completeness and Consistency
  - Adapt Approved Findings into Other Report Formats
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

Ability to document investigative findings and supporting evidence, produce reports of investigation, investigative narratives, exhibits, and recommendations, and conduct supervisory and quality review.

This capability produces the authoritative account of what the investigation established and on what basis. It excludes the action taken on those findings, which belongs to Referral, Disposition & Case Closure.

## Maturity Levels

| Stage | Typical characteristics |
| --- | --- |
| Not performed | Findings are communicated verbally without a written report. |
| Manual / ad hoc | Reports are written from scratch, with format and depth varying by investigator. |
| Standardized | A defined report structure and quality review apply to every closed investigation. |
| Integrated | Findings cite case evidence directly, and review happens within the case record. |
| Automated / optimized | Draft narratives are generated from validated facts with citations, and the investigator owns the result. |

<p class="eyebrow">Use case</p>

## Document Findings and Supporting Evidence

A finding is a determination against a specific allegation: substantiated, not substantiated, unfounded, or inconclusive, reached by applying a stated standard of proof to the evidence gathered. Each of those terms means something different — not substantiated means the evidence did not meet the standard, while unfounded means the conduct did not occur — and conflating them misrepresents the outcome for the person concerned. The standard applied also varies by program and matter type, so it has to be recorded per finding rather than assumed.

The evidence relationships are what make a finding reviewable. A finding needs typed links to the material supporting it and to the material contradicting it, because a determination reached without recording what pointed the other way cannot be distinguished from one where nothing did. Findings written only as prose defeat this entirely: nobody can verify mechanically that each has supporting evidence, that contradicting evidence was addressed, or that the stated standard was applied consistently across matters. Structuring the finding is what turns quality review from an impression into a check.

<p class="discovery-label">Discovery questions</p>

- What determination vocabulary does this program use, and is each term defined?
- Which standard of proof applies, and does it vary by matter type or program area?
- How are findings recorded today — structured, or as narrative prose?
- Is contradicting evidence recorded against a finding as deliberately as supporting evidence?
- How is a finding linked to the specific evidence behind it?
- What happens when evidence behind a finding is later withdrawn or reclassified?
- How would the program check that its findings apply the standard consistently?

<p class="pattern-label">Implementation pattern</p>

- Model each finding in a findings register as a structured record holding the allegation addressed, the determination from a controlled vocabulary, the standard of proof applied, and the investigator making it.
- Require typed evidence links per finding — supporting, contradicting, and considered-but-not-relied-on — each referencing a specific evidence item, transcript passage, transaction, or document.
- Reject finalization of a finding with no supporting evidence link through a rules engine gate rather than a review convention.
- Carry the hypothesis structure's contradicting links forward onto the finding, so material that pointed the other way is present by construction rather than by recollection.
- Version findings as evidence develops, retaining superseded determinations with the evidence set available at the time.
- Subscribe findings to change events on their linked evidence, and flag any finding whose supporting material is later withdrawn, unmerged, or reclassified.
- Enforce entitlements on findings at item granularity, since a finding may reference material more restricted than the case.
- Record finding creation, amendment, and supersession in the append-only activity log.

<p class="eyebrow">Use case</p>

## Produce Reports, Narratives, and Exhibits

The report of investigation is the artifact the organization stands behind. It sets out the allegation, the authority, the investigative steps taken, the evidence obtained, the findings and their basis, and any recommendations — with exhibits attached and referenced from the narrative. Different report types serve different purposes and audiences, but all of them are assembled from the same underlying findings and evidence rather than written independently.

An issued report is immutable, and that shapes the design. Once it has been relied on, corrections take the form of an amended report that supersedes and references the original, because rewriting a document others have acted on produces two versions of the truth. Exhibits need stable identifiers that the narrative references and that survive a later amendment, and the report needs to record the state of the case it was issued against — because findings continue to develop, and a reader must be able to tell whether the report reflects what the investigation now holds.

<p class="discovery-label">Discovery questions</p>

- What report types does this program produce, and who is the audience for each?
- What sections are mandatory in each, and where is that defined?
- How are exhibits numbered and referenced today?
- What happens when a report needs correcting after issue?
- Who has authority to issue a report, and what does issue mean operationally?
- How is a report's distribution recorded?
- How would a reader know a report no longer reflects the current findings?

<p class="pattern-label">Implementation pattern</p>

- Define report structures as versioned templates per report type in the policy and authority library, holding mandatory sections, exhibit conventions, and required approvals.
- Compose reports through a report composition engine that populates sections from the findings register and linked evidence, rather than from free-form authoring.
- Assign stable exhibit identifiers at first inclusion and persist the mapping to source items, so identifiers survive amendment and cross-report reuse.
- Materialize an issued report as an immutable version with an integrity value, recording the case state, findings versions, and template version it was issued against.
- Model amendment as a new report version linked to its predecessor with a stated reason, leaving the original retrievable rather than replaced.
- Record distribution — recipient, timestamp, and format — so the readership of a superseded report can be determined and notified.
- Use the package assembly and production component to materialize the report and its exhibit set as one delivered artifact with a manifest.
- Flag any issued report whose underlying findings have since been superseded, and surface that flag to holders of record.

<p class="eyebrow">Use case</p>

## Conduct Supervisory and Quality Review

Review tests whether the investigation supports what the report says. A reviewer checks that every finding has evidence meeting the stated standard, that contradicting material was addressed rather than omitted, that the investigative steps taken were adequate to the allegation, that procedural requirements were met, and that the narrative is accurate and intelligible. Quality assurance review adds a second dimension, sampling closed matters to test consistency across investigators and over time.

Review only works if it is independent and if its trail survives. A reviewer who worked the matter cannot meaningfully test it, and a review whose comments disappear once addressed leaves no evidence that scrutiny occurred — which matters when the question later is whether the organization exercised oversight or rubber-stamped. Reviewer comments, the investigator's responses, and what changed between versions should all persist as part of the record, and a reviewer must be able to reject rather than only annotate.

<p class="discovery-label">Discovery questions</p>

- Who reviews reports here, and what independence is required of them?
- What does a reviewer check, and is that enumerated anywhere?
- How are review comments and responses recorded today?
- Can a reviewer reject a report, and what happens then?
- What quality assurance sampling happens across closed matters?
- How is consistency across investigators measured?
- How would the program demonstrate that review is substantive rather than formal?

<p class="pattern-label">Implementation pattern</p>

- Use a workflow engine to gate report issue behind review, and enforce reviewer independence by excluding anyone recorded as having worked the matter from eligible reviewers.
- Express review criteria as an enumerated, versioned checklist per report type, and record a disposition per criterion rather than a single approval.
- Persist reviewer comments, investigator responses, and the resulting revision as linked records, retained after resolution rather than cleared.
- Compute and expose a diff between report versions, so what changed in response to review is inspectable.
- Model rejection as a distinct outcome returning the report to drafting with a recorded reason, separate from approval with comments.
- Run automated pre-review checks in the rules engine — findings without supporting evidence, unresolved citations, missing mandatory sections — so reviewer attention goes to judgment rather than mechanics.
- Select a configurable random sample of closed matters into a quality assurance queue, and record findings against the same criteria set.
- Report criterion-level failure rates by investigator, report type, and period, so systemic quality issues surface as trends.

<p class="eyebrow">Use case</p>

## Draft an Investigative Narrative from Case Facts

Report writing consumes a large share of investigative time, and it happens at the end when the matter is least fresh and the pressure to close is highest. Much of the narrative is assembly rather than analysis: the allegation as accepted, the authority relied on, the chronology of what happened, the investigative steps taken and when, and the evidence obtained from each. All of that already exists in structured form across the case record.

The analytical content is not assembly, and the boundary needs to hold. Stating what the evidence establishes, applying the standard, and reaching a determination are the investigator's judgments and their professional responsibility — the report carries their name. A generated draft that reads as finished prose invites adoption without scrutiny, which is the specific failure to design against: an investigator attesting to a narrative they reviewed lightly because it read well. Draft output should cite every assertion, leave analytical sections to the investigator, and remain visibly a draft until adopted.

<p class="discovery-label">Discovery questions</p>

- How long does drafting a report of investigation take here?
- Which sections are assembly from the record, and which require judgment?
- What proportion of the narrative could be populated from structured case data today?
- What review would an investigator give a generated draft before attesting to it?
- How would the program detect an investigator adopting a draft without scrutiny?
- What is the investigator's professional responsibility for the report's content?
- Where must generated content never appear in this program's reports?

<p class="pattern-label">Implementation pattern</p>

- Populate factual and procedural sections from the case data store, canonical event store, and findings register, and leave determination and analysis sections empty for the investigator.
- Cite the source record behind every generated assertion, and render citations in the draft rather than only in metadata.
- Mark generated content distinctly from investigator-authored content in the draft, and record which sections were generated when the report is attested.
- Require explicit per-section review acknowledgement before a draft can proceed to issue, rather than a single document-level action.
- Leave any section whose source data is absent explicitly empty rather than populated with inference.
- Hold drafts in a working state distinct from the report of record, requiring attestation to promote one.
- Report the interval between draft generation and attestation alongside the proportion of generated content edited, so adoption without scrutiny is visible as a pattern.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to draft factual and procedural narrative sections from the findings register, event store, and case record.
- Cite the specific artifact behind every assertion, and omit rather than infer where the record does not support a statement.
- Constrain the model to describing what the record contains, excluding determinations, characterizations of intent, and assessments of credibility.
- Keep the model out of analysis sections entirely, enforced by section-level generation scope rather than by prompt instruction alone.
- Monitor generated drafts for assertions whose citations do not support them, and for analytical language entering descriptive sections.

<p class="eyebrow">Use case</p>

## Summarize Evidence Supporting and Contradicting a Finding

Each finding needs its evidentiary basis set out so a reader can evaluate it: what supports the determination, what points against it, and how the tension between them was resolved. This is the part of a report most closely examined — by a reviewer, by counsel, by a subject challenging the outcome, by an oversight body — and it is also the part most often written thinly, because assembling and characterizing conflicting material is laborious.

Contradicting evidence must be presented, not managed. A summary that mentions adverse material only to dismiss it, or that omits it because the investigator concluded it was outweighed, produces a report that reads as stronger than the investigation was — and that gap is exactly what a challenge exposes. The generated artifact should assemble both sides from the recorded evidence links without weighting them, leaving the resolution to the investigator, whose reasoning about why one body of evidence prevailed is the substance a reviewer needs to test.

<p class="discovery-label">Discovery questions</p>

- How is the evidentiary basis for a finding presented in this program's reports?
- Is contradicting evidence set out, and at what depth?
- How is the resolution between conflicting evidence explained today?
- Who scrutinizes this part of a report most closely here?
- Has a finding ever been overturned, and what did that turn on?
- How is evidence weight or reliability expressed?
- What would a subject challenging a finding be entitled to see?

<p class="pattern-label">Implementation pattern</p>

- Assemble the evidentiary basis from the finding's typed evidence links, so supporting and contradicting material is drawn from recorded relationships rather than selected at drafting.
- Render supporting and contradicting material in parallel structure with equal prominence, and never suppress a contradicting link from the assembled output.
- Include material recorded as considered-but-not-relied-on with the reason it was set aside.
- Require an investigator-authored resolution statement wherever contradicting links exist, and block finalization of the finding until it is present.
- Cite the specific artifact and passage for every item presented, resolved through the citation resolution service.
- Query the disclosure register for material favorable to the subject linked to the finding, and surface it in the assembled basis.
- Enforce entitlements at assembly time, so the basis presented to a reader never exceeds what they may open.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to compose the evidentiary basis for a finding from its recorded supporting and contradicting evidence links.
- Present both bodies of evidence in parallel with equal treatment, and cite every item.
- Instruct the model to describe what each item shows without weighing it, leaving the resolution between them to the investigator.
- Exclude the model from determining sufficiency, assessing reliability, or characterizing a witness or subject.
- Monitor output for contradicting material being minimized, summarized more briefly than supporting material, or omitted entirely.

<p class="eyebrow">Use case</p>

## Review Drafts for Completeness and Consistency

Reports fail review on mechanical grounds far more often than substantive ones: a mandatory section left empty, an exhibit referenced but not attached, a date in the narrative inconsistent with the chronology, a finding whose citation points at material that was withdrawn, a subject named in one section and differently in another, numbering that skips. Each is objectively checkable, and catching them before review means reviewer attention goes to whether the investigation supports the findings.

These checks are also the ones most safely automated, because they are deterministic and their failure modes are visible. Citation integrity deserves particular attention: evidence gets unmerged, reclassified, superseded, or withdrawn after a finding cites it, and a report citing an artifact that no longer says what it said is a defect that surfaces under challenge rather than in drafting. Validating citations continuously — at draft, at issue, and on change events afterward — is what keeps an issued report's basis intact.

<p class="discovery-label">Discovery questions</p>

- What do reports most commonly fail review on here?
- Which of those failures are objectively checkable?
- How often does evidence change after a finding cites it?
- How would a broken citation in an issued report be discovered today?
- What consistency checks matter most — dates, names, exhibit references, numbering?
- How much reviewer time currently goes to mechanical checking?
- What would be needed before a check could block issue rather than warn?

<p class="pattern-label">Implementation pattern</p>

- Express completeness and consistency checks as enumerated, versioned definitions per report type, and execute them in the rules engine as a gate before review.
- Validate every citation through a citation resolution service that confirms the target exists, is the version cited, and has not been withdrawn or reclassified.
- Re-run citation validation on evidence change events after issue, and flag affected reports to their recorded holders.
- Test referential integrity across the report — exhibits referenced present, exhibit numbering contiguous, cross-references resolvable, and entity names consistent against the entity register.
- Reconcile dates asserted in the narrative against the canonical event store, and fail on contradictions rather than warning.
- Require a recorded justification with approval to override a failed check, and record the override against the issued version.
- Report failure rates by check and report type, so recurring failures are addressed in templates and training rather than caught repeatedly.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to detect narrative-level problems deterministic checks cannot express — an assertion with no citation, a conclusion not supported by the section preceding it, an ambiguous pronoun reference to a subject, or an internally inconsistent sequence.
- Cite the passage and the conflicting element for every issue raised.
- Keep enumerated checks in the rules engine as the authority, so no mandatory check depends on a model noticing it.
- Present model-detected issues as advisory alongside the deterministic gate, never as a substitute for it.
- Monitor precision per issue type, and disable any advisory check whose issues are routinely dismissed.

<p class="eyebrow">Use case</p>

## Adapt Approved Findings into Other Report Formats

One investigation frequently generates several documents: a full report of investigation, a referral package for a prosecuting authority, a management letter identifying control weaknesses, a disciplinary submission, a summary for an oversight body, sometimes a public version. Each draws on the same approved findings but differs in detail, audience, and what may be included — a public version omits subject identities and investigative technique, a disciplinary submission concerns only the employee, a management letter concerns systemic issues rather than individual conduct.

The findings themselves must not drift across formats. If a determination is stated one way in the full report and differently in the public summary, the organization has two positions and the discrepancy will be found. Derivation from a single approved finding set, with format-specific redaction and inclusion rules applied mechanically, is what keeps them aligned — and each derived document needs to record which findings version it came from, so a later amendment can identify every document that needs revisiting.

<p class="discovery-label">Discovery questions</p>

- Which documents does one investigation typically generate here?
- What differs between them — detail, audience, identities, technique?
- How is consistency between them maintained today?
- What must be excluded from each format, and who determines that?
- How are derived documents updated when findings are amended?
- Who approves each format, and are approvals independent?
- Has a discrepancy between two versions ever surfaced externally?

<p class="pattern-label">Implementation pattern</p>

- Derive every format from the approved findings register version rather than from another document, so no format is a copy of a copy.
- Define per-format inclusion and exclusion rules as versioned configuration — identity handling, technique detail, exhibit inclusion, evidence depth — and apply them through the rules engine at derivation.
- Apply identity and content suppression through the redaction service against the derived document, retaining the unredacted derivation linked to it.
- Record the findings version, template version, and rule set version on every derived document.
- Reconcile determination text across derived formats programmatically, and fail derivation on any divergence from the approved finding.
- Subscribe derived documents to findings amendment events, and flag every affected document when an approved finding changes.
- Gate each format's release through its own approval path, since audiences and authorities differ.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to adapt approved findings into a target format's register and length, working from the approved findings rather than from another document.
- Preserve determination wording exactly as approved, and constrain adaptation to surrounding narrative.
- Apply exclusion rules before generation so restricted content is never in the model's scope, rather than relying on the model to omit it.
- Cite the approved finding behind every adapted statement, so derived documents remain traceable to their source.
- Monitor adapted output for determination drift and for reintroduced detail the format excludes.

## Architecture

Build toward this shape. It combines the implementation patterns and AI opportunities from the use cases above into one design, and it names no product or vendor. Agree on it before you evaluate any product, because it sets what any product you choose has to do.

Keep AI out of the determination. Models can draft descriptive sections and point out problems in a draft. The investigator decides the determination, the standard of proof, how much weight the evidence carries, and how conflicting evidence resolves, and signs the report. Citation checks, completeness checks, and format rules all run as rules, because people act on an issued report without re-reading the case.

<div class="architecture-stack" aria-label="Logical architecture for Findings and Investigative Reporting">
  <section class="architecture-layer architecture-layer--experience">
    <p class="architecture-layer-title"><span>01</span> Experience</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Investigator drafting workspace</strong><small>Findings, evidence links, drafts, and attestation.</small></div>
      <div><strong>Reviewer workspace</strong><small>Criterion dispositions, comments, diffs, and rejection.</small></div>
      <div><strong>Issued report and distribution</strong><small>Immutable versions, recipients, and supersession notices.</small></div>
    </div>
  </section>
  <section class="architecture-layer">
    <p class="architecture-layer-title"><span>02</span> Findings and reporting core</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Findings register</strong><small>Determination, standard applied, and typed evidence links.</small></div>
      <div><strong>Report composition engine</strong><small>Template-driven assembly from findings and case records.</small></div>
      <div><strong>Exhibit and citation model</strong><small>Stable identifiers and resolvable references into sources.</small></div>
      <div><strong>Review and revision history</strong><small>Criteria dispositions, comments, responses, and diffs.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--platform">
    <p class="architecture-layer-title"><span>03</span> Shared solution services</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entitlement service</strong><small>Finding- and item-level access enforced at assembly time.</small></div>
      <div><strong>Citation resolution service</strong><small>Validates targets exist, match version, and remain live.</small></div>
      <div><strong>Redaction service</strong><small>Format-specific suppression against derived documents.</small></div>
      <div><strong>Workflow and rules engines</strong><small>Independence enforcement, gates, and enumerated checks.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--intelligence">
    <p class="architecture-layer-title"><span>04</span> Optional intelligence</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Narrative drafting</strong><small>Descriptive sections only, every assertion cited.</small></div>
      <div><strong>Evidentiary basis assembly</strong><small>Supporting and contradicting material in parallel.</small></div>
      <div><strong>Advisory draft review</strong><small>Narrative defects raised alongside the deterministic gate.</small></div>
      <div><strong>Format adaptation</strong><small>Derived from approved findings with determinations fixed.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--records">
    <p class="architecture-layer-title"><span>05</span> Data and authoritative systems</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Case data store</strong><small>Cases, allegations, and investigative steps taken.</small></div>
      <div><strong>Evidence repository</strong><small>Evidence items findings cite and exhibits draw from.</small></div>
      <div><strong>Document and attachment store</strong><small>Drafts, issued versions, and derived documents.</small></div>
      <div><strong>Policy and authority library</strong><small>Report templates, review criteria, and format rules.</small></div>
    </div>
  </section>
  <aside class="architecture-controls"><strong>Control plane</strong><span>Identity and access · Subject response rights · Publication control · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation</span></aside>
</div>

### Baseline and additive components

Build the baseline first, because nearly every use case depends on it. Add each of the other components later, when you commit to the use case that needs it. Do not buy everything up front.

| Component | What it must do | When to build |
| --- | --- | --- |
| Findings register | Hold determination, standard applied, and typed supporting and contradicting evidence links | Build first |
| Report composition engine | Assemble reports from findings and case records against versioned templates | Build first |
| Citation resolution service | Validate that every citation target exists, matches its version, and remains live | Build first |
| Entitlement service | Decide access at finding and item granularity, enforced at assembly time | Build first |
| Workflow engine | Gate issue behind independent review and record criterion-level dispositions | Build first |
| Rules engine | Execute enumerated completeness, consistency, and format exclusion checks | Build first |
| Append-only activity log | Record finding, review, issue, and distribution events with actor and timestamp | Build first |
| Case data store | Hold cases, allegations, and the investigative steps narratives draw from | Build first |
| Evidence repository | Supply the evidence items findings cite and exhibits draw from | Build first |
| Document and attachment store | Retain drafts, immutable issued versions, and derived documents | Build first |
| Policy and authority library | Hold report templates, review criteria, and per-format rules with versions | Build first |
| Notification and queue service | Route review queues, supersession notices, and citation-break alerts | Build first |
| Search and retrieval | Search findings and reports within the requester's entitlements | Build first |
| Reporting | Report criterion failure rates, review outcomes, and draft adoption intervals | Build first |
| Redaction service | Apply format-specific identity and content suppression to derived documents | Add where public or restricted-audience formats are produced |
| Package assembly and production | Produce a report and its exhibit set as one delivered artifact with a manifest | Add where reports are formally produced to external recipients |
| Canonical event store | Supply the chronology narratives are drafted from and reconciled against | Add to unlock chronology reconciliation and narrative drafting |
| Generative model with grounding and citation | Draft descriptive sections, assemble evidentiary bases, and adapt formats | Add to unlock drafting and adaptation |
| Model evaluation and monitoring | Track citation fidelity, contradicting-material treatment, and determination drift | Add alongside any model component |

Record each finding as structured data, not as prose. Store the determination, the standard of proof applied, and links to the evidence, marking each link as supporting or contradicting. Rules can then check that every finding has supporting evidence, that contradicting material was linked and dealt with, and that the same standard was applied across similar matters. The contradicting link matters most, because without it you cannot tell a determination that weighed opposing evidence from one where nothing opposed it.

Re-check citations every time, not just once. Evidence gets unmerged, reclassified, superseded, and withdrawn after a finding cites it. Run citation resolution as a service and call it when a report is drafted, when it is issued, and whenever the evidence it cites changes. Notify whoever holds an issued report when one of its citations breaks. This is cheap while the case is open, and impossible once reports have circulated and you cannot tell which ones are affected.
