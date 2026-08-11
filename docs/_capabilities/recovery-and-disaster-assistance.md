---
id: recovery-and-disaster-assistance
title: Recovery & Disaster Assistance
type: capability
level: 2
version: '0.1'
status: draft
description: Damage assessment, individual and public assistance, and the long tail
  of rebuilding and reimbursement — which outlasts the attention by years.
last_updated: '2026-08-11'
capability_area: protect
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
To assess damage, help affected people and businesses access assistance, restore public
infrastructure, obtain reimbursement for eligible costs, and rebuild in a way that reduces exposure
next time.

**Recovery is the longest phase and the one with the least capacity assigned.** Response lasts
days; recovery lasts years, runs on grant administration and documentation, and continues long
after the staff who were surged into it have returned to their normal jobs.

## Desired outcomes

- Damage assessed quickly and accurately enough to support a declaration request
- Affected people connected to assistance without navigating every programme themselves
- Public infrastructure restored, with mitigation built in where it is fundable
- Costs documented to the standard reimbursement requires
- Reimbursement claimed, obtained, and closed out
- Recovery decisions reducing future exposure rather than reproducing it
- Recovery equity monitored, because assistance systematically favours those with documentation and capacity

## Lifecycle
Initial and preliminary damage assessment · declaration request preparation · individual assistance
programme coordination and referral · disaster recovery centre operation · public assistance project
formulation and worksheet development · procurement under emergency conditions ·
obligation and cost documentation · mitigation measure
incorporation · insurance claim coordination and duplication-of-benefits checking · debris
management · temporary and permanent housing coordination · business recovery support · long-term
recovery committee coordination · appeals of denied claims · closeout and audit response

## Domain model
Damage assessment records by structure and infrastructure element, with
location · declaration request documentation · individual assistance
referral and outcome records · public assistance projects with scope, cost, and category · cost
documentation — labour, equipment, materials, contracts — per project · insurance claims and
recoveries · duplication-of-benefits checks · mitigation measures incorporated and their funding ·
reimbursement claims, obligations, and payments · closeout and audit records

## Measures

| Measure | Class |
|---|---|
| Time from event to completed preliminary damage assessment | Process |
| Eligible costs documented to the reimbursement standard | Process |
| Reimbursement claimed against reimbursement received | Outcome |
| Time from claim to obligation and to payment | Process |
| Projects incorporating mitigation beyond restoration | Outcome |
| Assistance take-up among affected households, by segment | Outcome |
| Households still displaced at six and twelve months | Outcome |
| Audit findings and de-obligations at closeout | Outcome |

**De-obligation at closeout is the failure that arrives last and hurts most.** Costs reimbursed
during recovery and clawed back years later — usually for procurement or documentation defects —
land on a budget with no provision for them.

## Level variance

- **Federal.** Declaration process, individual and public assistance programmes, and the
  documentation and procurement rules that determine eligibility.
- **State.** Recipient and pass-through for federal disaster funds — administering public
  assistance to local subrecipients and inheriting the monitoring obligation, which is exactly the
  structure described in [grants management](/capabilities/grants-management-outbound/).
- **County / municipal / tribal.** Subrecipient and the entity actually doing the rebuilding.
  **Small jurisdictions are most exposed**: they must front the cost, document to a federal
  standard with no grants staff, and are the most likely to have costs disallowed. Emergency
  procurement conducted under pressure is the single most common source of later de-obligation.

## What to get right

**Document to the reimbursement standard from the start.** Force account labour, equipment hours,
and contracts recorded operationally but not in the form reimbursement requires get caught at
audit, years later — capture them in the required form as the work happens.

**Record the justification alongside every emergency procurement.** Non-competitive awards made
lawfully under emergency provisions still need the justification on record, or the cost gets
disallowed.

**Coordinate assistance so the household doesn't have to.** Several programmes, different
eligibility, different documentation, different deadlines — carrying that coordination burden for
people who have just lost their home is the
[referral](/capabilities/referral-and-cross-agency-coordination/) capability at its most
consequential.

**Watch for assistance that favours the documented.** Clear title, insurance, and records are
prerequisites for most programmes, and heirs' property, informal ownership, and renters are
systematically disadvantaged as a result. Measurable, and rarely measured.

**Build mitigation into rebuilding rather than restoring to prior condition.** Restoring the same
asset in the same place to the same standard is the default when mitigation requires a separate
funding stream and more time — plan for that stream early.

**Keep recovery capacity in place for the long haul.** Surge staff return to normal duties at
month three; the grant administration that runs for five years needs more than the one person
usually left holding it.

**Check for duplication of benefits before closeout, not at audit.** Insurance and assistance
both received and discovered at audit gets recovered from the household — catching it earlier
avoids that outcome.

**Stand up a long-term recovery structure.** Housing, economic, and social recovery left to
individual agencies with no coordination once the immediate response ends misses the connections
only a shared structure catches.
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
