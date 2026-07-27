---
type: Governance Control
title: Subrecipient Monitoring & Pass-Through Responsibility
description: What a pass-through entity must do to remain accountable for funds it
  awarded to someone else — and the determination that decides which rules apply.
resource: https://industry-blueprints.github.io/governance/subrecipient-monitoring/
tags: [governance, grants, monitoring, pass-through, compliance, oversight]

sources:
  - id: ug
    resource: https://www.ecfr.gov/current/title-2/subtitle-A/chapter-II/part-200
    title: 2 CFR Part 200 — Uniform Administrative Requirements, Cost Principles, and Audit Requirements for Federal Awards

generated: { by: human:jhofmann, at: 2026-07-27T14:00:00Z }
status: draft
stale_after: 2027-01-27
depth: defined

industry: public-sector
government_levels: [federal, state, county]

relationships:
  - predicate: constrains
    target: /processes/subrecipient-risk-and-monitoring.md
  - predicate: constrains
    target: /capabilities/grants-management-outbound.md
  - predicate: constrains
    target: /ai-opportunities/subrecipient-risk-signals.md
---

> **Verify before relying on this.** The control objective and the failure modes below are stable,
> but the specific requirements, thresholds, and audit trigger points are set by regulation that
> is periodically amended — the single audit threshold in particular has changed in recent years.
> Confirm current requirements and effective dates against the primary source.

## Control objective

An organization that passes funds to another remains accountable for those funds. It must
determine what kind of relationship it has created, assess the risk of the recipient, monitor
proportionately to that risk, and act on what it finds.

## Why this control exists

The accountability does not transfer with the money. **A state that subawards to forty counties
answers for how those counties spent federal funds** — without managing them, without employing
them, and usually without visiting most of them.

Monitoring is the only mechanism available, and it is a genuine trade. Too little and
non-compliance surfaces at audit, when the remedy is repayment. Too much and small recipients
spend a material share of the award on compliance, which defeats the programme's purpose and
selects against exactly the community organizations it was meant to reach.

## The threshold determination

Before any monitoring obligation attaches: **is this a subaward or a procurement contract?**

| | Subaward | Procurement contract |
|---|---|---|
| The organization is | Carrying out part of the programme | Providing goods or services |
| Decision-making | Has programmatic discretion | Follows a specification |
| Performance measured against | Programme objectives | Deliverables and terms |
| Eligibility determinations | May make them | Does not |
| Compliance regime | Full pass-through requirements | Procurement terms only |

**Decided on substance, not on what the document is called.** Get it wrong in one direction and a
vendor is buried in requirements that do not apply; in the other, a subrecipient goes entirely
unmonitored while the pass-through entity remains accountable for it.

The determination is made early, often casually, and it silently sets the obligations for the
whole relationship. It should be documented with its reasoning — which is rare.

## Required controls

1. **Documented subaward-versus-contract determination** for every funded relationship, with the
   basis recorded.
2. **Identifying information communicated at award** — the award identifier, the funding source
   traced to origin, the programme, the period of performance, and the applicable requirements.
3. **Flow-down of applicable conditions**, translated into terms the recipient can actually
   operationalize rather than forwarded verbatim.
4. **Risk assessment before monitoring is planned**, considering prior experience, audit history,
   new personnel or systems, and the nature and amount of the award. Documented, dated, and
   revisited on trigger events.
5. **Monitoring proportionate to assessed risk**, with the plan recorded and the proportionality
   defensible.
6. **Findings issued in writing** with the requirement, the condition found, the cause, and the
   required action.
7. **Corrective action verified, not merely received.** A finding is not closable on receipt of
   a plan.
8. **Audit report follow-up** where the recipient is required to obtain an independent audit —
   including findings that relate to the awarded funds.
9. **Escalation defined in advance**: additional conditions, withholding, suspension, termination.
10. **Recipient risk history visible across programmes** within the organization.

## Required evidence

Determination records · executed agreements showing required identifying information and
conditions · dated risk assessments with basis · monitoring plans and completion records ·
findings with corrective actions and **verification evidence** · audit follow-up records ·
escalation decisions

## Where organizations fail this control

**Uniform monitoring documented as risk-based.** A risk tier assigned at award, and everyone
receiving the same desk review regardless. The assessment exists; it does not drive anything.

**Findings closed on receipt of a plan.** The most common failure, and the one
[repeat finding rate](/kpis/repeat-finding-rate/) exposes.

**Conditions flowed down verbatim.** Federal terms forwarded to a three-person non-profit, which
is technically compliant and practically a guarantee of non-compliance downstream.

**Risk attached to the award rather than the recipient**, so a recipient's history in another
programme is invisible — a [data model](/data-models/grants-data-model/) failure showing up as an
oversight failure.

**No escalation path.** Findings recur because the only options are a letter or termination, and
neither is proportionate.

## Level variance

- **Federal.** Sets the framework, monitors states as pass-through entities, relies heavily on the
  single audit for assurance.
- **State.** The hardest position: monitored while monitoring, and obliged to flow down conditions
  it must itself satisfy.
- **County.** Monitors local providers, frequently with one person, while being monitored by the
  state. Proportionality matters most here and capacity for it is thinnest.

## Review frequency

Every six months, and immediately on any amendment to the governing regulation or change to audit
thresholds.
