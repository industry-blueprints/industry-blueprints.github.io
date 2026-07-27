---
type: Capability
title: Cooperative & Shared Purchasing
description: Using or hosting joint contracts so other jurisdictions can buy without
  running their own competition — leverage, with a due-diligence obligation attached.
resource: https://industry-blueprints.github.io/capabilities/cooperative-and-shared-purchasing/
tags: [capability, cooperative, shared-services, contract-vehicles, procurement]

generated: { by: human:jhofmann, at: 2026-07-27T21:15:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/acquire.md
  - predicate: has_participant
    target: /personas/chief-procurement-officer.md
  - predicate: has_participant
    target: /personas/supplier.md
    note: A single award that reaches many buyers — high value, and high stakes for the field
---

## Purpose

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

## Key processes

Vehicle identification and suitability assessment · authority and reciprocity verification ·
underlying solicitation due diligence · price reasonableness verification · order placement under
the vehicle · local terms and conditions addition · lead agency solicitation and hosting · usage
and fee administration · participating addendum negotiation · vehicle performance review

## Key data

[Contract vehicle](/data-models/procurement-data-model/) register with scope, term, and permitted
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

## Where it goes wrong

**Authority assumed.** Statutes differ on whether and how a jurisdiction may piggyback. The
determination is frequently made once, informally, and relied on for a decade.

**No due diligence on the underlying competition.** Relying on a contract without reading the
solicitation that produced it. If the original scope does not cover the purchase, the shortcut is
the exposure.

**Price assumed advantageous.** A cooperative price is not automatically a good price, and
verification is rarely performed because the point of the vehicle was to save effort.

**Scope stretched.** Buying something adjacent to what the vehicle covers, which is a
sole-source award without the documentation.

**Local suppliers designed out.** Every purchase routed nationally, and the local supply base
erodes — a slow effect, visible only in the trend, and difficult to reverse.

**Hosted contracts administered for the lead agency only.** Other participants' performance
problems go unrecorded, so the supplier's history is incomplete for everyone.

**Administrative fees unexamined.** Built into the price, funding the cooperative, and rarely
compared against the cost of competing directly.
