---
id: blueprint-object-model
title: Blueprint Object Model
type: system
level: 0
version: "0.2"
status: draft
description: The shared metadata, abstraction levels, artifact tracks, and relationship rules that turn separate pages into a composable knowledge system.
last_updated: 2026-08-11
tracks:
  - business
  - information
  - architecture
  - trust-governance
relationships:
  builds_on: []
  adds:
    - Seven-level blueprint hierarchy
    - Shared artifact metadata
    - Builds On, Adds, Used By, and Realized By relationships
    - Seven recurring artifact tracks
    - PSCMF domain packs and fourteen-stage modernization paths
---

## Purpose

The Blueprint Object Model is the contract every published artifact follows. It keeps a
Foundation distinguishable from a Capability, makes dependencies navigable, and allows the site
to validate the graph during every build.

The model follows one ordering principle:

> Define general truth once, compose it into a solution, specialize it for a real context,
> demonstrate it with a scenario, and map it to technology last.

## Abstraction levels

| Level | Object | Architectural question |
|---:|---|---|
| 0 | Blueprint System | How does the knowledge system itself work? |
| 1 | Foundation | What is this thing fundamentally? |
| 2 | Capability | What business function must the organization perform? |
| 3 | Solution Pattern | How do reusable capabilities solve this class of problem together? |
| 4 | Workload | How does the solution operate in this real-world context? |
| 5 | Reference Scenario | What does the architecture look like in one concrete story? |
| 6 | Platform Realization | How can the architecture be implemented and run? |

Objects may build on peers at the same level when composition is clearer than hierarchy. They
must not build on a higher-level object.

## Two axes of organization

The blueprint hierarchy and the Public Sector Capability Modernization Framework organize the
same body of knowledge in different ways:

| Axis | Question it answers | Examples |
|---|---|---|
| Blueprint hierarchy | What kind of reusable knowledge is this? | Foundation, Capability, Solution Pattern, Workload, Platform Realization |
| PSCMF transformation sequence | How can a team understand and modernize a capability? | Mission & Outcomes, Business Capabilities, Information & Data, Roadmap |

Neither axis replaces the other. A Capability remains a reusable entry in the public-sector
inventory. When a subject needs deeper educational and modernization material, that Capability
can link to a Domain Pack. The Domain Pack applies the same fourteen canonical stages without
copying their definitions.

Asset Management is the first reference example. Its Capability page defines the business
function plainly; its Domain Pack adds a lifecycle, a domain capability model, information,
applications, measures, risks and controls, maturity, AI use cases, and a staged modernization
path.

Delivery products such as courses and consulting workshops will select from these shared objects
later. They are views of the content, not new abstraction levels.

## Required metadata

Every object declares a stable `id`, `type`, `level`, semantic `version`, lifecycle `status`,
description, last-updated date, covered tracks, and relationships. The machine-readable contract
is published as the [Blueprint JSON Schema](/schemas/blueprint.schema.json).

IDs are global, lowercase, and kebab-cased. They are references in the graph and must remain
stable even if a page title changes.

## Relationship rules

`builds_on` is authored on the more specific object. The site derives `used_by` on the dependency.
`realizes` is authored on a Platform Realization, and the site derives `realized_by` everywhere
that implementation demonstrates. `adds` names the concepts or behavior uniquely contributed by
the current object.

This single-authoring rule prevents inverse relationships from drifting apart.

## Artifact tracks

The seven recurring tracks are Business, Experience & Process, Information, Architecture, Trust
& Governance, AI & Automation, and Executable. An object declares the tracks it covers; it does
not need equal depth in all seven.

## Build enforcement

The Jekyll build fails when an ID is duplicated, a relationship target is missing, a type or level
does not match its collection, a track is unknown, or an object builds on a higher abstraction.
An invalid graph is therefore a publishing error, not an editorial warning.
