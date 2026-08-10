---
type: Capability
title: AI Governance & Delivery
description: Knowing what AI the organization is using, deciding what it may use it
  for, and being able to explain any of it afterwards.
resource: https://industry-blueprints.github.io/capabilities/ai-governance-and-delivery/
tags: [capability, ai, governance, risk, oversight, responsible-ai]

generated: { by: human:jhofmann, at: 2026-07-27T11:30:00Z }
status: draft
stale_after: 2027-01-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/inform.md
  - predicate: has_participant
    target: /personas/chief-data-officer.md
    note: Usually inherits the AI inventory by default rather than by design
  - predicate: has_participant
    target: /personas/privacy-officer.md
  - predicate: has_participant
    target: /personas/chief-information-officer.md
  - predicate: has_participant
    target: /personas/internal-auditor.md
    note: Needs to reproduce what a system produced at the time a decision was made
---

## Purpose

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

## Key processes

Use-case intake and registration · risk and consequence tiering · impact assessment · human
oversight design · pre-deployment evaluation · disclosure design · production monitoring and
drift detection · incident handling · periodic review and retirement · staff guidance on
permitted tool use

## Key data

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
rubber-stamping — see [contact summarization](/ai-integrations/contact-summarization/).

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
[AI disclosure and human review](/governance/ai-disclosure-and-human-review/).

**Keep evaluating after launch, not just at it.** Content, models, and populations drift; nothing
gets re-measured if evaluation stops at go-live.

**Evaluate by segment, not just in aggregate.** A system can be accurate overall and materially
worse for non-native speakers or a particular channel. Segmented evaluation is the control.

**Build in reproducibility from the start.** A recommendation that influenced a decision and
cannot be reconstructed is not merely an explainability gap — it makes the audit impossible to
complete.
