---
title: Investigations
summary: The coordinated work of receiving allegations or leads, gathering and preserving evidence, reaching defensible findings, and moving matters to a lawful resolution.
status: Starter
tier: Tier 1 · Catalog
area: justice-and-public-safety
updated: 2026-08-18
sections:
  - Overview
  - Common Workload Variants
  - Outcomes
  - Capabilities
  - Personas
---

## Overview

Investigations is the end-to-end process of receiving allegations or leads, establishing facts, collecting and analyzing information and evidence, documenting findings, and referring or resolving matters — in support of law enforcement, regulatory, administrative, program-integrity, internal-affairs, and other public-sector missions. Every one of these programs shares the same underlying discipline, regardless of subject matter or legal authority.

## Common Workload Variants

Criminal investigations, fraud and program-integrity investigations, regulatory investigations, internal affairs, administrative investigations, background/suitability investigations, financial investigations, and inspector general investigations.

## Outcomes

- Allegations and leads are triaged consistently and acted on within required timeframes.
- Investigative conclusions are supported by properly gathered, preserved, and traceable evidence.
- Due process and individual rights are protected throughout the investigation.
- Findings are defensible under legal, administrative, or public scrutiny.
- Sensitive and privileged information is protected from unauthorized access or disclosure.
- Investigators can discover relationships and patterns across cases, evidence, and subjects efficiently.
- Matters reach timely, consistent resolution and accountability.

## Capabilities

Investigations move through a set of complementary capabilities rather than one linear process — several run in parallel, and new evidence or a subject's account can send the matter back to an earlier capability. Sixteen capabilities compose this workload, listed here in the order a matter typically encounters them.

{% assign investigations_capabilities = site.capabilities | where: "workload", page.title | sort: "order" %}{% for item in investigations_capabilities %}
<p class="eyebrow">Capability</p>

### {{ item.title }}

{{ item.summary }} [Explore capability →]({{ item.url | relative_url }})
{% endfor %}

## Personas

- **Complainant or reporting source** — Reports the allegation, incident, or concern that may initiate an investigation.
- **Intake or triage officer** — Evaluates incoming matters and decides whether to open a case.
- **Investigator or agent** — Plans, conducts, and documents the investigative work.
- **Subject matter specialist** — Provides forensic, financial, technical, or other specialized analysis of evidence.
- **Legal counsel or prosecutor** — Advises on authority, evidentiary sufficiency, and lawful process.
- **Reviewing official** — Approves findings, resolution, and accountability on behalf of the agency.
- **Program manager or oversight reviewer** — Monitors caseload, deadlines, and performance, and identifies systemic trends across the investigative program.
