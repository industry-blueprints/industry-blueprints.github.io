---
type: Persona
title: Records Manager
description: Accountable for retention, disclosure, and defensible disposition
  across systems they do not control and content they cannot see.
resource: https://industry-blueprints.github.io/personas/records-manager/
tags: [persona, records, retention, transparency, cross-cutting]

generated: { by: human:jhofmann, at: 2026-07-27T11:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
persona_type: specialist
---

## Role summary

Maintains the retention schedule, ensures records are kept as long as required and no longer,
applies legal holds, and usually coordinates public records and freedom-of-information response.
Frequently one person for the whole organization, and frequently the only one who understands
that email, chat, and text are records.

## Goals

- Records kept for their required period and disposed of at the end of it
- Public records requests answered completely, on time, with correct redactions
- Legal holds applied before anything is destroyed
- Disposition that is defensible — meaning documented and authorized, not merely deleted
- Staff who understand what a record is

## Decisions made

- What retention class a new record type falls into
- Whether something is a record at all — the recurring and genuinely hard question
- Whether a request is responsive, and what is exempt
- When a hold is applied and when it is lifted
- Whether a system may be decommissioned, and what has to happen to its contents first

## Pain points

- **Retention attaches to systems, not records.** Migrate the data and the schedule is silently
  lost — the most common way retention obligations break, discovered years later.
- **Nothing is ever disposed of.** Deletion feels risky and keeping everything feels safe, so
  storage grows, and every additional year of retained email is a larger disclosure surface.
- **Requests arrive with a statutory clock and no search infrastructure.** Responsive material is
  spread across mail, shared drives, case systems, and phones.
- **Redaction is manual, slow, and unforgiving.** One missed personal identifier is a breach.
- **Records created in tools nobody told them about.** A department adopts a collaboration
  platform; two years of records exist outside any schedule.
- **No authority over the systems holding the records.** Same accountability-without-authority
  problem the [Chief Data Officer](/personas/chief-data-officer/) has.

## What this persona needs from a blueprint

Retention modelled as an attribute of the **record**, on Case and Document, rather than a
property of the system — see the [core data model](/data-models/core-public-sector-model/).
A realistic account of what AI can do for search and redaction and what it must not do
unsupervised. And recognition in every architecture that disposition is a required capability,
not an operational detail to be added later.

## Typical questions

- "Is this a record?"
- "What is the schedule for this, and who told you that?"
- "If we decommission this system, where does its content go?"
- "Has a hold been applied? Are we sure?"
