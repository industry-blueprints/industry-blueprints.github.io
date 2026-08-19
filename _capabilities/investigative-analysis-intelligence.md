---
title: Investigative Analysis & Intelligence
summary: Ability to build timelines, correlate information across sources, and identify patterns, networks, and trends.
description: "Ability to build timelines, correlate information across sources, and identify patterns, networks, and trends."
status: Draft
tier: Tier 2 · Practitioner
scope: All
updated: 2026-08-19
owner: Content team
workload: Investigations
parent_title: Investigations
parent_url: /workloads/investigations/
order: 11
sections:
  - Overview
  - Maturity Levels
  - Develop Timelines and Event Chronologies
  - Correlate Information Across Cases and Sources
  - Identify Patterns, Networks, and Recurring Behavior
  - Develop Analytical Products
  - Generate Timelines from Heterogeneous Records
  - Identify Non-Obvious Patterns and Relationships
  - Cluster Potentially Related Cases
  - Summarize Evidence For and Against a Hypothesis
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

Ability to develop timelines and event chronologies, correlate information across cases and data sources, identify patterns, trends, networks, and recurring behaviors, and develop analytical products and investigative intelligence.

This capability turns collected information into analytical product that informs investigative direction. It excludes the investigative findings themselves, which are documented through Findings & Investigative Reporting.

## Maturity Levels

| Stage | Typical characteristics |
| --- | --- |
| Not performed | Analysis happens in the investigator's head and is never captured separately. |
| Manual / ad hoc | Timelines and link charts are built by hand for individual cases. |
| Standardized | Analytical products follow a defined format with sourcing back to case material. |
| Integrated | Analysis draws on case, evidence, and entity records directly rather than re-keyed extracts. |
| Automated / optimized | Timelines and candidate patterns are generated from case records for the analyst to validate. |

<p class="eyebrow">Use case</p>

## Develop Timelines and Event Chronologies

A chronology establishes what happened in what order, and order is frequently the whole question — whether an approval preceded a payment, whether a subject knew a fact before acting, whether a document was created before or after the event it purports to record. Events come from everywhere the investigation has reached: transactions, interview accounts, system logs, correspondence, contract milestones, field observations. Each source expresses time differently, and the analytical work is assembling them onto one axis without misrepresenting how well any of them is actually known.

Temporal precision is the technical crux. Investigative events are frequently known only approximately — a witness recalls "sometime in March," a document is undated but sits between two dated ones, a log records a timezone nobody recorded the offset for. A timeline that renders an approximate event as a point in time fabricates precision the record does not support, and an analyst drawing an inference from an ordering that only exists because of that fabrication has made an error the timeline concealed rather than revealed.

<p class="discovery-label">Discovery questions</p>

- Which sources contribute events to a chronology in this program?
- How precisely are events typically known, and how often is timing approximate?
- Do sources span timezones, and are offsets recorded?
- Which orderings tend to matter most in this program's matters?
- How are chronologies built today, and how long does one take?
- How is an approximate or disputed date represented currently?
- How would a chronology be presented to counsel or a court?

<p class="pattern-label">Implementation pattern</p>

- Model events in a canonical event store with actor, action, location, source reference, and a temporal value carrying an explicit precision type — instant, day, month, bounded range, or before-after relation only.
- Store every timestamp in UTC with the original local value and offset retained as separate fields, and mark events whose offset is unknown rather than assuming one.
- Represent undated events by their ordering constraints against dated events, so an item known only to fall between two others is placed as a range rather than a point.
- Deduplicate events across sources on actor, action, and overlapping temporal range, retaining each contributing source as linked provenance.
- Link every event to its originating artifact — transaction, transcript passage, document, log line — so any point on a timeline resolves to the record behind it.
- Render precision visually in timeline output, so an approximate event is never displayed as a point in time.
- Flag ordering assertions that depend on events whose precision ranges overlap, since those orderings are not established by the record.
- Version each chronology against the dataset state it was built from, so a saved timeline can be re-derived or shown as superseded.

<p class="eyebrow">Use case</p>

## Correlate Information Across Cases and Sources

Correlation asks whether what this matter holds appears elsewhere — the same entity in another case, the same address across program areas, the same transaction pattern in a closed matter, the same modus operandi in a different field office. It draws on the entity register, the case record, prior matters, and whatever operational data the organization holds, and its value is that the connections it surfaces are ones no single case team is positioned to see.

Access control is the governing constraint at this layer more than anywhere else, because correlation by design reaches across matters with different restrictions. A query that traverses into a sealed proceeding, an internal affairs matter, or another organization's material must not return content the analyst cannot see — and equally must not silently drop the connection, since a lost lead is also a failure. Enforcing entitlements per hop during traversal, rather than filtering results at the end, is what makes the difference between a system that can be used across a whole organization and one that has to be siloed.

<p class="discovery-label">Discovery questions</p>

- Which data holdings can be correlated across today, and which are siloed?
- What policy governs analytical visibility across program areas and field offices?
- Which matter classifications need special handling in cross-case queries?
- How is a connection to restricted material handled — surfaced, referred, or hidden?
- Which correlation types have historically produced value here?
- How far back do holdings reach, and are closed matters included?
- How is analyst access to cross-case correlation audited?

<p class="pattern-label">Implementation pattern</p>

- Execute correlation as graph traversal through the graph query service over resolved entities from the entity register, not over free-text matching.
- Evaluate entitlements per node and per edge during traversal, so restricted material is excluded from the result set rather than filtered afterward.
- Return a referral stub for connections into material the analyst cannot open, carrying the existence of the connection and a contact point without its content.
- Configure disclosure behavior per matter classification, so whether a restricted connection surfaces as a stub or not at all is stated configuration rather than emergent behavior.
- Include closed and declined matters in the correlation index, with their own retention and access rules applied at traversal.
- Log every cross-matter query with its parameters, traversal depth, and result count in the append-only activity log.
- Cap traversal depth and result breadth as configurable limits, and record the limits applied to each query.
- Report cross-matter query volume by analyst and correlation type, so access patterns are reviewable.

<p class="eyebrow">Use case</p>

## Identify Patterns, Networks, and Recurring Behavior

Pattern analysis looks at structure rather than individual records: who is central to a network of associations, which entities form a tightly connected group, which routes value or communication takes repeatedly, which behaviors recur across matters that were never linked. These are computations over the entity and event graph — centrality, community detection, repeated-path discovery, temporal periodicity — and they surface structure that reading records in sequence does not.

Structural results are descriptive of the data, not of the world, and the gap between those matters. Centrality measures how connected an entity is *within the holdings the organization happens to have*, so a person who appears central may simply be the one the organization has collected most about — a well-documented intermediary rather than an organizer. Analytical output should therefore state the population it was computed over and the measure used, because a network chart presented without that framing reads as a description of a real organization rather than of a dataset.

<p class="discovery-label">Discovery questions</p>

- What network or pattern questions does this program actually need answered?
- What is the coverage of the holdings — which entities are well documented and which are not?
- Which behavioral patterns have recurred across matters here?
- How are network relationships currently visualized and shared?
- What size of graph is realistic — entities, relationships, events?
- How would an analyst distinguish a genuinely central entity from a well-documented one?
- Who receives network analysis output, and how is it interpreted downstream?

<p class="pattern-label">Implementation pattern</p>

- Compute network measures through a network analytics engine over the resolved entity graph, supporting degree and betweenness centrality, community detection, and shortest and repeated path discovery.
- Persist each analysis run with its algorithm, parameters, population selection, and graph snapshot version, so a result can be reproduced or shown as superseded.
- Materialize the population as an explicit entity and relationship set rather than a live query, so what the measure was computed over is inspectable.
- Emit coverage statistics with every structural result — entity counts, relationship density, and holdings depth per entity — so a centrality figure is read against how much is held about each node.
- Weight relationship edges by type, recency, and confidence as configurable parameters rather than treating all edges as equivalent.
- Detect recurring behavior by matching event sequences against parameterized templates in the rules engine, and surface matches with the sequences that matched.
- Exclude unconfirmed proposed relationships from structural computation by default, requiring an explicit parameter and a recorded justification to include them.

<p class="eyebrow">Use case</p>

## Develop Analytical Products

Analysis becomes useful to others as a product: a network assessment, a pattern report, a subject profile, a briefing supporting an investigative decision. A product states conclusions, the confidence attached to each, the material relied on, and what is not known — and it circulates, which is what makes it different from working analysis. Once distributed it is read, cited, and acted on by people who will not re-examine the underlying data.

That circulation is the risk to design against. A product asserting an association will be relied on long after the data behind it changed, an entity was unmerged, or a proposed relationship was withdrawn — and the reader has no way to know. Products therefore need to pin the dataset version they were built from, carry handling and dissemination markings that travel with any copy, and be capable of being superseded and recalled. Confidence language needs to be structured rather than prose, since "possible," "likely," and "assessed" mean different things to different readers unless the scale is defined and attached.

<p class="discovery-label">Discovery questions</p>

- What analytical products does this program produce, and who consumes them?
- How are conclusions and confidence currently expressed, and is there a defined scale?
- How are products distributed, and can distribution be determined afterward?
- What handling or dissemination markings apply here?
- What happens when the material behind a product changes or is withdrawn?
- How would a superseded product be recalled or flagged to those who received it?
- What review does a product get before it circulates?

<p class="pattern-label">Implementation pattern</p>

- Hold products in an analytical product register with version, author, dataset snapshot version, and the entity and event identifiers relied on.
- Attach confidence to each stated conclusion as a value from a defined scale, stored as structured data rather than expressed only in prose.
- Link every conclusion to its supporting material, so a reader can traverse from an assertion to the records behind it within their entitlements.
- Apply handling and dissemination markings as structured attributes, and enforce them at export so a marking travels with any generated copy.
- Record distribution — recipient, timestamp, and format — so the readership of a superseded product can be determined.
- Use a workflow engine to gate product release behind review, recording the reviewer against the version released.
- Subscribe products to change events on the entities, relationships, and dataset versions they depend on, and flag a product whose basis has since changed.
- Support supersession as a new version linked to its predecessor, with a recall notice issued to recorded recipients.

<p class="eyebrow">Use case</p>

## Generate Timelines from Heterogeneous Records

Building a chronology by hand means reading every artifact in a case and extracting each dated event, which on a large matter is days of work and is why chronologies are often built late or only for the events someone already knew mattered. Extracting candidate events from documents, transcripts, correspondence, and logs produces a draft chronology covering the whole record, which the analyst then curates rather than assembles.

Extraction from narrative is where temporal error enters. Relative expressions — "the following Tuesday," "two weeks before the audit," "that summer" — require an anchor to resolve, and resolving one incorrectly places an event confidently in the wrong position. The safer behavior is to preserve the relative expression as a constraint rather than converting it to a date, and to surface every extracted event with the passage it came from so an analyst can check the reading before it enters the chronology.

<p class="discovery-label">Discovery questions</p>

- How long does building a full chronology take in a typical matter here?
- What proportion of the record is narrative rather than structured?
- How common are relative date expressions in this program's material?
- What review would an analyst give an extracted event before accepting it?
- Which artifact types would contribute the most events?
- How would an incorrectly resolved date be caught?
- Do records span languages or date formats that resist parsing?

<p class="pattern-label">Implementation pattern</p>

- Extract candidate events into a staging area distinct from the canonical event store, requiring analyst confirmation before promotion.
- Preserve relative temporal expressions as ordering constraints against a named anchor rather than resolving them to absolute dates.
- Retain the source passage and artifact reference on every extracted event, so the reading is verifiable in place.
- Parse ambiguous date formats to a range spanning the possible readings rather than selecting one, and mark the event for analyst resolution.
- Resolve actors in extracted events against the entity register, and hold unresolved actors as candidates rather than creating entities.
- Deduplicate extracted events against those already in the canonical store before presenting them for confirmation.
- Record confirmation, correction, and rejection of extracted events, and report correction rates by artifact type and field.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to extract candidate events — actor, action, time, and location — from documents, transcripts, and correspondence into the staging area.
- Cite the source passage for every extracted event, and return the temporal expression as written alongside any interpretation.
- Configure the model to emit an explicit unknown for time rather than inferring a date the passage does not support.
- Keep resolution of relative expressions to deterministic logic operating on confirmed anchors, rather than letting the model pick a date.
- Monitor correction rates on extracted dates specifically, since a wrongly placed event can invert an ordering the investigation turns on.

<p class="eyebrow">Use case</p>

## Identify Non-Obvious Patterns and Relationships

Configured measures find what they were written to find. Beyond them sit patterns nobody specified — an unusual co-occurrence of entities across otherwise unrelated matters, a sequence of events that recurs with variation, a structural signature that distinguishes one group of cases from another. Surfacing these means computing over the graph and event data without a pre-stated hypothesis, and offering what stands out for an analyst to evaluate.

Unsupervised results demand more scrutiny than configured ones, not less. A pattern that emerges from data reflects the data's biases — which populations the organization has investigated before, which sources it holds most about, which behaviors previous analysts recorded in structured form. A pattern that appears to distinguish a group may be detecting a difference in enforcement history rather than in conduct, and the resulting analytical product would then direct attention using the organization's own past attention as its evidence. Proposals need their supporting instances exposed, and patterns concentrating on identifiable communities need review before they inform any product.

<p class="discovery-label">Discovery questions</p>

- What has this program discovered before that no configured rule would have found?
- What is known about historical bias in the holdings — which populations were investigated more?
- Which structured attributes are reliably populated enough to support unsupervised analysis?
- What review would an analyst give an emergent pattern before acting on it?
- How would the program detect a pattern that reflects enforcement history rather than conduct?
- Who reviews analysis that concentrates on an identifiable community?
- What is the consequence of an emergent pattern directing investigative attention wrongly?

<p class="pattern-label">Implementation pattern</p>

- Run unsupervised discovery over a materialized graph and event snapshot, and persist the snapshot version with every result.
- Return the supporting instances behind each proposed pattern — the specific entities, events, and matters — rather than a pattern description alone.
- Compute base rates for each proposed pattern against the full population, and suppress proposals not distinguishable from background frequency.
- Evaluate proposed patterns for concentration against protected and identifiable community attributes, and route concentrated results to review before they enter any product.
- Hold discovery output in a proposal state that cannot be cited by an analytical product until an analyst has confirmed it with a recorded basis.
- Record analyst disposition on each proposal, and report confirmation rates by pattern type.
- Retain the holdings-coverage profile alongside results, so a pattern can be assessed against what the organization actually holds.

<p class="ai-label">AI opportunity</p>

- Use graph and sequence analysis to surface co-occurrences, structural signatures, and recurring event sequences that configured measures do not cover.
- Return supporting instances and computed base rates with every proposal, so an analyst evaluates evidence rather than a score.
- Monitor output for concentration on identifiable communities, with a defined review path before any concentrated pattern informs a product.
- Treat historical investigative attention as a confounder in interpretation, and record holdings coverage with every result.
- Keep proposals out of analytical products until confirmed, enforced by the product register rather than by convention.

<p class="eyebrow">Use case</p>

## Cluster Potentially Related Cases

Organizations run many matters concurrently, and some of them are the same matter. A scheme generates complaints across regions, one subject is investigated separately by two program areas, a vendor appears in unconnected procurement cases. Clustering groups matters by shared entities, event patterns, and narrative similarity so an organization can consolidate genuinely related work, allocate it coherently, and see a scale that no individual case shows.

Clustering proposes grouping; it does not merge. Consolidating two matters has real consequences — access changes, ownership moves, and the matters' separate reporters and subjects come into one file — and a wrong consolidation buries one matter inside another where it may not be worked. Cluster membership should therefore be a reviewable proposal with the shared features that produced it, and consolidation should remain a decision made by a person with the authority to make it, recorded as such.

<p class="discovery-label">Discovery questions</p>

- How often do separate matters turn out to concern the same conduct here?
- How is that discovered today, and at what point in the lifecycle?
- What would justify consolidating two matters in this program?
- Who has authority to consolidate, and what does that change operationally?
- What features would most reliably indicate two matters are related — entities, patterns, narrative?
- What is the consequence of consolidating two matters that were actually distinct?
- Should clustering reach across program areas and organizations?

<p class="pattern-label">Implementation pattern</p>

- Compute cluster membership over a feature set combining resolved entity overlap, event pattern similarity, and narrative embedding distance, with configurable weights per feature.
- Return the shared features and specific overlapping entities behind each cluster, so membership is inspectable rather than asserted.
- Evaluate entitlements per matter when presenting a cluster, returning referral stubs for matters the analyst cannot open.
- Persist cluster runs with algorithm, parameters, feature weights, and snapshot version, and report membership stability across runs.
- Hold clusters as proposals with no operational effect, and require a workflow-gated decision by an authorized role to consolidate matters.
- Preserve each contributing matter's identity, reporters, and history through any consolidation, so a consolidation can be reversed.
- Report proposed-versus-confirmed cluster rates, and review a sample of rejected proposals to tune feature weights.

<p class="ai-label">AI opportunity</p>

- Use a clustering model over entity, event, and narrative features to propose groupings of potentially related matters.
- Return the overlapping entities and similar passages driving each grouping rather than a distance value alone.
- Report cluster stability across runs, so an analyst can distinguish a robust grouping from an artifact of parameters.
- Keep clustering advisory, with consolidation always a workflow-gated human decision.
- Monitor for clusters forming on demographic or geographic proximity rather than conduct, with a defined review path when they do.

<p class="eyebrow">Use case</p>

## Summarize Evidence For and Against a Hypothesis

Investigations proceed on hypotheses, and the discipline that keeps them honest is testing each against all the evidence rather than accumulating support for the favored one. Structuring a hypothesis explicitly — stating it, linking the material that supports it, linking the material that contradicts it, and noting what would be expected but is absent — makes confirmation bias visible where prose narrative conceals it. Holding competing hypotheses side by side against the same evidence set is what separates analysis from advocacy.

Absence of evidence is the part most often lost and most worth capturing. If a hypothesis predicts records that should exist and none were found, that is analytically significant and needs to be distinguishable from the case where nobody looked. A hypothesis structure should therefore record not only what supports and contradicts, but what was sought and not found, and where a prediction remains untested — because a hypothesis surviving only because its weakest predictions were never checked looks identical to a well-supported one unless the difference is recorded.

<p class="discovery-label">Discovery questions</p>

- How are investigative hypotheses expressed and tested here today?
- Is contradictory evidence recorded as deliberately as supporting evidence?
- How are competing explanations compared in this program?
- How is a prediction that was tested and not confirmed recorded?
- What review challenges an investigation's working theory, and when?
- What confidence scale, if any, is used for analytical conclusions?
- How would a hypothesis resting on untested predictions be noticed?

<p class="pattern-label">Implementation pattern</p>

- Model a hypothesis as a structured record holding its statement, competing alternatives, and typed evidence links — supporting, contradicting, sought-and-not-found, and untested.
- Require each evidence link to reference a specific artifact, event, or transaction rather than a narrative assertion.
- Compute and display coverage per hypothesis — how many predictions are tested, untested, and disconfirmed — so an untested hypothesis is visibly distinct from a supported one.
- Evaluate the same evidence set against all competing hypotheses, so an item's implications for each are recorded rather than only for the favored one.
- Enforce the requester's entitlements when assembling evidence for a hypothesis, so a summary cannot draw on material they could not open.
- Version hypotheses as evidence accumulates, retaining superseded states with the evidence available at the time.
- Flag hypotheses whose supporting evidence rests on unconfirmed proposals or inferred data, so the basis is visible.
- Record hypothesis creation, evidence linking, and disposition in the append-only activity log.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model with retrieval over the case record to propose evidence links for a stated hypothesis, classified as supporting, contradicting, or absent.
- Require every proposed link to cite the artifact and passage behind it, and to state which prediction it bears on.
- Instruct the model to search explicitly for contradicting material rather than assembling support, and to report predictions with no evidence either way.
- Keep the model out of assessing the hypothesis, assigning confidence, or ranking competing explanations.
- Monitor the ratio of contradicting to supporting links proposed, since a model returning mostly confirmation is reproducing the bias the structure exists to counter.

## Architecture

Build toward this shape. It combines the implementation patterns and AI opportunities from the use cases above into one design, and it names no product or vendor. Agree on it before you evaluate any product, because it sets what any product you choose has to do.

Keep AI out of the finished analytical product. Models can extract candidate events, propose patterns and clusters, and assemble evidence links. Each one arrives as a proposal, and an analyst has to confirm it before any product can cite it. Traversal, access checks, network calculations, and date logic all run as rules, so an analyst can reproduce any product from a stated dataset version.

<div class="architecture-stack" aria-label="Logical architecture for Investigative Analysis and Intelligence">
  <section class="architecture-layer architecture-layer--experience">
    <p class="architecture-layer-title"><span>01</span> Experience</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Analyst workbench</strong><small>Timeline, network, clustering, and hypothesis workspaces.</small></div>
      <div><strong>Investigator analysis view</strong><small>Products and correlations with traversal back to sources.</small></div>
      <div><strong>Review and dissemination control</strong><small>Product review, markings, distribution, and recall.</small></div>
    </div>
  </section>
  <section class="architecture-layer">
    <p class="architecture-layer-title"><span>02</span> Analysis core</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Canonical event store</strong><small>Events with explicit temporal precision and source provenance.</small></div>
      <div><strong>Timeline assembly</strong><small>Ordering constraints, deduplication, and versioned chronologies.</small></div>
      <div><strong>Hypothesis model</strong><small>Statements, competing alternatives, and typed evidence links.</small></div>
      <div><strong>Analytical product register</strong><small>Versions, sourcing, markings, distribution, and supersession.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--platform">
    <p class="architecture-layer-title"><span>03</span> Shared solution services</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entitlement service</strong><small>Per-node and per-edge evaluation during traversal.</small></div>
      <div><strong>Graph query service</strong><small>Cross-matter traversal over resolved entities.</small></div>
      <div><strong>Network analytics engine</strong><small>Centrality, community detection, and path discovery.</small></div>
      <div><strong>Workflow and rules engines</strong><small>Product release gates and event-sequence templates.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--intelligence">
    <p class="architecture-layer-title"><span>04</span> Optional intelligence</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Event extraction</strong><small>Candidate events staged with source passages and precision.</small></div>
      <div><strong>Pattern discovery</strong><small>Emergent structure with instances and base rates returned.</small></div>
      <div><strong>Case clustering</strong><small>Proposed groupings with shared features and stability.</small></div>
      <div><strong>Hypothesis evidence assembly</strong><small>Supporting, contradicting, and absent links, all cited.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--records">
    <p class="architecture-layer-title"><span>05</span> Data and authoritative systems</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entity register</strong><small>Resolved entities and relationships the graph is built on.</small></div>
      <div><strong>Case data store</strong><small>Cases, lines of inquiry, and matter classifications.</small></div>
      <div><strong>Document and attachment store</strong><small>Artifacts events and evidence links resolve back to.</small></div>
      <div><strong>Prior matter history</strong><small>Closed and declined matters included in correlation.</small></div>
    </div>
  </section>
  <aside class="architecture-controls"><strong>Control plane</strong><span>Identity and access · Intelligence retention review · Dissemination control · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation</span></aside>
</div>

### Baseline and additive components

Build the baseline first, because nearly every use case depends on it. Add each of the other components later, when you commit to the use case that needs it. Do not buy everything up front.

| Component | What it must do | When to build |
| --- | --- | --- |
| Canonical event store | Hold events with explicit temporal precision, ordering constraints, and source provenance | Build first |
| Analytical product register | Version products with dataset snapshot, sourcing, markings, distribution, and supersession | Build first |
| Entity register | Resolve the entities the analysis graph is built over | Build first |
| Graph query service | Traverse entities and relationships with entitlements evaluated per hop | Build first |
| Entitlement service | Decide what each person may reach at node, edge, and matter granularity | Build first |
| Workflow engine | Gate product release and matter consolidation behind recorded approval | Build first |
| Rules engine | Match parameterized event-sequence templates and evaluate retention review conditions | Build first |
| Append-only activity log | Record queries, product versions, and evidence links with actor and timestamp | Build first |
| Case data store | Hold cases, lines of inquiry, and matter classifications driving access behavior | Build first |
| Document and attachment store | Retain the artifacts events and evidence links resolve back to | Build first |
| Search and retrieval | Search events, products, and holdings within the requester's entitlements | Build first |
| Reporting | Report query volume, confirmation rates, cluster stability, and hypothesis coverage | Build first |
| Notification and queue service | Route review requests, product recalls, and retention review queues | Build first |
| Network analytics engine | Compute centrality, community detection, and path discovery over the entity graph | Add to unlock structural analysis |
| Prior matter history | Include closed and declined matters in correlation and clustering | Add to unlock cross-matter analysis |
| Generative model with grounding and citation | Extract candidate events and assemble cited hypothesis evidence links | Add to unlock event extraction and hypothesis assembly |
| Clustering model | Propose groupings of related matters from entity, event, and narrative features | Add to unlock case clustering |
| Model evaluation and monitoring | Track extraction correction rates, confirmation rates, and concentration review outcomes | Add alongside any model component |

Store how precisely each event's time is known, as a separate field on the event. The value says whether the time is an instant, a day, a month, a range, or only a position in a sequence. Most investigative events are known roughly. A store that holds nothing but a timestamp forces you to write a rough time as an exact one, and nothing downstream can tell the two apart. Analysts then assert orderings the record does not support. Record the precision when the event is written, because it cannot be recovered later.

Set up the retention review before the holdings build up. Analysis pulls in information about people who are not subjects of anything: associates, counterparties, someone who appears once in a document. Those records stay by default and become holdings nobody decided to keep. Run a scheduled review that lists entities and events by age, matter outcome, and subject status, and route each one through a workflow for a keep-or-delete decision. This is easy against a small dataset and painful against years of records, which is when someone usually asks.
