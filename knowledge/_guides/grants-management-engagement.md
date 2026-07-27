---
type: Guide
title: "Starting a Grants Management Engagement"
description: What to read, who to get in the room, the ten questions that establish
  where an organization actually is, and the order to work through it in.
resource: https://industry-blueprints.github.io/guides/grants-management-engagement/
tags: [guide, engagement, grants, discovery, workshop]

generated: { by: human:jhofmann, at: 2026-07-27T18:00:00Z }
status: draft
stale_after: 2027-07-27

shape: engagement
audience: Implementation lead, consultant, or systems integrator opening work with a customer

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: explains
    target: /capabilities/grants-management-outbound.md
  - predicate: explains
    target: /capabilities/grants-management-inbound.md
---

You have a first session with a customer on grants and roughly a day to prepare. This is the
order to do it in.

**This guide contains no facts of its own.** Everything it asserts belongs to an artifact it
links to. What it adds is sequence — which of thirty artifacts matter in a first meeting, and
which matter in month three.

## Before the room: ninety minutes

Read three things, in this order.

1. **[Grants Management (Outbound)](/capabilities/grants-management-outbound/) and
   [(Inbound)](/capabilities/grants-management-inbound/)** — specifically the *current state*
   sections, not the desired outcomes. You need to be able to describe their day back to them
   before you propose anything.
2. **[The grants data model](/data-models/grants-data-model/)**, for one structural fact: a
   subaward is a [Grant Award](/data-entities/grant-award/) whose parent is another award. Most
   of what goes wrong downstream is downstream of not modelling that.
3. **[Merit review integrity](/governance/merit-review-integrity/)** or
   **[subrecipient monitoring](/governance/subrecipient-monitoring/)**, depending on which side
   they are on. You want to know where the hard constraints are before someone tells you a
   constraint that isn't one.

Skip the AI opportunities for now. There is a reason, in "When to raise AI" below.

## The first fork

**Establish inbound versus outbound in the first ten minutes**, because it changes every
question after it.

| They are | Means | Where to point |
|---|---|---|
| Receiving only | Municipal or small county. Compliance burden without discretion. | [Inbound](/capabilities/grants-management-inbound/) |
| Awarding only | Rare in isolation; usually federal. | [Outbound](/capabilities/grants-management-outbound/) |
| **Both — a pass-through** | Almost every state, most counties. Receives federal money, subawards it, and inherits the obligation to flow conditions down and monitor. | **Both, and the self-reference in the model** |

A state agency is always the third case. If your scope was written as "grants management" without
that distinction, it is wrong in a way that will surface in month two, and this is the cheapest
moment to fix it.

## Who is in the room

| Bring | Because |
|---|---|
| [Grants manager](/personas/grants-manager/) | Owns the lifecycle and the compliance regime. Will be the most accurate person present. |
| [Program manager](/personas/program-manager/) | Owns the outcome the money is for. Frequently disagrees with the grants manager about burden, productively. |
| [Budget director](/personas/budget-director/) | Owns match, cash flow, and the funding cliff. Often the only person who knows the true cost. |
| [Internal auditor](/personas/internal-auditor/) | Knows what has already been found. Cheapest source of current-state truth in the building. |

**The one who usually isn't there is the [recipient](/personas/grant-recipient/).** Every design
decision in this capability trades oversight against recipient burden, and a room with only the
funder in it will optimize one side and not notice. If you cannot get a recipient into the
session, read that persona page before you go and be prepared to argue their position yourself.

## Ten questions

Each one is a probe, not a data request. What matters is usually whether they can answer at all.

1. **"Are you receiving, awarding, or both?"** — the fork above.
2. **"How many awards are open past their period of performance?"** Closeout happens when someone
   notices. An organization that cannot produce the number has the answer: too many.
3. **"What are your awarded, obligated, disbursed, and expended totals?"** These are
   [four different numbers](/data-entities/grant-award/). If they can only produce one, the data
   model is the binding constraint and you now know your first workstream.
4. **"When a recipient has a finding, how do you know whether they had one last year in a
   different programme?"** Usually they don't — risk is attached to the award instead of the
   party. This is [a modelling decision, not a monitoring one](/data-models/grants-data-model/).
5. **"Who sets monitoring intensity, and on what basis?"** Uniform monitoring is easier to defend
   than proportionate monitoring. See [risk-based monitoring](/patterns/risk-based-monitoring/)
   and [monitoring coverage](/kpis/subrecipient-monitoring-coverage/).
6. **"Show me the last funding notice. How was it distributed?"** If the answer is a mailing list
   of prior recipients, [first-time applicant share](/kpis/first-time-applicant-share/) is the
   measure that makes it visible.
7. **"When the funded list differs from the ranked list, where is the reasoning written down?"**
   Often nowhere. Handle carefully — see below.
8. **"On the last award you accepted, what did the match actually cost?"** In-kind staff time is
   real and unbudgeted. This question tends to be the one the budget director came for.
9. **"Which reports come out of the ledger, and which are assembled by hand?"** Three funders,
   three category schemes, three reports from one set of activity. See
   [drawdown, reporting and closeout](/processes/drawdown-reporting-and-closeout/).
10. **"What happens in year four?"** The cliff. Frequently the first time the question has been
    asked out loud.

### Question 7 needs care

The gap between the ranked list and the funded list is the most sensitive thing you will ask
about, and the reflex is to treat it as misconduct. It usually isn't. Geographic distribution,
portfolio balance, and prior relationships are legitimate programme considerations.

**The defect is that the reasoning is unrecorded, not that it exists.** Frame it that way and you
get a real conversation; frame it as an integrity problem and you get a closed room for the rest
of the engagement.

This generalizes: every current-state description in this library pairs with a *why it works that
way*. Read those before you characterize anything as dysfunction.

## Working order

Roughly a session each. The sequence is deliberate — each stage is unusable without the one above.

| # | Focus | Artifacts | You are trying to establish |
|---|---|---|---|
| 1 | Scope and current state | The two capability pages | Which side, and where the pain actually is versus where it is reported |
| 2 | Process | [Pursuit](/processes/grant-pursuit-and-acceptance/) · [Notice and intake](/processes/funding-notice-and-application-intake/) · [Merit review](/processes/merit-review-and-award-decision/) · [Monitoring](/processes/subrecipient-risk-and-monitoring/) · [Reporting and closeout](/processes/drawdown-reporting-and-closeout/) | Which stages are load-bearing for them; where the handoffs drop |
| 3 | Data | [Grants model](/data-models/grants-data-model/) over the [core](/data-models/core-public-sector-model/) | Whether pass-through is representable, and where risk attaches |
| 4 | Measures and governance | [Time to award](/kpis/time-to-award/) · [repeat findings](/kpis/repeat-finding-rate/) · [coverage](/kpis/subrecipient-monitoring-coverage/) · [first-time applicants](/kpis/first-time-applicant-share/), against the two governance controls | What they would need to be true to know this worked |
| 5 | AI | The three opportunities below | What is reachable — which may be nothing yet |

If time collapses to two sessions, keep 1 and 3. Process detail can be gathered asynchronously;
the data-model conversation cannot, because it needs the disagreement in the room.

## When to raise AI

Last, and with the prerequisites stated. Not because AI is unimportant here — grants is
genuinely well suited to it — but because all three opportunities in this library presuppose
capability the organization may not have:

| Opportunity | Needs level | What that means concretely |
|---|---|---|
| [Application completeness screening](/ai-opportunities/application-completeness-screening/) | 3 | Applications as structured [Application](/data-entities/application/) records, not a mailbox of documents |
| [Cross-report consistency](/ai-opportunities/cross-report-consistency/) | 3 | Expenditure coded to award and category when incurred |
| [Subrecipient risk signals](/ai-opportunities/subrecipient-risk-signals/) | 4 | Recipient history visible across programmes — question 4 |

**An organization at level 2 has nothing on this list available**, and the honest first move is
the data model. Saying so in the first session costs you a moment of enthusiasm and buys you the
rest of the engagement; discovering it in month five costs considerably more.

Note also that the boundary is sharper here than almost anywhere in this library. Merit scoring
and risk-tier assignment both decide who receives public money. Automation may surface, extract,
and check. It may not decide. Have [merit review integrity](/governance/merit-review-integrity/)
open when this comes up, because it will.

## Three decisions to land

Everything else can be deferred. These cannot, because reversing them later is expensive:

1. **Is pass-through in scope?** If they are a state, it already is, whether or not anyone said
   so. Getting this wrong sets the scope of the data model incorrectly from day one.
2. **Does risk attach to the party or the award?** The single change that makes proportionate
   monitoring possible, and it is structural.
3. **Is closeout triggered automatically at end of period of performance?** Cheap to decide now,
   and the alternative is the open-award backlog they could not quantify in question 2.

## What to leave behind

The customer should end the first session holding:

- Which side of the capability they are on, written down, with pass-through explicitly in or out
- The four-number question, unanswered, as their own homework
- Two or three measures they agree would tell the truth — not a scorecard
- The three decisions above, with owners
- A link to whichever capability page describes them, so they can check whether you understood
  their day correctly

Notably **not** an AI roadmap. If the room wants one, the reachable-level table is the honest
version of it.

## Where engagements go wrong

**Leading with AI.** Produces a level-4 roadmap for a level-2 organization, and the credibility
loss is not recoverable in the same engagement.

**Only the compliance voice in the room.** Requirements accrete and are never removed. A session
attended solely by the people accountable for controls will add controls.

**Scoping to outbound when they are a pass-through.** Discovered in month two, always.

**Treating the current state as incompetence.** Nearly every dysfunction here has a reason — a
statute, an audit finding, a system that cannot do the thing. The *why it works that way*
sections exist for this meeting.

**Assuming the recipient's burden is somebody else's problem.** The organization is accountable
for outcomes produced by organizations it does not manage. Designs that ignore the recipient's
capacity fail at the recipient, which is to say they fail.

---

*If this customer also runs procurement, read the
[competitive award parallel](/data-models/procurement-data-model/) before the second session.
Solicitation and funding opportunity, response and application, evaluation and review are the
same shapes under different names, and an organization building either usually already has most
of the other.*
