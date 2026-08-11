---
id: knowledge-management
title: Knowledge Management
type: capability
level: 2
version: '0.1'
status: draft
description: Making sure the answer staff and the public rely on is correct, current,
  findable, and owned by someone.
last_updated: '2026-08-11'
capability_area: inform
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
To convert policy, regulation, and operational practice into answers people can act on — owned,
reviewed, findable at the moment of need, and written for the person who has to use them.

**This capability determines whether AI assistance is viable elsewhere.** A grounded assistant
inherits the governance of the content it is grounded in. See
Grounded Knowledge Retrieval, which carries a minimum
maturity level for exactly this reason.

## Desired outcomes

- Every article has a named owner and a live review date
- Staff use governed content rather than personal documents
- Retrieval fast enough to beat asking a colleague
- Gaps visible and routed to whoever can close them
- Public and staff versions of the same answer that do not contradict each other

## Lifecycle
Content inventory and rationalization · ownership assignment · authoring and plain-language
review · publication and versioning · review cycle management · change surveillance against
source policy · gap capture and routing · retirement of superseded content · usage analysis

## Domain model
Article register with owner, review date, and scope · source policy references · version history ·
usage and search analytics · gap queue · retirement log

## Measures

| Measure | Class |
|---|---|
| Articles with a named owner and current review date | Process |
| Median time to find an answer | Process |
| Articles opened in the last 12 months | Process |
| Gaps logged, and gaps closed | Process |
| Contacts resolved using governed content | Process |
| Answer consistency across staff and channels | Outcome |

The fifteen-second threshold matters more than it looks: if search takes longer than asking a
colleague, staff will ask the colleague. That is a latency problem, not a culture problem.

## Level variance

- **Federal.** Large volumes of program-specific content, plain-language obligations for
  public-facing material, and content that states must operationalize locally.
- **State.** Frequently maintains knowledge that county staff deliver, making ownership and review
  a cross-organizational problem rather than an internal one.
- **County / municipal.** Widest topic range with least depth per topic — a single generalist
  covers refuse collection through business licensing, so retrieval quality matters more than
  content depth.

## What to get right

**Assign a named owner and review date to every piece of content.** A large library with no named
owners and no review dates is not a knowledge base; it is a liability with a search box.

**Write answers, not policy documents.** Twelve pages of authoritative text is unusable at the
point of need; staff will translate it privately and never share the translation, so it has to be
written as an answer in the first place.

**Mark superseded content as superseded.** Left dated but unmarked, it surfaces in retrieval with
nothing indicating it was replaced.

**Capture gap signal from unanswered questions.** Without it, the organization cannot distinguish
"we have no content" from "our content is unfindable," and fixes the wrong one.

**Budget for two audiences.** Staff-facing and public-facing content have different reading-level,
accessibility, and translation requirements, and need separate maintenance rather than being
treated as the same content.

**Assign ownership before generating content in bulk.** Producing content nobody owns increases
the surface area a single under-resourced person is accountable for — the opposite of the goal.
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
