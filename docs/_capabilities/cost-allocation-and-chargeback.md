---
id: cost-allocation-and-chargeback
title: Cost Allocation & Chargeback
type: capability
level: 2
version: '0.1'
status: draft
description: Distributing shared and indirect costs across programs, funds, and grants
  defensibly — the quiet determinant of whether grant funding pays its way.
last_updated: '2026-08-11'
capability_area: fund
industries:
- public-sector
tracks:
- business
- experience-process
- information
- architecture
- trust-governance
- ai-automation
relationships:
  builds_on: []
  personas: []
  adds: []
---

## Business definition
To distribute the cost of shared functions — finance, HR, technology, facilities, legal — across
the programs and funds that consume them, on a basis that is rational, consistently applied, and
defensible to a federal cognizant agency.

**This capability determines how much of the true cost of grant-funded work is recovered.** A weak
cost allocation plan means the general fund silently subsidizes every grant, and nobody sees the
subsidy because it never appears as a line.

## Desired outcomes

- Allocation bases that reflect actual consumption rather than headcount convenience
- An approved indirect cost rate that recovers what the work genuinely costs
- Internal service charges predictable enough for departments to plan against
- Costs charged to grants that are allowable, allocable, and consistently treated
- The subsidy from unrestricted funds to restricted programmes visible as a number
- Disputes about charges resolved on method rather than on volume of complaint

## Lifecycle
Cost pool definition · allocation basis selection and statistics collection · cost allocation plan
preparation · indirect cost rate proposal and negotiation · internal service fund rate setting ·
chargeback billing and settlement · time and effort certification · allowability determination ·
plan reconciliation to actuals · carry-forward adjustment

## Domain model
Cost pools with the costs assigned to each · allocation statistics by basis and period ·
approved cost allocation plan and rate agreements · internal service fund rates with their
build-up · chargeback transactions by consuming department · time and effort records ·
unallowable cost identification · reconciliation of allocated to actual

## Measures

| Measure | Class |
|---|---|
| Indirect costs recovered against indirect costs incurred | Outcome |
| Approved rate against actual computed rate | Process |
| Grant awards accepting less than the approved rate — the subsidy | Outcome |
| Allocation statistics refreshed within the period | Process |
| Chargeback disputes raised and their resolution time | Process |
| Questioned costs arising from allocation method | Outcome |

The subsidy measure is the one that changes conversations. It converts "grants are free money"
into a figure, which is exactly the point made in
[grants management inbound](/capabilities/grants-management-inbound/).

## Level variance

- **Federal.** The cognizant agency approving cost allocation plans and negotiating indirect cost
  rates for recipients — the standard-setter for the whole chain.
- **State.** Both negotiator and subject: negotiates its own rate federally, and approves or
  constrains plans for its subrecipients. Also frequently caps indirect recovery on state-funded
  programmes below actual cost.
- **County / municipal.** Prepares a plan to recover central service costs from grants and
  enterprise funds. Small jurisdictions often use a de minimis rate rather than negotiating one,
  which is administratively cheaper and usually recovers less than actual cost.

## What to get right

**Choose allocation bases that reflect actual consumption.** Headcount is easy to use for a service
actually consumed by transaction volume, but that choice is only defensible until someone examines
it.

**Refresh the statistics behind the allocation.** Square footage or FTE counts from a five-year-old
survey no longer provide a reliable allocation basis after two reorganizations.

**Make the capped-indirect subsidy visible.** The most common form of the subsidy: the award allows
ten percent, the actual rate is twenty-two, and the difference lands visibly in the general fund
rather than disappearing silently.

**Certify time and effort as it happens, not at period end.** Signed from memory at close, it is a
frequent audit finding and undermines every allocation built on it.

**Set chargeback rates to reflect actual usage, not to recover a fixed budget.** Dividing the
internal service fund's costs by expected volume means a department reducing consumption sees no
saving, and the incentive inverts.

**Reconcile rates to actual cost.** Applied all year without truing up, over- or under-recovery
compounds across periods.

**Keep unallowable costs out of the pool.** Lobbying, certain legal costs, and entertainment
flowing into an allocation base flow into a federal claim with them.
## Architecture

The architecture boundary for this capability follows the responsibilities, lifecycle, and
information described above. A dedicated architecture artifact has not yet been developed for
this inventory entry.

## Trust and governance

Trust concerns include authority to act, access to operational records, accountable decisions,
retention, and an auditable history. Applicable controls vary with the workload, jurisdiction,
and information sensitivity; a dedicated trust model has not yet been developed for this draft.

## AI and automation

AI and automation opportunities have not yet been evaluated for this capability. Future
patterns remain bounded by the authority, access, decision, and audit controls of the
underlying work.
