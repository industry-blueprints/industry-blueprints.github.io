---
type: Capability
title: Campaign Finance & Candidate Filing
description: Qualifying candidates and measures for the ballot, and collecting and
  publishing campaign finance disclosure in time for it to matter.
resource: https://industry-blueprints.github.io/capabilities/campaign-finance-and-candidate-filing/
tags: [capability, elections, campaign-finance, disclosure, candidate-filing, petitions, ballot-access]

generated: { by: human:jhofmann, at: 2026-07-28T20:15:00Z }
status: draft
stale_after: 2027-07-28
depth: defined

industry: public-sector
government_levels: [federal, state, county, municipal]

relationships:
  - predicate: part_of
    target: /domains/govern.md
  - predicate: has_participant
    target: /personas/constituent.md
    note: Candidate, petition signer, and the voter the disclosure exists to inform
  - predicate: has_participant
    target: /personas/elected-official.md
    note: Regulated by a process frequently administered by an office they help fund
  - predicate: has_participant
    target: /personas/internal-auditor.md
    note: Disclosure without examination is publication, not oversight
---

## Purpose

To determine who and what appears on the ballot — candidate qualification, petition verification,
and measure certification — and to collect, examine, and publish campaign finance disclosure so
that voters can see who is funding the choice in front of them.

**Disclosure has value only if it is timely and usable.** A report filed after the election, or
published as a scanned image nobody can search, satisfies the statute and informs no one. The
purpose is not the filing; it is a voter's ability to know before they vote.

## Desired outcomes

- Filing requirements and deadlines clear enough that a first-time candidate can comply
- Qualification determined against published criteria, consistently
- Petition verification accurate, transparent, and completed in time to challenge
- Ballot order and measure text determined by rule rather than by discretion
- Disclosure reports filed electronically and published in structured, searchable form
- Publication fast enough to inform the election it relates to
- Examination performed, not just receipt recorded
- Enforcement proportionate and consistent, and independent of the officials it covers

## Key processes

Candidate filing intake and fee or petition-in-lieu processing · qualification determination —
residency, eligibility, party status · nominating petition receipt and signature verification ·
challenge and appeal handling · withdrawal and vacancy processing · ballot order determination ·
ballot measure petition verification and title setting · committee registration · campaign finance
report intake and validation · contribution limit and source restriction checking · independent
expenditure and electioneering reporting · publication in structured, searchable form · examination
and audit of filings · late and non-filing follow-up · penalty assessment · advisory opinion issue ·
public inquiry response

## Key data

Candidate filings with qualification determination and basis · petition submissions with signature
verification results and sample methodology · challenges and outcomes · ballot order determinations
· measure petitions, titles, and certification · committee registrations with officers and bank
details · **campaign finance reports as structured data, not documents** · contributions and
expenditures with contributor, date, amount, and employer where required · limit and source checks
performed · examination and audit findings · late filings and penalties · advisory opinions,
indexed for reuse

## Measures

| Measure | Class |
|---|---|
| Filings determined within the statutory period | Process |
| Petition verification completed with time remaining to challenge | Process |
| **Time from report filing to public availability** | Process |
| Reports published as structured data versus as document images | Process |
| Filings examined beyond receipt, as a share of filings | Process |
| Late and non-filings identified, and resolved | Process |
| Penalties assessed consistently across similar violations | Outcome |
| Public searches and data downloads — evidence the disclosure is used | Output |
| Advisory opinions issued, and reused rather than re-researched | Process |

**Time from filing to public availability is the measure that determines whether this capability
does anything.** Same-day structured publication informs the election; a scanned PDF three weeks
later informs the historical record.

## Level variance

- **Federal.** Federal candidate and committee filing with electronic submission and public
  structured data — the model for searchable disclosure, and the reason federal data is far more
  usable than most state data.
- **State.** Secretary of state or an independent commission handling statewide candidate filing,
  ballot measure qualification, and campaign finance for state and often local candidates. Whether
  enforcement sits with an independent commission or with an elected officer is the structural
  question here.
- **County.** Candidate filing for county offices and petition verification, frequently as an
  election office function alongside everything else.
- **Municipal.** Local candidate filing and, in many jurisdictions, **paper campaign finance reports
  with no publication mechanism at all beyond inspection at the clerk's counter** — which is where
  the disclosure gap is widest and least examined.

## What makes disclosure work

**Publish disclosure as structured data, not images.** Scanned paper or flat PDFs are unsearchable
and unaggregatable, so the data exists and no one can analyse it. Structured electronic filing is
the single change that makes this capability effective.

**Set deadlines and processing times that land before the election.** A deadline that falls close
enough to election day, plus a processing interval, means the last and largest reports would
otherwise become public only after voting.

**Examine filings, not just receive them.** Reports collected, filed, and never examined leave
limits, prohibited sources, and arithmetic errors unchecked, and the deterrent effect nil.

**Verify petitions with enough time left to challenge.** Signatures verified right up to the
deadline leave no window for the challenge the process assumes is available.

**Publish the verification sampling methodology.** A sample-based check whose method is not stated
leaves both acceptance and rejection contestable.

**Write filing rules a first-time candidate can navigate.** Rules, deadlines, and report formats
that assume prior experience or a compliance professional are a real barrier to first-time
candidates and are rarely counted as one.

**Keep enforcement independent of the officials it covers.** Where campaign finance enforcement
sits with an office accountable to the people it regulates, the independence problem is
structural — the same issue as [investigations reviewed by the chain](/capabilities/investigations/).

**Index advisory opinions for reuse.** Leaving them unindexed means the same question gets
researched repeatedly, and candidates get inconsistent answers.

**Make local disclosure real, not nominal.** Paper filings in a drawer, available on request during
office hours, is compliance with the letter and absence of the function.
