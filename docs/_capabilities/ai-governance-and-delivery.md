---
id: ai-governance-and-delivery
title: AI Governance & Delivery
type: capability
level: 2
version: '0.1'
status: draft
description: Knowing what AI the organization is using, deciding what it may use it
  for, and being able to explain any of it afterwards.
last_updated: '2026-08-11'
capability_area: inform
industries:
- public-sector
tracks:
- business
- experience-process
- information
- architecture
- trust-governance
- ai-automation
relationships:
  builds_on: []
  personas: []
  adds: []
---

## Business definition
To maintain a truthful inventory of where AI is used, assess each use against its consequence to
the public, define who reviews what before it reaches anyone, and retain enough evidence to
explain a decision after the fact.

**Governance here is a precondition, not a control layer applied afterwards.** The prerequisites —
governed content, defined ownership, known data quality — belong to
[data governance](/capabilities/data-governance-and-stewardship/) and
[records management](/capabilities/records-and-information-management/). Attempting AI delivery
without them produces confident, well-formatted, wrong output at scale.

## Desired outcomes

- An inventory that reflects what is actually in use, including tools nobody approved
- Each use tiered by consequence to the person affected
- Human review points defined where consequence is real, and not where it is not
- Disclosure to constituents where they are interacting with an automated system
- Outputs reproducible and attributable long after the decision
- Evaluation that continues in production, not only before launch

## Lifecycle
Use-case intake and registration · risk and consequence tiering · impact assessment · human
oversight design · pre-deployment evaluation · disclosure design · production monitoring and
drift detection · incident handling · periodic review and retirement · staff guidance on
permitted tool use

## Domain model
AI use-case inventory with owner and tier · assessments and their conclusions · evaluation
results over time · human review and override records · disclosure text by channel · provenance
markers on generated content · audit log of inputs, outputs, and approvals

## Measures

| Measure | Class |
|---|---|
| Registered uses versus discovered unregistered uses | Process |
| Uses with a named accountable owner | Process |
| Consequential uses with enforced human approval | Process |
| Override rate by reviewers | Process |
| Evaluation results, segmented by language and channel | Process |
| Reproducibility of a sampled past decision | Process |
| Public trust in automated interactions | Outcome |

**Override rate near zero is a warning, not a success.** It usually means review has become
rubber-stamping — see contact summarization.

## Level variance

- **Federal.** Formal use-case inventory and risk-management obligations with defined agency
  roles, and published inventories.
- **State.** Several states have enacted AI-specific statutes with genuine divergence between
  them, including on disclosure. Verify locally rather than assuming a federal analogue.
- **County / municipal.** Frequently no AI policy, which is not the same as no obligation —
  records, privacy, accessibility, and language access duties apply to AI output exactly as to
  any other. Absence of policy is a gap, not a permission.

## What good governance looks like

**Assume the inventory is incomplete, and go looking for what is missing.** Staff use
general-purpose tools individually. The registered inventory reflects funded projects; actual use
is much broader and includes constituent information pasted into consumer products.

**Design governance into the build, not as a gate at the end.** A review board that only sees
systems after they are built and announced has two options left: yes or crisis.

**Tier review by consequence rather than applying it uniformly.** "A human reviews everything" is
ignored under load and wastes capacity on trivial output. Tier by consequence — see
AI disclosure and human review.

**Keep evaluating after launch, not just at it.** Content, models, and populations drift; nothing
gets re-measured if evaluation stops at go-live.

**Evaluate by segment, not just in aggregate.** A system can be accurate overall and materially
worse for non-native speakers or a particular channel. Segmented evaluation is the control.

**Build in reproducibility from the start.** A recommendation that influenced a decision and
cannot be reconstructed is not merely an explainability gap — it makes the audit impossible to
complete.
## Architecture

The architecture boundary for this capability follows the responsibilities, lifecycle, and
information described above. A dedicated architecture artifact has not yet been developed for
this inventory entry.

## Trust and governance

Trust concerns include authority to act, access to operational records, accountable decisions,
retention, and an auditable history. Applicable controls vary with the workload, jurisdiction,
and information sensitivity; a dedicated trust model has not yet been developed for this draft.

## AI and automation

AI and automation opportunities have not yet been evaluated for this capability. Future
patterns remain bounded by the authority, access, decision, and audit controls of the
underlying work.
