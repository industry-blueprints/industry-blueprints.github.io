---
id: inform
title: Inform
type: capability-area
level: 2
order: 60
version: '0.1'
status: draft
description: Governing, protecting, and making usable the information and technology
  every other capability depends on.
last_updated: '2026-08-11'
industries:
- public-sector
tracks:
- business
relationships:
  builds_on: []
  adds: []
---

the capability area everything else depends on and almost nobody funds proportionately. It contains the
capabilities most likely to be described as "an IT thing" and most likely, when weak, to be the
actual reason a mission capability underperforms.

## What makes this capability area distinct in government

**Records obligations are statutory and long.** Government information is subject to retention
schedules measured in decades, disclosure regimes that assume the public has a right of access,
and disposition rules that make deletion an authorized act rather than a convenience. Systems
designed without this produce compliance failures years after go-live, when nobody involved is
still around.

**Transparency and privacy pull against each other**, and the reconciliation is a per-record
judgement made under a statutory clock. This is one of the few genuinely hard problems in the
domain and one of the more promising AI applications — with the highest cost of being wrong.

**Data is authoritative for someone.** Parcel boundaries, addresses, and identity records are
used by other agencies as ground truth. Stewardship in government is a public obligation, not
an internal hygiene practice.

**this capability area gates AI.** Assisted answers, automated classification, and summarization all
require content with owners, review dates, and defined scope. An organization that has not
done the governance work here cannot safely adopt AI in any other domain — a dependency worth
naming explicitly, because it is routinely discovered late.

## Level variance

- **Federal.** Extensive statutory frameworks for records, privacy, security categorization,
  accessibility, and information collection, with formal roles attached to each.
- **State.** State archives set retention; state public-records acts vary widely in scope and
  timelines; several states now legislate directly on AI and privacy.
- **County / municipal.** Same obligations, dramatically less capacity. Often no privacy officer,
  no records manager, and a records schedule inherited from the state that nobody has mapped to
  the systems actually in use.

## Where this capability area connects

Every capability in the library produces records, consumes data, and depends on identity. The
core data model is governed here, and the
AI disclosure and human review control is one of
its outputs.
