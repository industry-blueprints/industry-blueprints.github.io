---
type: Governance Control
title: AI Disclosure and Human Review in Constituent Communication
description: When a constituent must be told that AI was involved, and what a human
  must check before AI-produced content reaches them.
resource: https://industry-blueprints.github.io/governance/ai-disclosure-and-human-review/
tags: [responsible-ai, governance, human-oversight, disclosure, constituent-service]

sources:
  - id: nist-airmf
    resource: https://www.nist.gov/itl/ai-risk-management-framework
    title: NIST AI Risk Management Framework
  - id: a11-280
    resource: https://www.performance.gov/cx/
    title: Federal customer experience measurement framework (OMB Circular A-11 §280)

generated: { by: human:jhofmann, at: 2026-07-26T15:00:00Z }
status: draft
stale_after: 2027-01-26

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: constrains
    target: /ai-opportunities/intent-classification-and-routing.md
  - predicate: constrains
    target: /ai-opportunities/contact-summarization.md
  - predicate: constrains
    target: /patterns/grounded-knowledge-retrieval.md
---

> **Verification status: unverified.** The control objective and the risk analysis below are
> stable, but the specific legal instruments that apply differ by jurisdiction and have
> changed repeatedly — federal AI governance policy was revised more than once across
> 2024–2025, and state AI statutes are actively being enacted. **Confirm the current
> applicable requirements for your jurisdiction before relying on this artifact.** The
> sources listed are starting points, not a compliance basis.

## Control objective

A constituent interacting with a government service can tell whether they are dealing with a
person or a system, and no AI-produced content that affects their understanding of their
rights, obligations, or entitlements reaches them without a human being accountable for it.

## Why this control exists

Constituent service sits on an uncomfortable boundary. Most of what happens is genuinely
low-risk — telling someone their collection day, explaining where to park. But the same
channel carries interactions that are consequential: a deadline, an appeal right, an amount
owed, a reason for refusal.

The risk is not that AI produces obvious nonsense. It is that it produces fluent,
well-formatted, plausible content that is wrong in a specific detail, delivered through a
channel the person reasonably treats as authoritative. Government communication carries an
implied warranty that a chatbot's does not, and constituents cannot see which one they are
receiving unless told.

## Risks addressed

- A person acts on incorrect information and misses a deadline or forfeits an entitlement.
- A person believes they have received a determination when they have received a suggestion.
- Content is produced that the organization cannot explain or reproduce when challenged.
- Reliance on AI output compounds silently — a wrong summary written into a case record is
  treated as fact by every subsequent reader.
- Disparate quality of output across languages, dialects, or communication styles.

## The tiering that makes this workable

A blanket "human reviews everything" rule fails immediately: it is ignored under queue
pressure, and it wastes review capacity on content that does not need it. Tier by consequence.

| Tier | Examples | Disclosure | Human review |
|---|---|---|---|
| **Internal only** | Classification, routing, prioritization, duplicate linking | Not required to constituent | Human handles low-confidence cases; sample audit of the rest |
| **Staff-facing draft** | Suggested answer, contact summary, retrieved article | Not required — staff know | Representative verifies before use. Sources must be visible |
| **Constituent-facing, informational** | Status update, opening-hours answer, self-service response | **Required** — the person is told they are interacting with an automated system | Sample audit; escalation path to a human always offered |
| **Constituent-facing, consequential** | Anything stating a deadline, amount, eligibility, refusal, or appeal right | **Required** | **Named human approves before sending.** No exceptions, no auto-send |

The line between the last two tiers is the one that matters, and it is drawn by consequence
to the person, not by confidence score.

## Required controls

1. **A named accountable human** for every constituent-facing AI output at the consequential
   tier. Named on the record, not "the team."
2. **Disclosure at the start** of an automated interaction, in plain language, in the person's
   language — not in a footer or terms page.
3. **An always-available route to a person.** Disclosure without an escape hatch is a warning,
   not a control.
4. **Visible grounding.** Staff-facing output shows which source produced it. An answer with
   no source is a failure state and must present as one — see
   [grounded knowledge retrieval](/patterns/grounded-knowledge-retrieval/).
5. **Provenance on the case record.** AI-generated content is marked as such, permanently, so
   that later readers know what they are relying on.
6. **Refusal over fabrication.** Configured to decline when governed content does not cover
   the question. A visible gap is recoverable; a confident wrong answer is not.
7. **Quality sampling across languages and channels**, not aggregate only — aggregate accuracy
   can be acceptable while a specific population is served badly.
8. **A logged, reversible record** of what was generated, from what sources, and who approved it.

## Required evidence

- Inventory of AI uses in the constituent channel, with tier assigned to each.
- Named accountable owner per consequential use.
- Disclosure text, and evidence it is presented at the start of the interaction.
- Sampling results segmented by language and channel.
- Audit log demonstrating retention and reproducibility.

## Level variance

- **Federal.** Formal AI use-case inventory and risk-management obligations apply, and the
  categories used there may not map cleanly onto the tiers above — reconcile rather than
  duplicate. Plain-language and accessibility obligations apply independently.
- **State.** Increasingly governed by state-specific AI statutes with real divergence between
  states, including on disclosure wording. Verify locally; do not assume a federal analogue.
- **County / municipal.** Frequently no explicit AI policy, which is not the same as no
  obligation — general records, privacy, accessibility, and language access duties apply to
  AI-produced content exactly as they do to any other. Absence of a policy is a gap to close,
  not a permission.

## Review frequency

Every six months, and immediately on any change to the underlying legal framework or to the
tier assignment of an existing use. This is the fastest-moving content in the library, which
is why it carries the shortest freshness window.
