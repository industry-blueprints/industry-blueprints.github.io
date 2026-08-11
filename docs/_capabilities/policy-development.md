---
id: policy-development
title: Policy Development
type: capability
level: 2
version: '0.1'
status: draft
description: Turning intent into rules that are lawful, implementable, and understood
  by the people who have to apply them.
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
To develop, consult on, adopt, and publish the rules the organization operates under and
enforces — with enough operational grounding that they can actually be applied.

## Desired outcomes

- Policy grounded in an accurate understanding of current practice
- Legal authority confirmed before drafting rather than after
- Implementation cost and feasibility understood before adoption
- Genuine consultation with those affected, including those hardest to reach
- Text specific enough to apply consistently and general enough to survive the edge cases
- A clear effective date and a transition that systems can support

## Lifecycle
Issue identification · authority analysis · evidence gathering and current-state review · option
development and impact assessment · drafting · internal and legal review · public consultation ·
comment analysis and response · adoption · publication and notification · implementation guidance ·
post-implementation review

## Domain model
Policy register with authority references and effective dates · version history · consultation
responses and their disposition · impact assessments · implementation guidance · related
knowledge articles

## Measures

| Measure | Class |
|---|---|
| Policies with confirmed authority documented | Process |
| Consultation responses received, and from whom | Output |
| Comments materially reflected in the final text | Process |
| Lead time between adoption and effective date | Process |
| Guidance issued before the effective date | Process |
| Policies applied consistently in practice | Outcome |

That last one is rarely measured and is the actual test. A policy applied inconsistently has not
been implemented.

## Level variance

- **Federal.** Formal rulemaking under administrative procedure requirements: notice, public
  comment, response to significant comments, and judicial reviewability.
- **State.** State administrative procedure acts with analogous but varying requirements, plus
  policy that local governments must implement without additional funding.
- **County / municipal.** Ordinances adopted in public session, constrained by what state law
  permits the jurisdiction to do — the authority question is more often decisive than the merits.

## What to get right

**Write from knowledge of the caseload, not just the paper case.** Criteria unambiguous on paper
and ambiguous in half of real cases pushes interpretation onto
caseworkers and produces inconsistency the policy then gets blamed for.

**Give implementation a real lead time.** Effective immediately against systems that cannot change
for six months forces manual workarounds that tend to become permanent.

**Make consultation genuinely change the text.** Published for comment with comments filed and the
text unchanged is detectable, corrosive, and the reason participation declines.

**Reach beyond the organized stakeholders.** Responses limited to those with a representative miss
everyone affected who lacks one.

**Issue guidance before the effective date.** Guidance arriving late leaves the first weeks decided
by improvisation that then hardens into precedent.

**Check whether the policy worked after implementation.** Without that review, the same defect gets
reproduced in the next revision.
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
