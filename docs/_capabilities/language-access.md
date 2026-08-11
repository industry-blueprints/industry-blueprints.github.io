---
id: language-access
title: Language Access
type: capability
level: 2
version: '0.1'
status: draft
description: Ensuring people with limited English proficiency can use services on
  equal terms — a civil rights obligation, not a customer service enhancement.
last_updated: '2026-08-11'
capability_area: serve
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
To ensure that people with limited English proficiency, and people who are deaf or hard of hearing,
can access services, understand decisions affecting them, and be understood — through
interpretation, translation, and bilingual capacity.

**This is a civil rights obligation for any organization receiving federal financial assistance,
not a service enhancement.** Framing it as a nice-to-have is both a compliance error and the reason
it is the first thing cut.

## Desired outcomes

- The languages spoken in the served population known from data, not assumption
- Qualified interpretation available at every point of contact, promptly
- Vital documents translated, with translation quality assured
- The right to an interpreter communicated in the languages that need it
- Staff who know how to obtain an interpreter and do so without being asked
- Bilingual staff compensated and assessed for the skill, not used informally
- Family members and children never used as interpreters for consequential matters

## Lifecycle
Population language assessment from census and service data · vital document identification ·
translation procurement and quality assurance · interpreter service provision — in person, phone,
video · qualified bilingual staff assessment and designation · signage and notice-of-rights posting
· staff training on obtaining interpretation · language preference capture and persistence ·
complaint handling on language access · language access plan development and review

## Domain model
Population language profile with speaker estimates by language ·
language preference recorded on the Party and honoured
thereafter · vital document inventory with translation status and version currency · interpreter
requests with language, channel, wait time, and outcome · qualified bilingual staff register with
assessment date · translation vendor performance · language access complaints

## Measures

| Measure | Class |
|---|---|
| Wait time to obtain an interpreter, by language and channel | Process |
| Requests where no interpreter could be obtained | Outcome |
| Vital documents translated into each threshold language | Process |
| Translated content current with its English source | Process |
| Language preference captured, and honoured at the next contact | Process |
| Service outcomes compared across language groups | Outcome |
| Instances of a family member interpreting | Outcome |

**Outcome comparison across language groups is the measure that matters and is almost never
produced.** Interpretation availability is an input; whether limited-English households get the
same determinations, timelines, and resolutions is the actual question.

## Level variance

- **Federal.** Language access obligations flowing from civil rights law to every recipient of
  federal financial assistance, with agency language access plans and published guidance on
  identifying vital documents.
- **State.** State language access statutes in some jurisdictions setting thresholds by speaker
  population, with obligations flowing to counties administering state programmes.
- **County / municipal.** Where the linguistic diversity actually is, and where capacity is
  thinnest — dozens of languages in a single school district, and a translation budget covering
  two. Indigenous and refugee languages with few professional interpreters are the hardest case and
  are usually unaddressed.

## What to get right

**Use qualified interpreters, never children, for medical, benefit, and enforcement encounters.**
Children interpreting for their parents is still routine in these settings, and it is harmful to
the child, unreliable, and in many contexts unlawful.

**Translate the whole service, not just the document.** Translating the application form while
leaving the website that explains it, the phone line, the follow-up letter, and the appeal notice
in English lets a person start and never finish.

**Carry language preference on the Party record, not just at intake.** Captured once and not
carried on the Party record, the next letter arrives in
English and the person has to ask again.

**Route machine translation through qualified review before publishing.** Fast and cheap, it is
also wrong in exactly the high-stakes places — legal rights, medical instructions, deadlines. It is
usable as a drafting aid with qualified review; not usable as the output.

**Assess and compensate bilingual staff for the skill.** Used informally and pulled from their own
work to interpret, they are unassessed for proficiency in the relevant terminology and
uncompensated for the skill.

**Make sure staff know how to obtain interpretation, and that the line is fast enough to use.** A
contract that exists but that staff don't know how to use, with a wait longer than the
appointment, is interpretation available only in theory.

**Keep translated content current with its English source.** Left to drift, the two versions state
different requirements and the non-English one is wrong.

**Revisit threshold languages as the population shifts.** A list set once and left alone means a
growing community ends up served in a language it does not speak.
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
