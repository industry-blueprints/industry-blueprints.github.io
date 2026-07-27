---
type: KPI
title: Service Credit Realization
description: The gap between entitlements triggered and entitlements claimed —
  contractually owed money that organizations routinely never collect.
resource: https://industry-blueprints.github.io/kpis/service-credit-realization/
tags: [kpi, contracts, performance, service-levels, entitlements, process]

generated: { by: human:jhofmann, at: 2026-07-27T16:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
measure_class: process

relationships:
  - predicate: measures
    target: /capabilities/contract-administration.md
---

## Business purpose

Contracts contain entitlements that trigger when performance falls below an agreed standard —
service credits, liquidated damages, remedies, step-in rights. They were negotiated, priced into
the bid, and written down.

**They are then very often not claimed**, because nobody is tracking the triggers. This measure
makes the gap visible, and it is usually larger than anyone expects.

## Definition

> The proportion of entitlements triggered by measured performance that were actually claimed or
> formally waived.

The word **formally** is doing real work. A decision not to pursue a credit can be entirely
reasonable — the relationship, a compensating concession, disproportionate effort. What is not
reasonable is the entitlement lapsing because nobody noticed. Recording a waiver converts an
oversight into a decision.

## Formula

```
Realization = (claimed + formally waived) ÷ triggered
```

Report **triggered, claimed, and waived separately.** The composite hides which of two very
different problems is present: entitlements not detected, or entitlements detected and not pursued.

## Why this measure is unusual

Most process measures describe effort or speed. This one describes **money the organization is
contractually owed and does not collect** — which makes it the rare contract administration
measure that a finance director engages with immediately.

It is also a proxy for something broader. An organization that does not track service level
triggers is almost certainly not tracking reporting obligations, review meetings, price adjustment
mechanisms, or notice periods either. **A low realization rate is a reliable indicator that
obligations were never extracted from the contract** — see
[obligation tracking](/patterns/obligation-tracking/).

## Typical values by maturity level

| Level | Character |
|---|---|
| 1 | Not computable — service levels not measured at all |
| 2 | Near zero, and unknown. Triggers not detected; credits claimed only when a supplier volunteers one |
| 3 | Obligations extracted; triggers detected; realization becomes measurable and is typically low at first |
| 4 | Triggers surface automatically with the claim window; waivers recorded as decisions |
| 5 | Performance discussed against entitlements as routine; credits rarely needed because performance is managed |

**Expect a level 2 → 3 shock.** The first honest measurement typically reveals a meaningful sum
that was owed and never collected across a contract portfolio. That number is usually what funds
the improvement.

## Interpretation guidance

- **A high waiver rate is not automatically bad**, provided waivers are decisions with recorded
  reasons. Check who is authorizing them and whether the reasons are consistent.
- **Segment by supplier.** Concentrated waivers with one supplier is either a relationship worth
  examining or a service level that was never realistic.
- **Segment by service level.** One standard triggering constantly usually means the standard was
  set wrong at award, not that the supplier is failing — which is a lesson for the next
  specification.
- **Read against measurement ownership.** Where the supplier self-reports performance, triggered
  counts are the supplier's counts. That is a different control, and the realization rate looks
  better than it is.
- **Zero triggered is a red flag**, not a clean bill of health. It usually means nothing is being
  measured.

## Data required

Service levels with thresholds and measurement method · measured performance by period ·
entitlement definitions and claim windows · claims raised and their outcome · waivers with
authorization and reason · who measures each service level

## Common data-quality concerns

- Service levels held as contract prose rather than as structured thresholds, so triggers cannot
  be detected at all
- Supplier-reported performance recorded as measured performance
- Claim windows unmodelled, so an entitlement expires before anyone acts
- Informal waivers — a conversation, no record — counted as neither claimed nor waived
- Credits netted against invoices without being recorded as claims, understating realization
