---
title: Investigative Research & Records Collection
summary: Ability to search authorized information sources, issue and track records requests, and collect investigative material.
status: Draft
tier: Tier 2 · Practitioner
scope: All
updated: 2026-08-19
owner: Content team
workload: Investigations
parent_title: Investigations
parent_url: /workloads/investigations/
order: 6
sections:
  - Overview
  - Maturity Levels
  - Search Internal and Authorized External Sources
  - Issue and Track Records Requests
  - Collect Investigative Material
  - Track Outstanding Requests and Responses
  - Search Document Collections in Natural Language
  - Extract Relevant Facts from Lengthy Records
  - Compare Records and Highlight Inconsistencies
  - Prioritize Documents for Investigator Review
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

Ability to search internal and authorized external information sources, issue and track requests for records or information, collect documents, correspondence, transactional records, and other investigative material, and track outstanding requests and responses.

This capability covers obtaining information and documents through research and formal request. It excludes material held as evidence under chain of custody, which belongs to Evidence Management & Chain of Custody.

## Maturity Levels

| Stage | Typical characteristics |
| --- | --- |
| Not performed | Records are requested informally with no record of what was asked or received. |
| Manual / ad hoc | Requests are tracked in individual spreadsheets or email folders. |
| Standardized | A defined request process records each request, its recipient, and its due date. |
| Integrated | Requests and received material attach to the case, with outstanding items visible. |
| Automated / optimized | Large collections are searchable in natural language, with relevant material prioritized for review. |

<p class="eyebrow">Use case</p>

## Search Internal and Authorized External Sources

Investigators draw on a wide range of sources: the organization's own case and program systems, other agencies' systems accessed under agreement, commercial data providers, public registers of companies and property, licensing and regulatory records, and open sources. Each carries a different access basis — a statutory entitlement, an information-sharing agreement, a subscription, or simply public availability — and each has its own constraints on what may be queried, for what purpose, and what must be logged.

Authorization is the substance of this use case rather than a formality around it. Querying a law enforcement or benefits system for a purpose outside the agreed basis is a misuse of access that has ended careers and produced litigation, and the fact that an investigator can technically reach a system says nothing about whether they may query it for this matter. The practical requirement is that purpose is recorded at the point of query, that the query is logged against the case, and that what an investigator may reach is a governed list rather than the accumulated set of accounts they happen to hold.

<p class="discovery-label">Discovery questions</p>

- Which internal and external sources do investigators use, and is there a definitive list?
- What is the access basis for each — statute, agreement, subscription, or public availability?
- Are there purpose limitations on any source, and how are they enforced today?
- How does an investigator know whether they may query a source for a particular matter?
- Are queries logged against the case, and would that log satisfy an audit of source use?
- How are access rights removed when someone changes role or leaves?
- Has misuse of a source ever occurred here, and how was it detected?

<p class="pattern-label">Implementation pattern</p>

- Maintain an authorized source catalog recording each source, what it holds, its access basis, its purpose limitations, and who may query it.
- Require the case and the purpose to be recorded at the point of query, so source use is attributable rather than reconstructed from system logs afterward.
- Use source integration connectors to query external sources through a governed path, rather than relying on investigators holding individual accounts.
- Enforce purpose limitations through the entitlement service at query time, not through training and policy alone.
- Log every query and its result count in the append-only activity log against the case, so source use is auditable in the same way as content access.
- Configure access to derive from current role and case assignment, so entitlements lapse when either changes.
- Report query volume by source, purpose, and investigator, so anomalous use patterns are visible to oversight.

<p class="eyebrow">Use case</p>

## Issue and Track Records Requests

Where material cannot be reached directly, it has to be requested. Requests range from an informal ask to another program area, through formal demands to regulated entities, to compulsory process — and each carries a different authority, a different response obligation, and a different consequence for non-response. The request itself needs to be specific enough to produce what is wanted: a scope, a date range, a custodian, and a described set of records, since a vague request produces either a refusal or an unusable volume of material.

Requests are the longest-latency element of most investigations, and the register of them is what keeps a matter moving. A request issued and forgotten stalls a case silently, and the pattern is common because the consequence of forgetting is invisible until a deadline approaches. Each request needs an owner, an expected response date derived from its type, and a follow-up path — and the record needs to show what was asked, of whom, under what authority, and what came back, because a later challenge may turn on precisely that.

<p class="discovery-label">Discovery questions</p>

- What kinds of records requests does this program issue, and under what authority?
- Who may issue each kind, and what approval is required first?
- What response timeframes apply, and are they set by statute, agreement, or expectation?
- How specific are requests today, and how often do they produce refusals or unusable volume?
- How is a request tracked from issue to response, and by whom?
- What happens when a recipient does not respond, or responds partially?
- Could the program show exactly what was requested from a given custodian two years ago?

<p class="pattern-label">Implementation pattern</p>

- Model each request as a structured record with recipient, custodian, scope, date range, authority, issue date, and expected response date.
- Use a workflow engine to gate issuance behind the approval its request type requires, so compulsory process cannot be sent without recorded authority.
- Derive expected response dates from request type through a rules engine, rather than leaving them to the issuer to set by hand.
- Apply request templates by type and recipient class, so scope and framing stay consistent and defensible.
- Model partial responses explicitly, so a request that produced some material remains visibly open for the rest.
- Use a notification service to prompt follow-up before a response date passes, and escalate on non-response.
- Record every issue, response, follow-up, and closure in the append-only activity log.
- Report request cycle time and non-response rates by recipient and type, so unreliable channels become visible.

<p class="eyebrow">Use case</p>

## Collect Investigative Material

Material arrives in every form a responding organization finds convenient: paper in boxes, PDFs by email, exports on portable media, database extracts, share access. Collection registers what actually arrived against what was requested, attaches it to the case, and records its provenance — who provided it, when, in what form, under which request, and what they said it comprises. That provenance is what makes the material usable later, and it is far cheaper to capture at receipt than to reconstruct.

What arrives frequently differs from what was asked for. Responses come partially, in unusable formats, with material withheld under a claimed privilege, or with more than was requested — which raises its own problem, since material outside the scope of the authority under which it was obtained may need to be quarantined rather than reviewed. Recording the discrepancy between request and response is what allows the gap to be pursued, and what prevents an investigation from proceeding on the mistaken belief that it holds a complete set of records.

<p class="discovery-label">Discovery questions</p>

- In what forms does material typically arrive, and which are hardest to handle?
- How is received material attached to the request that produced it?
- What provenance is captured at receipt — provider, date, form, and completeness?
- How often do responses differ from what was requested, and how is that recorded?
- What happens when a response includes material outside the scope of the request?
- How are privilege claims and withheld material handled and recorded?
- When collected material later becomes evidence, what happens to its provenance?

<p class="pattern-label">Implementation pattern</p>

- Register received material against the request that produced it, so what arrived can always be compared with what was asked.
- Capture provider, receipt date, form, and the responder's description of what the production comprises.
- Record discrepancies between request and response as structured findings, so gaps can be pursued rather than noticed later.
- Quarantine material outside the scope of the collection authority pending a decision, rather than admitting it into general review.
- Record privilege claims and withheld items as part of the response, so the claim is visible without the content being exposed.
- Store collected material in a document and attachment store with its original form preserved and any conversion held as a derived representation.
- Use a text extraction service at ingestion so non-digital and scanned material becomes searchable rather than opaque.
- Preserve provenance through any later transfer into the evidence register, so material promoted to evidence arrives with its source and authority intact.

<p class="eyebrow">Use case</p>

## Track Outstanding Requests and Responses

At any point a matter has a set of open threads: requests issued and unanswered, partial responses awaiting the remainder, follow-ups sent, and requests not yet issued because they depend on something else. Tracking them means being able to answer, for a case or across a caseload, what is outstanding, from whom, for how long, and what it is blocking — and to see that without assembling it from individual investigators' recollections.

The organizational view matters as much as the case view. A single recipient slow to respond across many matters is a pattern no individual investigator sees, and it is a pattern the organization can act on — through escalation, an agreement, or a change of approach — in a way that no one investigator can. The same is true of requests that consistently fail to produce what was asked for, which usually indicates a scoping problem in the request template rather than reluctance on the other side.

<p class="discovery-label">Discovery questions</p>

- How does an investigator see everything outstanding on their cases today?
- Can a supervisor see outstanding requests across the caseload, and at what effort?
- Which requests are blocking other work, and is that dependency recorded anywhere?
- How long do requests typically remain outstanding, and does that vary by recipient?
- Would the program notice that one recipient is consistently slow across many matters?
- What escalation exists for non-response, and who initiates it?
- How does an outstanding request relate to the case deadlines it might jeopardize?

<p class="pattern-label">Implementation pattern</p>

- Present outstanding requests as a view spanning the investigator's whole caseload rather than only the case in hand.
- Model the dependency between a request and the tasks or lines of inquiry waiting on it, so what a delay is blocking is visible.
- Use a rules engine to evaluate requests against expected response dates on a schedule and on response events.
- Escalate through a workflow engine on non-response, so escalation is a defined step rather than an individual decision to chase.
- Relate outstanding requests to case deadlines, so a request that will not return in time surfaces while alternatives still exist.
- Report response performance by recipient and request type across the program, so systemic delay becomes an organizational finding.
- Report requests that consistently produce incomplete responses, since that usually indicates a scoping problem in the template rather than reluctance.

<p class="eyebrow">Use case</p>

## Search Document Collections in Natural Language

A single production can run to tens of thousands of documents, and a matter may hold several. Keyword search over that volume demands that an investigator already know the vocabulary the records use — the internal name for a programme, the abbreviation a company used for a counterparty, the phrasing a particular office favored — and a search that misses because the records say something slightly different returns nothing while appearing to have worked. Natural-language questions let an investigator ask what they actually want to know and get passages that answer it, regardless of the exact wording.

Retrieval quality determines whether this is useful or dangerous. An answer assembled from the top few passages of a large collection can be confidently wrong simply because the relevant document ranked poorly, and nothing in the answer reveals that. So the investigator needs to see what was retrieved and what was searched, and to be able to run the underlying retrieval directly. Natural-language search supplements keyword search rather than replacing it, because a defensible statement that a collection contains no reference to something still rests on a deterministic search anyone can reproduce.

<p class="discovery-label">Discovery questions</p>

- How large do document collections get in a typical matter here?
- How do investigators search them today, and what do they miss?
- How much specialized or internal vocabulary appears in the records?
- What would an investigator need to see before trusting an answer drawn from a collection?
- When must the program state that a collection contains no reference to something, and how is that established?
- Do collections span languages, and how is that handled?
- What happens today when the relevant document is simply never found?

<p class="pattern-label">Implementation pattern</p>

- Index collected material in an entitlement-aware search service so item-level restrictions apply to results as they do to direct access.
- Keep deterministic keyword and field search available alongside natural-language search, since a defensible negative finding depends on a reproducible query.
- Return the retrieved passages with each answer, and link every passage to its location in the source document.
- Show the scope searched — which collections, which date range, how many documents — so an investigator knows what the answer covers.
- Exclude quarantined and privilege-claimed material from retrieval, so scope restrictions are honoured at the index rather than in the interface.
- Report retrieval coverage and failures, so material that silently failed to index is visible rather than assumed searchable.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model with retrieval over collected material to answer investigator questions asked in plain language.
- Cite the source document and location for every statement, so any answer can be checked against the original.
- Configure the model to state when the collection does not support an answer, rather than assembling a plausible one from weak matches.
- Keep the answer a pointer into the records rather than a substitute for reading them, particularly where a finding will rest on it.
- Monitor retrieval quality against known-answer test sets drawn from closed matters, since a confidently wrong answer is the failure mode that matters.

<p class="eyebrow">Use case</p>

## Extract Relevant Facts from Lengthy Records

Investigative records are often long and mostly irrelevant. A contract file may run to hundreds of pages of which four matter, a bank statement series may cover years to establish a handful of transactions, a policy manual may bear on a single clause. Extraction pulls the specific facts an investigator needs — the parties and dates on an agreement, the approvals recorded, the amounts and counterparties on transactions — and presents them structured, so the investigator's time goes to judging significance rather than locating the passage.

Extracted facts are an index into the record, not a replacement for it. Documents are frequently ambiguous in ways extraction flattens: a date may be an execution date or an effective date, an amount may be gross or net, an approval may be conditional. Every extracted value therefore needs to point at the passage it came from, and anything relied on in a finding needs to be confirmed against the original — because the cost of a misread contractual term appearing in a report of investigation falls on the investigation's credibility, not on the tooling.

<p class="discovery-label">Discovery questions</p>

- Which record types consume the most investigator reading time in this program?
- Which facts are typically being sought from each of those types?
- How structured are those records — standard forms, or free-form documents?
- How often are documents ambiguous in ways that a single extracted value would obscure?
- What verification would an investigator do before relying on an extracted fact?
- Where would an extraction error be most costly in this program?
- Do records arrive in formats that resist extraction, and how common are they?

<p class="pattern-label">Implementation pattern</p>

- Define the facts sought per record type, so extraction targets a known schema rather than summarizing a document generally.
- Retain the source passage and location for every extracted value, so it is verifiable in place.
- Present extracted values as a draft the investigator confirms, and record confirmations and corrections.
- Preserve ambiguity rather than resolving it — where a document supports two readings, surface both instead of selecting one.
- Keep the original document as the authoritative record, with extracted facts held as a derived representation linked to it.
- Report correction rates by record type and field, so the fields extraction handles worst are visible and can be improved or dropped.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to extract defined facts from lengthy records against a per-record-type schema.
- Require each extracted value to cite the passage supporting it, and return an explicit no-value rather than inferring an absent one.
- Configure extraction to flag rather than resolve ambiguity where a document supports more than one reading.
- Resolve extracted parties and organizations against the entity register instead of leaving them as free text.
- Monitor extraction accuracy per field, giving weight to dates, amounts, and identifiers, where errors carry the most consequence.

<p class="eyebrow">Use case</p>

## Compare Records and Highlight Inconsistencies

Investigative conclusions frequently rest on records disagreeing. An invoice describes goods a delivery note does not record, a timesheet places someone at work while an access log places them elsewhere, a licence application states experience an employment record contradicts, two productions of the same document differ. Finding these across sources is central investigative work, and doing it manually across large collections is slow enough that it often does not happen thoroughly.

A detected discrepancy is an observation requiring investigation, not a finding. Records disagree for many innocent reasons — different conventions, timing, amendments, plain error — and the investigative task is establishing which explanation holds. The value is in reliably surfacing that a disagreement exists across material too large to read exhaustively; the interpretation belongs to the investigator, and the record should capture what they concluded so the same discrepancy is not re-examined repeatedly.

<p class="discovery-label">Discovery questions</p>

- Which cross-record comparisons matter most in this program's typical matters?
- How are those comparisons done today, and across what volume?
- Which discrepancies are usually innocent, and which are usually significant?
- What normalization is required before records can be compared — formats, conventions, identifiers?
- At what point in a matter are discrepancies typically found?
- How should an investigator record the resolution of a discrepancy?
- What would be the consequence of a significant discrepancy being missed?

<p class="pattern-label">Implementation pattern</p>

- Normalize extracted values — dates, amounts, identifiers, entity references — before comparison, so genuine disagreements are not lost in formatting differences.
- Resolve entity references through the entity register, so the same party is recognized across sources that name it differently.
- Present each discrepancy with both sources and their passages, so the investigator judges it in place.
- Require a recorded resolution to close a discrepancy, and attach it so the same one is not re-raised.
- Distinguish structural comparisons that rules can perform deterministically from semantic ones that require judgment.
- Route unresolved discrepancies to review before findings are finalized, rather than relying on the investigator to self-check.
- Report discrepancy volume and resolution outcomes by comparison type, so a comparison producing only noise is retired.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to compare information across records and surface inconsistencies that a field-level rule cannot detect.
- Cite both sides of every proposed inconsistency, so the investigator reads the underlying material rather than a characterization of it.
- Present discrepancies as observations for investigative judgment, and keep the model out of explaining why records differ or what it implies.
- Keep deterministic comparison as the detection layer for structured fields, and use the model only where the disagreement is semantic.
- Monitor precision, since flags that prove routinely meaningless are what cause investigators to stop reading them.

<p class="eyebrow">Use case</p>

## Prioritize Documents for Investigator Review

When a production is large, review order determines how quickly a matter progresses. Ranking documents by likely relevance puts the material that bears on the investigation's questions in front of the investigator first, which matters most where the deadline will arrive before the collection can be read exhaustively — a common condition rather than an unusual one.

Ranking changes what gets read, not what exists, and that distinction has to hold. A document ranked low is deprioritized, never excluded, and the collection remains searchable in full so nothing depends on the ranking having been right. The failure to guard against is a low-ranked document that turns out to be decisive, which is invisible unless the program deliberately samples the tail — and where a matter requires a positive statement that no relevant material exists, that statement must rest on a complete review or a reproducible search, not on a ranking.

<p class="discovery-label">Discovery questions</p>

- How large are productions relative to available review capacity?
- How is review currently ordered — by date, custodian, source, or not at all?
- What proportion of a typical production turns out to be relevant?
- What would be needed for an investigator to trust a ranking enough to change their review order?
- Does this program ever need to state that no relevant material exists, and on what basis?
- How would a decisive document ranked low be discovered?
- What sampling of low-ranked material would give the program confidence?

<p class="pattern-label">Implementation pattern</p>

- Rank for review order only, and keep every document accessible and searchable regardless of its rank.
- Derive relevance from the case's objectives and lines of inquiry, so ranking reflects what this matter is trying to establish.
- Show why a document ranked highly, so an investigator can calibrate rather than accept an opaque order.
- Sample low-ranked material deliberately as part of the review process, so tail failures are detectable.
- Recompute ranking as review proceeds and objectives develop, rather than fixing an order at ingestion.
- Require completed review or a reproducible search, never a ranking, to support any statement that no relevant material exists.
- Report the rank distribution of documents that proved relevant, so ranking quality is measured against outcomes.

<p class="ai-label">AI opportunity</p>

- Use a relevance ranking model to order large productions against the case's stated objectives and lines of inquiry.
- Return the passages driving each document's rank, so an investigator can judge the ordering.
- Use investigator relevance decisions as feedback to re-rank the remainder of the collection during review.
- Keep ranking strictly separate from exclusion, so nothing leaves the reviewable set on a model's assessment.
- Evaluate on the rank distribution of documents that proved relevant, particularly those that ranked low, rather than on aggregate precision.

## Architecture

Build toward this shape. It combines the implementation patterns and AI opportunities from the use cases above into one design, and it names no product or vendor. Agree on it before you evaluate any product, because it sets what any product you choose has to do.

Keep AI out of deciding what the collection contains. Models can help an investigator find and read material faster: answering questions, pulling out facts, flagging disagreements, ordering a review queue. They must never decide what is in the collection or what may be reached. Scope, authority, and completeness are computed by rules, so anyone else can reproduce a statement about what a collection holds.

<div class="architecture-stack" aria-label="Logical architecture for Investigative Research and Records Collection">
  <section class="architecture-layer architecture-layer--experience">
    <p class="architecture-layer-title"><span>01</span> Experience</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Investigator research workspace</strong><small>Source search, collections, and questions asked of the record.</small></div>
      <div><strong>Records coordinator workspace</strong><small>Request issuance, responses, follow-up, and escalation.</small></div>
      <div><strong>Document review queue</strong><small>Prioritized review with relevance decisions captured.</small></div>
    </div>
  </section>
  <section class="architecture-layer">
    <p class="architecture-layer-title"><span>02</span> Research and collection core</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Authorized source catalog</strong><small>Sources, access basis, purpose limits, and who may query.</small></div>
      <div><strong>Records request register</strong><small>Scope, recipient, authority, and expected response date.</small></div>
      <div><strong>Collection and provenance</strong><small>What arrived, from whom, in what form, under which request.</small></div>
      <div><strong>Response tracking</strong><small>Outstanding, partial, withheld, and blocked dependencies.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--platform">
    <p class="architecture-layer-title"><span>03</span> Shared solution services</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entitlement service</strong><small>Source, purpose, and item-level access enforced at query time.</small></div>
      <div><strong>Source integration connectors</strong><small>Governed access to external systems and data providers.</small></div>
      <div><strong>Workflow and rules engines</strong><small>Issuance approval, response dates, escalation, and comparison rules.</small></div>
      <div><strong>Search and notification</strong><small>Entitlement-aware search and follow-up routing.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--intelligence">
    <p class="architecture-layer-title"><span>04</span> Optional intelligence</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Natural-language retrieval</strong><small>Questions answered from cited passages in the collection.</small></div>
      <div><strong>Fact extraction and comparison</strong><small>Schema-bound facts and semantic discrepancies, both cited.</small></div>
      <div><strong>Relevance ranking</strong><small>Review order against case objectives, never exclusion.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--records">
    <p class="architecture-layer-title"><span>05</span> Data and authoritative systems</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Document and attachment store</strong><small>Collected material in original form with provenance.</small></div>
      <div><strong>Append-only activity log</strong><small>Immutable query, request, and receipt history.</small></div>
      <div><strong>Entity register</strong><small>Parties and organizations extracted material resolves against.</small></div>
      <div><strong>Case data store</strong><small>Cases, objectives, and lines of inquiry driving relevance.</small></div>
    </div>
  </section>
  <aside class="architecture-controls"><strong>Control plane</strong><span>Identity and access · Collection authority · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation</span></aside>
</div>

### Baseline and additive components

Build the baseline first, because nearly every use case depends on it. Add each of the other components later, when you commit to the use case that needs it. Do not buy everything up front.

| Component | What it must do | When to build |
| --- | --- | --- |
| Authorized source catalog | Record each source, its access basis, purpose limits, and who may query it | Build first |
| Records request register | Hold scope, recipient, authority, issue date, and expected response date per request | Build first |
| Document and attachment store | Retain collected material in original form with its provenance | Build first |
| Append-only activity log | Record every query, request, receipt, and follow-up with actor and timestamp | Build first |
| Entitlement service | Decide what each person may query and read, at source and item granularity | Build first |
| Workflow engine | Gate request issuance behind its required approval and drive escalation | Build first |
| Rules engine | Derive response dates and evaluate outstanding, overdue, and structural comparisons | Build first |
| Notification and queue service | Prompt follow-up, escalate non-response, and route review work | Build first |
| Case data store | Hold the cases, objectives, and lines of inquiry collection serves | Build first |
| Search and retrieval | Search collected material within the requester's entitlements, reproducibly | Build first |
| Reporting | Report cycle time, non-response, discrepancy outcomes, and ranking quality | Build first |
| Source integration connectors | Query external systems and providers through a governed, logged path | Add where sources are reached directly rather than by request |
| Text extraction service | Make scanned and non-digital material searchable at ingestion | Add to unlock search across non-text collections |
| Entity register | Resolve parties and organizations named across collected material | Add to unlock comparison across sources naming parties differently |
| Generative model with grounding and citation | Answer questions, extract facts, and surface discrepancies from cited content | Add to unlock the natural-language and extraction use cases |
| Relevance ranking model | Order large productions against case objectives for review | Add to unlock prioritized review |
| Model evaluation and monitoring | Track retrieval quality, extraction accuracy, and rank distribution of relevant material | Add alongside any model component |

Build the authorized source catalog first. For each source, record what it holds, on what legal basis it may be accessed, for what purposes, and who may query it. Without that catalog, an investigator's reach is whatever accounts they have collected over the years, the organization cannot say what its people can see, and purpose limits exist only in training. The catalog also makes misuse detectable, because a query can only look wrong if there is a recorded basis to compare it against.

Carry provenance with material when it moves to the evidence register. Send the source, the collection authority, the date it was received, and the responder's description along with the file itself. Design that handoff deliberately rather than copying files across. Otherwise the evidence item's chain starts on the day someone moved it, which is exactly the gap Evidence Management & Chain of Custody exists to prevent.
