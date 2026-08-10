---
type: Vendor Implementation
title: Case Management on Dataverse
description: How the case management module's contract — commands, guarded
  transitions, events, and permissions — maps onto Microsoft Dataverse and
  Dynamics 365, and where the platform already does the work for you.
resource: https://industry-blueprints.github.io/vendor-implementations/case-management-on-dataverse/
tags: [vendor-implementation, microsoft, dataverse, dynamics-365, case-management]

sources:
  - id: dataverse-docs
    resource: https://learn.microsoft.com/en-us/power-apps/maker/data-platform/
    title: Microsoft Dataverse documentation
  - id: d365-cs
    resource: https://learn.microsoft.com/en-us/dynamics365/customer-service/
    title: Dynamics 365 Customer Service documentation
  - id: platform-module
    resource: https://github.com/industry-blueprints/platform/tree/main/modules/case-management
    title: The vendor-neutral module this maps from

generated: { by: human:jhofmann, at: 2026-08-10T10:00:00Z }
status: draft
stale_after: 2027-02-10

industry: cross-industry
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: realizes
    target: /domain-modules/case-management.md
---

> **Needs expert review.** This maps concepts, not configurations. It is written from the
> vendor-neutral [module contract](/domain-modules/case-management/) outward, and it carries no
> `verified` entry — treat every claim below as a starting point for a design conversation, not
> as implementation guidance. Product capabilities and licensing change far faster than the
> operating models this library describes, which is why layer 4 carries a six-month freshness
> window.

## The first decision: `Incident` or a custom table

Dynamics 365 Customer Service ships an `Incident` table — the out-of-box Case — with lifecycle,
queues, SLAs, entitlements, and a large surrounding feature set. Dataverse alone gives you a
custom table and nothing opinionated.

The choice is not primarily about features:

| Use `Incident` when | Use a custom table when |
|---|---|
| The domain genuinely is customer service | The domain is regulatory, investigative, or adjudicative |
| The built-in lifecycle is close to yours | Your lifecycle is statutory and non-negotiable |
| You want queues, SLAs, and entitlements now | Out-of-box semantics would need suppressing |
| Your team already runs Customer Service | The record's meaning must be defensible in an appeal |

**The failure mode is picking `Incident` for its features and then fighting its semantics.** An
investigation is not a support ticket; when the built-in status model, auto-close behaviour, and
resolution semantics have to be suppressed one by one, the table has stopped saving work.

## Mapping the contract

| Module concept | Dataverse |
|---|---|
| Case record | Table (`Incident` or custom) |
| Field values | Columns; choice columns for controlled vocabularies |
| `open-case`, `assign-case`, `transition-case`, `update-case` | Custom APIs, invoked instead of direct writes |
| Guards on a transition | Plugins registered on the custom API, synchronous, pre-operation |
| Events | The plugin pipeline for in-transaction work; webhooks or Service Bus for downstream consumers |
| Permissions (`case:transition`) | Security-role privileges; record scope via business units, teams, and ownership |
| Audit of every command | Dataverse auditing, enabled per table and column |
| `case-custom-fields` extension | Solution-layered columns on the table |
| `case-workflow` extension | Status-reason transitions, plus plugins for the guards |

## Where the platform genuinely helps

**Ownership and record-level security are native.** Owner, owning team, and business-unit scoping
are built into the Dataverse security model rather than being something you implement. The
module's insistence that a case have both an owner *and* an owning unit maps directly, and the
"cases nobody owns" failure the specification warns about is harder to reach here.

**Auditing is a switch, not a subsystem.** The defensible-record requirement that motivates the
whole module is largely satisfied by enabling table auditing.

**Solution layering gives you the extension model.** Managed solutions express "the base module,
plus what this department added" in the platform's own terms.

## Where it takes discipline

**Direct table writes bypass everything.** This is the mapping's central risk. The module's
guarantee is that state changes go through `transition-case`, where guards and permissions are
checked — and Dataverse will happily let a Power Automate flow, an integration, or a maker with
table privileges update `statuscode` directly.

Nothing in the platform enforces the command boundary for you. It has to be held by convention
and by *not granting write privileges on the state column* to anything other than the custom API.
A design that skips this has the shape of the module without its guarantee.

**Status reason transitions are configuration, not a state machine.** They constrain which status
reasons may follow which — useful, and not the same as a named, guarded, permissioned transition.
The guard logic still lives in plugins, and the transition catalogue still lives in your head
unless you document it.

**Real-time plugins are a latency and testability cost.** Guards that query other modules'
records — "an approved plan review exists" — run synchronously inside the transaction. That is
correct behaviour and it is not free.

## What this does not cover

Power Pages for the public side, Power Automate for downstream notification, Copilot Studio for
assisted intake, and the analytics path — each is a mapping of a different module or capability,
not of this one. Layer 4 mappings stay scoped to the layer 2 artifact they realize; a mapping
that grows to cover a whole solution has become an architecture and should be one.

## Alternatives worth naming

The same module contract maps onto **ServiceNow** (task-derived tables and state flows),
**Salesforce** (Case object and Flow orchestration), and **a custom build on a relational
database**. Those mappings are not written yet. The vendor-neutral specification is deliberately
the artifact of record precisely so that this page can be replaced without disturbing it.
