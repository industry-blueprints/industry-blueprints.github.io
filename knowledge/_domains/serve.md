---
type: Capability Domain
title: Serve
description: Direct interaction with the people and organizations government
  serves — requests, cases, benefits, licences, and the decisions attached to them.
resource: https://industry-blueprints.github.io/domains/serve/
tags: [domain, constituent-service, case-management, benefits, licensing]

generated: { by: human:jhofmann, at: 2026-07-27T09:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
domain_type: mission
map_order: 20

capabilities:
  - title: Constituent Service Management
    definition: Receiving, understanding, resolving, and accounting for requests and questions from the public.
    target: /capabilities/constituent-service-management.md
  - title: Case Management
    definition: Carrying a matter from opening to disposition with ownership, history, tasks, and a defensible record.
    target: /capabilities/case-management.md
  - title: Service Catalogue & Intake
    definition: Defining what the organization offers and the channels and forms through which it is requested.
    target: /capabilities/service-catalogue-and-intake.md
  - title: Eligibility Determination
    definition: Deciding whether a person or organization qualifies, against criteria, with notice and appeal rights.
    target: /capabilities/eligibility-determination.md
  - title: Benefit & Payment Delivery
    definition: Issuing entitlements — money, services, or goods — and managing changes, overpayments, and recovery.
    target: /capabilities/benefit-and-payment-delivery.md
  - title: Licensing & Permitting
    definition: Authorizing a person, organization, or activity, with conditions, expiry, and renewal.
    target: /capabilities/licensing-and-permitting.md
  - title: Inspections
    definition: Scheduling and conducting field or desk verification against a standard, and recording findings.
    target: /capabilities/inspections.md
  - title: Enforcement & Adjudication
    definition: Acting on non-compliance — notices, penalties, hearings, and orders — with due process throughout.
    target: /capabilities/enforcement-and-adjudication.md
  - title: Appeals & Grievance Handling
    definition: Independent review of an adverse decision, and the record required to defend or overturn it.
    target: /capabilities/appeals-and-grievance-handling.md
  - title: Language Access
    definition: Ensuring people with limited English proficiency can use services on equal terms.
    target: /capabilities/language-access.md
  - title: Public Information & Outreach
    definition: Proactive communication of services, obligations, and changes to the people affected.
    target: /capabilities/public-information-and-outreach.md
  - title: Referral & Cross-Agency Coordination
    definition: Getting a person to the organization that actually owns their problem, and tracking that it happened.
    target: /capabilities/referral-and-cross-agency-coordination.md
  - title: Vital Records & Civil Registration
    definition: Registering births, deaths, and marriages, and issuing the certificates that civil identity depends on.
    target: /capabilities/vital-records-and-civil-registration.md
  - title: Library Services
    definition: Collections, digital access, public computing, and information help, open to anyone without an eligibility test.
    target: /capabilities/library-services.md
  - title: Parks & Recreation Services
    definition: Recreation programming, facility and field access, and stewardship of parks and open space.
    target: /capabilities/parks-and-recreation-services.md

relationships:
  - predicate: part_of
    target: /industries/public-sector.md
---

The domain the public actually experiences. Everything else in this model exists so that these
capabilities can run — and this is where the difference between a government that works and one
that does not becomes visible to someone standing at a counter.

## What makes this domain distinct in government

**People cannot choose another provider.** There is no competitive discipline and no exit. A
constituent who is served badly does not churn; they complain, escalate, appeal, or give up on
something they were entitled to. That asymmetry is the moral centre of the domain and should
shape every design decision in it.

**Many interactions are decisions about rights.** Eligibility, licensing, enforcement, and
appeals are exercises of authority over people, carrying notice requirements, evidentiary
standards, and appeal rights. The design boundary between *helping someone* and *deciding
something about them* is the most consequential line in this domain — and it is exactly where
AI risk concentrates.

**Access is a design requirement, not a feature.** Language access, disability accommodation,
and non-digital channels are obligations. A service that works well for the confident, English-
speaking, online-capable majority and badly for everyone else has failed at its actual job.

**No wrong door.** People do not know which organization owns their problem, and are not
obliged to. Referral is a first-class capability precisely because treating it as an edge case
is how requests die.

## Level variance

- **Federal.** Very high volume, national scale, formal customer-experience measurement for
  designated high-impact services, and heavy reliance on states to actually deliver.
- **State.** Administers federally funded programs while delivering its own — the layer where
  eligibility and benefit delivery most often sits.
- **County / municipal.** The widest service range per staff member and the most face-to-face
  contact. Frequently the delivery agent for programs it does not fund or control.

## Where this domain connects

This is the domain the library has developed furthest. See
[Constituent Service Management](/capabilities/constituent-service-management/) for a
capability taken end to end, including its processes, personas, measures, and governance.
