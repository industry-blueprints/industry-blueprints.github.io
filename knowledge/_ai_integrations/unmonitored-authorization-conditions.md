---
type: AI Integration
title: Flag Authorization Conditions With No Monitored Due Date
description: Catch the condition that only exists as a sentence in the permit document,
  before it becomes the thing nobody was watching.
resource: https://industry-blueprints.github.io/ai-integrations/unmonitored-authorization-conditions/
tags: [ai, licensing, permitting, conditions, monitoring, extraction, obligations]

generated: { by: human:jhofmann, at: 2026-07-29T10:00:00Z }
status: draft
stale_after: 2027-07-29
depth: defined

industry: public-sector
government_levels: [state, county, municipal]
ai_modality: queue
ai_task_type: anomaly_detection
minimum_level: 3

relationships:
  - predicate: assists
    target: /personas/program-manager.md
  - predicate: assists
    target: /personas/caseworker.md
---

## Business problem

A licence or permit is issued with conditions attached — inspection intervals, reporting
requirements, insurance minimums, hours of operation, staffing ratios, a cure period for a
prior violation. The condition is written into the authorization document at issuance and,
in most organizations, exists nowhere else. No queue watches it, no calendar reminds anyone,
and nothing connects it to the holder's record. It surfaces again only when it is violated —
usually because a complaint or an incident forced someone to reread the file.

This is the same failure named on the
[Licensing & Permitting capability page](/capabilities/licensing-and-permitting/): conditions
invisible to any queue, and the [obligation tracking](/patterns/obligation-tracking/) failure
recurring in a third domain, after contracts and grant awards.

## Target outcome

Every condition attached to an active authorization represented as a row in a register — what
it requires, who owns watching it, and when it is next due — with anything missing an owner or
a due date surfaced to a queue automatically, rather than discovered at the next complaint.

## How it relates to obligation extraction

This is downstream of
[extracting obligations from agreements](/ai-integrations/obligation-extraction/), not a
replacement for it. Extraction turns the condition from prose into a register row. This
opportunity watches the register afterward and asks one narrow question on a recurring basis:
**does this row have an owner and a due date, and is the due date still in the future?** A row
missing either is exactly the condition that becomes a finding.

## Why this is a good queue candidate

- **The check is objective.** "Does this record have a populated owner field and a future due
  date" is not a judgment call — it is closer to a data-quality check than a determination, which
  is why it does not need to wait for the higher bar that a decision would require.
- **The failure it catches is silent by nature.** Nothing else in the current process notices a
  condition with no owner; that is precisely why it survives until a violation forces it into
  view.
- **It composes with what licensing already tracks.** Renewal-before-expiry is already a measured
  outcome on this capability; this is the same shape applied to conditions instead of the
  authorization's own term.

## Minimum maturity level: 3

Requires conditions held as structured register entries rather than only as clauses inside a
scanned authorization document, and an owner field the organization actually populates. At level
2, conditions live only in the issued document; there is no register row to check, and the
opportunity has nothing to run against.

## Prerequisites that are usually missing

1. **A condition register**, populated by extraction or by hand, with owner and due-date fields —
   see [obligation tracking](/patterns/obligation-tracking/). Most organizations have never
   built this for licensing, even where they have one for contracts.
2. **A named default owner** for condition types nobody has explicitly assigned. Without one, the
   flag surfaces a gap and then sits in nobody's queue, which is the same failure one layer later.
3. **A working definition of "due."** Some conditions recur (annual inspection), some are
   one-time (submit proof of insurance within 30 days), and a check that treats them identically
   will misfire on the recurring ones.

## Human oversight

Internal-tier under
[AI disclosure and human review](/governance/ai-disclosure-and-human-review/) — this surfaces a
gap in a record, it does not take an enforcement action or communicate with a holder:

- The output is a flag on a register row, routed to the named owner's queue. It never triggers
  suspension, revocation, or a holder-facing notice on its own.
- A flagged row with no plausible owner escalates to the program manager rather than defaulting
  silently to nobody.
- Corrections to the register (an owner reassigned, a due date corrected) are captured — a high
  correction rate on one condition type usually means the register's data is wrong, not that the
  check is.

## Success metrics

- Conditions represented in the register as a share of conditions known to exist (starts low;
  the gap itself is worth publishing)
- Conditions with a populated owner and a future due date
- Time from a condition lapsing to someone noticing, compared against the current baseline of
  "at the next complaint or inspection"
- Findings and violations traceable to a condition that had no owner at the time it lapsed —
  should fall as coverage rises

## Risk level

**Low.** The check is a data-quality flag on an internal register, not a decision about a person
or a business, and getting it wrong costs a wasted look at a row rather than an adverse action.
The risk sits entirely upstream, in the register itself: a register built on a bad extraction
inherits the same flattened-conditionality problem named on the
[obligation extraction page](/ai-integrations/obligation-extraction/), one level removed.
