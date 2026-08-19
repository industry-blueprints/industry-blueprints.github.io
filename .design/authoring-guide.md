# Authoring guide

How pages on this site are actually written. [`content-schemas.md`](content-schemas.md) is a literal transcription of `site-redesign.docx` — what the model *requires*. This file records what we *build*, including where the two differ and why.

Read both. Where they conflict, this file describes current practice and the schema file describes the obligation we are working toward.

**Worked reference:** [`_capabilities/investigative-case-management.md`](../_capabilities/investigative-case-management.md) is the canonical example. When a rule here is ambiguous, match that page.

---

## 1. Capability page structure

Every capability page uses this order. Nothing else appears at H2.

| # | Section | Required |
| --- | --- | --- |
| 1 | `Overview` | Always |
| 2 | `Maturity Levels` | Always |
| 3… | One H2 per use case, each preceded by a `Use case` eyebrow | Always |
| n−1 | `Architecture` | Full-depth pages only |
| n | One or more realization mappings — optional, currently paused | Full-depth pages only |

Two levels of completeness are in play:

- **Stub** — sections 1, 2, and use case headings with a one-sentence placeholder each. Every capability starts here.
- **Full depth** — every use case carries narrative, discovery questions, and an implementation pattern; the page ends with Architecture, plus any realization mappings.

`status` stays `Draft` in both cases. The controlled vocabulary in the schema file admits only Draft / Reviewed / Approved / Deprecated, so depth is **not** encoded in front matter — read the page. If depth ever needs to be queryable, add a separate field rather than overloading `status`.

### Divergence from the docx capability template

The schema file's Capability table (docx §6.3) lists fourteen sections — Capability Statement, Definition and Scope, Business Value and Outcomes, Workloads Using This Capability, Typical Actors, Required Information and Data, Business Rules and Constraints, Common Gaps and Pain Points, Assessment and Maturity Questions, Measures, Use Cases, Solution Patterns, Related Capabilities, Standards Mappings.

We publish five. The mapping:

| Docx field | Where it lives now |
| --- | --- |
| Capability statement | First paragraph of `Overview`, written as "Ability to…" |
| Definition / scope | Second paragraph of `Overview`, written as an explicit exclusion naming the sibling capability that picks up |
| Assessment / maturity questions | Split — maturity into the `Maturity Levels` table, assessment questions into per-use-case `Discovery questions` |
| Representative use cases | The use case H2 sections |
| Solution patterns | The `Architecture` section *is* the capability's solution pattern |
| Workloads using this capability | Front matter `workload` and `related` |
| Business rules / constraints | Absorbed into use-case narrative and implementation patterns |
| Typical actors | Deferred — currently only on the workload page as Personas |
| Business value / outcomes | Deferred — currently only on the workload page as Outcomes |
| Required information / data | Deferred — implied by the architecture's data layer |
| Common gaps / pain points | Deferred — implied by use-case narrative |
| Measures | Deferred |
| Related capabilities | Deferred — the workload page carries the full list |
| Standards mappings | Deferred — no FIBF mapping work done yet |

This is a deliberate simplification made when the site was rebuilt: fewer, deeper sections over a long form with thin sections. Revisit when a capability needs to carry measures or standards mappings for a real engagement.

---

## 2. Use case blocks

Each use case is one H2, preceded by an eyebrow, in this order:

```markdown
<p class="eyebrow">Use case</p>

## Verb-First Use Case Title

[Paragraph 1 — what the work is and what it has to produce.]

[Paragraph 2 — where it gets hard, or what makes it defensible.]

<p class="discovery-label">Discovery questions</p>

- [5–7 questions]

<p class="pattern-label">Implementation pattern</p>

- [5–8 recommendations]

<p class="ai-label">AI opportunity</p>

- [2–5 recommendations]
```

The raw-HTML label paragraphs must be followed by a **blank line** before the list, or kramdown will not parse the list as markdown.

**Titles** are verb-first and title-cased. Drop the `[Core]` / `[AI]` designations from the source tables — the AI block, not the heading, carries that signal.

**Narrative** is exactly two paragraphs. The first says what the work is; the second says where it gets hard, what the failure mode is, or what makes it hold up under later scrutiny. Never one paragraph, never three.

**Discovery questions** are for a practitioner to ask a customer. Open-ended, answerable only by that customer, and specific enough that the answer changes the design. "How does an investigator know today what is due and when — the case system, a spreadsheet, a calendar, or memory?" not "Do you track deadlines?" Never yes/no. Never questions the page already answers.

**Implementation pattern** bullets are technical instructions, not descriptions. Start with an action verb — Configure, Integrate, Use, Enforce, Model, Record, Require, Report, Externalize, Keep, Scope. They name **technology categories, never products**; products appear only in the realization mapping sections.

Each bullet should name a component and a concrete technical behavior — a data structure, an enforcement point, a trigger, an integration, a computation, or a configuration. "Configure an append-only activity log so every assignment, task, document, approval, and status change is recorded with actor and timestamp" is the register. Watch for drift toward policy and practice statements, which read like implementation but specify nothing to build: "Treat every extracted identifier as a lead requiring verification" is a working practice, and "Minimize incidental third-party content" is a policy position. Both belong in the use-case narrative or the discovery questions. The test is whether an engineer could act on the bullet without first deciding what it means.

Governance requirements do belong here when expressed as mechanism. "Scope officer location retention to the operational purpose" is a policy; "apply a retention policy to officer location records with a period distinct from the case record, enforced by the retention service" is the same requirement as an implementation.

**AI opportunity** is a separate visual block that informs the architecture identically to the implementation pattern above it. The separation is presentational — it makes AI content findable — not architectural. Include it only where there is a genuine model-shaped opportunity; a capability whose decisions are mostly human judgment should have few, and that absence is worth stating in the Architecture section rather than padding.

AI bullets carry their own guardrails inline: ground in retrieved content, cite sources, decline rather than infer, keep the human decision, monitor for drift. State what the model must **not** do as readily as what it should.

---

## 3. Voice

Write for a practitioner who will use the page in front of a customer.

- **Declarative and concrete.** No hedging, no "it is important to note," no "in today's fast-paced environment."
- **No meta or apologetic language.** Don't describe the page, apologize for its scope, or explain what a section is about to do. State the content.
- **No marketing register.** No "seamless," "robust," "leverage," "empower," "cutting-edge," "game-changing."
- **Consequences, not adjectives.** "A wrong link between subjects carries real consequences for the people involved" beats "accuracy is critical."
- **Name the failure mode.** The most useful sentence on a page is usually the one saying what goes wrong and who it lands on.
- **Public-sector reality.** Deadlines are statutory, decisions are reviewable, and the people described are often subjects of allegations who have not been found to have done anything. Write accordingly.
- **Vendor-neutral above the mapping sections.** No product names in Overview, use cases, or Architecture.
- **Em dashes for asides**, spaced en dashes never. Serial comma. Sentence case for labels, title case for headings.

---

## 4. Architecture section

Present on full-depth pages only. The capability's Architecture section *is* its solution pattern in the six-component model — the vendor-neutral shape any product mix must satisfy.

Structure:

1. **Framing paragraph** — states that the architecture is composed from the use cases above and should be agreed before evaluating products.
2. **Optional boundary paragraph** — where the human/model division matters, state it before the diagram.
3. **`.architecture-stack` diagram** — five layers, fixed.
4. **`### Baseline and additive components`** table.
5. **The build-once callout** — one paragraph.

### The five layers

| # | Title | Modifier class |
| --- | --- | --- |
| 01 | `Experience` | `--experience` |
| 02 | *Capability-specific core* (e.g. `Intake core`, `Triage core`, `Case management core`) | none |
| 03 | `Shared solution services` | `--platform` |
| 04 | `Optional intelligence` | `--intelligence` |
| 05 | `Data and authoritative systems` | `--records` |

Only layer 02 is renamed per capability. Node counts: 2 nodes default, 3 nodes use `architecture-nodes--three`, 4 nodes use `architecture-nodes--dense`.

Every node is `<strong>Name</strong><small>One sentence, sentence case, ending in a period.</small>`.

### Control plane

Base entries, in this order:

> Identity and access · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation

Capability-specific concerns are inserted **after `Identity and access`** and nowhere else (e.g. `Reporter confidentiality` on the intake capabilities).

### Baseline and additive table

Columns are exactly `Component | What it must do | When to build`.

- "What it must do" is a capability statement, not a product description.
- "When to build" is either `Build first` or `Add to unlock <the specific opportunity>` / `Add alongside <the thing it accompanies>`.

**The table is the authoritative component list; the diagram groups and abbreviates for legibility.** They are not one-to-one, and shouldn't be forced into it — layer 01 names workspaces, layer 04 names functions rather than the models behind them, and a single node may cover two components (`Search and notification` stands for both `Search and retrieval` and `Notification and queue service`). Two rules do hold:

- No diagram node may introduce a component that is absent from the table.
- Any component central to a use case must be locatable in the diagram, on its own or grouped into a node.

Cross-cutting services that serve every layer rather than sitting in one — `Reporting` is the standing example — appear in the table without a diagram node. That is deliberate, not an omission.

Layer 05 in particular must have a data store row in the table — it is the easiest one to draw and forget to list.

### The build-once callout

Close the section with one paragraph identifying the component that appears across several use cases doing the same job, and say why building it once and early matters. This is the payoff of the whole roll-up exercise — the insight the page exists to produce. Precedents:

- Investigative Case Management → the entitlement service.
- Allegation, Tip & Referral Intake → reporter confidentiality set at first contact.
- Intake Assessment & Triage → a single decision record structure, with declination recorded as fully as acceptance.

---

## 5. Shared technology vocabulary

The roll-up only works if capabilities name the same component identically. Use these strings verbatim. Add to this list rather than inventing a variant.

### Baseline components

| Component | What it does |
| --- | --- |
| `Append-only activity log` | Record every action with actor and timestamp, and never overwrite |
| `Entitlement service` | Decide what each person may see, wherever content is read |
| `Workflow engine` | Gate actions behind a recorded approval and manage state transitions |
| `Rules engine` | Evaluate deterministic conditions on a schedule and on events |
| `Notification and queue service` | Route work and alerts to the right person |
| `Search and retrieval` | Search within the requester's entitlements |
| `Reporting` | Report performance, override, and tuning signals |
| `Reference data management` | Maintain taxonomies, organizations, remits, and jurisdictions |
| `Document and attachment store` | Retain supplied material in original form with provenance |
| `Policy and authority library` | Hold statutes, regulations, and rules with version and effective-date metadata |
| `Prior matter history` | Surface closed and declined matters for cross-reference |
| `Resource and capacity data` | Show availability, qualifications, and current commitments at the point of assignment |
| `Evidence repository` | Store artifacts write-once, with legal hold and retention applied per item |
| `Cryptographic integrity service` | Hash at acquisition and verify on every access, transfer, and export |
| `Physical custody tracking` | Track facility, container, position, and seals for physical items |
| `Entity register` | Hold canonical entities with sourced, effective-dated attributes and identifiers |
| `Graph query service` | Traverse relationships across matters with entitlements applied per hop |
| `Authorized source catalog` | Record each source, its access basis, purpose limits, and who may query it |
| `Records request register` | Hold scope, recipient, authority, and expected response date per request |
| `Interview register` | Hold interviewee category, authority, advisements, participants, and artifacts |
| `Interview recording capture` | Capture recordings under a verified consent basis and route them into custody |
| `Field activity register` | Hold activities, authorizations, participants, and captured artifacts |
| `Field capture client` | Capture notes, imagery, time, and location offline on a managed device |
| `Field personnel safety tracking` | Maintain deployment picture, check-in schedules, and a duress path |
| `Financial data ingestion` | Map source schemas to a canonical model, deduplicate, and convert currency by value date |
| `Canonical transaction store` | Hold normalized transactions with origin, provenance, and immutable extract versions |
| `Reconciliation and completeness` | Check loaded data against source control totals and report population composition |
| `Calculation and workpaper engine` | Execute versioned rule sets over pinned datasets and persist reproducible workpapers |
| `Canonical event store` | Hold events with explicit temporal precision, ordering constraints, and source provenance |
| `Analytical product register` | Version products with dataset snapshot, sourcing, markings, distribution, and supersession |
| `Network analytics engine` | Compute centrality, community detection, and path discovery over an entity graph |
| `Legal process register` | Track instrument state, grounds snapshot, scope, service, and return |
| `Privilege and disclosure register` | Hold per-item privilege status, basis, reviewer, and disclosure obligation |
| `Package assembly and production` | Materialize immutable sets with manifests, numbering, and delivery records |
| `Redaction service` | Remove underlying content in derived copies and record the basis per region |
| `Findings register` | Hold determination, standard applied, and typed supporting and contradicting evidence links |
| `Report composition engine` | Assemble reports from findings and case records against versioned templates |
| `Citation resolution service` | Validate that every citation target exists, matches its version, and remains live |
| `Referral and outcome register` | Track recipient, package version, state, and dated downstream outcomes independently of case closure |
| `Closure record` | Hold per-allegation and per-subject dispositions, rationale, and derived case outcome |
| `Retention and disposition engine` | Compute schedules from category, matter type, and outcome, evaluate holds, and execute disposition |
| `Sharing agreement register` | Hold parties, data classes, purposes, conditions, onward rules, and expiry as evaluable configuration |
| `Disclosure and caveat record` | Hold per-item restrictions, originator consent state, and release history |
| `Release and sanitization pipeline` | Evaluate agreement, caveat, and consent, then produce the releasable set before composition |
| `Deconfliction service` | Match time-bounded interest assertions and return pointers without detail |
| `Measure definition registry` | Hold versioned populations, computations, exclusions, effective dates, and owners |
| `Portfolio analytics store` | Materialize dated snapshots supporting reproducible reported figures |
| `Quality assurance sampling` | Draw stratified random samples with recorded frame, seed, and parameters |
| `Systemic finding register` | Track recommendation, owner, agreed action, verification, and recurrence |

### Additive components

| Component | What it does |
| --- | --- |
| `Text extraction service` | Make scanned and photographed material searchable at ingestion |
| `Forensic acquisition and imaging` | Acquire digital evidence in a defensible, write-blocked, hash-verified manner |
| `Source integration connectors` | Query external systems and providers through a governed, logged path |
| `Relevance ranking model` | Order large collections against stated objectives, for review order only |
| `Anomaly detection model` | Surface patterns configured detectors do not anticipate, with contributing features |
| `Clustering model` | Propose groupings from entity, event, and narrative features, with stability reported |
| `Workload forecasting model` | Project demand and required capacity as interval estimates with drivers |
| `Fund tracing engine` | Traverse a transaction graph under a recorded methodology, modeling breaks explicitly |
| `Entity resolution service` | Propose candidate entity and record matches for human confirmation |
| `Classification model` | Propose a category with the factors behind it |
| `Risk scoring model` | Score against policy-defined factors and return the factors |
| `Generative model with grounding and citation` | Compose and answer from cited source content |
| `Model evaluation and monitoring` | Track fidelity, override rates, and drift over time |
| `Scheduling and dependency solver` | Order work against dependencies, durations, availability, and fixed deadlines |
| `Outcome feedback path` | Return downstream outcomes to the decision that produced them |

The system-of-record component is named for the capability it serves — `Case management platform`, `Intake platform`, `Intake and triage platform`, `Evidence item register` — and its store is named separately in layer 05 (`Case data store`, `Submission data store`, `Evidence repository`).

### Known drift to normalize

Log divergences here as they are found, and resolve them in the next content pass.

- *Resolved 2026-08-18* — `Entity resolution and similarity service` on Allegation, Tip & Referral Intake normalized to `Entity resolution service`. Semantic similarity over narrative is an additional technique the same component applies, not a separate component.
- *Resolved 2026-08-18* — `Case data store` and `Submission data store` appeared in the layer-05 diagrams of Investigative Case Management and Allegation, Tip & Referral Intake but were missing from their baseline tables. Added.
- *Open* — On Allegation, Tip & Referral Intake the baseline table carries one `Channel integrations` row, while both mapping tables split it into `Public submission channels` and `Referring agency exchange` (the layer-01 diagram node names). Decide whether inbound channels are one component or two, and make all three tables agree. - *Open* — Every mapping table carries a `Records and retention` row that exists only in the control plane, not as a baseline component. Either promote it to a baseline component or state the convention that control-plane concerns may appear as mapping rows.

---

## 6. Realization mappings

Optional. Where present they sit beneath the architecture they map, always last on the page, and a capability may carry **more than one** — a vendor platform and a custom build are different realizations of the same architecture, and comparing them is the point.

> **Paused as of 2026-08-19.** New capability pages ship without a mapping section pending review of the four written so far. Build Architecture as the last section; add mappings once the approach is confirmed.

Each mapping is one H2 named `<Stack> Mapping` (`Microsoft Technology Mapping`, `Custom App Development Mapping`).

Structure: framing paragraph → verification blockquote → mapping table → `### Resolve these four before committing`.

- **Framing** states that the architecture above is the definition and this is one realization of it, addable or replaceable without changing anything upstream. Say when this realization is the right one to reach for.
- **Verification blockquote** is standing text appropriate to the stack — vendor documentation and support type for a product stack; license, maintenance status, security posture, and upkeep ownership for a custom stack.
- **First column is always `Architecture component`**, matching the architecture component names character for character. `anchorcheck.js` won't catch a mismatch here; check it by hand or by script.
- **Keep the row set identical across mappings on the same page**, so a reader comparing two stacks reads the same rows in the same order.
- **`Resolve these four`** is four bolded action-verb items naming genuine gaps, defaults that will bite, or design decisions that are much harder to retrofit. Say what breaks and when — not that it is "worth considering." These are stack-specific: the same architecture has different sharp edges on a configured platform than on a custom build.

### Third column

The third column answers "what does adopting this cost me?", and the useful answer differs by stack. Pick the vocabulary that carries information and state it in the framing if it isn't self-evident.

| Mapping type | Column | Values |
| --- | --- | --- |
| Vendor product stack | `Support type` | Native; Configurable; Partner/extension; Custom; Not verified (docx Appendix B) |
| Custom build | `Build or adopt` | Adopt; Adopt and extend; Build |

The product Support Type vocabulary is deliberately not reused for custom builds — every row would read `Custom`, which carries nothing.

Where a stack has no honest fit for a component, say so in the `Realize with` cell and mark it accordingly (`Partner / custom`, or `Build`). Do not stretch an adjacent product to fill a row.

---

## 7. Front matter

```yaml
title: Capability Name          # ampersands fine here, not in H2 headings
summary: Ability to …           # one sentence, feeds the workload page listing
description: Ability to …       # same text as summary — see below
status: Draft                   # controlled vocabulary only
tier: Tier 2 · Practitioner
scope: All
updated: YYYY-MM-DD
owner: Content team
workload: Investigations        # drives the workload page listing
parent_title: Investigations
parent_url: /workloads/investigations/
order: 3                        # lifecycle position within the workload
sections: [...]                 # see below
related: [...]                  # controlled predicates from the schema file
sources: []
```

**`sections` must list every H2 in the body, in body order.** It drives the sidebar nav; a mismatch produces a dead anchor or a missing entry. `anchorcheck.js` catches this.

**`description` duplicates `summary`, deliberately.** `summary` is Required by the content schema and feeds the listing cards. `description` is what `jekyll-seo-tag` reads for the meta description, Open Graph, and Twitter card. Without it the plugin falls back to the page excerpt, which for our pages is the first heading — every page would describe itself as "Overview".

Keep the two identical, and change both when you change either. A generator plugin deriving one from the other was considered and rejected: `_plugins/` is ignored under the `github-pages` gem, so it would fail silently if the build toolchain changed, and the failure looks like correct output. Front matter works under any builder.

**`order`** positions the capability in the workload's lifecycle. The workload page sorts on it (`sort: "order"`); the cross-workload `/capabilities/` listing stays alphabetical.

**Avoid `&` in H2 headings** — page titles are fine, but Jekyll's `slugify` and kramdown's auto-id generation can disagree on non-alphanumerics, producing a nav link to an anchor that doesn't exist. Write "and" in headings.

---

## 8. Before committing

```bash
bundle exec jekyll build          # not just serve — catches Liquid and front-matter errors
node anchorcheck.js               # every sections: entry resolves to a real anchor
node linkcheck.js                 # no dead internal links
```

Then check the rendered page, not the markdown: heading count matches `sections`, eyebrow and label counts are right, no raw `<p class=` or literal `##` leaking into the prose.

Commits are **local only** — no push, no publish, until the repo is copied over its destination.

---

## 9. Architecture prose

The Architecture section's prose — framing, boundary, and callouts — follows the same instructional register as implementation pattern bullets, and the same length discipline.

**Every paragraph follows one shape: do this → here are the specifics → that gets you X.** The instruction comes first in plain words. The middle names what to store or enforce, concretely. The last sentence says what you get, or what plainly goes wrong. Three to five sentences, 60–90 words. The model paragraph:

> Create one standardized transaction dataset and use it as the source for all analysis, calculations, tracing, and reporting. For each record, keep track of where the data came from, whether it was observed or inferred, and which data extract it belongs to. That makes every result traceable and defensible.

What that replaced is the failure mode to watch for — a version twice as long that performed instead of explaining: a four-clause parade (*"analysis queries it, tracing traverses it, calculation computes over it, narratives cite it"*), an aphorism (*"Three unglamorous fields carry the most weight"*), abstractions where plain words work (*"the provenance link back to the source file and row"* for *"where the data came from"*), and a clever closer (*"which in this capability amounts to the same thing"*). Every one of those reads as writing rather than instruction.

- **Lead with a verb.** "Build the custody record once," "Validate citations continuously," "Keep AI out of the determination." Never open with "Note where…", "Note also that…", or a bare noun phrase like "Contemporaneity is won on the device."
- **No aphorisms, no clever closers, no em-dash asides.** If a sentence would work in an essay, it is wrong here. End on the plain payoff instead: "That makes every result traceable and defensible."
- **Avoid the gerund-subject construction.** "Building the check into the client is what converts authorization into a control" becomes "Put the check in the capture client. That turns authorization from a document into a control." The tic to watch for is *`<verb>`ing … is what …*.
- **Keep sentences short.** Median around 15 words, nothing over about 30. Split any sentence carrying more than two clauses; a 60-word sentence with three em-dashes is the failure mode. A colon followed by three parallel clauses is the same failure wearing a disguise — split it into separate sentences.
- **Address the reader directly.** "You cannot recall a release" beats "a release cannot be recalled."
- **Never phrase a mistake as an instruction.** The `imperative + ", and" + consequence` shorthand reads as a recommendation, so the imperative must carry the recommended action. "Stand it up separately, and a set of case systems becomes an organization that can see the same person" works. "Compute a closure rate one year including administratively closed matters and the next year excluding them, and the resulting trend is an artifact of the change" does not — it opens by telling the reader to do the wrong thing, and the mistake is 20 words long before the conditional arrives. Keep the imperative clause under about ten words, and when the content illustrates how something goes wrong, narrate it instead: "Say last year's closure rate counted administratively closed matters and this year's does not. The rate moves. Nothing has actually improved."
- **Describe behavior, do not command it, when the subject is other people's habits.** "A team that works the straightforward matters first raises its closure rate" beats "close straightforward matters first and the closure rate rises."
- **Do not open on a bare verb-noun that reads as a noun pile.** "Version measure definitions" looks like three nouns before it looks like an instruction. Put an article or an object in early: "Write down what each measure means, and keep every version of that definition." The same fix applies mid-sentence — "Make caveats enforced attributes that propagate" is four nouns in a row, and becomes "Store each caveat as a field the system enforces and carries forward."
- **`Model X as Y` is almost always the noun-pile trap.** "Model temporal precision as data" and "Model the task as a first-class record" both open on two abstract nouns. Say what to store instead: "Record how precisely each event's time is known, and store that as a field of its own"; "Make each task a real record with its own dependencies."
- **Prefer the plain word.** Abstract nouns and imported jargon make an instruction unreadable: not "Win contemporaneity on the device" but "Capture notes at the time, on the device"; not "reproducible by construction" but "reproducible"; not "materialize the set" but "store the actual set"; not "canonical transaction model" but "standardized transaction dataset". Drop trailing abstract adverbs like "structurally" — they add nothing.
- **Say "AI", not "the intelligence layer".** Layer 04 is labelled *Optional intelligence* in the diagram, so the reader can still find it. In prose, "Keep AI out of the decision" beats "Hold the intelligence layer away from the decision" — the plain word is shorter and the metaphor is odd.
- **Do not enumerate which use case does what.** "It does the same job in the receipt, capture, routing, and duplicate-detection use cases" is bookkeeping the reader did not ask for. Name what the component decides instead.
- **Diagram content is exempt.** Node labels and `<small>` descriptions are fragments by design; leave them alone.

The boundary paragraph states where the model stops, in four sentences: "Keep AI out of X." What models may do. What they must never do. What runs as rules instead, and why.
