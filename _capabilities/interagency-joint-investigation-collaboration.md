---
title: Interagency & Joint Investigation Collaboration
summary: Ability to coordinate joint investigations, share authorized information, and deconflict investigative activity.
description: "Ability to coordinate joint investigations, share authorized information, and deconflict investigative activity."
status: Draft
tier: Tier 2 · Practitioner
scope: All
updated: 2026-08-19
owner: Content team
workload: Investigations
parent_title: Investigations
parent_url: /workloads/investigations/
order: 15
sections:
  - Overview
  - Maturity Levels
  - Coordinate Joint Investigations and Task Forces
  - Share Authorized Information with Partners
  - Deconflict Investigative Activity
  - Track External Leads and Contributions
  - Summarize Partner Information Against the Case
  - Identify Overlaps Between Shared Matters
  - Generate Partner Briefings from Releasable Information
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

Ability to coordinate joint investigations and task forces, share authorized information with partner organizations, deconflict investigative activity, and track external leads, requests, and contributions.

This capability covers working a matter alongside other organizations and controlling what may be released to them. It excludes compulsory legal process directed at those organizations, which belongs to Legal, Prosecutorial & Enforcement Coordination.

## Maturity Levels

| Stage | Typical characteristics |
| --- | --- |
| Not performed | Coordination happens through individual relationships with no organizational record. |
| Manual / ad hoc | Information is shared by email, with release decisions made case by case. |
| Standardized | Sharing follows defined agreements, with each disclosure and its basis recorded. |
| Integrated | Partner contributions and shared material attach to the case with their release basis. |
| Automated / optimized | Deconfliction runs against authorized shared matters, and briefings are generated only from releasable content. |

<p class="eyebrow">Use case</p>

## Coordinate Joint Investigations and Task Forces

Some matters are worked jointly: a task force drawn from several agencies, a parallel investigation where two organizations pursue different aspects of the same conduct, or a case where one body holds the evidence and another holds the authority to act. Coordination establishes who is participating, what each contributes, who leads, how decisions are made, and what each participant may see of the shared matter.

Participants do not shed their home organization's obligations by joining. An investigator seconded to a task force remains bound by their own agency's authority, retention rules, and reporting lines, and material they contribute carries their organization's restrictions into the joint matter. That creates a genuinely awkward access model — the joint matter has members from several organizations, each of whom may see a different subset of it — and modeling membership and access as a property of the joint matter alone will produce either over-disclosure or a joint case nobody can actually use.

<p class="discovery-label">Discovery questions</p>

- What joint arrangements does this program participate in, and how are they constituted?
- How is leadership and decision authority established in a joint matter?
- Do participants retain their home organization's obligations, and which ones bind hardest?
- How is access to a joint matter determined today?
- What happens to the joint record when the arrangement ends?
- How are seconded staff identified and their access managed?
- Which organizations cannot see each other's contributions even within one joint matter?

<p class="pattern-label">Implementation pattern</p>

- Model a joint matter as a distinct record with typed membership holding participant organization, individual, role, and effective dates, linked to each participant's home matter.
- Evaluate access as the intersection of joint-matter membership and the contributing organization's restrictions on each item, computed by the entitlement service at read time rather than granted at the matter level.
- Federate partner identities through the entitlement service so external participants authenticate against their home organization, and access lapses when their home assignment ends.
- Record decision authority and leadership as structured attributes of the joint matter, with changes versioned rather than overwritten.
- Attach the governing agreement from the sharing agreement register to the joint matter, so item-level rules derive from it rather than from local convention.
- Define the joint matter's termination behavior at creation — what each participant retains, returns, or destroys — and model it as scheduled obligations rather than as an understanding.
- Log membership changes, access grants, and item contributions in the append-only activity log with the contributing organization recorded.

<p class="eyebrow">Use case</p>

## Share Authorized Information with Partners

Sharing is governed by an instrument — a memorandum of understanding, a statutory gateway, a court order, or a standing arrangement — that states which parties may exchange what, for which purposes, under what conditions, and for how long. Each disclosure has to be justifiable against one of those, and the organization has to be able to demonstrate afterward that it was.

Originator control is the constraint that shapes the architecture. Information received from a partner generally may not be passed on without the originator's consent, and that restriction has to survive every transformation the receiving organization performs — a summary of partner material carries the partner's caveat, an analytical product citing it inherits the restriction, a briefing quoting it cannot go to a third party. A design that stores caveats as text in a document header cannot enforce any of that on derived artifacts, which is precisely where the leak happens: not in the original document, but in a summary two steps removed that nobody recognized as partner-originated.

<p class="discovery-label">Discovery questions</p>

- Under what instruments does this program share information, and where are they held?
- What do those instruments permit, for which purposes, and for how long?
- How is originator control applied to material received from partners?
- How is a caveat carried onto a summary or product derived from partner material?
- How is a disclosure justified and recorded today?
- Could the program demonstrate compliance with an agreement if a partner asked?
- What happens when an agreement expires or a purpose changes?

<p class="pattern-label">Implementation pattern</p>

- Hold each instrument in a sharing agreement register as structured configuration — parties, permitted data classes, purposes, conditions, onward-disclosure rules, and effective dates — rather than as an attached document.
- Model handling caveats and originator control as enforced attributes on the item, evaluated by the entitlement service at every read, export, and generation.
- Propagate caveats automatically onto every derived artifact — summaries, products, briefings, reports — computing the derived item's restrictions as the union of its sources'.
- Evaluate every proposed disclosure against the governing agreement in the rules engine, and block a disclosure with no qualifying instrument rather than warning.
- Require an originator consent record before onward disclosure of partner-originated material, and model the consent request as a tracked workflow with the partner.
- Record each disclosure with its recipient, items, agreement relied on, purpose, and approver, so compliance is reportable per agreement.
- Expire agreements on their effective dates through the rules engine, and suspend dependent sharing rather than allowing it to continue silently.
- Report disclosures by agreement, purpose, and partner, in a form that can be provided to a partner as evidence of compliance.

<p class="eyebrow">Use case</p>

## Deconflict Investigative Activity

Two organizations unknowingly investigating the same subject is a recurring and expensive failure. It duplicates effort, and worse, one organization's action can destroy the other's — an approach to a witness that alerts a subject under covert surveillance, an arrest that pre-empts a longer operation, two teams arriving at the same premises. Deconfliction checks whether anyone else has a declared interest in a subject, a location, or a planned activity before it proceeds.

The design tension is that deconfliction requires disclosure to work, and disclosure is what organizations resist. The workable pattern is a pointer service: a query returns that another party has an interest and provides a point of contact, without revealing whose interest, what matter, or any detail. That is enough to prompt a conversation between the two organizations under whatever agreement governs them, and it is materially easier to get agencies to participate in than a system that exposes their case holdings. A deconfliction service that requires full disclosure to join will simply not be joined, and an unpopulated deconfliction service is worse than none because it returns false assurance.

<p class="discovery-label">Discovery questions</p>

- Has a conflict between organizations occurred here, and what did it cost?
- What deconfliction arrangements exist today, and who participates?
- What would partners agree to disclose into a deconfliction check?
- Which activities warrant a check — subject interest, planned operations, premises visits?
- How quickly must a check return to be usable before a field operation?
- What happens when a check returns a conflict — who contacts whom, and under what agreement?
- How would the program avoid an incomplete deconfliction service giving false assurance?

<p class="pattern-label">Implementation pattern</p>

- Implement deconfliction as a pointer service returning only the existence of a competing interest and a contact point, never the matter, organization, or detail.
- Match on resolved entities from the entity register plus location and time window, so a check is not defeated by a name spelled differently.
- Register declared interests as time-bounded assertions that expire automatically, so the index reflects active interest rather than accumulated history.
- Return results within a latency budget suitable for pre-operational checks, and record the check with its parameters and outcome whether or not a conflict was found.
- Log every deconfliction query and result in the append-only activity log, so the fact a check was performed is provable afterward.
- Report participation coverage per organization and matter type, so gaps in the index are visible and the service's assurance level is known.
- Route a returned conflict into a tracked contact workflow rather than leaving resolution to an informal call.

<p class="eyebrow">Use case</p>

## Track External Leads and Contributions

Partners send material: a lead about a subject, a response to a request, an analytical product, an alert about activity relevant to a matter. Each needs to reach the right case, be attributed to its source, and carry the restrictions its originator attached — and the organization needs to be able to say what each partner has contributed and what has been done with it.

Attribution is what makes a contribution usable. A lead whose provenance is lost becomes an assertion in the case file with no way to assess its reliability or go back for more, and material whose originator is unknown cannot be onward-disclosed at all, since consent cannot be sought from a party nobody recorded. The reciprocal view matters too: partners who contribute and never learn whether it was useful stop contributing, so tracking what became of a contribution is not administrative overhead but the thing that keeps the channel open.

<p class="discovery-label">Discovery questions</p>

- What do partners contribute here, and through which channels?
- How is an incoming contribution routed to the right matter today?
- What provenance is captured — originating organization, individual, date, basis?
- How are restrictions attached by the originator recorded?
- Does the program report back to partners on what became of their contributions?
- What happens to a contribution that does not match an open matter?
- How would the program answer what a given partner has contributed over a year?

<p class="pattern-label">Implementation pattern</p>

- Register every inbound contribution with originating organization, individual, receipt date, transmission method, and the agreement it arrived under, before it reaches a case.
- Apply the originator's caveats as enforced attributes at ingestion, defaulting to the most restrictive interpretation where the marking is ambiguous.
- Resolve named entities in a contribution against the entity register to propose the matching matter, and require a person to confirm the routing.
- Hold contributions matching no open matter in a retained queue with its own retention schedule, rather than discarding them or attaching them speculatively.
- Model the reliability assessment of a contribution as a recorded attribute distinct from its content, so an unverified lead is not indistinguishable from a confirmed fact.
- Track disposition per contribution — acted on, incorporated, not pursued — and generate feedback to the originating partner where the agreement permits.
- Report contribution volume and disposition by partner, so the exchange can be evaluated in both directions.

<p class="eyebrow">Use case</p>

## Summarize Partner Information Against the Case

Partner material arrives in the partner's format, structured around their matter rather than yours: a long analytical product, an extract from another system, a narrative report of their investigation. The question an investigator has is narrow — what does this tell me about my subjects, my timeline, my open questions — and answering it means reading the whole thing against the case.

The restrictions make this harder than ordinary summarization. A summary of partner material is partner material, inheriting its caveats and onward-disclosure limits, and a summary that pulls partner content into a case narrative without carrying those restrictions has effectively laundered it — the caveat is lost and every downstream consumer treats the content as the organization's own. The summary also has to preserve attribution per statement, because an investigator needs to know which assertions came from the partner rather than from their own evidence, and because reliability differs by source.

<p class="discovery-label">Discovery questions</p>

- What partner material does this program receive, and in what volume and form?
- What does an investigator typically need to extract from it?
- How are caveats on partner material currently carried into case notes?
- How is partner-sourced information distinguished from the organization's own in the case record?
- How is reliability of partner material assessed and recorded?
- What would happen if partner content were incorporated without its restrictions?
- What review does partner material get before it informs investigative action?

<p class="pattern-label">Implementation pattern</p>

- Compute the summary artifact's caveats as the union of its source items' restrictions, and apply them before the summary is stored or displayed.
- Attribute every statement in a summary to its source item and originating organization, so partner-derived assertions remain identifiable in the case record.
- Retain the source passage reference for each statement, so an investigator can read the partner's own wording rather than a characterization of it.
- Scope summarization to the requester's entitlements, so a summary cannot surface partner content the requester could not open directly.
- Keep partner-derived summaries in a state distinct from the organization's own work product, requiring a deliberate logged action to incorporate content into case findings.
- Carry the partner's reliability assessment onto the summary, so an unverified partner assertion is not read as established.
- Log summary generation with its source items and resulting caveat set in the append-only activity log.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to summarize incoming partner material against the case's subjects, timeline, and open questions.
- Cite the source passage and originating organization for every statement, and exclude anything the material does not support.
- Restrict the model's retrieval scope to items the requester may see, so caveat enforcement precedes generation rather than filtering after it.
- Keep the model out of assessing the partner's reliability or reconciling their conclusions with the organization's own.
- Monitor generated summaries for statements that lose their partner attribution, since an unattributed partner assertion is the failure that strips a caveat.

<p class="eyebrow">Use case</p>

## Identify Overlaps Between Shared Matters

Where organizations have agreed to share, overlap detection finds where their matters genuinely intersect — the same subject, the same scheme, the same location or account appearing in both. This is the deliberate, agreement-governed version of deconfliction: rather than a binary conflict signal, it surfaces substantive connections between matters both parties have agreed to expose to comparison.

Scope discipline is what keeps this lawful. Comparison may only run across matters covered by an agreement permitting it, for the purposes that agreement states, and results may only reveal what it allows. The pull toward comparing everything held is strong and needs to be resisted architecturally rather than procedurally, because a comparison index built over all holdings will eventually be queried against matters no agreement covers. Building the agreement scope into the index rather than into the query is what prevents that.

<p class="discovery-label">Discovery questions</p>

- Which agreements permit comparison across matters, and on what terms?
- What may be revealed when an overlap is found, and to whom?
- Which attributes are useful for comparison — entities, accounts, locations, patterns?
- How would a genuine intersection be distinguished from coincidence?
- What confirmation step should precede acting on an overlap?
- How is comparison prevented from reaching matters no agreement covers?
- Who reviews and acts on a detected overlap?

<p class="pattern-label">Implementation pattern</p>

- Build the comparison index from matters explicitly scoped in by an active agreement, so material outside agreed scope is absent from the index rather than filtered at query time.
- Evaluate agreement purpose and expiry at query time as well as at indexing, and drop matters whose agreement has lapsed.
- Compare on resolved entities, accounts, locations, and event patterns through the graph query service, returning the specific attributes that matched.
- Constrain result content per agreement, so an overlap can be reported at whatever granularity the instrument permits — from a pointer to full detail.
- Hold overlaps as unconfirmed proposals requiring confirmation by both parties before either records a relationship.
- Compute base rates for matched attributes and suppress overlaps resting on attributes too common to discriminate.
- Log every comparison query, its agreement basis, and its results, and report query volume per agreement for partner assurance.

<p class="ai-label">AI opportunity</p>

- Use an entity resolution service with graph analysis to propose overlaps between matters within agreed comparison scope.
- Return the matched attributes and connecting path rather than a similarity score.
- Enforce agreement scope at the index rather than in the model's inputs, so out-of-scope material cannot influence a proposal.
- Keep overlaps unconfirmed until both parties confirm, and exclude unconfirmed overlaps from any product.
- Monitor confirmation rates by agreement and attribute type, and retire comparison types producing mostly coincidence.

<p class="eyebrow">Use case</p>

## Generate Partner Briefings from Releasable Information

Joint work requires regular briefing, and each recipient may receive a different picture: one partner is cleared for the subject's identity and another is not, one agreement permits sharing financial detail and another does not, and material originated by a third party cannot go to either without consent. Producing these by hand is slow and error-prone precisely because the rules are numerous and recipient-specific.

The release decision must be made on enforced attributes, not on a drafter's recollection. A briefing assembled by selecting content and then reviewing it for releasability inverts the safe order: the material is already in the document, and review has to catch every problem. Filtering to releasable content first, then generating from what remains, means restricted material was never in scope — and the difference matters because a release cannot be undone. Sanitization also has to be destructive in the released artifact, for the same reason redaction does.

<p class="discovery-label">Discovery questions</p>

- Which partners receive briefings here, and how often?
- What differs in what each may receive?
- How are release decisions made and recorded today?
- How long does producing a partner briefing take?
- How is third-party-originated material handled in a briefing?
- What review does a briefing receive before release?
- Has material ever been released that should not have been, and how was it discovered?

<p class="pattern-label">Implementation pattern</p>

- Filter case content to the releasable set for the recipient before generation, evaluating agreement scope, caveats, and originator consent through the release and sanitization pipeline.
- Generate briefings only from the filtered set, so restricted material is never within the composition scope rather than removed afterward.
- Apply identity and detail suppression destructively through the redaction service in the released artifact, retaining the unsanitized derivation linked to the release record.
- Materialize each release as an immutable set through the package assembly and production component, with a manifest and integrity values.
- Gate release through a workflow engine against the approval authority for the recipient and content classification.
- Record each release with recipient, agreement relied on, items included, sanitization applied, and approver.
- Re-evaluate scheduled recurring briefings against current agreement state at each generation, so a lapsed agreement halts the series rather than continuing on its original terms.
- Report releases per partner and agreement, in a form providable to the partner and to an auditor.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to compose partner briefings from the pre-filtered releasable content set.
- Cite the case artifact behind every statement, drawing only on items already determined releasable to that recipient.
- Keep agreement and caveat evaluation entirely in the deterministic pipeline, so no release decision depends on a model's judgment.
- Configure the model to omit rather than generalize where the releasable set does not support a statement, since a generalization can reveal what the underlying restriction was meant to protect.
- Monitor generated briefings for inferences that disclose restricted specifics, and for content traceable to items outside the releasable set.

## Architecture

Build toward this shape. It combines the implementation patterns and AI opportunities from the use cases above into one design, and it names no product or vendor. Agree on it before you evaluate any product, because it sets what any product you choose has to do.

Keep AI out of the release decision. Models can summarize, propose overlaps, and draft briefings, but only from material the system has already filtered down to what the recipient may receive. Agreement checks, caveat handling, originator consent, and sanitization all run as rules. You cannot recall something once another organization has it.

<div class="architecture-stack" aria-label="Logical architecture for Interagency and Joint Investigation Collaboration">
  <section class="architecture-layer architecture-layer--experience">
    <p class="architecture-layer-title"><span>01</span> Experience</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Joint investigation workspace</strong><small>Shared matter, membership, and contributions by organization.</small></div>
      <div><strong>Partner liaison console</strong><small>Agreements, disclosures, consents, and release approvals.</small></div>
      <div><strong>Deconfliction inquiry</strong><small>Pointer checks before operations, with contact routing.</small></div>
    </div>
  </section>
  <section class="architecture-layer">
    <p class="architecture-layer-title"><span>02</span> Collaboration core</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Sharing agreement register</strong><small>Parties, data classes, purposes, conditions, and expiry.</small></div>
      <div><strong>Joint matter and membership</strong><small>Participants, roles, home-matter links, and effective dates.</small></div>
      <div><strong>Disclosure and caveat record</strong><small>Per-item restrictions, originator consent, and release history.</small></div>
      <div><strong>Inbound contribution register</strong><small>Provenance, reliability, routing, and disposition feedback.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--platform">
    <p class="architecture-layer-title"><span>03</span> Shared solution services</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entitlement service</strong><small>Membership intersected with contributor restrictions, federated identity.</small></div>
      <div><strong>Deconfliction service</strong><small>Time-bounded interest assertions matched on resolved entities.</small></div>
      <div><strong>Release and sanitization pipeline</strong><small>Agreement, caveat, and consent evaluation before composition.</small></div>
      <div><strong>Workflow and rules engines</strong><small>Consent requests, release gates, and agreement expiry.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--intelligence">
    <p class="architecture-layer-title"><span>04</span> Optional intelligence</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Partner material summarization</strong><small>Attributed per statement, caveats computed as a union.</small></div>
      <div><strong>Overlap proposal</strong><small>Matches within agreed scope, held unconfirmed by both parties.</small></div>
      <div><strong>Briefing composition</strong><small>Drafted only from the pre-filtered releasable set.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--records">
    <p class="architecture-layer-title"><span>05</span> Data and authoritative systems</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Case data store</strong><small>Home matters, joint matters, and their linkage.</small></div>
      <div><strong>Entity register</strong><small>Resolved entities deconfliction and overlap match on.</small></div>
      <div><strong>Document and attachment store</strong><small>Contributions, sanitized derivations, and released sets.</small></div>
      <div><strong>Append-only activity log</strong><small>Immutable disclosure, consent, query, and release history.</small></div>
    </div>
  </section>
  <aside class="architecture-controls"><strong>Control plane</strong><span>Identity and access · Originator control · Agreement compliance · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation</span></aside>
</div>

### Baseline and additive components

Build the baseline first, because nearly every use case depends on it. Add each of the other components later, when you commit to the use case that needs it. Do not buy everything up front.

| Component | What it must do | When to build |
| --- | --- | --- |
| Sharing agreement register | Hold parties, data classes, purposes, conditions, onward rules, and expiry as evaluable configuration | Build first |
| Disclosure and caveat record | Hold per-item restrictions, originator consent state, and release history | Build first |
| Release and sanitization pipeline | Evaluate agreement, caveat, and consent, then produce the releasable set before composition | Build first |
| Entitlement service | Compute access as membership intersected with contributor restrictions, across federated identities | Build first |
| Workflow engine | Gate release, consent requests, and joint matter membership changes | Build first |
| Rules engine | Evaluate agreement scope, caveat propagation, and expiry on schedule and on access | Build first |
| Append-only activity log | Record disclosures, consents, queries, and releases with actor and organization | Build first |
| Case data store | Hold home matters, joint matters, and their linkage | Build first |
| Entity register | Resolve the entities deconfliction and overlap detection match on | Build first |
| Document and attachment store | Retain contributions, sanitized derivations, and released sets | Build first |
| Notification and queue service | Route consent requests, deconfliction contacts, and expiry warnings | Build first |
| Search and retrieval | Search shared material within agreement scope and requester entitlements | Build first |
| Reporting | Report disclosures, releases, and query volume per agreement for partner assurance | Build first |
| Deconfliction service | Match time-bounded interest assertions and return pointers without detail | Add where operational conflict between organizations is a real risk |
| Redaction service | Apply destructive identity and detail suppression to released artifacts | Add where releases require sanitization rather than whole-item filtering |
| Package assembly and production | Produce releases as immutable sets with manifests and integrity values | Add where releases are formal productions |
| Graph query service | Traverse entities and relationships across agreed comparison scope | Add to unlock overlap detection |
| Entity resolution service | Propose overlaps between matters within agreed scope | Add to unlock overlap detection |
| Generative model with grounding and citation | Summarize partner material and draft briefings from releasable sets | Add to unlock summarization and briefing generation |
| Model evaluation and monitoring | Track lost attribution, disclosive inference, and overlap confirmation rates | Add alongside any model component |

Store each caveat as a field on the item, and carry it onto anything derived from that item. A derived artifact takes on the restrictions of everything it drew from, and the system checks those restrictions on every read, export, and generated document. The leak is rarely the original document. It is a summary two steps removed that nobody recognized as partner material, because the caveat was text in a header nobody carried forward. This only works if derived artifacts record their sources from the start.

Build deconfliction so it returns a pointer, not the data. When someone checks an entity, return only that another organization has an interest and who to contact. Organizations will take part if declaring an interest costs them nothing, and will not if it exposes their holdings. The pointer is enough to start a conversation the existing agreement already covers. Report how many organizations actually participate, because a check that returns nothing looks like assurance when it may only mean nobody is enrolled.
