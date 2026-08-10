---
type: Persona
title: Investigator
description: Establishes whether a specific person did a specific thing, to a standard that
  holds — and carries the decisions that cannot be taken back.
resource: https://industry-blueprints.github.io/personas/investigator/
tags: [persona, investigations, oig, misconduct, program-integrity, investigative-case-management]

generated: { by: human:jhofmann, at: 2026-07-30T11:00:00Z }
status: draft
stale_after: 2027-07-30
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal, tribal]
persona_type: specialist
---

Also: Special Agent, Criminal Investigator, Program Integrity Investigator, EEO Investigator,
Complaint Investigator, Board Investigator. In a county with no dedicated function this is an
HR generalist, an internal auditor, or the county attorney — **holding the same doctrine and
none of the training**, which is the exposure named on
[Investigations](/capabilities/investigations/).

## Role summary

Receives an allegation, assesses whether there is a basis to proceed, decides or escalates the
track, gathers and preserves evidence, interviews subjects and witnesses under the rights that
attach, and reaches a documented finding against a stated standard of proof.

**The distinguishing feature of this role is the irreversibility of its early decisions.** Most
professional roles in this library can recover from a bad call by making a better one later. An
investigator who conducts a compelled administrative interview before the criminal track has
been considered has ended a possibility permanently, on day two, usually in good faith.

## What separates this role from adjacent ones

| Confused with | The actual difference |
|---|---|
| [Internal auditor](/personas/internal-auditor/) | Audit examines systems against criteria. Investigation examines whether an identified person did an identified thing. Different standards, different rights, different outputs — and frequently the same office. |
| [HR director](/personas/hr-director/) | HR owns the disciplinary consequence and the due-process constraints on reaching it. The investigator establishes the facts that consequence rests on, and the two roles must not collapse. |
| Analyst | Analysis is a technique this role uses. The role is defined by authority and by the rights that attach to its exercise. |

## Goals

- Track determined before anyone with rights attached is interviewed
- Predication assessed and recorded before a matter is opened
- Evidence held so it survives the matter becoming criminal or civil
- Findings that hold on appeal, grievance, or in court
- Reporters protected, and their protection observable rather than asserted
- Matters concluded in a period that is fair to the subject and to the reporter
- Systemic causes referred, not only individual conduct addressed

## Decisions made

| Decision | Constrained by | Reversible? |
|---|---|---|
| Whether predication exists to open | The allegation, the authority, and available capacity | Yes |
| **Administrative, criminal, or parallel track** | Prosecutor availability, employment status of the subject, the doctrine | **No** |
| Sequence of interviews | The track decision above | Partly |
| Whether to advise rights, and which | The track, the subject's status, representation rights | No |
| What evidence to preserve, and how | Chain of custody requirements, systems the investigator cannot access | Partly — some evidence expires |
| The standard of proof applied to the finding | Statute, policy, and the consequence sought | Yes, if stated |
| Whether to refer for prosecution | Prosecutor's threshold, not the investigator's | Yes |
| Whether to refer a systemic cause to management | Nothing formal — usually the investigator's own judgement | Yes |

Row two is the row. Everything above it is recoverable and most of what follows depends on it.

## Pain points

**Told late.** The matter reached HR first, was handled as a personnel issue for three weeks,
and arrives after the subject has been interviewed. There is nothing to be done about it
afterwards, which is why the intake path matters more than the investigative technique.

**No data access.** Cross-system access is exactly what an investigation needs and exactly what
role-based access control exists to prevent, so investigators work from spreadsheets exported
and emailed by system administrators — simultaneously a control gap, an evidence problem, and a
tip-off to the subject. Designing a lawful, logged, break-glass path is an
[identity and access management](/capabilities/identity-and-access-management/) decision almost
nobody makes deliberately.

**Evidence handled as documents.** Files copied to a shared drive with no chain of custody, so
a matter that later becomes criminal or civil arrives with evidence that cannot be used.

**Small-organization exposure on reporter identity.** An allegation with three possible sources
identifies the source. This is a structural property of small jurisdictions, not a discipline
failure, and it has no clean technical answer.

**Matters that drift.** The subject cannot clear their name, the reporter concludes nothing
will happen, and the record degrades — memories fade, systems overwrite, and the window for
some evidence closes on a retention schedule nobody consulted.

**Findings without a stated standard.** "Substantiated" with no statement of what standard was
applied, which will not support discipline that survives a grievance.

**The systemic referral that goes nowhere.** The individual is disciplined, the process that
permitted the conduct is untouched, and the next person does the same thing.

## Where AI actually helps

Document and communication review at volume, entity resolution across systems, timeline
construction from disparate records, and duplicate or related-matter detection at intake are
genuine assists — the work is real and the volume is frequently unmanageable by hand.

Two boundaries that are not negotiable, and both are about the same thing:

**Exculpatory material cannot be a ranking problem.** A model that surfaces the most relevant
documents is optimizing for the investigator's current hypothesis. Material that undercuts the
finding is by definition low-relevance to that hypothesis, and it is the material the
investigator is obliged to find. Retrieval assists the search; it does not discharge the duty.

**Nothing that touches predication or the finding.** Both are exercises of authority with
consequences for a named person, and both must be attributable to a human who can be asked why.

## Typical questions

- Could this become criminal? Who do I ask, and how fast can I get an answer?
- Has anyone spoken to the subject yet?
- What is the basis for opening this, and is it written down?
- What systems hold evidence here, and how do I get access without telling the subject?
- What standard am I applying, and does the consequence being sought match it?
- Who else has reported something like this, and did anything happen to them afterwards?
