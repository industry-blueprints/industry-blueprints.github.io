---
type: Capability
title: Vendor & Supplier Management
description: Knowing who the organization buys from, whether they may be paid, and
  how they have actually performed.
resource: https://industry-blueprints.github.io/capabilities/vendor-and-supplier-management/
tags: [capability, vendors, suppliers, procurement, master-data]

generated: { by: human:jhofmann, at: 2026-07-27T16:00:00Z }
status: draft
stale_after: 2027-01-27
depth: detailed

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/acquire.md
  - predicate: has_participant
    target: /personas/chief-procurement-officer.md
  - predicate: has_participant
    target: /personas/supplier.md
    note: The registering party, for whom onboarding burden is a participation barrier
  - predicate: has_participant
    target: /personas/chief-data-officer.md
    note: Supplier identity is master data with the same resolution problems as constituent identity
  - predicate: uses_data
    target: /data-entities/supplier.md
---

## Purpose

To maintain an accurate, current view of the organizations the government contracts with: who they
are, whether they are eligible to receive public money, and how they have performed.

Deceptively mundane and consistently underestimated. **Supplier identity is master data**, and it
suffers exactly the problems constituent identity and [Location](/data-entities/location/) do —
the same company appears four times with four spellings, and nobody can total its spend.

## Desired outcomes

- One record per supplier, resolved across systems and spellings
- Eligibility verified before award and before payment — not once at registration
- Performance history that carries across contracts and departments
- Small, local, and diverse supplier participation measurable rather than asserted
- Onboarding light enough not to deter the suppliers the organization wants

## Current state: how this typically runs today

Suppliers register when they first want to be paid, entering their own details into a form.
Duplicates accumulate immediately — trading names, abbreviations, punctuation. Nobody merges them,
because merging is risky and nobody owns the master.

Debarment screening happens at registration and never again. Certifications are captured with
expiry dates that nothing watches. Performance is discussed in the department that experienced it
and recorded nowhere another department would find it.

Remittance details sit as an editable field on the supplier record, updated by a finance clerk when
a supplier emails to say their bank has changed.

### Why it works that way

- **Nobody owns the master.** Supplier data is created by whoever needs to pay someone, which is
  everywhere.
- **Merging is genuinely risky.** An incorrect merge corrupts spend history, payment routing, and
  performance records at once, and is hard to unwind — so nobody does it.
- **Registration is designed for the buyer's compliance needs**, not for the supplier's ability to
  complete it.
- **Updating a bank detail feels like data maintenance**, not like a financial transaction.

## Key processes

Supplier registration and onboarding · identity and tax verification · eligibility and debarment
screening · categorization and capability profiling · certification tracking with expiry ·
performance recording · remittance change verification · periodic revalidation · deactivation

## Data

[Supplier](/data-entities/supplier/) — a **Party in the supplier role**, not a separate root
entity. Modelling it as its own root is the first mistake and makes the rest possible: the same
organization may simultaneously be a supplier, a grant recipient, a permit holder, and a taxpayer.

## Measures

| Measure | Class |
|---|---|
| Duplicate supplier records | Process |
| Eligibility screening coverage before payment | Process |
| Registration completion rate and time | Process |
| Spend with small, local, and diverse suppliers | Output |
| Suppliers with recorded performance history | Process |
| Competitive supply available per category | Outcome |

## Governance

[Supplier Eligibility & Payment Integrity](/governance/supplier-eligibility-and-payment-integrity/)

## Level variance

- **Federal.** Centralized registration and a government-wide exclusions system, with screening
  obligations that flow down to recipients of federal funds.
- **State.** State registration portals, often reused by local government, plus state-level
  exclusion lists separate from federal.
- **County / municipal.** Local registration with manual screening and the greatest exposure to
  duplicate records, because there is no central master — which weakens screening and
  duplicate-payment controls simultaneously.

## Where it goes wrong

**Duplicates as the default state.** "Acme Corp," "Acme Corporation," "ACME Corp." Total spend and
concentration risk both become unanswerable, and duplicate-invoice detection fails because the
records look distinct.

**Screening once, at registration.** A supplier debarred two years later keeps being paid.
Eligibility is a state that changes.

**Onboarding burden that excludes the target.** A process designed for large suppliers deters
exactly the small and local businesses a diversity programme exists to reach.

**Performance recorded nowhere reusable.** One department knows a supplier performed badly; the
next does not, and awards to them.

**Remittance change as a fraud vector.** Payment detail updated on the strength of an email. Among
the most common and successful frauds against public organizations, and the control is procedural:
out-of-band verification using contact details already held, segregation of requester and verifier,
and a hold on the first payment after a change.

**Certification expiry unwatched**, so diverse-supplier participation is reported from lapsed
certifications and overstated.
