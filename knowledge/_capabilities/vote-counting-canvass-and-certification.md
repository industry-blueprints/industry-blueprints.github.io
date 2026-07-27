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

## Where it goes wrong

**Reconciliation deferred.** Counting proceeds without balancing ballots issued against ballots
returned, so a discrepancy found later cannot be located to a stage or a location.

**Results reported without explaining what is outstanding.** An early total that shifts as mail and
provisional ballots are added, with no advance statement of how many remain and when they will be
counted — which is entirely predictable and, unexplained, reads as irregularity.

**No audit of the physical record.** Tabulation checked only against itself, so an error in the
equipment or its configuration is undetectable. A meaningful audit compares the count to the
voter-verifiable paper record.

**Audits sized without regard to margin.** A fixed small percentage provides little assurance in a
close contest and wastes effort in a wide one; risk-limiting methods size the sample to the margin
and are the current best practice.

**Adjudication without a published standard.** Ambiguous marks resolved by individual judgment,
inconsistently, and the decisions are exactly what a recount will examine.

**Provisional ballots rejected on process.** Resolvable questions never resolved because the
resolution step is unstaffed after a long election night.

**Chain of custody informally maintained.** Ballots and media moved without documented transfer —
the same discipline as
[evidence and property management](/capabilities/evidence-and-property-management/), and the first
thing a contest examines.

**Observation permitted but not workable.** Observers admitted to a location from which nothing is
visible, which satisfies the rule and defeats its purpose.

**Records retention miscounted.** Federal and state retention periods differ by material; disposing
early is unlawful and forecloses any later review.
