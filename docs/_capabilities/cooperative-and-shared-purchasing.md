---
id: cooperative-and-shared-purchasing
title: Cooperative & Shared Purchasing
type: capability
level: 2
version: '0.1'
status: draft
description: Using or hosting joint contracts so other jurisdictions can buy without
  running their own competition — leverage, with a due-diligence obligation attached.
last_updated: '2026-08-11'
capability_area: acquire
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
To obtain the benefit of a competition someone else ran — or to run one on behalf of others —
through cooperative agreements, state and federal schedules, joint solicitations, and lead-agency
contracts.

**For a small jurisdiction this is frequently the only route to a well-run procurement.** A
municipality with one purchasing officer cannot competently compete a complex technology contract;
buying from a properly competed vehicle is a better outcome than a badly run local process.

## Desired outcomes

- Legal authority to use a given vehicle confirmed before the order, not after
- The underlying competition understood well enough to rely on
- Pricing verified as genuinely advantageous rather than assumed to be
- Scope of the vehicle respected, with local terms added where permitted
- Hosted contracts administered for the whole user population, not only the lead agency
- Local and small-supplier participation not eliminated as a side effect

## Lifecycle
Vehicle identification and suitability assessment · authority and reciprocity verification ·
underlying solicitation due diligence · price reasonableness verification · order placement under
the vehicle · local terms and conditions addition · lead agency solicitation and hosting · usage
and fee administration · participating addendum negotiation · vehicle performance review

## Domain model
Contract vehicle register with scope, term, and permitted
users · underlying solicitation documentation for each vehicle relied on · authority and
reciprocity determinations · price comparison evidence · usage by department and value · hosted
contract participant list · administrative fee record

## Measures

| Measure | Class |
|---|---|
| Cooperative purchases with documented authority and due diligence | Process |
| Price reasonableness verified before order | Process |
| Cycle time against running an equivalent local competition | Process |
| Value purchased through vehicles as a share of total | Output |
| Local and small-supplier share of spend, tracked against the trend | Outcome |
| Hosted vehicle usage by other jurisdictions | Output |

That fifth measure is the one to watch. Cooperative purchasing is efficient and, unmanaged, it
routes spend to large national suppliers.

## Level variance

- **Federal.** Government-wide acquisition vehicles and schedules that agencies order against,
  with some extended to state and local buyers under defined conditions.
- **State.** Operates statewide contracts frequently open to local government, and participates in
  multi-state cooperative arrangements. Often the lead agency for others.
- **County / municipal.** The heaviest users. Regional councils of government and national
  cooperatives are widely used, and reliance is greatest exactly where in-house due-diligence
  capacity is least — which is the tension in this capability.

## Getting this right

**Confirm authority before relying on it.** Statutes differ on whether and how a jurisdiction may
piggyback, and an informal determination made once is not a durable basis for a decade of unchecked
reliance.

**Read the underlying solicitation before relying on the contract.** If the original scope does
not cover the purchase, skipping that due diligence is the exposure.

**Verify that the price is actually advantageous.** A cooperative price is not automatically a good
price, and verification is worth the small effort the vehicle was meant to save.

**Keep purchases within the vehicle's actual scope.** Buying something adjacent to what it covers
is a sole-source award without the documentation.

**Track the effect on local suppliers.** Routing every purchase nationally erodes the local supply
base — a slow effect, visible only in the trend, and difficult to reverse once established.

**Administer hosted contracts for the whole user population.** Recording performance only for the
lead agency leaves other participants' problems unrecorded, so the supplier's history is incomplete
for everyone.

**Compare administrative fees against the cost of competing directly.** Built into the price and
funding the cooperative, they are rarely examined against that alternative.
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
