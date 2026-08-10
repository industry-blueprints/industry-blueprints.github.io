---
type: Industry
title: Public Sector
description: A vendor-neutral capability model for government — federal, state,
  county, and municipal — and the knowledge library built on it.
resource: https://industry-blueprints.github.io/industries/public-sector/
tags: [industry, public-sector, government, capability-model]
wide: true

generated: { by: human:jhofmann, at: 2026-07-27T09:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
---

Government is not one industry so much as a shared operating model running at four levels with
different authority, funding, and scale. This library treats it that way: **one capability
model, with government level as a facet** and documented variance where practice genuinely
diverges.

The model below is the organizing structure for everything else here. Nine domains, split
between the capabilities every government organization has and the ones that depend on what a
particular organization exists to do.

## The capability map

<div class="map-legend">
  <span><span class="swatch is-linked"></span> Has a page</span>
  <span><span class="swatch"></span> Named — defined here, not yet written up</span>
  <span><strong>Enterprise</strong> — every government organization does this</span>
  <span><strong>Mission</strong> — depends on what the organization is for</span>
</div>

{% include capability-map.html %}

## How to read this

**Coverage is partial and says so.** A capability with a page is linked; one that is only Named
has a definition here and nothing more yet. That is deliberate — the map is complete so the
territory is visible, and depth arrives in waves. Every page carries a depth badge so a stub is
never mistaken for the finished thing.

**Enterprise before mission.** The enterprise domains were developed first — they apply to every
reader at every level, the federal-to-local comparison is cleanest there, the underlying standards
are most settled, and one blueprint serves the most people. The mission domains followed, and are
deeper, narrower, and often more sensitive.

**Domains are groupings, not org charts.** No jurisdiction is organized this way, and it would
be a bad sign if one were. The model describes what has to be done, not who does it — which is
the whole point of a capability model and the reason it survives a reorganization.

## What this map covers, and what it does not

The map describes the operating model of **general-purpose government** — what public
organizations must be able to do, at every level. Four things are outside it deliberately, and
saying so is more useful than leaving the absence to be inferred.

**Professional practice.** Clinical protocol, use-of-force doctrine, forensic methodology, criminal
procedure, engineering standards, pedagogy. These are governed by training standards, case law, and
professional bodies, and a vendor-neutral operating model has nothing to add to them. The library
stops at the capability, the process, the data, and the measure.

**Policy content.** What the tax rate should be, what the zoning should permit, who should be
eligible. The library models how policy is *made and administered* — see
[policy development](/capabilities/policy-development/) and
[rulemaking](/capabilities/rulemaking-and-regulatory-administration/) — not what it should say.

**Education.** K-12 and higher education are a separate sector with their own governance, funding,
and operating model. School districts are governments and share every enterprise domain here; the
instructional mission is not modelled.

**Defense, foreign affairs, and intelligence.** Federal-only, with operating models that are
substantially classified and have no state or local analogue.

### Known gaps

Absences rather than decisions. Naming them is how they get closed.

Three that were on this list have been: **elections administration** now sits in
[Govern](/domains/govern/) as four capabilities, and **vital records**, **library services**, and
**parks and recreation** are in [Serve](/domains/serve/).

What remains:

- **Economic and workforce development** — business attraction and retention, incentives and their evaluation, workforce programmes, small business support.
- **Housing programmes** — public housing operation, rental assistance, homelessness response, and affordable housing development. The generic spine exists in [eligibility](/capabilities/eligibility-determination/), [benefit delivery](/capabilities/benefit-and-payment-delivery/), and [case management](/capabilities/case-management/); the programme-specific capabilities do not.
- **Human services programme delivery** — child welfare, adult protective services, and behavioural health casework, which have investigative, custodial, and clinical dimensions the generic case management capability does not carry.

These are larger than the gaps just closed, and each is arguably its own domain rather than a few
capabilities. They are recorded here rather than added quietly.

## Government levels

| Level | Covers | Characteristic constraint |
|---|---|---|
| `federal` | Departments, agencies, independent establishments | Uniform statutory frameworks; delivers largely through states |
| `state` | State agencies and statewide programs | The pivot: receives from federal, administers, passes through to local |
| `county` | County government and county-administered programs | Delivery agent for programs it does not fund or control |
| `municipal` | Cities, towns, villages, special districts | Widest service range per staff member; most direct public contact |
| `tribal` | Tribal governments | In the taxonomy; not yet developed |

Most artifacts apply to several levels. Where practice differs materially, the artifact carries
a **Level Variance** section rather than being forked into separate blueprints — the bet being
that the capability model is shared and the divergence is in authority, funding, and scale.

## Operating environment

A few conditions shape nearly every blueprint in this library, and are worth stating once
rather than repeating on every page:

**Authority is bounded.** A public organization can only do what it has been empowered to do.
"Do we have the authority?" precedes every other design question and is sometimes the answer.

**The public cannot go elsewhere.** No competitive discipline, no exit. Someone served badly
complains, appeals, or gives up on something they were entitled to.

**Oversight is continuous and multi-party.** Legislatures, auditors, inspectors general, the
press, and any member of the public have standing to ask. Producing evidence is permanent
overhead, not an occasional project.

**Direction changes with elections.** Transformation has to survive a change of leadership,
which argues for staged delivery with standalone value at every stage.

**Capacity is the binding constraint far more often than technology.** Particularly below the
state level, where one person may hold three of the capabilities on this map.

## What gets depth, and what stays as it is

**Defined is a destination, not a waypoint.** Taking a capability to Complete costs roughly nine
supporting artifacts — its processes, a data model and entities, measures defined precisely enough
to implement, governance controls, patterns, AI integrations. Applied across this map that is
close to a thousand artifacts, which is not a plan, and pursuing it would produce a library that
is uniformly shallow instead of usefully uneven.

So the target is deliberate: **depth where conversations run, breadth as the map.** Roughly a third
of these capabilities are the ones people actually start work on, and those go to Complete. The
rest stay Defined on purpose, and they earn their place doing three jobs — giving the map its
shape, holding the level-variance and failure-mode content that is genuinely useful on its own,
and being one link away when someone in a session asks what else sits in their remit. Reference
material gets read in fragments, on demand, mid-sentence. Defined is the right depth for that.

Which capabilities get chosen is therefore demand-driven rather than a coverage exercise, and the
demand signal is which sessions people need to run.

## Where the library is deepest today

**The map is complete at Defined.** Every capability in every domain has a page with purpose,
outcomes, processes, data, measures, level variance, and what to get right named. Depth beyond
that is concentrated in four clusters:

[Constituent Service Management](/capabilities/constituent-service-management/) in the
[Serve](/domains/serve/) domain, taken end to end — processes with current and target state,
personas, a measure defined precisely enough to implement, a governance control, a solution
pattern, AI integrations, and a transition playbook. It exists to prove the artifact stack
generalizes.

**Grants Management**, [inbound](/capabilities/grants-management-inbound/) and
[outbound](/capabilities/grants-management-outbound/), which carries the strongest federal-to-local
story in government — federal agencies award, states pass through, locals receive and subaward. One
lifecycle, three levels, one genuine handoff. It has an
[engagement guide](/guides/grants-management-engagement/).

**Procurement & Contract Management**, through
[sourcing](/capabilities/sourcing-and-solicitation/) and
[contract administration](/capabilities/contract-administration/). Building it immediately after
grants surfaced that competitive award is one shape with two vocabularies — recorded as a promotion
candidate in the [core data model](/data-models/core-public-sector-model/).

**The field service spine** — [work order and field service](/capabilities/work-order-and-field-service-management/),
[asset](/capabilities/asset-management/), and [maintenance](/capabilities/maintenance-management/)
management, taken together because they are one operational system that most organizations
implement four or five times. It is the widest cluster in the library and the one that produced the
most reusable modelling: **work attaches to the asset, not to the address**, and **completion is
not a status**. It was also the first cluster written processes-first, which produced a role —
the [maintenance planner](/personas/maintenance-planner/) — that appears in no capability's
participant list and turns out to be pivotal to the whole domain.
