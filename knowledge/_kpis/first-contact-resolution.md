---
type: KPI
title: First Contact Resolution
description: The share of constituent contacts resolved without the person having
  to come back about the same thing.
resource: https://industry-blueprints.github.io/kpis/first-contact-resolution/
tags: [constituent-service, measurement, resolution, cx]

generated: { by: human:jhofmann, at: 2026-07-26T15:00:00Z }
status: draft
stale_after: 2027-07-26

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: measures
    target: /capabilities/constituent-service-management.md
---

The most useful metric in constituent service and the most frequently mis-defined. Six
organizations will report FCR and mean six different things, which makes benchmarking
across them meaningless and makes internal trends unreliable whenever the definition
quietly shifts.

## Business purpose

To measure whether the service actually solved the person's problem, as distinct from
whether it processed their contact efficiently. It is the only common operational metric
that improves for both the constituent and the organization at the same time: a resolved
contact is a contact that does not come back.

## Definition

> The proportion of inbound contacts, in a period, that are not followed by another contact
> from the same person about the same matter within a defined follow-up window.

Three parameters have to be pinned down, and disagreements about FCR are almost always
disagreements about one of them:

| Parameter | Typical value | Why it matters |
|---|---|---|
| Follow-up window | 7 or 14 days | Too short flatters the number; too long attributes unrelated contacts |
| "Same matter" | Same service type, same person | The hard part — requires a case record that spans channels |
| Contact scope | Human-handled inbound | Whether self-service and outbound count changes the number substantially |

## Formula

```
FCR = 1 − (contacts followed by a related contact within W days ÷ total qualifying contacts)
```

Deliberately expressed as a subtraction from total: it makes explicit that the numerator is
a *failure* count, which is easier to audit than a success count. Success counts drift upward.

## Data required

- Case records with a stable constituent identifier that persists across channels.
- Service type on every case.
- Contact timestamps.
- A relationship between cases, or enough attributes to infer one.

**This is why FCR is a level-3 metric.** At level 2 the same person appears as three
records in three systems and "same matter" cannot be established, so what gets reported is
either a proxy (the representative ticks a "resolved" box) or a fiction. Both are worse than
not reporting it, because they get trended.

## Typical values by maturity level

Indicative, for orientation in a workshop — not benchmarks:

| Level | What is typically reported | What is typically true |
|---|---|---|
| 1 | Not measured | Unknown |
| 2 | 80–90%, self-reported by staff | Unknowable; measured value usually 15–25 points lower |
| 3 | 60–75%, measured | Approximately correct for the first time, and the drop from level 2 is a reporting artefact, not a regression |
| 4 | 70–85% | Improvement is real, driven by better routing and answers at point of contact |
| 5 | 75–90%, with volume falling | The number matters less than the falling denominator |

**Warn people about the level 2 → 3 drop before they see it.** An organization that starts
measuring FCR properly will appear to get dramatically worse in the quarter it does so. More
than one improvement programme has been cancelled on the strength of that artefact.

## Interpretation guidance

- **Segment or it will mislead.** By service type above all — a licence renewal and a
  complex casework enquiry have no business sharing a target. Also by channel and by language.
- **Read alongside handle time.** FCR rising while handle time falls is usually real
  improvement. FCR rising while handle time rises sharply may just be representatives
  keeping people on the line to avoid a callback.
- **A very high FCR is a warning.** Above ~90% measured, the usual explanation is that the
  follow-up window is too short, related contacts are not being linked, or people have given
  up rather than been resolved.
- **Deflection is not resolution.** A person who abandoned the queue did not get resolved.

## Common data-quality concerns

- Constituent identity resolution across channels — the single largest source of error.
- Anonymous contacts, which cannot be linked and are usually silently excluded, inflating the number.
- Reclassified cases, where the service type at contact differs from the one at close.
- Bulk-closed backlog, which can produce a large one-off improvement with no change in service.
