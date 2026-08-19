---
title: Fleet Management
summary: The coordinated work of planning, acquiring, assigning, maintaining, fueling, and retiring a public agency's vehicle fleet so it delivers safe, available, and cost-effective service.
status: Draft
tier: Tier 1 · Catalog
scope: All
agency_types:
  - State
  - Local
  - Federal
mission_domains:
  - Public Works
  - Transportation
  - Public Safety
  - General Government
area: build-and-operate
updated: 2026-08-18
owner: Content team
sections:
  - Overview
  - Outcomes
  - Capabilities
  - Representative Use Cases
  - Personas
  - Pain Points
  - Data
  - Technology and AI Opportunities
  - Discovery Questions
  - Security and Risk
  - Measures
  - Maturity
  - Standards Mappings
  - Reference Architecture
related:
  - type: Capability
    title: Vehicle Maintenance Management
    url: /capabilities/vehicle-maintenance-management/
    relationship: HAS_CAPABILITY
    summary: The lighthouse capability, keeping vehicles safe and available through preventive and corrective maintenance.
sources: []
---

## Overview

Public agencies rely on fleets of vehicles and mobile equipment — patrol cars, trucks, transit buses, maintenance vehicles, specialty apparatus — to deliver services in the field. Fleet management connects the planning, acquisition, assignment, maintenance, fueling, and eventual replacement of those assets so departments have reliable vehicles when and where they're needed, at a cost the agency can defend.

The workload spans the full vehicle lifecycle. It is broader than a motor-pool scheduling tool or a maintenance-ticket system: it brings together procurement, operations, safety, telematics data, and financial planning across every department that depends on a vehicle to do its job.

## Outcomes

- Vehicles are available when and where operations need them.
- Preventive maintenance keeps vehicles safe and reduces costly breakdowns.
- Fuel and maintenance spending is visible and defensible.
- Fleet size and composition match actual utilization, not historical habit.
- Driver and public safety incidents are tracked and reduced over time.
- Replacement and disposal decisions rest on total cost of ownership, not just age.

## Capabilities

Fleet management happens through a set of complementary, recurring capabilities rather than one linear process. The list below reflects roughly the order work tends to move through the lifecycle, but several capabilities run on their own schedule and feed each other on an ongoing basis rather than strictly one after another.

<ol class="future-flow">
  <li class="is-planned">
    <span>Capability 01</span>
    <h3>Fleet Planning &amp; Optimization</h3>
    <p>Determine fleet size, composition, and replacement strategy against actual need.</p>
    <span class="flow-status">Planned</span>
  </li>
  <li class="is-planned">
    <span>Capability 02</span>
    <h3>Vehicle Acquisition</h3>
    <p>Specify, procure, and onboard new vehicles into the fleet.</p>
    <span class="flow-status">Planned</span>
  </li>
  <li class="is-planned">
    <span>Capability 03</span>
    <h3>Vehicle Inventory</h3>
    <p>Maintain the authoritative record of every vehicle the agency owns or leases.</p>
    <span class="flow-status">Planned</span>
  </li>
  <li class="is-planned">
    <span>Capability 04</span>
    <h3>Assignment / Motor Pool</h3>
    <p>Assign vehicles to departments, roles, or shared-pool requests.</p>
    <span class="flow-status">Planned</span>
  </li>
  <li>
    <span>Capability 05</span>
    <h3><a href="{{ '/capabilities/vehicle-maintenance-management/' | relative_url }}">Vehicle Maintenance Management</a></h3>
    <p>Keep vehicles safe and available through preventive and corrective maintenance.</p>
    <span class="flow-status">Lighthouse</span>
  </li>
  <li class="is-planned">
    <span>Capability 06</span>
    <h3>Fuel Management</h3>
    <p>Track and control fuel purchase, use, and cost across the fleet.</p>
    <span class="flow-status">Planned</span>
  </li>
  <li class="is-planned">
    <span>Capability 07</span>
    <h3>Telematics</h3>
    <p>Capture and distribute vehicle location, diagnostic, and usage signals.</p>
    <span class="flow-status">Planned</span>
  </li>
  <li class="is-planned">
    <span>Capability 08</span>
    <h3>Utilization</h3>
    <p>Evaluate how well vehicle assignments match actual demand.</p>
    <span class="flow-status">Planned</span>
  </li>
  <li class="is-planned">
    <span>Capability 09</span>
    <h3>Driver &amp; Safety</h3>
    <p>Manage driver qualification, behavior, and safety programs.</p>
    <span class="flow-status">Planned</span>
  </li>
  <li class="is-planned">
    <span>Capability 10</span>
    <h3>Accident Management</h3>
    <p>Handle incident reporting, claims, and corrective action.</p>
    <span class="flow-status">Planned</span>
  </li>
  <li class="is-planned">
    <span>Capability 11</span>
    <h3>Cost Management</h3>
    <p>Track and attribute total cost of ownership across the fleet.</p>
    <span class="flow-status">Planned</span>
  </li>
  <li class="is-planned">
    <span>Capability 12</span>
    <h3>Replacement &amp; Disposal</h3>
    <p>Decide when and how a vehicle exits the fleet.</p>
    <span class="flow-status">Planned</span>
  </li>
</ol>

## Representative Use Cases

- [Automatically Identify Vehicles Due for Preventive Maintenance](/capabilities/vehicle-maintenance-management/#automatically-identify-vehicles-due-for-preventive-maintenance) — combine mileage/time thresholds with telematics signals to flag vehicles for service before a failure occurs. Detailed on the Vehicle Maintenance Management capability page, alongside its other use cases.

Additional high-value scenarios named in the source design — identify underutilized vehicles, detect anomalous fuel purchases, recommend vehicle reassignment, optimize fleet size, manage accident claims — are not yet written up as use cases.

## Personas

<div class="lens-grid">
  <div class="lens-card"><h3>Fleet manager</h3><p>Owns the portfolio view, budget, and policy for the fleet.</p></div>
  <div class="lens-card"><h3>Vehicle operator or driver</h3><p>Uses assigned vehicles daily and reports condition or incidents.</p></div>
  <div class="lens-card"><h3>Maintenance technician</h3><p>Performs repair and preventive work in the shop or field.</p></div>
  <div class="lens-card"><h3>Shop supervisor</h3><p>Schedules work, verifies quality, and releases vehicles to service.</p></div>
  <div class="lens-card"><h3>Dispatcher or motor pool coordinator</h3><p>Assigns vehicles to trips, shifts, or shared-pool requests.</p></div>
  <div class="lens-card"><h3>Procurement and finance officer</h3><p>Manages acquisition, contracts, disposal, and total cost of ownership.</p></div>
</div>

## Pain Points

- Vehicle and equipment records are split across a fleet system, a fuel-card system, telematics, and spreadsheets.
- Preventive maintenance is scheduled by mileage or calendar interval, but often slips because reminders don't reach the right person.
- Departments hold on to underused vehicles because giving one up feels riskier than keeping it.
- Fuel and maintenance costs are hard to attribute to the right vehicle, department, or program.
- Accident and incident data lives in a separate risk-management system, disconnected from vehicle history.
- Replacement decisions default to a fixed age or mileage threshold rather than actual condition and cost trend.

## Data

Core information includes vehicle identifiers (VIN, asset number, plate), make, model, and class, ownership and assignment, odometer and engine-hour readings, telematics events, maintenance and work-order history, fuel transactions, accident and incident records, warranty and lease terms, and total-cost-of-ownership data.

Useful analysis depends less on one system than on a stable vehicle identifier that every source system agrees on, and clear stewardship over which system is authoritative for identity, maintenance history, and financials.

## Technology and AI Opportunities

- Telematics integration that connects real-time location, mileage, and diagnostic data to the vehicle record — a digital foundation, not an AI capability.
- Mobile work-order and inspection tools for technicians and drivers.
- Prediction (Analyst) to anticipate maintenance needs from telemetry and history ahead of a scheduled interval.
- Detection (Analyst) to flag anomalous fuel purchases or fuel-card misuse.
- Optimization (Advisor) to recommend fleet right-sizing or vehicle reassignment based on utilization.
- Extraction and classification (Assistant) to structure repair descriptions and standardize work-order intake.
- Knowledge assistants (Assistant) that help staff find policy, warranty terms, and specification history with traceable sources.

These opportunities should strengthen fleet managers' judgment and evidence quality. They should not obscure uncertainty or automatically commit budget or safety-relevant decisions.

## Discovery Questions

- How large is the fleet and how is responsibility distributed across departments or locations?
- Which systems track vehicle identity, maintenance, telematics, and fuel today, and do they share a common vehicle identifier?
- How are preventive maintenance schedules determined and tracked, and how often does a vehicle miss its interval?
- How is fleet size and composition decided — actual utilization data, or historical habit?

## Security and Risk

Fleet data can expose officer and staff location patterns, patrol routes, and operational schedules — telematics access should reflect vehicle sensitivity and role, not be open by default. Financial and fuel-card data requires standard financial-system controls and separation of duties.

AI-assisted predictions introduce risk of false alerts, missed failures, and uneven performance across vehicle makes and ages. Maintenance and safety decisions with real cost or safety consequence require a qualified reviewer, not an automated threshold alone.

## Measures

A balanced scorecard may include vehicle availability and uptime, preventive-to-reactive maintenance ratio, mean time to repair, cost per mile or per vehicle, fuel efficiency and cost trend, utilization rate by vehicle class, accident rate, and average vehicle age at replacement.

Measures should connect fleet activity to service delivery. A high number of completed work orders, by itself, does not show the fleet is right-sized or that money is being spent well.

## Maturity

| Stage | Typical characteristics |
| --- | --- |
| Not performed | No consolidated fleet inventory; vehicles tracked informally by department. |
| Manual / ad hoc | Spreadsheet-based inventory and maintenance logs; reactive repair dominates. |
| Standardized | A fleet management system of record; scheduled preventive maintenance; consistent vehicle identifiers. |
| Integrated | Telematics, fuel, work-order, and financial systems connected; utilization and cost visible across the fleet. |
| Automated / optimized | Predictive maintenance and right-sizing recommendations inform decisions; outcomes are continuously monitored and fed back into planning. |

## Standards Mappings

Not yet mapped. A Federal Integrated Business Framework (FIBF) crosswalk should be recorded here once a verified mapping exists — see [Standards & Crosswalks](/standards/).

## Reference Architecture

The [Fleet Management Reference Architecture](/architectures/fleet-management-reference-architecture/) connects a fleet system or enterprise asset management (EAM) platform with work-order management, telematics, fuel systems, ERP/financial systems, procurement, GIS, identity, analytics, document/content management, and a mobile/integration layer binding them together.

The lighthouse capability — Vehicle Maintenance Management — was used to reveal the first reusable solution pattern, Connected Fleet Maintenance, and this reference architecture.
