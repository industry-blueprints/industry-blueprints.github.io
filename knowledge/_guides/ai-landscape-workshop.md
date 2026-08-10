---
type: Guide
title: "The AI Landscape Workshop"
description: A half-day method for working out which forms of AI a capability can actually
  support — four modalities on two axes, gated by the maturity the organization has.
resource: https://industry-blueprints.github.io/guides/ai-landscape-workshop/
tags: [guide, workshop, session, ai, modality, facilitation, method, prioritization]

generated: { by: human:jhofmann, at: 2026-07-31T09:00:00Z }
status: draft
stale_after: 2027-07-31

shape: workshop
audience: Service owner, CIO or CDO, and the people who do the work — run per capability

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: explains
    target: /industries/public-sector.md
---

Half a day, run against **one capability at a time**. The room leaves with a shortlist of AI
integrations it can actually support, a list of ones it cannot yet, and the reason for the
difference — which is usually not the one people arrive expecting.

The examples below come from constituent service, but the method works the same way for any
capability: draw the grid, place that capability's own AI integrations onto it, and run the
same steps.

## Why "what AI could we use" is the wrong opening question

It produces a wishlist ranked by enthusiasm, and enthusiasm correlates with what people have
seen demonstrated rather than with what their organization can operate.

The question that produces a decision is **"who initiates it, and who commits the effect?"** —
because that pair, not the technique, determines the governance required, the data required,
and who is accountable when it is wrong.

## Two questions, not a wishlist

Sort every idea in the room by two questions: **what starts it**, and **who is on the hook if
it's wrong**. Four combinations fall out of those two questions, and each gets a name so the room
can talk about them consistently instead of arguing past each other:

|  | **Person commits the effect** | **System commits the effect** |
|---|---|---|
| **Person initiates** | **Assist** | **Delegate** |
| **Event initiates** | **Queue** | **Autonomous** |

Draw it on a whiteboard before showing anyone a use case. The grid does more work than any list.

| Modality | What it looks like | What it needs |
|---|---|---|
| **Assist** | A person asks, reads, and decides. Drafting, rewriting, review before send. | Almost nothing. A person and a browser. |
| **Queue** | Something happens, the system detects or extracts, a person works the result. | Data to detect *on*, and a queue somebody actually works. |
| **Autonomous** | It happens; a person may never see it. | Effects that are reversible or trivially small, and governance saying so *in advance*. |
| **Delegate** | A goal is set, the system plans and acts with tools, effects land before review. | All of the above, plus a tolerance for consequences arriving before anyone checks. |

**Technique is a separate question.** Classification, extraction, summarization, prediction,
anomaly detection — these compose with modality rather than competing with it. The same
prediction model is a different proposition in `queue` than in `autonomous`, and conflating the
two axes is what makes AI conversations circular.

## The finding to open with

Across the AI integrations published in this library, the distribution is not even, and it was
not designed:

| Modality | Count |
|---|---|
| Assist | 2 |
| Queue | 9 |
| Autonomous | 2 |
| **Delegate — agentic** | **1** |

Every one of those integrations was written bottom-up from what a capability actually needs, and
almost none of them came out agentic. Most independently arrived at the same sentence shape:
*surface, don't decide* · *link, don't merge* · *signal, don't assign the tier*. The single
exception —
[auto-sending the first renewal reminder](/ai-integrations/renewal-reminder-auto-send/) — proves
the rule rather than breaking it: it clears the bar for one pre-defined stage of one process, and
stops being delegate the moment the effect stops being reversible.

That is not caution. It is the operating environment showing through:

> An agent is defined by committing effects before a human reviews them. The public-sector
> constraint is that consequential effects require a named accountable human. So agentic lands
> in a narrow band — **reversible, low-consequence, internal** — and most of what gets
> demonstrated as agentic in government sits outside it.

Say this early. It reframes the room from "how do we get to agents" to "which of these four can
we operate," which is the decision actually available.

## The readiness each modality needs

Each modality depends on a different level of readiness, and that's the second thing to put on
the wall:

- **Assist** needs no integrated systems at all, which is why it's the one modality almost every
  organization can start on this quarter.
- **Queue** needs data that's already connected across systems — a model can't detect on data
  nobody has integrated yet.
- **Autonomous** needs that same integration, plus the discipline to say, in advance and in
  writing, that a given effect is safe to let happen without a person reviewing it first. That's
  a governance-readiness problem, not a model-quality one — see the
  [maturity rubric](/maturity-rubrics/constituent-service/).
- **Delegate** needs all of the above, plus an appetite for risk that most public organizations
  don't have and shouldn't be talked into.

**Readiness is a ladder, not a menu.** An organization that hasn't scored where it actually
stands cannot run this workshop honestly, which is why the first precondition below is not
negotiable.

## Preconditions

| Precondition | Why | If missing |
|---|---|---|
| The capability's maturity is already scored | Without it, there's no way to tell which modality is actually reachable | Run the rubric first. This session will otherwise produce a wishlist. |
| The capability has published AI integrations | Otherwise there is nothing concrete to sort | Use the empty cells as the agenda instead — see below |
| Someone who does the work is present | They know which "effects" are actually reversible | You will get plausible answers about consequence |
| Someone who owns the data is present | Queue and above are data questions, not model questions | Prerequisites surface after commitment |

## Run of the session

| | Segment | Time | Output |
|---|---|---|---|
| 1 | Draw the grid; state the near-zero-agentic finding | 20 min | A shared frame |
| 2 | Place this capability's existing integrations | 30 min | The grid, populated |
| 3 | Check each idea against what's actually reachable | 25 min | Reachable vs. not, with reasons |
| — | Break | 15 min | |
| 4 | **The reversibility test** on anything in the right column | 40 min | Autonomous candidates, honestly assessed |
| 5 | The empty cells | 25 min | Either a gap worth filling or a boundary worth stating |
| 6 | Pick two, name owners | 25 min | Two integrations, two names, two dates |

## 4 · The reversibility test

The longest segment, and the one that earns the workshop.

For anything the room wants to put in the **system commits** column, work through three
questions in order. All three must pass.

1. **If it is wrong, what happens before anyone notices?** Not "can we undo it" — what *occurs*
   in the interval.
2. **Who finds out that it was wrong, and how?** An error nobody detects is not reversible in
   any useful sense, whatever the database permits.
3. **Who is accountable for the effect while it is happening?** If the answer is "the system"
   or "nobody," it does not go in the right column.

Three published examples show what passing looks like, and all three are instructive because the
boundary is drawn *inside* the use case rather than around it:

- [Work request triage and duplicate detection](/ai-integrations/work-request-triage-and-duplicate-detection/)
  is autonomous — but **classify and link, never merge or close.** A link is reversible; a merge
  is not, and a wrongly merged report means a second real defect goes unrecorded.
- [Subrecipient risk signals](/ai-integrations/subrecipient-risk-signals/) deliberately stays in
  `queue`: it surfaces signals and **stops short of assigning the risk tier**, because the tier
  determines how intensively an organization is scrutinized.
- [The first renewal reminder](/ai-integrations/renewal-reminder-auto-send/) is the delegate
  case, and the cut runs through time rather than through task: the same communication, for the
  same authorization, passes the test ninety days before expiry and fails it once the deadline
  has passed and the notice starts to function as an enforcement action.

The lesson to draw out: **the modality is often a property of where you cut the use case, not of
the use case itself.** A room that cannot get something into `autonomous` can frequently get
*part* of it there.

## 5 · The empty cells

An empty cell is a finding, and there are only two kinds. Make the room say which:

- **A gap.** Nobody has thought about it. This becomes a work item.
- **A boundary.** It is empty because it *should* be, and the reason is worth writing down —
  it is the most reusable output of the day, and it will be asked about again in six months by
  someone who was not here.

Do not let an empty cell pass as "we'll look at it later." That is how the boundary gets
re-litigated every quarter.

## What to get right

**Anchor every placement to something real.** Tie each grid entry to a published integration or
a specific piece of work someone in the room does, instead of what people wish were true.

**Take the readiness check seriously.** It's there because organizations that reach for the
upper rungs before the basics are in place get confident, well-formatted, wrong answers at
scale — and a stronger foundation first is what makes the upper rungs reachable at all.

**Treat "agentic" as one modality among four, not a destination.** It has a narrow viable band.
A capability running excellent `queue` integrations is doing exactly what it should.

**Keep technique out of the room.** Whether it is a classifier or an LLM is a build decision for
later — this session is about who's accountable, not how it's built.

**Leave with names attached.** Two integrations, two owners, two dates, written down before
the room clears — that's what turns the session into follow-through.
