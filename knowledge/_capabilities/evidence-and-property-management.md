---
type: Capability
title: Evidence & Property Management
description: Custody of seized, recovered, and evidentiary property from intake to
  disposition, with the chain intact — a warehouse operation with legal consequences.
resource: https://industry-blueprints.github.io/capabilities/evidence-and-property-management/
tags: [capability, evidence, chain-of-custody, property-room, disposition, digital-evidence]

generated: { by: human:jhofmann, at: 2026-07-28T17:45:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal, tribal]

relationships:
  - predicate: part_of
    target: /domains/justice-and-public-safety.md
  - predicate: has_participant
    target: /personas/records-manager.md
    note: Evidence retention is a records discipline with legal-hold behaviour attached
  - predicate: has_participant
    target: /personas/internal-auditor.md
    note: The property room is among the highest-risk internal control environments in government
---

## Purpose

To take custody of evidence and property, store it securely and appropriately, maintain an
unbroken chain of custody, release it for analysis and court, and dispose of it lawfully when it is
no longer required.

**This is simultaneously a warehouse, a high-value asset store, and a legal record.** A break in the
chain of custody can end a prosecution; an unexplained absence from the property room is a criminal
matter in itself. It is also, in most agencies, staffed by one or two people and audited rarely.

## Desired outcomes

- Every item entering custody recorded at the point of intake
- Chain of custody unbroken and evidenced at every transfer
- Storage conditions appropriate to the item — refrigerated, secured, segregated
- High-risk categories — narcotics, currency, firearms — under enhanced control and inventory
- Digital evidence held with integrity verification, not merely stored
- Retention driven by case status, with disposition actually occurring
- Owner property returned rather than accumulating indefinitely
- Inventory audited on a schedule, by someone independent of custody

## Key processes

Intake, packaging, and barcoding at the point of seizure · chain of custody recording on every
transfer · storage assignment by category and condition · high-value and narcotics vault control ·
firearm handling and tracing submission · release to laboratory and return · court production and
return · digital evidence ingest, hashing, and integrity verification · retention determination
against case status · owner notification and return · lawful disposal, destruction, and auction ·
periodic and unannounced inventory audit · purge programmes to reduce backlog

## Key data

Item register with case, seizing officer, description, category, and location · chain of custody
entries with person, purpose, and timestamp · storage location assignment and capacity · high-risk
category inventory with reconciliation status · digital evidence with hash values and access log ·
retention status linked to case disposition from
[the courts](/capabilities/court-administration-and-adjudication/) · owner notification and return
records · destruction and disposal authorizations · audit results and discrepancies

## Measures

| Measure | Class |
|---|---|
| Items with a complete, unbroken chain of custody | Process |
| Discrepancies found at inventory audit — count and category | Outcome |
| High-risk category items reconciled at the required frequency | Process |
| Items held past their retention requirement | Outcome |
| Storage capacity utilization against available space | Input |
| Owner property returned versus disposed of unclaimed | Outcome |
| Time from case disposition to eligible item disposition | Process |
| Digital evidence with verified integrity on retrieval | Process |

**Items held past retention is the measure that reveals the systemic problem.** Property rooms fill
because disposition requires knowing the case is over, and case status frequently does not flow
back from the court — which makes this a
[justice information sharing](/capabilities/justice-information-sharing/) failure showing up as a
storage crisis.

## Level variance

- **Federal.** Agency evidence facilities with formal custody procedures and substantial forensic
  laboratory integration.
- **State.** State police evidence facilities and the state laboratory's own custody chain, which
  local agencies' evidence passes through and must reconcile with.
- **County.** Sheriff's property room, frequently also holding evidence for smaller municipalities
  under agreement — which extends the chain of custody across agencies.
- **Municipal.** **The most common and most exposed configuration**: a property room in the police
  station, one custodian, no independent audit for years, and storage full since the last purge.

## What to get right

**Record every transfer, including informal ones.** An item handed to a colleague without a
recorded transfer breaks the chain, and the defect surfaces at trial.

**Have someone independent of custody run the audit.** A custodian auditing their own inventory is
the configuration behind every published account of property room theft, and it is the single most
correctable control gap here.

**Get case status flowing back so retention can be determined.** Disposition requires a court
outcome delivered in usable form; without it nothing gets disposed of and the room fills — see
above.

**Fix the routine disposition process, not just the backlog.** A backlog cleared once but
re-accumulated over five years means the ongoing process, not just the one-time cleanup, needed
fixing.

**Notify and return owner property promptly.** Recovered items held for years with owners never
notified end up auctioned — legal, but a poor outcome for a victim.

**Hash and verify digital evidence, don't just store it.** Hashing, integrity verification, and an
access log keep authenticity defensible in a category whose volume is growing faster than any
other.

**Put narcotics and currency under enhanced, multi-person control.** These are the two categories
with the strongest incentive attached, and they deserve controls to match.

**Match storage conditions to the item.** Biological evidence needs refrigeration to preserve the
analysis a cold case review would depend on.
