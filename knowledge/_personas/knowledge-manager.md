---
type: Persona
title: Knowledge Manager
description: Owns the accuracy, findability, and review cycle of the content that
  frontline staff and constituents rely on — often as half a job.
resource: https://industry-blueprints.github.io/personas/knowledge-manager/
tags: [constituent-service, knowledge-management, content-governance]

generated: { by: human:jhofmann, at: 2026-07-26T15:00:00Z }
status: draft
stale_after: 2027-07-26

industry: public-sector
government_levels: [federal, state, county, municipal]
---

The most consequential and least resourced role in this capability. Frequently not a role at
all — the responsibilities are distributed across a training lead, a supervisor, and whoever
last complained that the intranet was wrong.

**This is the role that determines whether AI assistance is viable.** A grounded assistant
inherits the governance of the content it is grounded in. An organization without a real
knowledge manager does not have a level-3 knowledge base, and cannot safely reach level 4 —
see the [maturity rubric](/maturity-rubrics/constituent-service/).

## Role summary

Ensures the answer staff give is the correct answer, is findable in the time available, is
written so a person can act on it, and is reviewed when the underlying policy changes.

## Goals

- Every article has a named owner and a live review date.
- Staff use governed content rather than private documents.
- Gaps are visible and closed.
- Content survives the policy change that invalidated it — ideally before a constituent finds out.

## Decisions made

- What becomes an article, and what stays in policy.
- Who owns each topic. Usually a negotiation with someone who does not want it.
- Review cadence per topic — statutory content moves at a different rate from operational content.
- When to retire content, which is harder than writing it.

## Pain points

- **Change notification is informal.** Policy changes in a department that has no reason to
  tell them. Discovery is often via a representative saying "this doesn't match what legal said."
- **No usage signal.** Cannot tell which articles are load-bearing and which are dead, so
  review effort is spread evenly across content of wildly unequal importance.
- **Ownership without authority.** Accountable for accuracy of content owned by subject-matter
  experts who have other priorities.
- **Gaps are invisible.** Unless a representative flags them, the absence of content leaves no trace.
- **Two audiences, one budget.** Staff-facing and public-facing content have different
  requirements — reading level, plain language, accessibility, translation — and are usually
  maintained as if they were the same thing.

## Where AI actually helps this person

- **Gap detection from unresolved contacts.** Turning "we couldn't answer this" into a ranked
  queue of missing content is the highest-value thing on this list, because it replaces a
  signal that currently does not exist.
- **Change surveillance.** Flagging articles whose underlying source document has changed.
- **Drafting the plain-language version** of a policy document, for human review.
- **Detecting contradictions** between articles — which currently surface only when a
  constituent gets two different answers.

What does not help: bulk-generating content nobody owns. That increases the surface area a
single under-resourced person is accountable for, which is the opposite of the problem.

## Typical questions this persona asks

- "Who told the representatives that?"
- "What changed, and which articles does it touch?"
- "Which of these 400 articles has anyone actually opened this year?"
- "Is this article the reason we're getting repeat calls, or is something else?"
