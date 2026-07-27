---
type: Capability Domain
title: Govern
description: How authority is conferred and exercised — elections, direction, rules,
  risk, and answering for what was done.
resource: https://industry-blueprints.github.io/domains/govern/
tags: [domain, governance, policy, strategy, risk, audit]

generated: { by: human:jhofmann, at: 2026-07-27T09:00:00Z }
status: draft
stale_after: 2027-07-27
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]
domain_type: enterprise
map_order: 10

capabilities:
  - title: Policy Development
    definition: Researching, drafting, consulting on, and issuing the rules the organization operates under and enforces.
    target: /capabilities/policy-development.md
  - title: Legislative & Council Affairs
    definition: Managing the relationship with the body that appropriates and legislates — bills, testimony, inquiries, mandates.
    target: /capabilities/legislative-and-council-affairs.md
  - title: Strategic Planning
    definition: Setting multi-year direction, objectives, and the initiative portfolio that pursues them.
    target: /capabilities/strategic-planning.md
  - title: Performance Management
    definition: Defining measures, tracking progress against objectives, and acting on what the measures say.
    target: /capabilities/performance-management.md
  - title: Intergovernmental Relations
    definition: Coordinating with other levels and units of government on shared mandates, funding, and delivery.
    target: /capabilities/intergovernmental-relations.md
  - title: Rulemaking & Regulatory Administration
    definition: The formal process of making, amending, and publishing regulations with public participation.
    target: /capabilities/rulemaking-and-regulatory-administration.md
  - title: Legal Counsel & Representation
    definition: Advising on authority and exposure, and representing the organization in proceedings.
    target: /capabilities/legal-counsel-and-representation.md
  - title: Risk Management & Insurance
    definition: Identifying, treating, and financing enterprise risk, including claims and liability.
    target: /capabilities/risk-management-and-insurance.md
  - title: Internal Audit
    definition: Independent examination of controls, compliance, and effectiveness, and tracking remediation.
    target: /capabilities/internal-audit.md
  - title: Investigations
    definition: Establishing whether a specific person or entity did a specific thing — misconduct, fraud, reprisal — to a standard that supports action.
    target: /capabilities/investigations.md
  - title: Ethics & Standards of Conduct
    definition: Conflict of interest, financial disclosure, gifts, and the investigation of alleged breaches.
    target: /capabilities/ethics-and-standards-of-conduct.md
  - title: Voter Registration & List Maintenance
    definition: Registering eligible voters and keeping the list accurate, current, and correctly districted.
    target: /capabilities/voter-registration-and-list-maintenance.md
  - title: Election Operations & Voting
    definition: Preparing ballots, opening voting locations, and running every method by which a vote can be cast.
    target: /capabilities/election-operations-and-voting.md
  - title: Vote Counting, Canvass & Certification
    definition: Tabulating, reconciling, auditing, and certifying the result within the statutory timeline.
    target: /capabilities/vote-counting-canvass-and-certification.md
  - title: Campaign Finance & Candidate Filing
    definition: Qualifying candidates and measures for the ballot, and publishing campaign finance disclosure in time to matter.
    target: /capabilities/campaign-finance-and-candidate-filing.md
  - title: Open Government & Public Participation
    definition: Meeting notice and access duties, publishing open data, and running genuine consultation.
    target: /capabilities/open-government-and-public-participation.md
  - title: Enterprise Portfolio & Investment Governance
    definition: Deciding which initiatives are funded, staged, and stopped, and holding them to their case.
    target: /capabilities/enterprise-portfolio-and-investment-governance.md

relationships:
  - predicate: part_of
    target: /industries/public-sector.md
---

The capabilities by which a public organization decides what to do and demonstrates that it
did so lawfully. Weak here, everything else drifts — but this is also the domain most often
left out of capability models entirely, because it produces no transaction anyone counts.

## What makes this domain distinct in government

**Authority is delegated and bounded.** A public organization can only do what it has been
empowered to do. "Do we have the authority?" is a real, frequently blocking question with no
private-sector equivalent, and it precedes every other design question.

**Direction changes with elections.** Strategic planning operates against a horizon that may be
shorter than the initiatives it commissions. Multi-year transformation has to survive a change
of leadership, which argues for staged delivery with standalone value at each stage — a
constraint that should shape every playbook in this library.

**Oversight is continuous and multi-party.** Legislative bodies, auditors, inspectors general,
the press, and the public all have standing to ask. The cost of producing evidence is a
permanent operating overhead, not an occasional project.

**Deliberation is often required to be public.** Open meeting laws constrain how decisions can
be made, including how much can be settled before a public session.

## Why elections sit here

Every other capability in this domain concerns authority being *exercised*. Elections concern
authority being *conferred*, which is the same subject one step earlier — and the four elections
capabilities sit alongside ethics, open government, and campaign finance disclosure because they
are all mechanisms of legitimacy rather than of service delivery.

They apply to a narrower set of organizations than the rest of the domain: state, county, and
municipal election authorities rather than every public organization. The
`government_levels` facet on each page carries that, in preference to splitting the domain.

## Level variance

- **Federal.** Formal rulemaking with statutory public comment, independent inspectors general,
  and congressional oversight with subpoena power.
- **State.** Legislative sessions that may be part-time, state-level administrative procedure
  acts, and a constitutional relationship to local government that determines what locals may do.
- **County / municipal.** Governance by an elected board or council operating in public, often
  part-time, with the chief executive appointed rather than elected. Authority is constrained
  by state law — the question of whether the jurisdiction *may* act is more often decisive than
  whether it should.

## Where this domain connects

Governance sets the constraints every other domain executes within. The
[governance controls](/governance/) in this library are the artifact-level expression of what
this domain produces.
