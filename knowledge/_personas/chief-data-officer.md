---
type: Persona
title: Chief Data Officer
description: Accountable for data as an asset across an organization whose data is
  owned by departments that did not ask for a Chief Data Officer.
resource: https://industry-blueprints.github.io/personas/chief-data-officer/
tags: [persona, data, governance, executive, cross-cutting]

generated: { by: human:jhofmann, at: 2026-07-27T11:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
persona_type: executive
---

## Role summary

Establishes data governance, stewardship, quality standards, and sharing arrangements across the
organization; usually also owns open data, analytics, and — by default rather than design —
the AI inventory.

Almost always a role with accountability and no line authority over the data it is accountable
for. The job is largely convening, brokering, and making the case.

## Goals

- Authoritative sources identified and stewarded, so people stop arguing about whose number is right
- Data sharing between departments that is lawful, documented, and does not take nine months
- Quality good enough that analysis is trusted rather than re-litigated
- An AI inventory that reflects reality
- Analytic capacity distributed rather than bottlenecked in one team

## Decisions made

- Which datasets are authoritative, and who stewards them
- Whether a sharing request is permissible, and under what agreement
- What gets published as open data, at what granularity, and what is withheld
- Where to spend limited data-engineering capacity
- Data classification and retention standards, jointly with records and privacy

## Pain points

- **Accountability without authority.** Cannot compel a department to fix its data; can only
  demonstrate that it matters and hope.
- **Identity resolution is unsolved and blocks nearly everything.** The same person appears
  differently in six systems. Almost every interesting cross-departmental question dies here —
  see [Location](/data-entities/location/) for the equivalent problem in space.
- **Sharing agreements take longer than the analysis.** Legal review per exchange, negotiated
  from scratch each time.
- **Privacy and transparency pull opposite ways** and the CDO usually chairs the room where
  that gets resolved.
- **Analysts hired to do analysis spend their time on data preparation**, which is a governance
  failure showing up as a staffing complaint.
- **AI enthusiasm arriving ahead of data readiness**, with the CDO expected to say yes and
  also to be accountable when it goes wrong.

## What this persona needs from a blueprint

A shared entity model departments can adopt incrementally rather than a mandate they will
ignore — see the [core data model](/data-models/core-public-sector-model/). Clear articulation
of why governance precedes AI, in language a non-technical executive will accept. And realistic
sequencing: identity resolution before analytics before automation.

## Typical questions

- "Which of these three numbers is the one we publish?"
- "Who owns this dataset, and when did they last look at it?"
- "Can we share this, and what agreement do we need?"
- "Is anyone using this AI tool that I don't know about?"
