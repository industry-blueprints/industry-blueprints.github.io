---
type: Playbook
title: "Constituent Service, Level 2 → 3: Build the Shared Case Record"
description: Getting from departmental systems that don't talk to one case record
  that spans channels and departments — the transition most organizations are stuck on.
resource: https://industry-blueprints.github.io/playbooks/constituent-service-level-2-to-3/
tags: [playbook, constituent-service, integration, case-management, workshop]

generated: { by: human:jhofmann, at: 2026-07-26T15:00:00Z }
status: draft
stale_after: 2027-07-26

industry: public-sector
government_levels: [federal, state, county, municipal]
from_level: 2
to_level: 3

relationships:
  - predicate: transforms
    target: /capabilities/constituent-service-management.md
---

The expensive transition, and the one where most organizations stall for years. It is also
the one that cannot be skipped: every level-4 capability — assisted answers, automated
routing, summarization — depends on a case record that spans channels and a knowledge base
with owners.

There's no AI anywhere in this plan, on purpose. Organizations that try to add AI assistance
before this work is done don't fail because the models are inadequate — they fail because
there's nothing coherent yet to ground the models in.

## Objective

One case record per request, shared across channels and departments, with governed knowledge
behind it and resolution measured honestly.

## Intended audience

Contact centre director as owner; CIO as sponsor; department directors as the parties who
must give something up. That last group is why this is hard, and they belong in the room from
the first session.

## Prerequisites

- The [maturity rubric](/maturity-rubrics/constituent-service/) has been scored honestly,
  with front-line staff present.
- An executive sponsor who can settle a dispute between departments.
- Acceptance that the reported resolution rate will get *worse* before it gets better — see
  [first contact resolution](/kpis/first-contact-resolution/). Secure this in writing at the
  start. It is the most common reason programmes get cancelled at month nine.

## Expected outcomes

| | Before | After |
|---|---|---|
| A person switching channels | Starts over | Is recognized, with history |
| A misrouted request | Closed, person restarts | Transferred with context, tracked |
| "How many problems did we solve?" | Unanswerable | Measured, segmented, trended |
| A representative's unusual question | Asks a colleague | Finds an owned, dated answer |
| Aging cases | Found by escalation | Visible on a queue |

## Phases

### Phase 1 — Agree the case record (4–6 weeks)

The only phase that genuinely must come first, and the one most often skipped in favour of
procurement.

**Activities.** Name a single accountable owner for the shared case record — a person, not a
committee. Define the minimum viable record: constituent identity, service type, channel,
timestamps, status, owner, interaction history, resolution. Resist every field beyond that.
Agree the identity resolution rule that lets the same person be recognized across channels.

**Decisions required.** Who owns the case record. What the minimum record is. How constituent
identity is resolved. What happens to departmental systems that will not integrate.

**Exit criteria.** A written record definition, an owner named on it, and every department
director having seen and objected to it. Unvoiced objections surface during migration, at
ten times the cost.

> **This is the step that pays off the most.** Settling the ownership question in week three,
> before any buying starts, avoids two years of renegotiating a record model that a vendor's
> system already shipped with sunk costs attached.

### Phase 2 — Fix the taxonomy (4–8 weeks, parallel)

**Activities.** Rebuild the service catalogue around problems people have rather than around
the org chart. Test every category against real contact samples. Publish an ownership matrix
covering requests belonging to other organizations. Define priority criteria that are written
down and defensible.

**Deliverables.** Service catalogue. Ownership matrix, including external referral targets.
Published priority criteria.

**Exit criteria.** A sample of 100 real contacts classifies cleanly, with an "Other" rate
below 10%. If it does not, the catalogue is not finished — and no amount of later automation
will fix it. See [triage and routing](/processes/triage-and-routing/).

### Phase 3 — Govern the knowledge (8–12 weeks, parallel)

**Activities.** Inventory existing content, including the private documents staff actually
use — ask for them without consequence, they are the real knowledge base. Assign a named
owner and review date to every article. Retire or mark superseded content. Get search latency
under fifteen seconds end to end. Build a one-click gap flag from the case, routed to the
content owner.

**Deliverables.** Content inventory with owners and review dates. A retirement list. A working
gap queue with a named recipient.

**Exit criteria.** Every live article has an owner and a review date; the gap queue has
received and closed at least one item. This phase is unglamorous, is the foundation of
everything at level 4, and is the first thing cut when the schedule slips. Protect it.

### Phase 4 — Integrate channels (12–20 weeks)

**Activities.** Route every channel into the shared record — including the shared mailbox
nobody counts as a channel. Implement identity resolution. Make transfer carry context.
Convert referral from a closure code into a tracked outcome.

**Exit criteria.** A contact in any channel creates or updates the shared record; a transfer
demonstrably carries context; a referral can be followed to an outcome.

### Phase 5 — Measure honestly (4 weeks, then continuous)

**Activities.** Implement first contact resolution against the shared record with an agreed
follow-up window and "same matter" rule. Instrument backlog age. Segment by service type,
channel, and language. Publish the new baseline with the level-2 self-reported number beside
it, explaining the difference.

**Exit criteria.** The director can answer "how many people got their problem solved last
month" and defend the number to an auditor.

## Governance gates

| Gate | Before proceeding to | Question |
|---|---|---|
| Record ownership settled | Phase 4 | Is one named person accountable for the shared record? |
| Retention schedule applied | Phase 4 | Does the shared record have a records schedule, and is it implemented? |
| Privacy assessment complete | Phase 4 | Has consolidating constituent data across departments been assessed? |
| Accessibility verified | Phase 4 | Do all channels meet WCAG 2.2 AA, including the staff-facing tool? |
| Knowledge ownership complete | Any level-4 work | Does every article have an owner and a review date? |

That last gate is the one that matters for what comes next. Do not pass it on a technicality.

## Workshop agenda: opening session (half day)

1. **Score the rubric** (60 min) — all seven dimensions, out loud, front-line staff present.
   Managers score last.
2. **Where do we disagree?** (20 min) — the gap between the management score and the
   front-line score is the most useful output of the morning.
3. **Trace one real case** (45 min) — pick a genuine recent request that went badly. Walk it
   end to end on a wall. Count the systems, the re-keyings, and the times the person repeated
   themselves.
4. **Break** (15 min)
5. **Who owns the case record?** (45 min) — the hard conversation. Do not leave without a name.
6. **What are we not doing?** (30 min) — explicitly park AI. Name the date it comes back.
7. **First three moves and their owners** (25 min)

Step 3 does more work than the rest combined. Abstract discussion of integration produces
agreement in principle; a real case on a wall produces agreement in practice.

## What to get right

- **Finish Phase 1 before procurement starts.** Definition first means the operating model
  comes from the organization, not from whatever record model a vendor's system ships with.
- **Bring executive sponsorship in early.** It works far better applied at the start than as
  escalation applied later, once departments have already dug in.
- **Pre-commit to the measurement dip, in writing, during Phase 1.** That's what keeps the
  programme funded through the months when the numbers look worse before they look better.
- **Protect knowledge governance.** It's the foundation level 4 depends on, so it's worth
  guarding especially when the schedule gets tight.
- **Keep the minimum record minimal.** Every additional field is another department's approval
  and another migration mapping, so it's worth resisting deliberately.

## Exit criteria for the whole transition

The rubric scores 3 on every dimension, verified with the same front-line staff who scored it
at the start. Not the same managers. The same staff.
