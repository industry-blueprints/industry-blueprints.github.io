---
title: Standards & Crosswalks
permalink: /standards/
description: How the site's six components map to the Federal Integrated Business Framework, and the authoritative sources behind those mappings.
---
<header class="page-hero"><div class="container"><p class="eyebrow">Evidence view</p><h1>Standards &amp; Crosswalks</h1><p class="lede">FIBF and other authoritative frameworks are crosswalks, not the site's taxonomy. Mappings stay explicit about where they are exact, approximate, or absent.</p></div></header>
<div class="container"><div class="prose">

<p>The Federal Integrated Business Framework (FIBF) is GSA's model for coordinating and documenting common federal business needs, focused on outcomes, data, processes, and performance. Its five business-standard components are the Federal Business Lifecycle, Business Capabilities, Business Use Cases, Standard Data Elements, and Service Measures; within the lifecycle, Functional Areas decompose into Functions and Activities.</p>

<h2>FIBF crosswalk</h2>

<table>
<tr><th>Site component</th><th>FIBF crosswalk</th><th>Mapping guidance</th></tr>
<tr><td>Workload</td><td>Functional Area and/or Function, depending on granularity.</td><td>Don't claim exact equivalence by default; record mapping type and rationale.</td></tr>
<tr><td>Capability</td><td>Business Capability.</td><td>Usually the strongest semantic match when definitions align.</td></tr>
<tr><td>Use Case</td><td>Business Use Case.</td><td>Strong match when written as a concrete business scenario.</td></tr>
<tr><td>Reference Architecture</td><td>No direct FIBF component.</td><td>Use FIBF business requirements and use cases as inputs to the architecture, not as its identity.</td></tr>
<tr><td>Solution Pattern</td><td>No direct FIBF component.</td><td>Site extension linking business requirements to reusable technical approaches.</td></tr>
<tr><td>Implementation Pattern</td><td>No direct FIBF component.</td><td>Site extension for concrete logical/technical design.</td></tr>
<tr><td>Activity (optional metadata)</td><td>Activity.</td><td>The activity spine inside a Capability page.</td></tr>
<tr><td>Data Element (cross-cutting)</td><td>Standard Data Element.</td><td>Crosswalk where FIBF standards exist.</td></tr>
<tr><td>Measure (cross-cutting)</td><td>Service Measure.</td><td>Crosswalk where FIBF service measures exist.</td></tr>
</table>

<h2>How a mapping is recorded</h2>

<p>Every <code>framework_mappings</code> entry on a page carries a framework, object type, external identifier and name, a mapping type (<code>Exact</code> / <code>Narrower</code> / <code>Broader</code> / <code>Related</code> / <code>No Match</code>), a confidence (<code>High</code> / <code>Medium</code> / <code>Low</code>), a rationale, a source, a last-verified date, and a reviewer. See <code>content-schemas.md</code> for the full field contract.</p>

<h2>Authoritative sources</h2>

<p>These sources are alignment anchors, not limits on the site's own taxonomy. Policies and standards are revalidated periodically because they change.</p>

<table>
<tr><th>Source</th><th>Use</th></tr>
<tr><td><a href="https://ussm.gsa.gov/fibf/">GSA Enterprise Shared Services — Federal Integrated Business Framework</a></td><td>Current GSA overview of FIBF and its business-standard model.</td></tr>
<tr><td><a href="https://ussm.gsa.gov/fibf-foia/">GSA FIBF — Freedom of Information Act (FOIA) Services</a></td><td>Official worked example showing lifecycle Functions/Activities, Business Capabilities, Business Use Cases, data, and measures.</td></tr>
<tr><td><a href="https://www.nist.gov/itl/ai-risk-management-framework">NIST — AI Risk Management Framework (AI RMF)</a></td><td>Durable voluntary framework for managing AI risk.</td></tr>
<tr><td><a href="https://www.nist.gov/publications/artificial-intelligence-risk-management-framework-generative-artificial-intelligence">NIST AI 600-1 — Generative AI Profile</a></td><td>Companion profile for generative AI risks and risk-management actions.</td></tr>
<tr><td><a href="https://www.whitehouse.gov/wp-content/uploads/2025/02/M-25-21-Accelerating-Federal-Use-of-AI-through-Innovation-Governance-and-Public-Trust.pdf">OMB M-25-21</a></td><td>Accelerating Federal Use of AI through Innovation, Governance, and Public Trust — current federal agency AI-use governance source for federal-facing content; validate for subsequent updates.</td></tr>
<tr><td><a href="https://www.whitehouse.gov/omb/information-resources/guidance/memoranda/">OMB memoranda index</a></td><td>Use to verify current status and any guidance superseding the above, including federal AI acquisition policy.</td></tr>
</table>

</div></div>
