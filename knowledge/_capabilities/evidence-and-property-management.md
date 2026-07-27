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

## Where it goes wrong

**Chain broken at an informal transfer.** An item handed to a colleague without a recorded
transfer, and the defect surfaces at trial.

**No independent audit.** The custodian audits their own inventory. Every published account of
property room theft involves this configuration, and it is the single most correctable control gap
here.

**Retention unknown because case status is unknown.** Disposition requires a court outcome that
never arrives in a usable form, so nothing is disposed of and the room fills — see above.

**Purge programmes as one-off projects.** A backlog cleared once, then re-accumulated over five
years because the routine disposition process was never fixed.

**Owner property never returned.** Recovered items held for years, owners never notified, and
eventually auctioned — legal, and a poor outcome for a victim.

**Digital evidence treated as files on a share.** No hashing, no integrity verification, no access
log, so authenticity is arguable and the volume is growing faster than any other category.

**Narcotics and currency without enhanced control.** Single-person access to the two categories
with the strongest incentive attached.

**Storage conditions unmatched to the item.** Biological evidence held without refrigeration,
degrading the analysis a cold case review would have depended on.
