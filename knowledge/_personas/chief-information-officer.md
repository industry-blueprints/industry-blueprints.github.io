---
type: Persona
title: Chief Information Officer
description: Owns the technology estate, the security posture, and the gap between
  what departments want and what the organization can actually sustain.
resource: https://industry-blueprints.github.io/personas/chief-information-officer/
tags: [persona, technology, executive, cross-cutting]

generated: { by: human:jhofmann, at: 2026-07-27T11:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
persona_type: executive
---

## Role summary

Accountable for the technology every other capability runs on: the application portfolio,
infrastructure, security, data, and the service desk. In most jurisdictions also the de facto
owner of anything nobody else claimed — records systems, integration, and increasingly AI.

## Goals

- Nothing goes down, nothing gets breached, and nothing ends up in the press
- Retire enough legacy to stop the maintenance burden compounding
- Deliver the departmental projects that were promised
- Establish enough governance that AI adoption does not happen thirty times independently
- Hire and keep technical staff on a public pay scale

## Decisions made

- Buy, build, or configure — and increasingly, whether to use a capability already licensed
- Which of the competing departmental requests gets the delivery capacity
- What risk is accepted to keep an unsupported system running, because the replacement is unfunded
- Standards and platforms the organization commits to
- Whether a department may procure technology independently, which is a political question wearing a technical costume

## Pain points

- **Demand exceeds capacity by a large multiple**, permanently. Prioritization is the job, and
  every "no" is to a colleague with a legitimate mandate.
- **Legacy that cannot be retired** because the business process it encodes was never documented
  anywhere else.
- **Funded as a cost centre, judged as a service provider.** Capital is available for new systems;
  operating money to sustain them is not.
- **Security as an unfundable absolute.** Expected to be uncompromised, resourced as one line item.
- **Shadow procurement.** A department buys a SaaS product with a purchasing card and asks for
  integration and single sign-on afterwards.
- **AI arriving from every direction at once**, with no inventory, no policy, and considerable
  executive enthusiasm.

## What this persona needs from a blueprint

Vendor-neutral architecture they can put in front of a department without it reading as a
sales document. Language for the conversation about why data governance and records precede AI —
see the [Inform domain](/domains/inform/). And total-cost framing that includes the operating
burden, because the capital-only business case is how the estate got this way.

## Typical questions

- "Who is going to run this after go-live, and is that funded?"
- "Do we already own something that does this?"
- "What does this do to our attack surface?"
- "If the vendor is acquired, what is our exit?"
