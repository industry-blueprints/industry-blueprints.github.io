---
id: accounting-and-financial-reporting
title: Accounting & Financial Reporting
type: capability
level: 2
version: '0.1'
status: draft
description: Recording transactions to the ledger and producing statements that satisfy
  fund accounting, statutory deadlines, and an auditor.
last_updated: '2026-08-11'
capability_area: fund
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
To record every financial transaction accurately and in the right fund, close the books on a
schedule, and produce financial statements that meet statutory reporting requirements and survive
external audit.

**Government accounting is fund accounting.** Money is segregated by legal restriction on its use,
and the question is never only "what did we spend" but "from which fund, under what authority, and
was that permitted." This is the structural difference from commercial accounting and it shapes
every downstream system.

## Desired outcomes

- One ledger that is the authoritative record, not one of several
- Transactions coded correctly at the point they are incurred
- Restrictions on fund use enforced by the system rather than by memory
- Period close completed on schedule without heroics
- Statements produced from the ledger, not assembled alongside it
- Audit adjustments trending toward zero

## Lifecycle
Chart of accounts design and maintenance · journal entry and approval · subledger reconciliation ·
accounts payable and disbursement · fixed asset accounting · interfund transfers and eliminations ·
grant and project accounting · period close · year-end accrual and adjustment · statement
preparation · audit support and adjustment posting

## Domain model
Chart of accounts with fund, function, and object dimensions · general ledger · subledgers for
payables, receivables, assets, and grants · fund balance and restriction classifications ·
reconciliation records · accruals and their basis · audit adjustments with cause

## Measures

| Measure | Class |
|---|---|
| Days to close a period | Process |
| Reconciliations completed within the close window | Process |
| Manual journal entries as a share of total | Process |
| Audit adjustments — count and value | Outcome |
| Statements filed by the statutory deadline | Output |
| Restatements of prior-period figures | Outcome |

Manual journal volume is the leading indicator. High volume means the source systems are not
producing correct entries, and everything else on this list degrades from there.

## Level variance

- **Federal.** Agency financial statements audited annually against federal accounting standards,
  with a government-wide consolidation and specific requirements for reporting on federal awards
  made and received.
- **State / local.** Governmental accounting standards with a fund structure, a distinction
  between fund-level and government-wide statements, and an annual comprehensive financial report
  filed to a statutory deadline. Many jurisdictions pursue formal reporting recognition, which
  raises the bar above the statutory minimum.
- **Municipal.** Smallest jurisdictions may operate on a cash or modified-cash basis with the
  accrual conversion performed once a year by the audit firm — which means the ledger in use
  through the year does not reconcile to the statements produced from it.

## What to get right

**Correct the code at the point of entry, not at close.** Transactions posted to whatever code is
convenient and reclassified during close leave no in-year report trustworthy, and stretch the
close to weeks. This is the same failure that makes [grant reporting](/capabilities/grants-management-inbound/) manual.

**Design a chart of accounts that survives a reorganization.** Tie it to the org chart and
restructuring breaks the ledger — or worse, the old structure persists in the codes for a decade.

**Reconcile on schedule, every period.** Skipping two months during a busy period makes the
differences unresolvable once they have compounded.

**Keep every adjustment inside the system, not in a spreadsheet between the ledger and the
statements.** An adjustment made outside the system is one the auditor must trace and the
organization cannot reproduce.

**Enforce fund restrictions in the system, not in one person's memory.** When that person
retires, restricted money gets spent on unrestricted purposes and is found later.

**Track capital assets continuously, not just at the count.** Recording additions and disposals
only from an annual physical inventory lets the asset register and the ledger diverge all year.

**Trace audit findings to their operational cause.** Treating them as an accounting problem misses
that most repeat findings originate upstream — see repeat finding rate.
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
