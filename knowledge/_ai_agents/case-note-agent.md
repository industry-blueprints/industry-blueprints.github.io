---
type: AI Agent
title: Case Note Agent
description: Writes the case note from the contact that just happened, marked as machine-drafted,
  and never commits it without the representative saying so.
resource: https://industry-blueprints.github.io/ai-agents/case-note-agent/
tags: [ai-agent, constituent-service, summarization, documentation, provenance]

generated: { by: human:jhofmann, at: 2026-07-29T15:30:00Z }
status: draft
stale_after: 2027-07-29

industry: public-sector
government_levels: [federal, state, county, municipal]
ai_modality: queue
ai_task_type: summarization
minimum_level: 3

relationships:
  - predicate: part_of
    target: /architectures/ai-enabled-constituent-contact-center.md
  - predicate: assists
    target: /personas/customer-service-representative.md
  - predicate: automates
    target: /processes/knowledge-assisted-resolution.md
    note: Covers step 5, recording what was asked and answered
  - predicate: implements
    target: /ai-integrations/contact-summarization.md
  - predicate: constrained_by
    target: /governance/ai-disclosure-and-human-review.md
---

The contact ends. The representative has ninety seconds of writing ahead of them and a queue that
doesn't care. So the note gets abbreviated, and the next person to touch the case re-establishes the
facts from a constituent who has now explained twice.

This agent exists to make that write-up a correction rather than a composition. It is the change
frontline staff most reliably welcome, because it takes work away instead of adding a step.

## What it does

At the end of an interaction, drafts a note against a **defined structure** — what was asked, what
was established, what was done, what remains outstanding — from the transcript or chat log plus the
case context. The representative edits and commits. Nothing reaches the record otherwise.

The structure matters more than the model. Without it, summaries come back as fluent narrative prose
that is pleasant to read and difficult to act on.

## Allowed actions

- Read the interaction transcript or chat log for the contact just completed
- Read case context needed to write a coherent note
- Draft a note against the defined structure
- Mark its own draft as machine-generated
- Present the draft to the representative for editing
- Attribute claims correctly — distinguishing what the constituent *said* from what was *established*
- Flag an outstanding commitment it detected in the conversation
- Log the draft, the transcript reference, and what the representative changed

## Prohibited actions

- **Committing a note to the case record.** Never auto-commit, no matter how confident, no matter
  how deep the queue. The representative commits.
- **Removing the machine-drafted marking.** It is permanent on the record. A later reader must be
  able to tell whether they are reading a person's account or a machine's — this matters when the
  case becomes a complaint, an appeal, or a records request.
- **Converting a claim into a fact.** "Caller states they submitted the form" must never become
  "form was submitted." This is the failure with the longest tail, because the record is later read
  as though a human observed it.
- **Neutralising distress.** Emotionally significant content stays in. Flattening it into procedural
  language loses signal that mattered and may have been the point of the contact.
- **Writing to any record other than the note** it was asked to draft.
- **Summarising a contact it has no consented transcript for.** Recording consent is
  jurisdiction-specific and is frequently the blocking constraint.
- **Producing supervisor-facing output** about the representative.

## Human approval points

| Moment | Who | What they're doing |
|---|---|---|
| Before the note is committed | The representative | Verifying against a conversation they were present for — which is why trust isn't required |
| Where the note records a commitment made to the constituent | The representative | Confirming the commitment is real and owned |
| Periodic sample of committed notes against transcripts | Supervisor or QA | Detecting rubber-stamping, not judging individuals |

There is only one gate that cannot be softened: **the representative commits.** Every other control
here supports that one.

## Escalation conditions

- No usable transcript, or consent absent → produce nothing, tell the representative why
- Conversation involved a determination, refusal, or appeal right → draft, but flag for the
  consequential tier of [AI disclosure and human review](/governance/ai-disclosure-and-human-review/)
- Detected commitment with no owner → surface it rather than burying it in prose
- Safeguarding or distress signals → flag to the representative for the escalation path the
  organization already has

## What to get right

**Watch for confident omission.** The caveat, the conditional, or the commitment the
representative made can get dropped. Fluent and incomplete is much harder to catch than garbled,
which is what makes this the pattern most worth monitoring for.

**Monitor attribution separately.** Covered above, and worth its own check because a single
drifted attribution can change what a case appears to establish.

**Distress flattening.** A frightened person's contact rendered as procedural summary.

**Rubber-stamping.** Under pressure, review becomes clicking accept. Sample committed notes against
transcripts; a correction rate near zero means nobody is reviewing.

**Time reclaimed as target.** If handle-time goals tighten by exactly the time this saves,
representatives disengage and the quality of correction collapses — which removes the only control
that made this safe.

## How to tell if it's working

- Share of cases with a substantive note — should approach 100%
- After-call work time
- Reopened cases where the note was inadequate
- Correction rate on drafts, watched in both directions
- Attribution errors found at sampling, tracked separately as the leading quality signal
- Whether the *next* representative can pick up the case without re-asking the constituent, which is
  the outcome this exists for
