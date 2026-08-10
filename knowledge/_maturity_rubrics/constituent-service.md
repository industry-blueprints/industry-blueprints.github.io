---
type: Maturity Rubric
title: Constituent Service Maturity Rubric
description: A five-level, seven-dimension rubric for locating an organization's
  constituent service capability — written to be self-scored in a workshop.
resource: https://industry-blueprints.github.io/maturity-rubrics/constituent-service/
tags: [constituent-service, maturity, assessment, workshop]

generated: { by: human:jhofmann, at: 2026-07-26T15:00:00Z }
status: draft
stale_after: 2027-07-26

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: assesses
    target: /capabilities/constituent-service-management.md
---

This rubric exists to be used out loud, with the people who do the work, in about forty
minutes. It is not a scoring instrument and produces no number.

Two rules make it usable:

- **Score by observation, not aspiration.** The question is never "do we have a knowledge
  base" but "when a representative got an unusual question last Tuesday, what did they
  actually do?"
- **Score each dimension separately.** Nobody is uniformly at one level. The gaps between
  dimensions are the most useful output of the exercise — an organization with level-4
  channels and a level-1 case record has a specific, nameable problem.

## The levels

| | Level | In one line |
|---|---|---|
| 1 | **Manual** | The organization responds, but nothing is systematically captured. |
| 2 | **Digitized** | Individual channels and departments have systems. They do not talk. |
| 3 | **Integrated** | One case record spans channels and departments. Work is visible. |
| 4 | **Intelligent** | The system actively assists — classifying, drafting, surfacing, flagging. |
| 5 | **Adaptive** | The service reshapes itself from what it learns, with demand falling. |

## Observable characteristics by dimension

<div class="table-scroll" markdown="1">

| Dimension | 1 — Manual | 2 — Digitized | 3 — Integrated | 4 — Intelligent | 5 — Adaptive |
|---|---|---|---|---|---|
| **Channels & intake** | Phone and walk-in. Web enquiries go to a shared mailbox someone checks. | Web forms exist per department, each writing to its own list. Phone has a queue system. | All channels create a record in one system. A person switching channels is recognized. | Intent is captured at intake and routed without a human triage step. Self-service handles routine requests end to end. | Channel mix shifts automatically with demand; new request types are stood up by service owners, not IT. |
| **Case record** | No case record. A notebook, a spreadsheet, or an email thread. | A record exists in each department's system. The same person appears as three records. | One case record per request, shared across departments, with full interaction history. | The record is populated by the system — contact summaries, classifications, and linkages written automatically. | The record links related cases and prior contacts across the whole organization without being asked. |
| **Knowledge** | In people's heads. New staff learn by sitting next to someone. | An intranet page or shared drive of documents. Last reviewed at unknown date. | A governed knowledge base with named owners, review dates, and staff-facing search. | Answers are retrieved and drafted from governed knowledge at the moment of contact, with citations. | Gaps are detected from unresolved contacts and routed to owners; content decays visibly and gets refreshed. |
| **Routing & resolution** | Whoever picks up either knows the answer or walks down the hall. | Routing by menu choice or which form was used. Misroutes get closed and restarted. | Rules-based routing with skills and workload. Misroutes are transferred with context, not restarted. | Classification and routing are automated with confidence thresholds; low-confidence items go to a human. | Routing adapts to observed resolution rates; work is rebalanced before backlogs form. |
| **Measurement** | Anecdote. Volume estimated from memory. | Phone-system metrics: handle time, abandonment. Nobody can say whether problems were solved. | Resolution, reopen rate, and backlog age measured on the case record. Reported regularly. | Quality is sampled across all contacts, not a hand-picked few. Drivers of repeat contact are identified. | Measurement is segmented by language, channel, and geography, and disparities trigger review. |
| **Governance & records** | Retention is informal. Nobody is certain what must be kept. | Retention exists on paper. Applied inconsistently per system. | Retention, privacy, and accessibility requirements are implemented in the case system and audited. | AI assistance is inventoried, disclosed to constituents, and has defined human-review points. | Controls are continuously evidenced rather than periodically audited; changes are governed by default. |
| **Workforce** | Staff cope through individual expertise. Attrition is a crisis. | Training exists but is front-loaded; supervisors coach from a handful of listened-to calls. | Defined roles, tiering, and QA. Coaching is regular and evidence-based. | Staff are supported in real time; new staff reach competence substantially faster. | Roles shift toward complex and sensitive work as routine volume falls. |

</div>

## Diagnostic questions

Discuss these together — rather than asking people what level they think they're at.

**Channels & intake**
- If a person emails on Monday and calls on Wednesday, does the representative on Wednesday know about Monday?
- How many separate places can a request enter the organization? Count honestly, including the shared mailbox.

**Case record**
- Show me everything the organization knows about one person's request. How many systems did we open?
- When a case moves between departments, what carries over — and what gets re-typed?

**Knowledge**
- A representative gets a question they have not seen before. Walk me through the next sixty seconds.
- Who owns the answer to that question? When did they last look at it?

**Routing & resolution**
- What happens to a request that arrives in the wrong place?
- What fraction of contacts are people contacting us again about something they already raised? How do you know?

**Measurement**
- Can you tell me how many people got their problem solved last month? Not how many calls you took.
- How many contacts get a quality review? Who chooses which ones?

**Governance & records**
- If someone requests all records about their interactions with us, how long does that take?
- Where AI is used, does the person know? Who reviews its output before it reaches them?

**Workforce**
- How long until a new hire can handle a call unsupervised?
- When did a supervisor last coach someone using something other than their own memory?

## The barriers between levels

Where organizations actually get stuck, and what unblocks them.

**1 → 2 · Getting anything written down.** Rarely a technology problem. The barrier is
usually that the work is invisible to the people who fund it, so there is no case for
investment. What unlocks it: measuring volume for one month, by hand if necessary.

**2 → 3 · The integration wall.** The expensive one, and where most organizations stall for
years. Departments own their systems, procurement cycles are misaligned, and nobody owns
the shared case record. What unlocks it: naming a single owner for the case record before
buying anything, and accepting a shared record with fewer fields over a perfect one that
never ships.

**3 → 4 · Governance readiness, not model quality.** The technology is available and
affordable. The barrier is that AI assistance requires knowing what your knowledge says,
who owns it, when it was reviewed, and what a representative is permitted to send without
review — all of which are level-3 disciplines. Organizations that attempt this from level 2
generate confident, well-formatted, wrong answers at scale. What unlocks it: a governed
knowledge base with named owners, and defined human-review points.

**4 → 5 · Organizational, not technical.** Requires being willing to act on what the data
says — reallocating staff, retiring services, changing policy. Most organizations can see
level 5 long before they are permitted to do it.

## Using this in a session

1. Put the seven dimensions on a wall. Score each one, out loud, with the people who do the work.
2. Expect disagreement between managers and front-line staff. That disagreement is data — the
   front-line score is usually the accurate one.
3. Identify the *lowest* dimension. It generally caps the value of everything above it.
4. Only then look at [AI integrations](/ai-integrations/) — filtered to the level you
   actually scored, not the one you would like to be.

## Calibration status

**These level descriptions are written from research and are not yet validated against real
organizations.** They are plausible; that is not the same as correct. The rubric stays a draft
until it has been walked through with at least three organizations across different government
levels, and the observable characteristics adjusted to match what people actually recognize in
themselves.

Treat disagreement from a real organization as a defect in the rubric, not in the organization.
