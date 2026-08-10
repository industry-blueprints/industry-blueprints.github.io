---
type: Capability
title: Vote Counting, Canvass & Certification
description: Tabulating, auditing, canvassing, and certifying results — where being
  right is necessary and being demonstrably right is the actual requirement.
resource: https://industry-blueprints.github.io/capabilities/vote-counting-canvass-and-certification/
tags: [capability, elections, tabulation, canvass, audit, certification, recount, transparency]

generated: { by: human:jhofmann, at: 2026-07-28T20:15:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/govern.md
  - predicate: has_participant
    target: /personas/program-manager.md
  - predicate: has_participant
    target: /personas/constituent.md
    note: Observer, candidate, and the public — who must be able to verify rather than trust
  - predicate: has_participant
    target: /personas/internal-auditor.md
    note: Post-election audit is an assurance discipline with an unusually short window
---

## Purpose

To tabulate ballots accurately, reconcile every ballot accounted for, audit the result against the
physical record, resolve challenges and recounts, and certify the outcome within the statutory
timeline.

**Being right is necessary and insufficient. The requirement is being demonstrably right.** A
correct count that cannot be verified by an observer, an audit, or a recount does not do the job,
because the output of this capability is not a number — it is a result the losing side can accept.

## Desired outcomes

- Every ballot accounted for, with reconciliation from issue to count
- Tabulation from a voter-verifiable record wherever the equipment supports it
- Post-election audit performed on the physical record, at a meaningful sample
- Results reported with clarity about what is counted and what remains
- Observation genuinely available to parties, candidates, and the public
- Recounts and contests handled to a defined procedure with a preserved record
- Certification within the statutory deadline
- Records retained for the full statutory period

## Key processes

Ballot receipt and reconciliation · signature and eligibility resolution before tabulation ·
tabulation of in-person, early, mail, and provisional ballots · adjudication of ambiguous marks
under published standards · duplicate ballot creation for damaged ballots · provisional resolution
and counting · reconciliation of ballots issued, returned, counted, and rejected · unofficial
results reporting and update cadence · post-election audit — risk-limiting or fixed-percentage ·
canvass and official result compilation · challenge and contest handling · recount conduct ·
certification · results transmission to the state · audit log and record retention · public
observation management

## Key data

Ballot accounting — issued, returned, spoiled, provisional, counted, rejected — reconciled at each
stage · tabulation results by precinct, method, and contest · adjudication decisions with the
standard applied · provisional resolutions with reason · audit sample selection, ballots examined,
and discrepancies · canvass worksheets and official results · challenge and contest records ·
recount records and outcome · certification documents · **chain of custody for ballots and media
throughout** · equipment audit logs · retention records

## Measures

| Measure | Class |
|---|---|
| Ballot reconciliation complete and balanced at every stage | Process |
| Time from close of polls to first unofficial results | Process |
| Post-election audit completed within the statutory window | Process |
| Audit discrepancy rate against tabulated results | Outcome |
| Provisional ballots resolved and counted, versus rejected | Outcome |
| Adjudication decisions applying the published standard, sampled | Process |
| Certification completed by the statutory deadline | Process |
| Recounts and contests, and whether the outcome changed | Outcome |
| Observer access requests accommodated | Process |

**Ballot reconciliation is the measure that underwrites everything else.** If the number issued,
returned, counted, and rejected does not balance at every stage, no assertion about the result is
supportable — and reconciliation is a clerical discipline, not a technical one.

## Level variance

- **State.** Sets audit requirements, canvass and certification deadlines, recount thresholds and
  procedures, and receives and certifies statewide results. Audit methodology — including whether
  risk-limiting audits are required — is a state decision with large consequences for verifiability.
- **County.** **Counts the ballots and conducts the canvass**, with a county board certifying local
  results before transmission to the state.
- **Municipal.** Counts and canvasses where the function sits locally, under state procedure.

## What to get right

**Reconcile at every stage as counting proceeds.** Balancing ballots issued against ballots
returned throughout, rather than deferring it, is what lets a later discrepancy be located to a
stage or a location.

**Explain what remains outstanding when reporting results.** An early total that shifts as mail
and provisional ballots are added is entirely predictable — stating in advance how many remain
and when they will be counted is what keeps it from reading as irregularity.

**Audit against the physical record.** Comparing the count to the voter-verifiable paper record,
not just checking tabulation against itself, is what makes an equipment or configuration error
detectable.

**Size audits to the margin.** Risk-limiting methods that size the sample to the margin are
current best practice; a fixed small percentage gives little assurance in a close contest and
wastes effort in a wide one.

**Publish the adjudication standard before using it.** A published standard for ambiguous marks is
what keeps decisions consistent and defensible — exactly what a recount will examine.

**Staff provisional resolution through the full election night.** Keeping the resolution step
staffed is what lets resolvable questions actually get resolved.

**Maintain a documented chain of custody.** Documenting every transfer of ballots and media is the
same discipline as
[evidence and property management](/capabilities/evidence-and-property-management/), and the
first thing a contest examines.

**Make observation genuinely workable, not just permitted.** Positioning observers where the
process is actually visible is what fulfills the purpose of the rule, not just its letter.

**Track retention periods by material.** Federal and state retention periods differ by material;
tracking them accurately is what keeps disposal lawful and preserves the record for later review.
