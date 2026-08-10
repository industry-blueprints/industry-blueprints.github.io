---
type: KPI
title: Track Determined Before Subject Contact
description: The share of matters where the administrative-or-criminal decision was recorded
  before anyone approached the subject — the one process measure with no recovery path.
resource: https://industry-blueprints.github.io/kpis/track-determined-before-subject-contact/
tags: [kpi, investigations, garrity, due-process, process, oig, program-integrity]

generated: { by: human:jhofmann, at: 2026-07-30T13:00:00Z }
status: draft
stale_after: 2027-07-30
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal, tribal]
measure_class: process

relationships:
  - predicate: measures
    target: /capabilities/investigations.md
---

## Business purpose

Almost every process measure in this library tracks something recoverable. A missed target means
rework, cost, or delay. **This one tracks the only decision in the capability that has no
recovery path** — once a compelled administrative interview has occurred, the criminal option is
gone, and no subsequent diligence restores it.

That property makes it worth measuring even at a low volume of matters. Most organizations
cannot justify a metric on a denominator of eleven cases a year. This one earns its place
because the cost of the individual failure is unbounded rather than proportional.

## Definition

> The proportion of opened matters in which a track decision — administrative, criminal, or
> parallel with an agreed sequence — was **recorded** before any contact with the subject, of
> all opened matters where a subject was identified and contacted.

## Formula

```
Track determination rate = matters with a recorded track decision preceding subject contact
                           ÷ matters with an identified subject who was contacted
```

Two definitional points do the work here:

**"Recorded" means dated and attributed.** A track that everyone understood but nobody wrote
down scores zero. This is deliberate and it will be argued about — the argument is the point,
because an unrecorded decision cannot be shown to have preceded anything.

**"Contact" is broader than "interview."** It includes an informal conversation, a request for
the subject's account, a supervisor asking what happened, and a notification that a matter
exists. The doctrine attaches to compelled questioning; the measure attaches earlier on purpose,
because the informal conversation is how the interview happens without anyone calling it one.

| Excluded from the denominator | Why |
|---|---|
| Matters closed at predication with no subject contact | The decision was never live |
| Matters where the subject is not an employee or licensee | The rights that make this irreversible do not attach |
| Anonymous allegations that never identified a subject | No subject to contact |

## Reading it

**The rate is not the finding — the exceptions are.** At any organization running this properly
the number sits at or near total, so the useful reporting is the exception list and its causes:

| Cause of a miss | Points at |
|---|---|
| HR handled it as a personnel matter first | The intake path, not the investigator — see [allegation intake](/processes/allegation-intake-and-track-determination/) |
| Supervisor spoke to the subject before reporting | Publication. The rule binds people who have never read it |
| Track decided but not recorded | Case system design, or a control treated as a formality |
| Prosecutor consultation still pending at contact | A missing standing relationship, not a missing procedure |
| Matter re-characterized after contact | Predication quality — the conduct's criminal potential was assessed too narrowly |

Row one is the most common cause in organizations without a dedicated investigative function,
and it is not fixed by training investigators. It is fixed by naming a track owner and
publishing the no-contact rule to everyone who might receive an allegation.

## What good looks like

- **At or near total, with a populated exception list.** This is the healthy pattern. Exceptions
  recorded and analysed means the control is visible.
- **Total, with no exceptions ever recorded.** Suspect the measure before believing it. Either
  contact is being defined narrowly, or misses are not reaching the register.
- **Improving after a policy publication** rather than after a training course — the expected
  shape, since the failure usually originates outside the investigative function.

There is no benchmark to compare against, and that is not a defect in the measure. A jurisdiction
whose rate is below total does not have a performance gap; it has a specific list of matters
where something irreversible may have happened, and each one is reviewable individually.

## Segment it

- **By where the allegation first arrived** — hotline, HR, supervisor, audit, data match. This
  is the segmentation that identifies the leak.
- **By whether a dedicated investigative function was involved** from the start
- **By kind of matter** — misconduct, program integrity, workplace, regulatory. Program
  integrity matters frequently arrive through data matching with no subject contact risk;
  workplace matters arrive through HR, which is where the exposure is.
- **By elapsed time from receipt to track decision.** A rate at total with a median of three
  weeks means matters are sitting undecided, which has its own costs.

## Data required

- Allegation register with receipt date and arrival channel
- Track decision with date, decider, and basis — from
  [investigative track and rights advisement](/governance/investigative-track-and-rights-advisement/)
- Subject contact log with date and contact type, including informal contact
- Subject status — employee, licensee, contractor, member of the public
- Predication record with its date

The subject contact log is the field most often absent, and without it this measure cannot be
computed at all. Where it does not exist, that absence is the first finding.

## Level variance

- **Federal.** Statutorily independent inspectors general with established prosecutor
  relationships and formal advisement procedures, so the rate is typically high and the useful
  reporting is the exception analysis.
- **State.** Bifurcated within one government — fraud control and program integrity units carry
  the discipline while general employment matters frequently do not, so **segmenting by kind of
  matter matters more here than anywhere else.**
- **County / municipal.** Frequently unmeasurable today, because no allegation register exists
  and subject contact is not logged. **Standing the measure up is itself the intervention**: the
  act of asking "who spoke to them, and when?" surfaces the exposure faster than any policy
  document, and it can be done on a spreadsheet.
- **Tribal.** Jurisdictional determination should be recorded alongside the track decision, and
  measured with it.
