---
type: Capability Domain
title: Inform
description: Governing, protecting, and making usable the information and
  technology every other capability depends on.
resource: https://industry-blueprints.github.io/domains/inform/
tags: [domain, data, records, technology, cybersecurity, ai-governance]

generated: { by: human:jhofmann, at: 2026-07-27T09:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
domain_type: enterprise
map_order: 60

capabilities:
  - title: Data Governance & Stewardship
    definition: Ownership, definitions, quality standards, and the decision rights over shared data.
    target: /capabilities/data-governance-and-stewardship.md
  - title: Records & Information Management
    definition: Classification, retention scheduling, legal holds, and defensible disposition.
    target: /capabilities/records-and-information-management.md
  - title: Public Records & Transparency Response
    definition: Receiving, searching, reviewing, redacting, and releasing records on request.
    target: /capabilities/public-records-and-transparency-response.md
  - title: Privacy Management
    definition: Notices, impact assessments, consent, minimization, subject rights, and breach handling.
    target: /capabilities/privacy-management.md
  - title: Analytics & Performance Reporting
    definition: Turning operational data into measures, dashboards, and published performance information.
    target: /capabilities/analytics-and-performance-reporting.md
  - title: Geospatial Information Management
    definition: Authoritative location, parcel, boundary, and asset geometry, and the services built on it.
    target: /capabilities/geospatial-information-management.md
  - title: Knowledge Management
    definition: Capturing, governing, and making findable the answers staff and the public need.
    target: /capabilities/knowledge-management.md
  - title: AI Governance & Delivery
    definition: Inventorying AI uses, assessing risk, defining human oversight, and evaluating systems in production.
    target: /capabilities/ai-governance-and-delivery.md
  - title: Identity & Access Management
    definition: Establishing who someone is, at what assurance level, and what they may do — for staff and constituents.
    target: /capabilities/identity-and-access-management.md
  - title: Cybersecurity Operations
    definition: Protecting, detecting, responding, and recovering across the estate.
    target: /capabilities/cybersecurity-operations.md
  - title: Technology Service Management
    definition: Service desk, incident and change management, and the operational running of technology.
    target: /capabilities/technology-service-management.md
  - title: Application & Integration Management
    definition: The portfolio of systems, the interfaces between them, and their lifecycle.
    target: /capabilities/application-and-integration-management.md
  - title: Digital Service Design & Accessibility
    definition: Designing usable, accessible public-facing services and meeting statutory accessibility duties.
    target: /capabilities/digital-service-design-and-accessibility.md

relationships:
  - predicate: part_of
    target: /industries/public-sector.md
---

The domain everything else depends on and almost nobody funds proportionately. It contains the
capabilities most likely to be described as "an IT thing" and most likely, when weak, to be the
actual reason a mission capability underperforms.

## What makes this domain distinct in government

**Records obligations are statutory and long.** Government information is subject to retention
schedules measured in decades, disclosure regimes that assume the public has a right of access,
and disposition rules that make deletion an authorized act rather than a convenience. Systems
designed without this produce compliance failures years after go-live, when nobody involved is
still around.

**Transparency and privacy pull against each other**, and the reconciliation is a per-record
judgement made under a statutory clock. This is one of the few genuinely hard problems in the
domain and one of the more promising AI applications — with the highest cost of being wrong.

**Data is authoritative for someone.** Parcel boundaries, addresses, and identity records are
used by other agencies as ground truth. Stewardship in government is a public obligation, not
an internal hygiene practice.

**This domain gates AI.** Assisted answers, automated classification, and summarization all
require content with owners, review dates, and defined scope. An organization that has not
done the governance work here cannot safely adopt AI in any other domain — a dependency worth
naming explicitly, because it is routinely discovered late.

## Level variance

- **Federal.** Extensive statutory frameworks for records, privacy, security categorization,
  accessibility, and information collection, with formal roles attached to each.
- **State.** State archives set retention; state public-records acts vary widely in scope and
  timelines; several states now legislate directly on AI and privacy.
- **County / municipal.** Same obligations, dramatically less capacity. Often no privacy officer,
  no records manager, and a records schedule inherited from the state that nobody has mapped to
  the systems actually in use.

## Where this domain connects

Every capability in the library produces records, consumes data, and depends on identity. The
[core data model](/data-entities/) is governed here, and the
[AI disclosure and human review control](/governance/ai-disclosure-and-human-review/) is one of
its outputs.
