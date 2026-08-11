---
id: legal-counsel-and-representation
title: Legal Counsel & Representation
type: capability
level: 2
version: '0.1'
status: draft
description: Advising on authority and exposure before decisions are made, and representing
  the organization once they have been.
last_updated: '2026-08-11'
capability_area: govern
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
To answer the question that precedes every other design question in government — *do we have the
authority to do this?* — and to represent the organization when its decisions are challenged.

**The authority question has no private-sector equivalent.** A public organization can only do
what it has been empowered to do, and discovering the answer late is the most expensive way to
discover it.

## Desired outcomes

- Authority confirmed before commitment, not after
- Legal risk stated in terms a decision-maker can weigh against other risks
- Advice sought early enough to shape the option, not only to bless it
- Litigation and claims managed with the record intact
- Legal holds applied promptly and released deliberately
- Recurring exposure fed back into policy rather than re-litigated

## Lifecycle
Authority and legal opinion requests · contract and agreement review · litigation and claims
management · legal hold issuance, tracking, and release · discovery response · settlement
authorization · administrative hearing representation · outside counsel engagement and oversight ·
legal risk reporting

## Domain model
Matter register with status, exposure, and assigned counsel · opinion register, indexed so past
answers are findable · legal hold register with custodians and scope · privilege log · settlement
and judgment record · outside counsel spend by matter · claims history feeding
[risk management](/capabilities/risk-management-and-insurance/)

## Measures

| Measure | Class |
|---|---|
| Advice requests received before commitment versus after | Process |
| Time to first substantive response on a request | Process |
| Legal holds issued within the required interval of trigger | Process |
| Holds released when no longer required | Process |
| Opinions reused rather than re-researched | Process |
| Matters arising from a previously identified and unremediated cause | Outcome |
| Outside counsel spend as a share of total legal cost | Input |

The last outcome measure is the one that turns a legal function from reactive to preventive.

## Level variance

- **Federal.** In-house counsel with department-level litigating authority, and representation
  frequently conducted by a central justice function rather than the agency itself.
- **State.** An elected or appointed attorney general with independent standing, which can produce
  a genuine divergence between the agency's position and the state's.
- **County / municipal.** A county or city attorney who may be elected, may serve the governing
  body rather than the administration, and in small jurisdictions may be a contracted firm on
  retainer — which makes "call legal early" a decision with a visible invoice attached.

## What to get right

**Consult counsel before the decision, not to defend it after.** The cheap intervention is
available three months earlier, before the commitment is made.

**State advice as a risk, not a veto.** "You can't do that" ends the conversation; "this exposes
you to X, mitigated by Y" lets a decision-maker choose. The second is harder to produce and far
more useful.

**Keep an indexed opinion register so answers can be found.** Without one, the same question gets
researched four times in six years.

**Release legal holds deliberately once the trigger has passed.** Applied and forgotten, they
silently stop retention and
[disposition](/capabilities/records-and-information-management/) from working across the whole
estate.

**Assert privilege narrowly and deliberately.** Over-assertion in response to
[public records requests](/capabilities/public-records-and-transparency-response/) is a common
finding and erodes trust in every legitimate assertion.

**Analyze settlement patterns across matters, not just within one.** Repeated claims from one cause
settled individually, with none traced back to the practice producing them, is a pattern going
unread.
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
