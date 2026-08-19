---
title: Financial & Transaction Analysis
summary: Ability to analyze financial transactions, trace funds and assets, and calculate losses or improper payments.
description: "Ability to analyze financial transactions, trace funds and assets, and calculate losses or improper payments."
status: Draft
tier: Tier 2 · Practitioner
scope: All
updated: 2026-08-19
owner: Content team
workload: Investigations
parent_title: Investigations
parent_url: /workloads/investigations/
order: 10
sections:
  - Overview
  - Maturity Levels
  - Analyze Financial Transactions and Accounts
  - Trace Funds and Assets
  - Calculate Losses and Questioned Costs
  - Reconstruct Transactional Activity
  - Detect Anomalous Transaction Patterns
  - Identify Potentially Related Accounts and Vendors
  - Generate Transaction Narratives and Timelines
  - Prioritize Transactions for Deeper Review
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

Ability to analyze payments, accounts, claims, purchases, contracts, and financial transactions, trace funds and assets, calculate losses, improper payments, or questioned costs, and reconstruct transactional activity.

This capability covers the financial dimension of an investigation and the workpapers that make a calculation defensible. It excludes recovery action on identified losses, which is pursued through Referral, Disposition & Case Closure.

## Maturity Levels

| Stage | Typical characteristics |
| --- | --- |
| Not performed | Financial questions are answered informally without a documented analysis. |
| Manual / ad hoc | Individual analysts work transaction data in personal spreadsheets. |
| Standardized | A defined method and workpaper standard applies to loss calculation and fund tracing. |
| Integrated | Financial data is assembled into the case with its source and extraction date recorded. |
| Automated / optimized | Anomaly detection and relationship discovery prioritize transactions, with the analyst validating findings. |

<p class="eyebrow">Use case</p>

## Analyze Financial Transactions and Accounts

Financial material reaches an investigation in whatever shape its source keeps it: bank statements as PDFs or delimited exports, card processor files, ERP general ledger and accounts payable extracts, claims data, procurement and contract records, payroll registers. Each uses its own field names, date conventions, sign conventions for debits and credits, and identifiers, and none of them agree. Analysis begins by normalizing all of it into one transaction model so that a query means the same thing regardless of which system a row came from.

Normalization is where analytical integrity is established or lost. Overlapping extracts duplicate transactions; foreign currency needs the rate in force on the right date rather than today's; a credit in one source is a negative debit in another; and an extract may simply be incomplete in ways nobody notices until a total is challenged. Reconciling loaded data back to the source's own control totals is what converts a dataset into something an analyst can rely on, and doing it at load time is far cheaper than discovering a gap after a figure has been quoted.

<p class="discovery-label">Discovery questions</p>

- Which financial systems and sources does this program need to draw on, and in what formats?
- How is financial data currently obtained — direct extract, portal download, or produced by the subject?
- Do transactions involve more than one currency, and how is conversion handled today?
- What control totals are available to reconcile against — balances, movement, record counts?
- How often do extracts overlap, and how is duplication currently handled?
- What volume does a typical matter involve, and what is the largest realistically expected?
- How would the program know an extract was incomplete?

<p class="pattern-label">Implementation pattern</p>

- Ingest each source through a normalization pipeline that maps its schema to a canonical transaction record holding value date, posted date, amount, currency, direction, account, counterparty, description, and source reference.
- Hold source-specific mapping as versioned configuration per feed, and stamp every loaded row with the mapping version that produced it.
- Deduplicate across overlapping extracts on a composite key of account, value date, amount, and source reference, retaining each source occurrence as a linked provenance record rather than discarding it.
- Normalize sign convention at load so debits and credits carry one meaning across sources, and retain the source's original representation in a separate field.
- Convert foreign currency using the rate in force on the transaction's value date, storing original amount, currency, rate, rate source, and converted amount as separate fields rather than overwriting.
- Reconcile each loaded account and period against the source's opening balance, closing balance, movement, and record count, and mark accounts that fail reconciliation as unusable for analysis until resolved.
- Store the source file unmodified in the document and attachment store, with its integrity value, and link every canonical transaction to the file and row it derives from.
- Load into an immutable, append-only partition per extract, so a corrected re-extract lands as a new version rather than mutating loaded rows.

<p class="eyebrow">Use case</p>

## Trace Funds and Assets

Tracing follows value through accounts and entities: a payment leaves a program account, arrives at a vendor, moves to a personal account, and converts into an asset. The analytical difficulty is that money is fungible. Once tainted and untainted funds mix in one account, no factual answer exists to which dollars left it, so tracing depends on an assumption — first-in-first-out, last-in-first-out, pro rata, or lowest intermediate balance — and the method chosen materially changes the result.

The method therefore has to be an explicit, recorded parameter rather than an implicit property of the tool. A trace that cannot state which convention produced it cannot be defended, and an analyst should be able to re-run the same trace under a different method to see how sensitive the conclusion is to that choice. Traces also cross gaps — an account nobody has records for, a cash withdrawal, a transfer offshore — and the output must show those breaks rather than bridging them, because an unbroken-looking chain that silently spans a gap misrepresents the evidence.

<p class="discovery-label">Discovery questions</p>

- What tracing methods does this program use, and are they stated in policy?
- How are commingled funds handled today, and by whom is that decision made?
- How many hops does a typical trace run to, and where do records usually stop?
- What asset types need to be traced into — property, vehicles, securities, cryptocurrency?
- How are gaps in a trace currently represented and explained?
- Would an analyst need to test how sensitive a conclusion is to the method chosen?
- What standard must a trace meet to support recovery or forfeiture action here?

<p class="pattern-label">Implementation pattern</p>

- Implement tracing over a directed transaction graph whose nodes are accounts and entities and whose edges are canonical transactions, built through the graph query service.
- Expose the tracing methodology — first-in-first-out, last-in-first-out, pro rata, or lowest intermediate balance — as a required parameter on every trace, and persist the selected method with the result.
- Record each trace as a stored artifact holding its parameters, input dataset version, and resulting path set, so it can be reproduced or re-run under an alternative method.
- Model gaps explicitly as typed break nodes — no records held, cash withdrawal, transfer beyond scope — so a path shows where evidence stops rather than implying continuity.
- Resolve account holders and counterparties through the entity register, so a trace follows resolved entities rather than name strings.
- Cap traversal by depth, date range, and materiality threshold as configurable limits, and record the limits applied to each trace.
- Emit each path with its per-hop supporting transactions and their source references, so any hop can be verified against the underlying record.

<p class="eyebrow">Use case</p>

## Calculate Losses and Questioned Costs

Investigations frequently have to state a figure: the amount improperly paid, the loss to the program, the questioned costs on a contract, the sum subject to recovery. That figure carries consequence — it may drive a recovery action, a sentencing calculation, or a public report — and it will be examined by people motivated to find fault with it. What makes it defensible is not the arithmetic but the ability to show the population it was computed over, the rule applied to determine impropriety, the treatment of edge cases, and the source of every input.

Reproducibility is the requirement that follows. The same calculation run in two years should produce the same number, which means the methodology has to be versioned, the input dataset pinned to a specific extract version, and the result stored as a workpaper rather than left in an analyst's spreadsheet. Calculations also get revised as facts develop, so superseded versions need to remain available with the reason for the change — a figure quoted in an interim report that later moved has to be explainable.

<p class="discovery-label">Discovery questions</p>

- What figures does this program need to produce, and who relies on them downstream?
- What rule determines that a payment was improper, and where is it written?
- How are calculations documented today, and could one be reproduced in two years?
- How are edge cases handled — partial impropriety, offsetting credits, disputed items?
- How often are figures revised, and how is a revision communicated?
- What standard must a calculation meet for recovery, administrative, or criminal use?
- Who reviews a calculation before it is relied on?

<p class="pattern-label">Implementation pattern</p>

- Implement each calculation as a named, versioned rule set in the calculation and workpaper engine, executed against a pinned dataset version rather than against live data.
- Persist every calculation run as a workpaper artifact holding the methodology version, dataset version, parameters, population selection, result, and execution timestamp.
- Materialize the population as an explicit transaction set rather than a query, so what was included and excluded is inspectable rather than re-derived.
- Record per-item classification and the rule that produced it, so any item in the population can be traced to the reason it was counted.
- Implement recalculation as a new workpaper version linked to its predecessor with a stated reason, leaving superseded versions retrievable.
- Use a workflow engine to gate workpaper approval, and record the reviewer against the version they approved.
- Expose a deterministic re-execution path so a stored workpaper can be re-run and its result compared against the recorded one.
- Log every calculation execution and approval in the append-only activity log.

<p class="eyebrow">Use case</p>

## Reconstruct Transactional Activity

Records are frequently incomplete. A subject provides partial statements, a vendor has purged records beyond its retention period, an account was closed before the investigation began, or the material arrives as scanned paper with no usable structure. Reconstruction assembles the best available picture from what does exist — the counterparty's side of the same transaction, ledger entries that reference a missing document, deposit totals implying receipts nobody produced.

What matters is that reconstructed items stay distinguishable from observed ones. A dataset mixing transactions read from a statement with transactions inferred from a counterparty's records, and treating both identically, produces figures nobody can defend once the distinction is drawn out under examination. Every derived item needs to carry its derivation basis and confidence, and any figure computed over a population containing derived items should be able to report what proportion of it rests on inference.

<p class="discovery-label">Discovery questions</p>

- How complete are financial records in a typical matter here?
- Which sources commonly go missing, and why — retention, closure, refusal?
- What alternative sources exist for the same transactions?
- How is an inferred transaction distinguished from an observed one today?
- What confidence would be needed before an inferred item counts toward a stated figure?
- How much scanned or unstructured financial material arrives, and how is it processed?
- How would the program report the proportion of a figure resting on inference?

<p class="pattern-label">Implementation pattern</p>

- Model origin as a required field on every canonical transaction — observed, corroborated from a counterparty source, or inferred — and carry it through every downstream query and calculation.
- Attach a derivation record to each inferred transaction holding the rule or evidence that produced it and a confidence value.
- Implement counterparty matching as a reconciliation job that pairs both sides of a transaction on amount, date window, and resolved counterparty, and promotes matched items from inferred to corroborated.
- Use a text extraction service to parse scanned statements into candidate transactions, and require analyst confirmation before they enter the canonical store.
- Report population composition by origin alongside every calculated figure, so the proportion resting on inference is visible with the number.
- Exclude inferred transactions from calculations by default, requiring an explicit parameter and a recorded justification to include them.
- Link every reconstructed item to the source records that support it, so the inference can be evaluated at the item level.

<p class="eyebrow">Use case</p>

## Detect Anomalous Transaction Patterns

Fraud and improper payment leave statistical traces. Payments just below an approval threshold, invoices in round numbers, duplicate payments to the same vendor within days, activity outside normal business hours, a vendor whose payment volume steps up sharply after a contract change, digit distributions inconsistent with naturally occurring figures. Each is weak evidence individually, and each is impractical to look for by hand across millions of rows.

Detection ranks transactions for attention; it does not establish impropriety. Every one of these patterns has innocent explanations — legitimate round-number contracts, genuine duplicate invoices for genuine duplicate deliveries, a vendor that grew for good reasons — and the base rates matter enormously, because a detector firing on one percent of ten million transactions produces a hundred thousand items nobody will review. Detectors should be tuned against the volume a program can actually work, and their output framed as candidates for analysis rather than findings.

<p class="discovery-label">Discovery questions</p>

- What improper-payment or fraud patterns has this program actually encountered?
- What approval thresholds exist, and could someone structure payments around them?
- What does normal transaction activity look like here — volumes, timing, amounts, vendors?
- How much review capacity exists for flagged transactions?
- How are false positives currently handled, and at what cost?
- Which detectors would need to be tuned per program area rather than globally?
- What would make analysts stop trusting the flags?

<p class="pattern-label">Implementation pattern</p>

- Implement deterministic detectors as configurable rules in the rules engine — threshold proximity, round-amount frequency, duplicate payment within a date window, out-of-hours posting, and sequence gaps in invoice numbering.
- Compute statistical detectors against a defined baseline population — peer vendors, prior periods, or comparable program areas — and store the baseline used with each result.
- Apply digit-distribution testing to naturally occurring figure sets only, and configure it off for populations with imposed structure such as fixed-price contracts.
- Express detector output as a scored, ranked queue with a configurable volume cap, so output is bounded by review capacity rather than by threshold alone.
- Persist each detection run with its detector version, parameters, baseline, and population, so a flag can be explained and reproduced.
- Capture analyst dispositions on flags as labeled outcomes, and report precision per detector so unproductive detectors are retuned or disabled.
- Keep detection separate from calculation, so no flagged item enters a stated figure without an analyst classifying it.

<p class="ai-label">AI opportunity</p>

- Use an anomaly detection model over transaction features to surface patterns the configured detectors do not anticipate.
- Return the features driving each score rather than the score alone, so an analyst can evaluate the basis.
- Train against dispositioned outcomes where labels exist, and monitor for the model reproducing historical review bias rather than detecting impropriety.
- Keep deterministic detectors as the authority for known patterns, so a policy-relevant condition is never dependent on a model noticing it.
- Evaluate on analyst confirmation rate and on flagged volume against review capacity, not on aggregate accuracy.

<p class="eyebrow">Use case</p>

## Identify Potentially Related Accounts and Vendors

Financial schemes usually involve concealed relationships: a vendor sharing a bank account with an employee, several suppliers registered to one address, an intermediary through which unrelated-looking payments circulate, accounts that transact almost exclusively with each other. Surfacing these means analyzing the structure of the transaction graph and comparing attributes across entities, not reading transactions in sequence.

The consequences of getting this wrong fall on real people and businesses. A shared address may indicate common control or a shared serviced office; a bank account matching an employee's may be a data-entry error in a vendor master file. Proposals must therefore carry the specific attributes that matched, remain plainly unconfirmed, and require an investigative step before entering the record — and their base rates matter, since a matching surname in a small community discriminates poorly.

<p class="discovery-label">Discovery questions</p>

- Which concealed relationships has this program encountered before?
- What master data exists for vendors and employees, and how reliable is it?
- Which attributes are available to compare — bank accounts, addresses, registration numbers, contacts?
- How common are shared addresses and names in the relevant population?
- What would an analyst need to see to judge whether a proposed relationship is meaningful?
- What investigative step should be required before recording a relationship as established?
- What is the consequence here of wrongly implying a vendor is connected to an employee?

<p class="pattern-label">Implementation pattern</p>

- Resolve vendors, employees, and account holders through the entity register so comparison operates on resolved entities rather than name strings.
- Compare structured attributes — bank account, registered address, tax and registration identifiers, contact details, directors — through the entity resolution service, and return the attributes that matched.
- Analyze the transaction graph through the graph query service for structural signals such as circular flows, single-counterparty concentration, and short-lived intermediaries.
- Compute attribute discriminating power against the population and suppress proposals resting on attributes too common to be informative.
- Hold proposals in a state distinct from recorded relationships, and require a recorded investigative basis to promote one.
- Exclude unconfirmed proposals from calculations, narratives, and reports through a query-level filter rather than by convention.
- Log proposal generation, confirmation, and dismissal in the append-only activity log, and report confirmation rate by proposal type.

<p class="ai-label">AI opportunity</p>

- Use an entity resolution service with graph analysis to propose related accounts, vendors, individuals, and transactions from structural and attribute evidence.
- Return the matched attributes and the graph path behind each proposal rather than a similarity score.
- Suppress proposals whose supporting attributes are not discriminating in the relevant population.
- Keep every proposal unconfirmed until an investigator records a basis, and keep unconfirmed proposals out of downstream products.
- Monitor confirmation rates and watch for proposals concentrating on particular vendor populations or name patterns, with a defined review path when they do.

<p class="eyebrow">Use case</p>

## Generate Transaction Narratives and Timelines

Financial findings have to be explained to people who will not read a transaction table: counsel, a reviewing official, a court, sometimes the public. A narrative sets out what happened in sequence and in plain language — funds appropriated for one purpose paid to a vendor, invoiced against a contract that had already been completed, and transferred within days to an account controlled by an employee — with each assertion citing the transactions supporting it. A timeline does the same visually, aligning transaction events with contract dates, approvals, and other case events.

Generated narratives must describe transactions rather than characterize conduct. Stating that a payment was made and funds moved to a related account describes the record; describing the same sequence as diversion or concealment is a finding an investigator makes on the whole evidence, including intent. The generated artifact belongs in the analyst's working material with every figure and date citing its underlying transactions, so what appears in a report of investigation is the investigator's own reasoning against verifiable numbers.

<p class="discovery-label">Discovery questions</p>

- Who consumes financial findings here, and in what form do they need them?
- How long does producing a financial narrative or timeline take today?
- What must a narrative contain to be usable by counsel in this program?
- Where is the line here between describing transactions and characterizing conduct?
- What non-financial case events need to appear on a timeline alongside transactions?
- How would a reader verify a figure or date in a narrative?
- Do generated narratives ever reach the official record, and under what control?

<p class="pattern-label">Implementation pattern</p>

- Generate narratives and timelines from the canonical transaction store and stored workpapers only, so no figure can appear that is not backed by loaded data.
- Cite the supporting transaction identifiers and workpaper version behind every figure, date, and assertion.
- Merge case events from the case data store onto the timeline alongside transactions, using a shared event model with a common time axis.
- Recompute a narrative against the current dataset version on demand, and flag any narrative whose underlying dataset or workpaper version has since changed.
- Enforce the requester's entitlements at generation time so a narrative cannot surface accounts or transactions they could not query directly.
- Hold generated narratives as working artifacts distinct from case work product, requiring a deliberate logged action to place one in the record.
- Exclude inferred transactions and unconfirmed relationships from generated output unless explicitly parameterized in, with the inclusion stated in the artifact.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to compose transaction narratives from the canonical store, stored traces, and approved workpapers.
- Require every figure, date, and counterparty in the output to cite the transactions or workpaper supporting it.
- Constrain the model to describing transactions and their sequence, excluding characterization of intent, concealment, or wrongdoing.
- Configure the model to omit rather than estimate where the dataset does not support a statement.
- Monitor generated output for figures that do not reconcile to the cited transactions, and for characterization language entering descriptive passages.

<p class="eyebrow">Use case</p>

## Prioritize Transactions for Deeper Review

Populations routinely exceed review capacity by orders of magnitude. A procurement investigation may span four years and two million payment lines, of which a few hundred matter. Prioritization orders that population by likely relevance so analyst time reaches the consequential items first, combining detector output, materiality, entity involvement, and the case's own lines of inquiry.

Ranking changes review order, never population membership. A low-ranked transaction is deprioritized and remains fully queryable, and no stated figure may rest on a ranking — a loss calculation runs over a defined population, not over what was reviewed. The risk worth guarding against is a systematically under-ranked segment, which is invisible unless the program samples the tail deliberately and measures where confirmed findings actually ranked.

<p class="discovery-label">Discovery questions</p>

- How large are transaction populations relative to available analyst capacity?
- How is review currently ordered, and by whom is that decided?
- What proportion of a typical population proves relevant?
- What materiality threshold, if any, applies in this program?
- How would a decisive transaction that ranked low be discovered?
- What sampling of low-ranked items would give the program confidence?
- Does any figure or conclusion here depend on complete review rather than sampled review?

<p class="pattern-label">Implementation pattern</p>

- Compute a review score per transaction from detector output, materiality, entity involvement, and relevance to the case's lines of inquiry, with configurable weights.
- Keep ranking strictly separate from population selection, so no calculation, query, or export is filtered by score.
- Recompute scores incrementally as analyst dispositions accumulate and lines of inquiry change, rather than fixing an order at load.
- Draw a randomized sample from low-ranked strata into the review queue on a configurable rate, so tail performance is measurable.
- Record the rank each confirmed finding held at the time it was reviewed, and report the rank distribution of confirmed findings.
- Expose the score components per transaction so an analyst can see why an item ranked where it did.
- Require complete population review or a defined sampling methodology, never a ranking, to support any completeness assertion.

<p class="ai-label">AI opportunity</p>

- Use a risk scoring model to rank transactions against case-relevant features and accumulated analyst dispositions.
- Return the contributing features per transaction so ranking is inspectable rather than opaque.
- Feed analyst dispositions back as training signal, and monitor for the model narrowing onto what was reviewed early rather than what is relevant.
- Keep scoring strictly out of population selection, so nothing leaves the queryable set on a model's assessment.
- Evaluate on the rank distribution of confirmed findings, giving weight to findings that ranked low, rather than on aggregate precision.

## Architecture

Build toward this shape. It combines the implementation patterns and AI opportunities from the use cases above into one design, and it names no product or vendor. Agree on it before you evaluate any product, because it sets what any product you choose has to do.

Keep AI out of the numbers. Models can rank, propose, and draft. Every figure the investigation states has to come from a calculation the system runs over a fixed set of data. An analyst may have to re-run that calculation years later and get exactly the same answer.

<div class="architecture-stack" aria-label="Logical architecture for Financial and Transaction Analysis">
  <section class="architecture-layer architecture-layer--experience">
    <p class="architecture-layer-title"><span>01</span> Experience</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Analyst workbench</strong><small>Query, tracing, calculation, and review queue.</small></div>
      <div><strong>Investigator financial view</strong><small>Narratives, timelines, and figures with their citations.</small></div>
      <div><strong>Reviewer and approver view</strong><small>Workpaper review, versions, and approval.</small></div>
    </div>
  </section>
  <section class="architecture-layer">
    <p class="architecture-layer-title"><span>02</span> Financial analysis core</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Canonical transaction store</strong><small>Normalized transactions with origin, provenance, and version.</small></div>
      <div><strong>Reconciliation and completeness</strong><small>Control-total checks and population composition by origin.</small></div>
      <div><strong>Fund tracing engine</strong><small>Graph traversal under a recorded methodology, with break nodes.</small></div>
      <div><strong>Calculation and workpaper engine</strong><small>Versioned rule sets over pinned datasets, stored as workpapers.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--platform">
    <p class="architecture-layer-title"><span>03</span> Shared solution services</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entitlement service</strong><small>Account- and matter-scoped access enforced at query time.</small></div>
      <div><strong>Financial data ingestion</strong><small>Versioned schema mapping, deduplication, and currency conversion.</small></div>
      <div><strong>Graph query service</strong><small>Account and entity traversal for tracing and structure analysis.</small></div>
      <div><strong>Workflow and rules engines</strong><small>Detector configuration and workpaper approval gates.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--intelligence">
    <p class="architecture-layer-title"><span>04</span> Optional intelligence</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Anomaly detection</strong><small>Unanticipated patterns with contributing features returned.</small></div>
      <div><strong>Related account proposal</strong><small>Structural and attribute matches, held unconfirmed.</small></div>
      <div><strong>Transaction prioritization</strong><small>Review order only, never population selection.</small></div>
      <div><strong>Narrative and timeline drafting</strong><small>Descriptive output citing transactions and workpapers.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--records">
    <p class="architecture-layer-title"><span>05</span> Data and authoritative systems</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Document and attachment store</strong><small>Source extracts and statements unmodified, with integrity values.</small></div>
      <div><strong>Append-only activity log</strong><small>Immutable load, trace, calculation, and approval history.</small></div>
      <div><strong>Entity register</strong><small>Vendors, employees, and account holders as resolved entities.</small></div>
      <div><strong>Case data store</strong><small>Cases, lines of inquiry, and events aligned onto timelines.</small></div>
    </div>
  </section>
  <aside class="architecture-controls"><strong>Control plane</strong><span>Identity and access · Calculation reproducibility · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation</span></aside>
</div>

### Baseline and additive components

Build the baseline first, because nearly every use case depends on it. Add each of the other components later, when you commit to the use case that needs it. Do not buy everything up front.

| Component | What it must do | When to build |
| --- | --- | --- |
| Financial data ingestion | Map source schemas to the canonical model, deduplicate, and convert currency by value date | Build first |
| Canonical transaction store | Hold normalized transactions with origin, provenance, and immutable extract versions | Build first |
| Reconciliation and completeness | Check loaded data against source control totals and report population composition | Build first |
| Calculation and workpaper engine | Execute versioned rule sets over pinned datasets and persist reproducible workpapers | Build first |
| Document and attachment store | Retain source extracts and statements unmodified with integrity values | Build first |
| Append-only activity log | Record load, trace, calculation, and approval events with actor and timestamp | Build first |
| Entitlement service | Decide what each person may query, at account and matter granularity | Build first |
| Workflow engine | Gate workpaper approval and record the reviewer against the approved version | Build first |
| Rules engine | Evaluate configured detectors and reconciliation conditions on load and on schedule | Build first |
| Entity register | Resolve vendors, employees, and account holders across sources | Build first |
| Case data store | Hold cases, lines of inquiry, and events aligned onto financial timelines | Build first |
| Search and retrieval | Query transactions and workpapers within the requester's entitlements | Build first |
| Reporting | Report reconciliation status, detector precision, and rank distribution of findings | Build first |
| Notification and queue service | Route review queues, approval requests, and reconciliation failures | Build first |
| Fund tracing engine | Traverse the transaction graph under a recorded methodology, modeling breaks | Add to unlock fund and asset tracing |
| Graph query service | Traverse accounts and entities for tracing and structural analysis | Add alongside tracing and relationship discovery |
| Text extraction service | Parse scanned statements into candidate transactions for confirmation | Add where financial records arrive as scans |
| Entity resolution service | Propose related accounts, vendors, and individuals from attributes and structure | Add to unlock relationship discovery |
| Anomaly detection model | Surface transaction patterns the configured detectors do not anticipate | Add to unlock detection beyond known patterns |
| Risk scoring model | Rank transactions for review against case-relevant features | Add to unlock prioritized review |
| Generative model with grounding and citation | Draft narratives and timelines citing transactions and workpapers | Add to unlock narrative generation |
| Model evaluation and monitoring | Track detector precision, confirmation rates, and rank distribution of findings | Add alongside any model component |

Create one standardized transaction dataset and use it as the source for all analysis, calculations, tracing, and reporting. For each record, keep track of where the data came from, whether it was observed or inferred, and which data extract it belongs to. That makes every result traceable and defensible.

Store every published figure with everything needed to recreate it. A loss calculation is not just a number. Save the version of the method, the version of the dataset, the exact transactions it covered, and the result, all together as one workpaper. Teams working in spreadsheets can usually still produce the number two years later, but not the list of transactions behind it or the rule that classified each one. Those are what a challenge goes after.
