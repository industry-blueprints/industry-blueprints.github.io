# Industry Blueprints — Product Vision

**Status:** Draft · **Last revised:** 2026-08-10 · **Supersedes:** the 2026-07-26 toolkit vision

An open body of knowledge answering one question: **how should important business systems actually work?**

Companion documents:
[content-architecture.md](content-architecture.md) — the implementation contract for the content model and build pipeline.
[new-vision.md](new-vision.md) — the wider professional-platform strategy this site sits inside. Retained as source material; **not** a specification for this repository.

---

## 1. Scope of this document

The wider strategy in [new-vision.md](new-vision.md) describes six surfaces: a personal site, this site, GitHub, YouTube, LinkedIn, and a projects lab.

**This document governs one of them.** Positioning, advisory offerings, the portfolio-career argument, the spiral model, and the publishing cadence belong to the personal site and are deliberately out of scope here. They are good material in the wrong repository, and letting them leak in is how a reference work turns into a brochure.

What this site owes the wider platform is narrow and concrete: **the knowledge layer, and the connection between it and running software.**

---

## 2. The shift

The previous vision had one organizing use case: *"a working session, not a reading session."* A consultant sits with a customer for an afternoon, locates them on a maturity rubric, agrees on three moves. Everything downstream served that — the maturity spine, the downloadable toolkits, the conversation layer of workshops and discovery guides.

That framing is now demoted. The organizing question becomes:

> **How should important business systems actually work?**

That is a reference-work question, not a facilitation question, and the difference propagates. A reference work is judged on whether its answers are *right and complete enough to build from*. A facilitation toolkit is judged on whether an afternoon goes well. The first standard is harder, more durable, and the one worth holding.

Three consequences shape everything below.

**The unit of the library becomes the blueprint, not the capability.** A capability is a description of something an organization must be able to do. A blueprint is an answer to how a system supporting it should be built. The site currently holds 113 of the first and none of the second, which is why it is a capability library wearing the name Industry Blueprints. §5 fixes that.

**Answers must reach all the way to running code.** A blueprint that stops at diagrams is an opinion. The companion platform repository (§7) already runs four of the candidate blueprints, which makes the executable layer a documentation problem rather than a construction problem — a much better position than the previous vision assumed.

**Facilitation becomes a by-product, not a product.** Workshops, discovery sessions, and rubrics remain useful and remain published. They stop being the front door, stop driving the information architecture, and stop being written ahead of the knowledge they facilitate. See §11.

---

## 3. Point of view

The ideas the library argues for, stated so content can be held against them.

**Software creation is being commoditized. Engineering judgment is not.** AI-assisted development makes software faster to create and does not make important systems easier to engineer. Architecture, information models, integration, ownership, lifecycle, and operational risk are unchanged by generation speed.

**Build versus buy is a spectrum, and the architecture decides where each approach belongs.** Packaged applications, configurable platforms, custom software, open-source components, generated code, APIs, and agents all compose. Choosing among them per subsystem is the real design work.

**Blueprint first, platform second.** A case-management system should first be understood as a case-management system — not as a Dynamics implementation, a Salesforce implementation, or a custom build. Technology selection follows the model, not the other way round.

**Easier software creation raises the value of governance.** If organizations create far more software, then architecture, security, ownership, testing, and lifecycle management matter more, not less.

**Enterprise AI is mostly an integration problem.** The model is one component. Value comes from connecting intelligence safely to data, processes, permissions, actions, and people — which is why AI in this library is always expressed against a domain model and a permission model, never as a standalone feature list.

**Systems thinking is the durable skill.** Platforms, languages, and models churn. The relationships between people, processes, information, technology, and constraints do not.

---

## 4. Audience

**Practitioners designing or modernizing business systems** — architects, engineering leads, product owners. The primary reader. They arrive with a domain problem and need a defensible model.

**Technology and delivery leaders** making build/buy/configure decisions, needing the domain understood before the platform is chosen.

**Public-sector program and technology staff**, for whom the content domain is directly their own.

**AI agents** doing discovery, solution design, or research on behalf of the above — served by structured relationships, explicit provenance, and stable identifiers rather than by any dedicated feature. A consequence of doing the content model well, not a headline.

Consultants and facilitators remain a real audience. They are no longer the audience the information architecture is designed around.

---

## 5. The Blueprint

A **Blueprint** is the unit of the library: a composed answer to how a class of business system should work, developed through four layers.

The layers are a depth ladder, not a pipeline. A blueprint is publishable at layer 1 and improves outward.

### 5.1 The four layers

**Layer 1 — Business Blueprint.** The domain, independent of technology. Business problem · personas and actors · terminology · processes and workflows · business rules · lifecycle models · common requirements · common variations · regulatory and policy considerations.

*Existing types:* Capability, Persona, Process, Governance Control, KPI.

**Layer 2 — Information & Architecture Blueprint.** How the system should be structured. Domain model · entities and relationships · bounded contexts · state models · business events · security and permission concepts · integration patterns · APIs · extensibility · audit requirements · AI interaction points.

*Existing types:* Data Model, Data Entity, Solution Pattern, Reference Architecture, AI Integration, AI Agent.

**Layer 3 — Executable Reference Implementation.** Working open-source software that makes the architecture concrete, explorable, and testable. Lives in the companion platform repository (§7), represented here as a Demonstration artifact.

The purpose is not production software organizations deploy unchanged. It is that a reader can run the system, inspect the data model, call the APIs, and read the code that implements the state machine layer 2 describes.

**Layer 4 — Platform Mappings.** How the architecture maps onto implementation platforms — custom development, Dynamics 365 / Power Platform, Salesforce, ServiceNow, cloud-native, AI-native, hybrid. The blueprint remains independent of all of them.

*Existing type:* Vendor Implementation.

### 5.2 AI is not a fifth layer

AI is an architectural capability expressed in every layer: opportunities and human decision points in layer 1, interaction points and agent boundaries in layer 2, a working assistant in layer 3, platform AI services in layer 4.

Every AI artifact must connect explicitly to data, business process, permissions, available actions, human decision points, approval requirements, auditability, and evaluation. An AI opportunity stated without those connections is a feature list, and the library does not publish feature lists.

### 5.3 What a blueprint is not

Not a capability, not a product comparison, not a case study, and not a single reference architecture. It is the composition — and the composition is the contribution, because the individual pieces are widely available and their coherent assembly is not.

---

## 6. The layered model, and the word "capability"

The library, the modular architecture, and the platform repository each use "capability" to mean something different. Three meanings, silently overlapping, is the fastest way to break the model — so they are named and separated here before any blueprint is written.

| Concept | Grain | Example | Where it lives |
|---|---|---|---|
| **Business Capability** | Something an organization must be able to do | Licensing and Permitting · Eligibility Determination · Budget Formulation | `_capabilities` — 113 today |
| **Domain Module** | A reusable domain concept with a lifecycle and a state model | Case · Request · Asset · Inspection · Finding · Agreement · Credential | New — layer 2 specification |
| **Platform Module** | A code package with contracts, commands, events, permissions | `case-management` · `approvals` · `document-intake` | platform repo `modules/` |

**Recommendation, and a change from [new-vision.md](new-vision.md):** the middle tier there is called *Business Capabilities*, which collides head-on with the 113. Call it **Domain Modules** instead. The payoff is a clean pairing — a Domain Module is a specification, a Platform Module is its implementation, and the two names differ by exactly the word that says which is which.

The resulting stack:

```
Blueprint            Constituent Services · Permitting · Investigations · Asset Management
   │  covers ────────► Business Capabilities   (the map of the territory — what an org does)
   │  composed of ───► Domain Modules          (shared nouns with lifecycles — layers 1–2)
   └  demonstrated by► Platform Modules        (running code — layer 3)
```

**Foundation** sits beneath Domain Modules: Person · Organization · Location · Address · Communication · Document · Note · Task · Classification · Audit Event. Universal, boring, and the thing every blueprint would otherwise redefine incompatibly.

Two consequences worth stating plainly:

**Case Management is not Blueprint 001.** It is a Domain Module — the shared engine beneath Constituent Services, Investigations, Permitting, and half the rest. [new-vision.md](new-vision.md) proposes it as the first blueprint; that proposal is what surfaced the naming collision. The first blueprint is Constituent Services, and Case Management is what it is built from. See §10.

**The 113 business capabilities are not wasted, and are not the product either.** They are the map — the thing that shows where a blueprint sits and what territory remains unaddressed. A blueprint declares which capabilities it covers; the map shows coverage honestly, including the large majority not yet covered.

### 6.1 Abstractions are extracted, not designed

Domain Modules are identified by writing two blueprints and noticing what repeats — not by designing a universal enterprise model in advance. Where a concept works across domains, it is promoted and strengthened. Where it does not, the abstraction is revised or abandoned. A Domain Module with one consumer is a premature abstraction and is written back into its blueprint.

---

## 7. The two repositories

The companion repository at `repos/platform` (**Industry Modules Platform**) is the executable half of this project. It is not a demo folder; it independently arrived at the same layering this document describes.

| This site | Platform repo | Correspondence |
|---|---|---|
| Foundation | `core/` + `person-registry` | identity, permissions, workflow, audit, notifications |
| Domain Module | `modules/` | case-management · approvals · document-intake · asset-registry · activity-tracking · person-registry |
| Blueprint | `solutions/` | constituent-services · public-sector-permits · inspector-general · asset-management · vendor-onboarding |
| Layer 2 architecture | `docs/architecture/` + solution YAML | contracts, ADRs, state models, storage strategy |
| Layer 3 Demonstration | `examples/city-demo` | one command, four department apps, a public portal, one tenant database |

### 7.1 Layer 3 is ahead of layer 2, and that changes the working method

The obvious assumption is that architecture is documented and then implemented. Here the opposite is true: the platform has running state machines, entity contracts, permission models, events, and process templates, while this site has 9 data entities, 4 data models, 1 reference architecture, and 5 patterns.

**So layer 2 is harvested from layer 3, not designed ahead of it.** The state machine exists in `core/workflow` and solution YAML; layer 2's job is to express it vendor-neutrally, explain why it is shaped that way, and say what would change under different constraints. This is faster, and it produces architecture documentation that is true by construction rather than by intention.

The direction reverses once a blueprint has no implementation yet. Both directions are legitimate; what is not legitimate is publishing a layer 2 model that contradicts running code in the sister repo.

### 7.2 The alignment contract

* **Naming.** A blueprint and its solution share a slug. `constituent-services` here is `solutions/constituent-services` there.
* **Direction of authority.** Layer 2 is the specification of record for domain semantics. The platform is the specification of record for how those semantics are implemented. Where they disagree, one of them is a bug, and the disagreement is resolved rather than documented twice.
* **No duplication.** This site does not restate contracts, schemas, or ADRs that live in the platform repo. It links to them and explains the reasoning. The practical test in §11 applies here too.
* **The platform stays runnable without this site, and this site stays readable without the platform.** Neither is a dependency of the other; the pairing is the value.

---

## 8. Content model

Unchanged in mechanics and specified in [content-architecture.md](content-architecture.md): one markdown file per artifact, OKF v0.2 frontmatter as the native vocabulary, typed relationships authored once and rendered in both directions, derived trust and freshness badges, static client-side search.

That machinery survives the shift intact, which is the main reason this is a reframing rather than a rebuild. The **relationship predicate vocabulary is normative in [content-architecture.md](content-architecture.md) §6.2** — it moved there from the product vision, because a table the validator enforces and the build publishes belongs with the machinery that does both.

**Changes required:**

| Change | Reason |
|---|---|
| Add `Blueprint` artifact type | §5 — the unit of the library has no representation today |
| Add `Domain Module` artifact type | §6 — the middle tier is unrepresented |
| Add `covers` / `covered_by` predicate | Blueprint → Business Capability |
| Add `composed_of` / `composes` predicate | Blueprint → Domain Module |
| Extend `layer` frontmatter from 3 values to 4 | §8.2 — the executable layer is new; vendor moves 3 → 4 |
| Populate `_demonstrations` | Layer 3 — currently empty, while five solutions run |
| Relax `industry` and `government_levels` from required | §9 — public sector is the content, not the identity |

### 8.0 Two axes, not twenty types

The library is authored as ~20 artifact types. It should not be *browsed* as twenty artifact types — the previous vision said as much ("eighteen equal categories is a discovery failure") and then shipped a navigation that did exactly that.

Navigation is therefore two axes, both over content that already exists:

* **Capability → layers.** A capability page shows what exists at each of the four layers, and says plainly where nothing does. This is the primary entry point.
* **Layers → capabilities.** A coverage view: which capabilities have reached which layer. This answers "where are the holes," which is the roadmap question.

Type collections remain as URLs, authoring homes, and bundle structure. They are reachable through Browse and are no longer the way in.

**A consequence worth naming: this probably removes the need for a `Blueprint` artifact.** A capability page showing its four layers *is* the blueprint, generated from the graph rather than hand-authored. §15 left this open pending a try at generation; the generation works, so the burden of proof now sits with anyone wanting a hand-written blueprint on top of it.

The traversal that makes this work is two hops with two constraints — the second hop must go to a **deeper** layer, and may only **start from layer 2**. The first rule alone lets a shared persona drag in a neighbouring capability's material; layer 1 artifacts are hubs, and hubs are not routes downward.

### 8.1 The depth ladder stays

Coverage is partial by design and for a long time, so **depth is a declared state on every artifact** rather than something a reader infers. It renders as a badge, for the same reason trust and freshness do: a stub that announces itself is honest, and one that doesn't is a broken promise.

| Tier | Contains |
|---|---|
| **Named** | Appears on the capability map with a one-line definition. No page. |
| **Defined** | Purpose · outcomes · key processes, personas, entities named · 3–5 measures · variance sketch |
| **Detailed** | + how it typically works today · pain points · business rules · standards mappings · full relationship graph |
| **Complete** | + its own process, data, measure, and governance artifacts |

It is doing real work across 113 artifacts and promotion is one file plus one line. Layer position is the depth signal for *blueprints*; the two coexist because they measure different things — a blueprint at layer 3 may rest on capabilities that are merely Defined.

### 8.2 The layer model, extended from three to four

The previous model had three **layers** enforced by a `layer` field: 1 industry knowledge, 2 vendor-neutral solution design, 3 vendor implementation. The four layers in §5 are the same idea with the executable layer inserted and the vendor layer pushed out to the end:

| Old `layer` | New `layer` |
|---|---|
| 1 — industry and operating-model knowledge | **1** — Business Blueprint |
| 2 — vendor-neutral solution design | **2** — Information & Architecture |
| *(none)* | **3** — Executable Reference Implementation |
| 3 — vendor implementation | **4** — Platform Mappings |

**The word stays "layer."** An intermediate draft called these *rings*, to avoid confusion while both the three-value and four-value models were live. That confusion was transitional and has passed, and *layer* is the word this audience already thinks in — the whole point of §6 is that vocabulary should be familiar and unambiguous, not novel. The one-time cost is that "layer 3" means something new; the permanent cost of an unfamiliar term would have been larger.

One consequence worth being deliberate about: the companion platform repo (§7) organizes its **code** into five layers of its own — core, modules, solutions, experiences, examples. Those are layers of a codebase, these are layers of a blueprint, and they do not correspond one-to-one. In any discussion spanning both, qualify: *blueprint layer 2*, *platform layer 2*.

The vendor-neutrality rule carries over unchanged in substance, with the number updated: **no layer 1 or 2 artifact holds an outbound edge to a layer 4 artifact.** `realizes` always points upward, and platform listings on neutral pages render from inbound edges. Injected via config defaults, so no author restates it per file.

---

## 9. Public sector as proving ground

Every blueprint candidate in [new-vision.md](new-vision.md) is a public-sector domain, and both repositories are already deep in it. Public sector therefore remains the content — but stops being the identity.

The distinction is not cosmetic. "A vendor-neutral public-sector toolkit" describes a niche reference site. "How serious business systems are designed, demonstrated in public sector" describes a body of work whose method transfers. The second is what both repositories actually contain: the platform's modules are industry-neutral by construction, and its README already names insurance claims, manufacturing quality, and healthcare referral as future solutions.

Practically: keep the capability map, keep the level-variance treatment, keep the regulatory citation discipline — that rigour is the evidence the method is serious. Widen the framing, the navigation, and the front door. Move `industry` and `government_levels` from required to optional so a non-public-sector blueprint costs nothing structurally.

---

## 10. Roadmap

### 10.0 Domain Module 001 — Case Management *(done, 2026-08-10)*

The first vertical slice is a **Domain Module, not a Blueprint** — an amendment to the ordering below, made because case management threads every candidate blueprint and is therefore the thing they all rest on.

This inverts §6.1's usual sequence, which requires an abstraction to be extracted from two blueprints rather than designed ahead of them. It is a legitimate exception rather than a bent rule: the platform repository had already proven the boundary across **four** running solutions before a word of the specification was written. The evidence arrived from layer 3 instead of from two layer-1 passes, which is the §7.1 working method applied to abstraction rather than to architecture.

It also completes the layer model at the smallest scale that can complete it — capability, module, running software, and one platform mapping — which is worth more as a first proof than a larger slice that stops at layer 2.

| Layer | Artifact |
|---|---|
| 1 | [capability](/capabilities/case-management/) *(pre-existing)* |
| 2 | `domain-modules/case-management` + [entity](/data-entities/case/) *(pre-existing)* |
| 3 | `demonstrations/case-management-module` → `platform/modules/case-management` |
| 4 | `vendor-implementations/case-management-on-dataverse` |

### 10.1 Blueprints

Four blueprints where **both repositories already hold material**, ordered by combined depth.

| # | Blueprint | Layer 1 (site) | Layer 3 (platform) |
|---|---|---|---|
| 001 | **Constituent Services** | Capability `complete`, rubric, AI integration catalog, reference architecture, personas, processes | `solutions/constituent-services` |
| 002 | **Permitting & Licensing** | `licensing-and-permitting` capability, application entity | `solutions/public-sector-permits` |
| 003 | **Investigations & Inspector General** | Investigator persona, allegation-intake process, rights-advisement control, track-determination KPI | `solutions/inspector-general` |
| 004 | **Asset & Maintenance Management** | Asset and maintenance capabilities, work-order entity, facilities-manager persona | `solutions/asset-management` |

**001 is the proof.** It is taken through all four layers before 002 begins, for the same reason the previous vision threaded one capability end to end: a complete vertical slice reveals which parts of the model are wrong, and a breadth-first pass across four half-blueprints reveals nothing.

**002 is the test of reuse.** Domain Modules extracted from 001 are provisional until a second blueprint consumes them. Extraction that has not survived a second consumer is a guess (§6.1).

Layer 4 is deferred until a blueprint has layers 1–3. Platform mappings written against an unsettled architecture map the wrong thing — the exception being Case Management, whose architecture was settled in code before it was written down.

### 10.2 What Blueprint 001 now inherits

Constituent Services no longer starts from nothing at layer 2. It declares `composed_of → case-management` and inherits the engine, the contract, and the reuse boundary — leaving its own layer-2 work to what is genuinely specific to constituent service: channels, the service catalogue, identity verification, and referral.

That is the composition claim in §6 becoming testable. If Blueprint 001 finds itself restating what the module already says, either the module's boundary is drawn wrong or the blueprint is the wrong unit — and both are worth knowing early.

---

## 11. What is demoted, and why

Recorded as decisions rather than deletions, so the reasoning survives.

**Maturity rubrics.** Demoted from the organizing spine to an optional lens on a capability. The previous vision called level-filtering "the single highest-value interaction in the product"; one rubric exists against 113 capabilities, which is what a spine nobody can afford to build looks like. The rubric that exists stays and stays useful. New rubrics are written only where a blueprint reaches layer 2 and the levels describe something observable.

**Toolkit downloads.** Retained, re-motivated, and lowered in priority. Portability is still a principle — but the reason is now "hand it to an AI assistant, or drop it into a project repo" rather than "carry it into a workshop." Scoping likely moves from per-capability to per-blueprint, which is a better bundle anyway. Still Phase 2 machinery; still touches no authoring.

**The conversation layer.** The four existing guides stay published and stay in the graph. They come off the primary navigation and off the home page, and no new ones are written until the blueprint they would facilitate exists. The rule in [content-architecture.md](content-architecture.md) §4b — conversation artifacts add no facts — is unchanged and remains the reason they are cheap to keep.

**"Working session, not a reading session."** Retired as the organizing use case. It produced a good information architecture for a product that was going to be judged on afternoons rather than answers.

Nothing here is deleted. A reader who wants to run a session can still do so; they are no longer the reader the site is shaped around.

---

## 12. Principles

**Business-first.** Content begins with problems, processes, decisions, and outcomes — not products.

**Honest about today.** Current-state descriptions include the workarounds and the reasons they exist. Content describing only an idealized future does not survive contact with people who run the system.

**Vendor-neutral core, pluggable implementations.** Layers 1–2 stay vendor-agnostic. Layer 4 is removable: no layer 1 or 2 artifact holds an outbound edge to a layer 4 artifact.

**Executable where possible.** An architectural claim that can be demonstrated should be. Layer 3 is what separates this from a slide library.

**Let real use cases create abstractions.** No universal enterprise model in advance (§6.1).

**Keep reference code understandable.** The code exists to make architecture concrete, not to win a benchmark. Mainstream technologies, minimal dependencies, no commercial platform requirements.

**Structured and interconnected.** Repeatable schemas, typed bidirectional relationships, no knowledge living only in a template.

**Provenance is visible.** Every artifact shows who wrote it, whether a human verified it, what it is based on, and when it goes stale. Unverified content is labeled, not hidden.

**Publish before perfect.** Versioned early, improved in public. A blueprint at layer 1 is publishable.

**Portable.** The knowledge stays useful with the website switched off.

---

## 13. Nonfunctional requirements

**Accessibility.** WCAG 2.2 AA, verified in CI. Non-negotiable — the library advises on Section 508 obligations and cannot itself fail them.

**Performance.** Static output, no client framework requirement, deferred media.

**SEO.** Unique titles, meta descriptions, canonical URLs, structured headings, schema.org, Open Graph.

**Maintainability.** Layer 4 mappings are independently editable and carry shorter freshness windows (6 months) than layer 1–2 knowledge (12 months).

**Extensibility.** New industries, platforms, artifact types, and predicates are additive.

**Security.** No authentication, and therefore no authentication risk.

---

## 14. Definition of done

Not an afternoon that goes well. The standard is:

> **A competent architect can read one blueprint, run its reference implementation, and build a defensible version of that system on a platform of their choosing — without needing this site to remain online.**

If that works for Constituent Services, the method transfers. If it does not, no amount of breadth compensates.

The progress standard from [new-vision.md](new-vision.md) applies unchanged: **what useful asset exists today that did not exist yesterday?**

---

## 15. Resolved decisions

| # | Decision |
|---|---|
| 1 | **Scope.** This document governs the Industry Blueprints site only. Personal-platform strategy stays in [new-vision.md](new-vision.md) (§1). |
| 2 | **Organizing question.** "How should important business systems actually work?" replaces "a working session, not a reading session" (§2). |
| 3 | **Unit of the library.** The Blueprint, developed through four layers (§5). |
| 4 | **Naming.** The middle tier is **Domain Modules**, not "Business Capabilities" — the latter collides with the 113 (§6). Blueprint depth stays **layers**, not "rings" (§8.2). |
| 5 | **Blueprint 001 is Constituent Services**, not Case Management. Case Management is a Domain Module beneath it (§6, §10). |
| 6 | **Layer 2 is harvested from layer 3** where an implementation exists (§7.1). |
| 7 | **Public sector is the content domain, not the site identity.** `industry` and `government_levels` become optional (§9). |
| 8 | **Maturity, toolkits, and the conversation layer are demoted, not deleted** (§11). |
| 9 | **Name.** Industry Blueprints, unchanged, and now accurate. |
| 10 | **Contribution model.** Single author. `verified` remains self-attestation. |
| 11 | **OKF version.** Pin `0.2`. Review minor bumps deliberately. |

### Still open

* **Domain Module grain.** Is `Case` one module or three (Case, Request, Investigation)? Unanswerable until 002 exists — which is the point of §6.1, but it will be an uncomfortable open question during 001.

* **Where layer 2 physically lives.** Harvesting from the platform repo argues for authoring architecture next to the code; the graph and bundle model argue for authoring it here. Current lean: **specification here, contracts there**, with links rather than copies. Revisit after 001.

* ~~**Whether `Blueprint` needs its own layout or composes existing ones.**~~ **Resolved 2026-08-10 by building it.** The capability page generates the traversal, so no `Blueprint` artifact type is being added. Revisit only if a blueprint needs to say something the graph cannot derive — a narrative order, or a scope that is not one capability.

* **The capability map's future.** 113 capabilities against 4 planned blueprints is a coverage ratio that will look thin once blueprints are the unit. Options: keep it as an honest territory map, narrow it to domains blueprints will plausibly reach, or promote it as a standalone reference. No decision yet; it is not urgent until 002.
