---
id: project-delivery-and-construction-management
title: Project Delivery & Construction Management
type: capability
level: 2
version: '0.1'
status: draft
description: Designing, procuring, and delivering capital projects to schedule, budget,
  and standard — with change orders as the recurring failure.
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
To take an approved capital project from design through procurement, construction, commissioning,
and handover — controlling scope, schedule, cost, and quality, and transferring the completed asset
into operation.

**Change orders are where public construction projects fail publicly.** Most originate in
incomplete design, unforeseen site conditions, or an owner decision made late — and most are
foreseeable at the point where the owner chose how much design to complete before bidding.

## Desired outcomes

- Delivery method chosen deliberately against project risk, not by default
- Design complete enough at bid that the contractor is pricing a real scope
- Site conditions investigated proportionately to the risk of not investigating
- Change controlled, with cause recorded and analysed
- Schedule managed against a baseline that is updated honestly
- Inspection and quality assurance independent of the contractor's own
- Handover transferring warranties, manuals, and asset data into the operating systems
- Prompt payment down the subcontractor chain

## Lifecycle
Delivery method selection · designer procurement and management · design review and
constructability assessment · geotechnical and site investigation · permitting and approvals ·
construction procurement · preconstruction and mobilization · progress monitoring and payment
certification · change order review, pricing, and approval · schedule analysis and delay claims ·
quality assurance and inspection · safety oversight · substantial and final completion ·
commissioning · warranty administration · asset data handover · project closeout and lessons

## Domain model
Project record with baseline scope, budget, and schedule · design deliverables and review comments
· site investigation reports · bid results and award record · progress payments with retainage ·
change orders with cause classification, value, and approval · schedule updates and float analysis
· inspection and test records with non-conformance · safety incidents · punch list and completion
certificates · warranty register with expiry · as-built and asset data package

## Measures

| Measure | Class |
|---|---|
| Change order value as a share of award, by cause | Outcome |
| Design completeness at bid, by delivery method | Process |
| Cost at completion against approved budget | Outcome |
| Schedule at completion against baseline | Outcome |
| Projects with a documented site investigation before bid | Process |
| Asset data delivered into the operating systems at handover | Process |
| Warranty claims made before expiry | Process |
| Subcontractor payment within required terms | Process |

**Change orders coded by cause is the measure that improves the next project.** Total change
percentage tells you there was a problem; cause tells you whether to invest in design, in
investigation, or in owner decision-making.

## Level variance

- **Federal.** Large programmes under federal acquisition rules, with formal design review stages
  and prevailing wage and domestic sourcing requirements attached.
- **State.** Transportation construction at scale with standardized specifications and materials
  testing regimes, plus vertical construction for state facilities.
- **County / municipal.** Wide range from routine paving to major facilities, with delivery
  method frequently constrained by statute — many jurisdictions are limited to design-bid-build
  unless alternative delivery is specifically authorized, which removes the option most suited to
  complex or fast projects.

## What to get right

**Bid complete design, not a partial one.** Awarding on drawings at sixty percent to save time means
paying for the remaining forty percent as change orders at a price set without competition.

**Invest in site investigation before bidding.** It is the most reliably profitable investigation
in construction, and skipping it to save time on the bid costs more later.

**Classify every change order by cause.** Approved individually without analysis, the same design
gap recurs on the next project; classified, it gets fixed.

**Update baseline schedules honestly as the project proceeds.** A published schedule showing
on-time completion until two months before it doesn't reflects a schedule that stopped being
updated honestly.

**Keep inspection independent of the contractor's own quality programme.** Relying on the
contractor's programme is cheaper, but it removes the independent check exactly where it matters.

**Hand over complete asset data at completion.** Without an equipment list, serial numbers,
warranty dates, and manuals, [maintenance management](/capabilities/maintenance-management/) starts
from nothing and the [asset register](/capabilities/asset-management/) never gets the new asset.

**Track warranty dates and use them.** Defects noticed after the period because nobody tracked the
dates is the same obligation tracking gap as unclaimed service
credits.

**Move retainage and payment down the chain promptly.** Paying the prime while subcontractors wait
leaves the small firms the diversity programme exists to support financing the project.
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
