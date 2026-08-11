---
id: utility-operations
title: Utility Operations
type: capability
level: 2
version: '0.1'
status: draft
description: Producing and distributing water, wastewater, power, or waste services
  — with a regulated quality obligation and a rate structure that must fund renewal.
last_updated: '2026-08-11'
capability_area: build-and-operate
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
To produce and distribute an essential utility service — water, wastewater, stormwater, electricity,
gas, or solid waste — meeting regulated quality standards, maintaining the network, connecting and
metering customers, and setting rates that fund the whole lifecycle.

**Two obligations pull against each other.** Regulated quality and asset renewal require sustained
investment; affordability limits what can be charged for a service households cannot decline. Rates
set below the renewal requirement are a transfer from future ratepayers, and they are the norm.

## Desired outcomes

- Regulatory quality standards met continuously, with monitoring that would detect a breach
- Network condition understood well enough to renew before failure
- Rates covering operations, debt service, and renewal — with the renewal component explicit
- Affordability addressed through assistance, not through under-recovery
- Losses — non-revenue water, unbilled consumption — measured and reduced
- Service connections, meters, and billing accurate
- Interruptions rare, short, and communicated

## Lifecycle
Treatment and production operation · distribution and collection network operation · regulatory
sampling, testing, and reporting · permit compliance — discharge, air, water quality · service
connection and disconnection · meter installation, reading, testing, and replacement · consumption
billing in coordination with [billing and
receivables](/capabilities/billing-and-receivables/) · leak detection and non-revenue loss
reduction · emergency repair and main breaks · backflow prevention · rate study and adoption ·
customer assistance programme administration · industrial pretreatment · source protection

## Domain model
Treatment operations and process data · regulatory sample results with reporting status · permit
conditions and compliance record · network inventory with material, install date, and condition ·
service connections with location and meter · meter reads and
consumption history · non-revenue loss calculation · main break and outage records · rate model
with revenue requirement and renewal component · assistance programme enrolment

## Measures

| Measure | Class |
|---|---|
| Regulatory exceedances and reporting violations | Outcome |
| Non-revenue water or unaccounted loss | Outcome |
| Main breaks or failures per unit of network per year | Outcome |
| Renewal rate against network replacement cycle | Input |
| Meter accuracy and share past replacement age | Process |
| Service interruptions — frequency and duration | Outcome |
| Bills as a share of median household income | Outcome |
| Assistance programme take-up among eligible households | Outcome |

**Renewal rate against the replacement cycle is the number that tells the truth.** A network being
replaced on a two-hundred-year cycle is being consumed, and the deficit lands on whoever is holding
the utility in thirty years.

## Level variance

- **State.** Primacy for drinking water and discharge regulation, revolving loan funds financing
  local infrastructure, and technical assistance to small systems.
- **County.** Regional water and wastewater authorities, solid waste and landfill operations, and
  service to unincorporated areas.
- **Municipal.** **The dominant operator.** Water, sewer, stormwater, and in some places electricity
  and gas, run as enterprise funds. **Very small systems are the hardest case in the whole domain**:
  the same regulatory obligations as a large utility, a few hundred connections to spread costs
  across, and frequently one certified operator.

## What to get right

**Set rates to the renewal requirement, not just to avoid an increase.** Funding operations only
and capitalizing the shortfall as deferred renewal is the most common financial decision in this
capability, and setting rates to cover the full requirement is what avoids its consequences.

**Renew assets ahead of failure.** Emergency main replacement costs several times planned
replacement and comes with service interruption and property damage attached — planned renewal
avoids all three.

**Measure non-revenue loss.** Quantifying water produced and not billed turns an unknown revenue
gap into both a revenue answer and a leak-detection signal.

**Replace meters before accuracy degrades.** Aging, under-registering meters understate
consumption in a way that otherwise reads as a revenue gap of unknown origin.

**Record buried asset condition.** Capturing install dates and materials is what lets renewal be
prioritized by real condition rather than age estimate — the exposure noted in
[asset management](/capabilities/asset-management/).

**Advertise assistance programmes and simplify the application.** Reaching a fraction of eligible
households is the default when a programme is unadvertised and requires an application — the same
[eligibility](/capabilities/eligibility-determination/) take-up problem, solved the same way.

**Build an affordability step into shutoff policy.** Disconnection for non-payment of an essential
service creates a public health consequence and a debt that is harder to collect — an
affordability step before disconnection heads that off.

**Certify more than one operator.** Depending on a single certified operator puts the system out
of compliance the moment that person is unavailable.
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
