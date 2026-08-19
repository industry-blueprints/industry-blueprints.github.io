---
title: Investigative Oversight & Performance
summary: Ability to monitor caseload and outcomes, conduct quality assurance review, and identify systemic trends.
status: Draft
tier: Tier 2 · Practitioner
scope: All
updated: 2026-08-19
owner: Content team
workload: Investigations
parent_title: Investigations
parent_url: /workloads/investigations/
order: 16
sections:
  - Overview
  - Maturity Levels
  - Monitor Caseload, Aging, and Deadlines
  - Conduct Supervisory and Quality Assurance Review
  - Measure Program Performance
  - Identify Systemic Trends and Control Weaknesses
  - Forecast Workload and Staffing Demand
  - Identify Cases at Risk of Missing Deadlines
  - Detect Recurring Themes Across Closed Cases
  - Generate Management Summaries of Portfolio Trends
  - Architecture
related:
  - type: Workload
    title: Investigations
    url: /workloads/investigations/
    relationship: HAS_CAPABILITY
    summary: The broader workload this capability supports.
sources: []
---

## Overview

Ability to monitor caseload, aging, deadlines, backlog, workload distribution, and outcomes, conduct supervisory and quality assurance reviews, measure investigative program performance, and identify systemic trends and recurring control weaknesses.

This capability looks across the investigative portfolio rather than at any single matter. It excludes the management of an individual case, which belongs to Investigative Case Management.

## Maturity Levels

| Stage | Typical characteristics |
| --- | --- |
| Not performed | Program performance is not measured beyond anecdote. |
| Manual / ad hoc | Caseload counts are compiled by hand for periodic reporting. |
| Standardized | Defined measures and a quality assurance review process apply across the program. |
| Integrated | Caseload, aging, and outcome measures draw directly from the case system. |
| Automated / optimized | Workload is forecast, at-risk cases are surfaced, and systemic themes are detected across closed cases. |

<p class="eyebrow">Use case</p>

## Monitor Caseload, Aging, and Deadlines

Operational oversight answers what is open, how old it is, what is due, and who is carrying it. Those questions sound simple and are routinely answered wrongly, because the underlying quantities are less obvious than they look. Case age is not elapsed time since opening — a matter held pending a related prosecution, suspended while a subject was unavailable, or tolled by statute has not been sitting untouched, and counting it as though it had produces a backlog figure that overstates the problem and directs attention badly.

Workload distribution has the same difficulty. Counting open cases per investigator treats a complex multi-subject financial matter as equivalent to a single-allegation administrative one, which nobody believes and which makes the resulting distribution useless for rebalancing. Weighting by matter type, subject count, or recorded complexity gives a figure supervisors will actually act on. Both problems come down to computing from the events the case record already holds rather than from status and dates alone.

<p class="discovery-label">Discovery questions</p>

- What does a supervisor need to see about their team's caseload, and how do they get it today?
- Which events pause or toll a case clock in this program?
- How is case age currently calculated, and does it account for suspensions?
- What makes one matter heavier than another here — subjects, allegations, evidence volume?
- How is workload rebalanced, and on what information?
- What backlog definition does the program use, and is it consistent across reporting?
- Which deadlines are tracked centrally, and which live only in the case?

<p class="pattern-label">Implementation pattern</p>

- Compute case age from the append-only activity log's state transitions, subtracting recorded suspension, hold, and tolling intervals rather than differencing open and current dates.
- Model active age and total elapsed age as distinct computed measures, and report both so a suspended matter is neither hidden nor counted as neglected.
- Compute a weighted caseload per investigator from matter type, subject count, allegation count, and recorded complexity, with weights held as versioned configuration.
- Derive deadline status from the case's own derived due dates rather than from a separately maintained calendar, so central reporting and case-level tracking cannot diverge.
- Materialize caseload, aging, and deadline measures into a portfolio analytics store on a scheduled refresh, so operational reporting does not query the transactional case store directly.
- Retain each refresh as a dated snapshot, so a caseload position reported at a point in time can be reproduced.
- Enforce entitlements on portfolio queries at matter granularity, so restricted matters contribute to aggregates without exposing their content.

<p class="eyebrow">Use case</p>

## Conduct Supervisory and Quality Assurance Review

Two kinds of review operate here. Supervisory review examines individual matters as they progress or close, testing whether the work is adequate. Quality assurance review samples across closed matters to test whether the program as a whole meets its standards — whether findings are supported, procedures were followed, timeliness requirements were met, and whether comparable matters are treated consistently.

Sampling design determines what the review can conclude. A convenience sample of matters a reviewer chooses, or one drawn only from a single unit, supports no statement about the program — and programs frequently report quality assurance results as though it did. Stratified random sampling across matter type, outcome, unit, and investigator, with a sample size stated up front, is what allows a rate observed in the sample to say something about the population. Reviewer independence matters equally: a review by someone in the same reporting line as the work under review tests something weaker than it appears to.

<p class="discovery-label">Discovery questions</p>

- What review happens at case level, and what happens across the portfolio?
- How are matters currently selected for quality assurance review?
- What independence is required of a quality assurance reviewer here?
- What criteria does a review assess, and are they enumerated and versioned?
- What is done with quality assurance findings — corrective action, training, policy change?
- How is consistency between reviewers checked?
- What claims does the program make about quality, and does its sampling support them?

<p class="pattern-label">Implementation pattern</p>

- Draw quality assurance samples through a sampling engine using stratified random selection across matter type, outcome, unit, and investigator, with sample size and strata recorded per review cycle.
- Persist the sampling frame, seed, and parameters with each cycle, so a sample is reproducible and its coverage defensible.
- Express review criteria as enumerated versioned definitions, and record a disposition and evidence reference per criterion rather than a single overall rating.
- Enforce reviewer independence in the workflow engine by excluding anyone in the reviewed matter's assignment or supervisory chain from eligible reviewers.
- Assign a configurable proportion of sampled matters to two reviewers independently, and compute inter-reviewer agreement per criterion.
- Model corrective actions arising from review as tracked obligations with owner and due date, linked to the finding that produced them.
- Compute criterion-level failure rates with confidence intervals derived from the sampling design, so results are reported with their precision.
- Report quality assurance outcomes by criterion, unit, and period into the portfolio analytics store alongside operational measures.

<p class="eyebrow">Use case</p>

## Measure Program Performance

Performance measurement answers whether the program is doing what it exists to do: matters resolved within required timeframes, findings that hold up, referrals accepted and acted on, recoveries achieved, complainants and subjects treated within service expectations. The measures are computed from case, findings, closure, and referral data, and their value depends entirely on being computed the same way every period.

Definitional drift is the failure that quietly destroys a measurement program. A closure rate computed one year including administratively closed matters and the next year excluding them produces a trend that is an artifact of the definition, and no one reading the chart can tell. Measure definitions therefore need to be versioned with effective dates, with history recomputable under a chosen definition so like is compared with like. Cycle-time measures need care of a different kind: investigative durations are heavily right-skewed, so a mean is dragged by a handful of long matters and a median with a stated distribution describes the program far better.

<p class="discovery-label">Discovery questions</p>

- What is this program accountable for, and to whom?
- Which measures are currently reported, and where are their definitions written?
- Have any definitions changed, and was history restated when they did?
- Which measures are externally mandated and which are internal?
- How are cycle-time measures currently expressed — mean, median, or distribution?
- Where do reported figures come from, and do they reconcile to the case system?
- Which measures does the program suspect are being managed rather than met?

<p class="pattern-label">Implementation pattern</p>

- Hold every measure in a measure definition registry as a versioned definition with its population, computation, exclusions, effective dates, and owner.
- Compute measures from the case, findings, closure, and referral records rather than from separately maintained tallies, so reported figures reconcile to source by construction.
- Persist each computation run with its definition version, snapshot date, and population count, so a published figure can be reproduced exactly.
- Support recomputation of history under a chosen definition version, so a definitional change produces a restated series rather than a broken one.
- Report duration measures as median with stated percentiles and distribution rather than as a mean, given the right-skew of investigative cycle times.
- Pair every throughput measure with a quality measure drawn from quality assurance sampling, and present them together rather than separately.
- Publish population counts and exclusion counts alongside every measure, so a figure improved by shrinking its population is visible.
- Enforce entitlements on measure queries so restricted matters contribute to aggregates without their content being reachable.

<p class="eyebrow">Use case</p>

## Identify Systemic Trends and Control Weaknesses

Individual investigations frequently reveal something larger than the matter itself: a control that fails repeatedly across an agency, a payment process routinely circumvented, a policy that is widely misunderstood, a supplier arrangement that keeps producing complaints. Identifying these across closed matters is often the most valuable product an investigative function generates, because a corrected control prevents future matters rather than resolving one.

The finding has to leave the investigative function to be worth anything. A systemic weakness identified in a report of investigation, sent to a manager, and never tracked again is a common pattern, and it means the same weakness generates further investigations for years. Treating systemic findings as tracked objects with an owner, a recommendation, an agreed action, and a verification step — and reporting on their status — is what converts an observation into a change, and it is also what lets the investigative function demonstrate preventive value rather than only enforcement volume.

<p class="discovery-label">Discovery questions</p>

- Has this program identified systemic weaknesses before, and what happened to them?
- How are recommendations to management recorded and tracked today?
- Who owns a systemic finding once it leaves the investigative function?
- Is implementation of an agreed action ever verified?
- How would the program detect that the same weakness keeps producing matters?
- What data is captured at closure that would support cross-case pattern analysis?
- How does the program demonstrate preventive value rather than case volume?

<p class="pattern-label">Implementation pattern</p>

- Capture systemic observations as structured records at closure, keyed to a versioned taxonomy of control and process categories, linked to the matters that evidenced them.
- Model each systemic finding as a tracked object with owner, recommendation, agreed action, target date, and verification state, surviving the closure of its originating matters.
- Aggregate observations by control category, organizational unit, and period in the portfolio analytics store, so recurrence becomes visible without manual review.
- Use the rules engine to escalate when a control category exceeds a configured recurrence threshold within a period.
- Model verification as a distinct step requiring evidence that the agreed action was implemented, rather than closing on the owner's assertion.
- Link subsequent matters back to open systemic findings automatically where their control category matches, so continued recurrence is measurable.
- Report systemic findings by status, age, and recurrence after agreed action, so unimplemented and ineffective actions are both visible.

<p class="eyebrow">Use case</p>

## Forecast Workload and Staffing Demand

Investigative programs are staffed against expected demand, and demand is neither steady nor entirely unpredictable. Intake volume follows patterns — reporting seasons, program payment cycles, publicity following a prosecution, a new mandate — and matters consume capacity over months, so today's intake determines a workload profile stretching well beyond the period it arrived in. Forecasting projects intake forward and converts it into required capacity by matter type.

A forecast is a planning input, not a commitment, and the distinction has to survive contact with budget processes. Investigative demand is genuinely lumpy, and confidence intervals matter more than point estimates: a forecast presented as a single number invites staffing to it exactly, which leaves no capacity for the variance that is a certainty rather than a risk. Structural breaks are also common — a new statutory duty or a change in referral thresholds makes historical patterns a poor guide — so the model needs to be evaluated against recent actuals continuously rather than trusted because it fit the past.

<p class="discovery-label">Discovery questions</p>

- How is staffing currently planned, and against what information?
- Does intake show seasonality or recurring cycles in this program?
- How long does a matter of each type typically consume capacity?
- What historical intake and effort data exists, and over what period?
- What structural changes have occurred that would break historical patterns?
- How would a forecast actually be used — budget, recruitment, or work allocation?
- What is the consequence here of under-forecasting?

<p class="pattern-label">Implementation pattern</p>

- Model demand as intake volume by matter type combined with a capacity-consumption profile per type, derived from historical effort and duration data rather than assumed.
- Compute forecasts as interval estimates with stated confidence, and render intervals in every presentation rather than reporting a point estimate.
- Draw current commitments from resource and capacity data so projected demand is compared against actual available capacity, including qualification constraints.
- Persist each forecast with its model version, training window, and input snapshot, so a past forecast can be compared against what occurred.
- Score forecast accuracy against actuals on a rolling basis, and report error alongside the current forecast so its reliability is visible.
- Model known structural changes as explicit scenario parameters rather than expecting the model to infer them from history.
- Alert through the rules engine when recent actuals fall outside the forecast interval, indicating a possible structural break requiring retraining.

<p class="ai-label">AI opportunity</p>

- Use a workload forecasting model over historical intake, matter type mix, and effort data to project demand and required capacity.
- Return interval estimates with the drivers behind them, so a planner can evaluate the projection rather than accept a number.
- Retrain on a defined cadence and monitor for structural breaks, since mandate and threshold changes invalidate historical patterns quickly.
- Keep the model out of allocating work to individuals, which is a supervisory judgment involving factors it cannot see.
- Evaluate on interval coverage — how often actuals fall within the predicted range — rather than on point accuracy.

<p class="eyebrow">Use case</p>

## Identify Cases at Risk of Missing Deadlines

A missed statutory deadline can end a matter regardless of its merits, and the point at which intervention is possible is well before the deadline arrives. Risk scoring surfaces matters likely to miss based on remaining work, current pace, outstanding dependencies, investigator load, and how comparable matters progressed — early enough for a supervisor to reassign, escalate, seek an extension, or narrow scope.

Prediction supplements deterministic deadline tracking and never replaces it. Which deadlines apply and when they fall is a calculation, not a forecast, and a program that lets a model become the thing watching statutory dates has introduced an unnecessary failure mode. The prediction's job is to rank attention among matters that are all technically within time, and its evaluation should focus on matters that missed without ever having been flagged — since a model that catches obvious cases and misses quiet ones offers little over sorting by due date.

<p class="discovery-label">Discovery questions</p>

- How often are deadlines missed here, and what are the consequences?
- How is an at-risk matter identified today, and how far ahead?
- What interventions are available once a matter is flagged?
- What signals precede a missed deadline in this program?
- How much lead time does a supervisor need for an intervention to work?
- How would the program detect a matter that missed without ever being flagged?
- What is the cost of a false positive — how much supervisor attention does a flag consume?

<p class="pattern-label">Implementation pattern</p>

- Keep deadline calculation deterministic in the rules engine, and use risk scoring only to rank attention among matters currently within time.
- Compute risk from remaining tasks, elapsed pace against comparable matters, outstanding dependencies, investigator load, and time to deadline.
- Return the contributing factors per matter, so a supervisor can act on the specific cause rather than on a score.
- Set the alerting horizon to the lead time an intervention actually requires, configured per matter type rather than uniformly.
- Cap flagged volume per supervisor to what can be acted on, so the queue is bounded by intervention capacity rather than by threshold alone.
- Record supervisor response per flag — intervened, monitored, dismissed — and the eventual deadline outcome.
- Report missed deadlines that were never flagged as the primary evaluation measure, alongside flag precision.

<p class="ai-label">AI opportunity</p>

- Use a risk scoring model over case progress, dependency, and load features to rank matters by likelihood of missing a deadline.
- Return the contributing features per matter so intervention addresses the cause rather than the score.
- Feed recorded supervisor responses and deadline outcomes back as training signal.
- Keep deadline computation deterministic, so no statutory date depends on a model for its calculation.
- Evaluate primarily on matters that missed without being flagged, since those are the failures the capability exists to prevent.

<p class="eyebrow">Use case</p>

## Detect Recurring Themes Across Closed Cases

Closed matters hold information the program rarely mines. The same control failure appears across units that never compared notes, a category of allegation resolves consistently one way in one region and differently in another, a particular process generates matters year after year. Detecting these themes across closed cases turns a case archive into evidence about the program and the environment it operates in.

Detection is over the organization's own history, which means it detects the organization's own patterns as readily as the environment's. An apparent regional difference in outcomes may reflect genuinely different conduct, or different investigative practice, different thresholds, or different recording behavior — and those explanations point at completely different responses. A theme concentrating on an identifiable community or a particular group of staff needs careful review before it informs any decision, because acting on it can institutionalize a bias the organization had not recognized it held.

<p class="discovery-label">Discovery questions</p>

- What is done with closed case data today beyond statistical reporting?
- What is recorded at closure that would support thematic analysis?
- Are outcomes known to vary across units or regions, and is the cause understood?
- How would practice variation be distinguished from genuine difference in conduct?
- Who would receive a thematic finding, and what action could follow?
- What review would a theme concentrating on a particular group require?
- How consistent is closure coding across units and over time?

<p class="pattern-label">Implementation pattern</p>

- Cluster closed matters over structured closure attributes, findings determinations, control categories, and narrative embeddings, with configurable feature weights.
- Return the constituent matters and shared attributes behind each theme, so an analyst evaluates instances rather than a label.
- Compute base rates and test whether a theme is distinguishable from the population before presenting it.
- Compare themes against closure coding consistency by unit and period, so a theme that reflects recording practice rather than conduct is identifiable.
- Evaluate every theme for concentration against protected and identifiable group attributes, and route concentrated results to review before they inform any decision.
- Persist theme detection runs with parameters, feature weights, and population snapshot, and report cluster stability across runs.
- Promote a confirmed theme into a systemic finding record with an owner, rather than leaving it as an analytical output.

<p class="ai-label">AI opportunity</p>

- Use a clustering model over closure attributes, determinations, and narrative content to surface recurring themes across closed matters.
- Return constituent matters, shared attributes, and base rates rather than a theme label alone.
- Report cluster stability across runs so a robust theme is distinguishable from a parameter artifact.
- Monitor for themes tracking unit, region, or demographic attributes rather than conduct, with a defined review path before any action follows.
- Treat variation in investigative and recording practice as a confounder, and surface coding consistency alongside every theme.

<p class="eyebrow">Use case</p>

## Generate Management Summaries of Portfolio Trends

Leadership, oversight bodies, and external stakeholders need periodic accounts of what the investigative program is doing: volumes and outcomes, timeliness against requirements, quality assurance results, systemic findings and their status, and emerging risks. Assembling these consumes senior time on a recurring cycle, and much of the content is the same measures presented for a different audience.

Written accounts of performance carry a pull toward favorable framing, and that is what the design has to resist. A summary that leads with volume when timeliness deteriorated, or reports an improved closure rate without noting that the population shrank, is technically accurate and materially misleading — and it is the natural output of any process optimizing for a readable narrative. Generation should work from computed measures with their definitions, populations, and quality pairings attached, and should surface adverse movement as prominently as favorable, because the audiences for these summaries are precisely those who need the unfavorable parts.

<p class="discovery-label">Discovery questions</p>

- Who receives management summaries here, and on what cycle?
- How long do they currently take to produce, and who writes them?
- What must be reported to external oversight, and in what form?
- How are unfavorable movements currently presented?
- Where do the figures in current summaries come from?
- Has a reported figure ever been questioned, and what happened?
- What would make a summary trustworthy to an oversight audience?

<p class="pattern-label">Implementation pattern</p>

- Generate summaries from the portfolio analytics store and measure definition registry only, so every figure carries its definition version, population, and computation date.
- Attach the paired quality measure to every throughput measure in the generated output, so the two cannot be reported separately.
- Compute period-over-period movement for every reported measure and require adverse movements to be included, ordered by magnitude rather than by favorability.
- Include population and exclusion counts alongside each figure, so a measure improved by a shrinking population is visible in the summary itself.
- Include open systemic findings with their status and age, so unimplemented recommendations appear in every reporting cycle until closed.
- Enforce the requester's entitlements at generation, and suppress cells with populations small enough to identify individuals.
- Gate external-facing summaries through review, recording the reviewer against the version released.
- Version each summary against the analytics snapshot it was generated from, so a published figure can be reproduced.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to compose management summary narrative from computed measures, their movements, quality pairings, and systemic finding status.
- Cite the measure definition version and population behind every figure stated.
- Require the narrative to address adverse movements explicitly, and monitor generated output for omitted deterioration.
- Keep the model out of explaining why a measure moved, since attribution requires knowledge of operational context it does not have.
- Configure the model to state movements without characterizing performance, leaving assessment to the accountable manager.

## Architecture

Build toward this shape. It combines the implementation patterns and AI opportunities from the use cases above into one design, and it names no product or vendor. Agree on it before you evaluate any product, because it sets what any product you choose has to do.

Keep AI out of the published figure. Models can forecast, rank, cluster, and draft. Every figure the program publishes comes from a stored definition, calculated over a dated snapshot. Keep deadline calculation in the rules engine in particular, because a statutory date is arithmetic and no model should ever work one out.

<div class="architecture-stack" aria-label="Logical architecture for Investigative Oversight and Performance">
  <section class="architecture-layer architecture-layer--experience">
    <p class="architecture-layer-title"><span>01</span> Experience</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Supervisor caseload view</strong><small>Weighted load, active age, and at-risk matters with causes.</small></div>
      <div><strong>Quality assurance workspace</strong><small>Sampling cycles, criterion dispositions, and agreement rates.</small></div>
      <div><strong>Program performance dashboard</strong><small>Measures with definitions, populations, and quality pairings.</small></div>
    </div>
  </section>
  <section class="architecture-layer">
    <p class="architecture-layer-title"><span>02</span> Oversight core</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Measure definition registry</strong><small>Versioned populations, computations, exclusions, and effective dates.</small></div>
      <div><strong>Portfolio analytics store</strong><small>Dated snapshots supporting reproducible reported figures.</small></div>
      <div><strong>Quality assurance sampling</strong><small>Stratified frames, seeds, criteria, and inter-reviewer agreement.</small></div>
      <div><strong>Systemic finding register</strong><small>Recommendation, owner, agreed action, and verification state.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--platform">
    <p class="architecture-layer-title"><span>03</span> Shared solution services</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entitlement service</strong><small>Matter-level scoping so restricted cases aggregate without exposure.</small></div>
      <div><strong>Resource and capacity data</strong><small>Availability and qualification for forecast comparison.</small></div>
      <div><strong>Workflow and rules engines</strong><small>Reviewer independence, deadline calculation, and thresholds.</small></div>
      <div><strong>Search and notification</strong><small>Review queues, recurrence alerts, and forecast breaks.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--intelligence">
    <p class="architecture-layer-title"><span>04</span> Optional intelligence</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Workload forecasting</strong><small>Interval estimates with drivers and accuracy tracked.</small></div>
      <div><strong>Deadline risk scoring</strong><small>Ranking within time, with contributing factors returned.</small></div>
      <div><strong>Theme detection</strong><small>Clusters with instances, base rates, and stability reported.</small></div>
      <div><strong>Summary drafting</strong><small>Narrative from computed measures with adverse movement required.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--records">
    <p class="architecture-layer-title"><span>05</span> Data and authoritative systems</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Case data store</strong><small>Matters, tasks, deadlines, and assignment history.</small></div>
      <div><strong>Findings register</strong><small>Determinations underpinning outcome and quality measures.</small></div>
      <div><strong>Closure and referral records</strong><small>Dispositions, rationales, and downstream outcomes.</small></div>
      <div><strong>Append-only activity log</strong><small>State transitions from which active age is computed.</small></div>
    </div>
  </section>
  <aside class="architecture-controls"><strong>Control plane</strong><span>Identity and access · Measure definition governance · Workforce data use · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation</span></aside>
</div>

### Baseline and additive components

Build the baseline first, because nearly every use case depends on it. Add each of the other components later, when you commit to the use case that needs it. Do not buy everything up front.

| Component | What it must do | When to build |
| --- | --- | --- |
| Measure definition registry | Hold versioned populations, computations, exclusions, effective dates, and owners | Build first |
| Portfolio analytics store | Store dated snapshots that make reported figures reproducible | Build first |
| Quality assurance sampling | Draw stratified random samples with recorded frame, seed, and parameters | Build first |
| Systemic finding register | Track recommendation, owner, agreed action, verification, and recurrence | Build first |
| Entitlement service | Scope portfolio queries at matter granularity so restricted cases aggregate without exposure | Build first |
| Workflow engine | Enforce reviewer independence and gate external-facing summaries | Build first |
| Rules engine | Compute deadlines deterministically and evaluate recurrence and forecast-break thresholds | Build first |
| Append-only activity log | Supply the state transitions from which active age and suspension intervals are computed | Build first |
| Case data store | Hold matters, tasks, deadlines, and assignment history | Build first |
| Findings register | Supply determinations underpinning outcome and quality measures | Build first |
| Closure record | Supply dispositions, rationales, and closure coding | Build first |
| Referral and outcome register | Supply referral acceptance and downstream outcome measures | Build first |
| Notification and queue service | Route review queues, recurrence alerts, and at-risk flags | Build first |
| Search and retrieval | Search matters and findings within the requester's entitlements | Build first |
| Reporting | Publish measures with definitions, populations, and quality pairings attached | Build first |
| Resource and capacity data | Supply availability and qualification for forecast comparison | Add to unlock capacity forecasting |
| Workload forecasting model | Project intake and required capacity as interval estimates | Add to unlock demand forecasting |
| Risk scoring model | Rank matters within time by likelihood of missing a deadline | Add to unlock at-risk detection |
| Clustering model | Surface recurring themes across closed matters with stability reported | Add to unlock thematic analysis |
| Generative model with grounding and citation | Draft management summary narrative from computed measures | Add to unlock summary drafting |
| Model evaluation and monitoring | Track interval coverage, unflagged misses, cluster stability, and omitted deterioration | Add alongside any model component |

Write down what each measure means, and keep every version of that definition. Record what it counts, what it leaves out, and the dates it applied. Calculate measures from the case records themselves, not from tallies someone keeps on the side, and let anyone recalculate an earlier year using the definition that applied then. That makes every published figure traceable back to the cases behind it, which is the first thing an oversight body checks. Without it, if last year's closure rate counted administratively closed matters and this year's does not, the rate rises while nothing has improved.

Publish every throughput measure next to a quality measure. Once a measure is watched, people move it, and investigative work makes that easy. Working the simple matters first raises the closure rate. Declining marginal matters at intake lowers cycle time. Closing matters administratively shrinks the backlog. Showing throughput next to quality assurance results, case counts, and exclusion counts makes all three visible. Put the pairing in the measure definition and in the generated summary, so it does not depend on who assembles the report.
