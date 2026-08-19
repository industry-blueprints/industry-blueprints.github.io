---
title: Interviews & Statements
summary: Ability to plan and conduct interviews, capture statements and reports, and track follow-up commitments.
status: Draft
tier: Tier 2 · Practitioner
scope: All
updated: 2026-08-19
owner: Content team
workload: Investigations
parent_title: Investigations
parent_url: /workloads/investigations/
order: 7
sections:
  - Overview
  - Maturity Levels
  - Plan and Conduct Interviews
  - Capture Notes, Recordings, and Statements
  - Track Follow-Up Questions and Commitments
  - Transcribe Authorized Interview Recordings
  - Draft Interview Summaries with Citations
  - Identify Contradictions and Unresolved Questions
  - Suggest Follow-Up Questions
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

Ability to plan and conduct complainant, witness, victim, subject, and employee interviews, capture notes, recordings, statements, and interview reports, and track follow-up questions and commitments.

This capability covers obtaining and recording testimonial information, including the rights advisements and authorizations that govern how an interview may be conducted. It excludes weighing what was said against other evidence, which is documented through Findings & Investigative Reporting.

## Maturity Levels

| Stage | Typical characteristics |
| --- | --- |
| Not performed | Interviews are conducted without a consistent record of what was asked or answered. |
| Manual / ad hoc | Handwritten notes are written up into reports at varying levels of detail. |
| Standardized | Interview planning, recording, and reporting follow a defined process with advisements recorded. |
| Integrated | Interview records, recordings, and follow-up commitments attach to the case and its tasks. |
| Automated / optimized | Recordings are transcribed and summarized with citations, and the investigator validates the result. |

<p class="eyebrow">Use case</p>

## Plan and Conduct Interviews

Planning an interview establishes who is being interviewed and in what capacity, what the interview is meant to establish, which topics and documents will be put to them, in what order, and who will attend. The interviewee's category drives most of what follows: a complainant, a witness, a victim, a subject, and an employee questioned under an employer's authority each carry different obligations about what they must be told, whether they may decline, whether they may have a representative or counsel present, and what use may later be made of what they say.

Conducting the interview means observing those obligations and recording that they were observed. Advisements have to be delivered in the form the applicable authority requires and captured contemporaneously, along with the interviewee's response to them. Where an interview is compelled under an employment or regulatory authority, the record must mark it as such, because a compelled statement is frequently unusable for other purposes and mixing compelled and voluntary material contaminates what follows. Practical arrangements — an interpreter, an accessibility accommodation, an appropriate adult for a minor or vulnerable person, a location suited to a distressed witness — are part of conducting the interview lawfully, not logistics around it.

<p class="discovery-label">Discovery questions</p>

- Which categories of interviewee does this program deal with, and what obligations attach to each?
- Which advisements are required, in what form, and who determines that before an interview?
- Which interviews may be compelled, under what authority, and what limits the later use of what is said?
- What rights to representation or counsel apply, and how is their exercise recorded?
- How often are interpreters, accommodations, or appropriate adults required, and how are they arranged?
- What approval is required before interviewing a subject, and who grants it?
- How would the program demonstrate, two years later, exactly what an interviewee was told before they answered?

<p class="pattern-label">Implementation pattern</p>

- Model the interviewee's category as a structured attribute that drives required advisements, permitted techniques, and downstream use restrictions.
- Use a rules engine to determine which advisements and authorizations apply from the category, the authority, and the matter type, rather than relying on the interviewer to recall them.
- Hold advisement wording in a policy and authority library with version and effective dates, and record which version was used.
- Capture each advisement and the interviewee's response contemporaneously as part of the interview record, not as a separately filed form.
- Mark compelled interviews explicitly and propagate that marking to every derived artifact, so restricted material cannot be used downstream by accident.
- Use a workflow engine to gate subject interviews behind the approval the program requires.
- Record participants, representatives, interpreters, and accommodations as structured attendee roles rather than as narrative.
- Plan topics and exhibits against the case's lines of inquiry, so the interview is traceable to what it was meant to establish.

<p class="eyebrow">Use case</p>

## Capture Notes, Recordings, and Statements

An interview produces several artifacts with different standing. Contemporaneous notes record what the interviewer observed and asked. A recording, where permitted, captures the exchange as it happened. A written statement is the interviewee's own account, which they may sign, swear, or adopt, and which carries weight precisely because they attested to it. An interview report is the investigator's structured account written afterward. Conflating these — treating a report as though it were a statement, or a transcript as though the interviewee had adopted it — is a defect that surfaces at the worst moment.

Recording carries its own constraints. Whether consent is needed, from whom, and whether the interviewee must be told they are being recorded varies by jurisdiction and by the interview's authority, and the answer determines whether the recording is usable at all. Once made, a recording is investigative material subject to the same custody expectations as other evidence, so it should enter the evidence register at capture rather than living on a device until someone uploads it. Statements need their own integrity: what the interviewee reviewed, what they corrected, and what they attested to should all be reconstructable.

<p class="discovery-label">Discovery questions</p>

- Which artifacts does an interview produce here — notes, recordings, statements, reports — and how is each treated?
- When may an interview be recorded, and whose consent is required?
- Must an interviewee be told they are being recorded, and is that captured?
- How does an interviewee review, correct, and attest to a written statement?
- Where do recordings live between the interview and the case file, and for how long?
- Are recordings treated as evidence under chain of custody, or as working material?
- How is a statement distinguished from an investigator's report of the interview?

<p class="pattern-label">Implementation pattern</p>

- Model notes, recordings, statements, and reports as distinct artifact types with different standing, rather than as generic attachments.
- Record the recording consent basis and any notification given, and block recording capture where the basis is absent.
- Route recordings into the evidence repository at capture through the interview recording capture component, so custody begins at the recorder rather than at upload.
- Compute an integrity value on each recording at capture, so later alteration is detectable.
- Capture the statement review cycle — what was presented, what the interviewee corrected, and what they attested to — as recorded steps.
- Store attested statements in the document and attachment store in their attested form, with corrections held as a visible history rather than an overwrite.
- Enforce entitlements at item level, since an interview may be more restricted than the case containing it.
- Record every artifact's creation and amendment in the append-only activity log.

<p class="eyebrow">Use case</p>

## Track Follow-Up Questions and Commitments

Interviews rarely close everything. An interviewee undertakes to provide a document, an answer turns out to require checking against a record nobody has yet, a name comes up that no one recognizes, and questions occur to the investigator only once the transcript is read. Each of these is an open thread, and the practical failure is that they live in an investigator's notes rather than in the case, so they surface late or not at all.

Commitments made by the interviewee deserve particular attention, because they are both the most likely to be forgotten and the most awkward to revive. Someone who agreed to send bank statements and heard nothing for six weeks may reasonably conclude the matter is closed, and re-approaching them then is harder and looks worse than following up promptly. Tracking these as tasks against the case — with an owner, a date, and a link back to the interview that generated them — is what converts them from good intentions into work that actually happens.

<p class="discovery-label">Discovery questions</p>

- What typically remains open after an interview in this program?
- Where do follow-up questions and interviewee commitments get recorded today?
- Who owns following up, and how is that handoff made?
- How long does it typically take to act on an interviewee's commitment?
- How are new names or facts raised in an interview carried into the wider investigation?
- What happens when a follow-up requires a second interview, and what approval does that need?
- How would the program notice that an interview's follow-ups were never actioned?

<p class="pattern-label">Implementation pattern</p>

- Create follow-up questions and interviewee commitments as tasks against the case, linked to the interview and the passage that generated them.
- Assign an owner and a due date to every commitment at the point it is recorded, rather than leaving it unowned in the interview report.
- Use a notification service to prompt the owner before a commitment date passes, and escalate on non-delivery.
- Route entities and facts newly raised in an interview into the entity register and the case record, so they reach the wider investigation.
- Model a further interview as a distinct interview record linked to the first, preserving each interview's own advisements and consent.
- Report open follow-ups by interview and by age, so interviews whose threads were never pursued become visible.

<p class="eyebrow">Use case</p>

## Transcribe Authorized Interview Recordings

A transcript makes an interview workable. Without one, using what was said means someone re-listening to locate a passage, and quoting it accurately means transcribing that passage by hand. With one, the interview becomes searchable alongside the rest of the case record, and a specific exchange can be found, cited, and put to another witness. On matters with many interviews the difference is what determines whether earlier interviews are actually drawn on or effectively lost.

The transcript is a derived representation, and the recording stays authoritative. Transcription errs on exactly what matters — names, figures, dates, and the difference between a hedge and an admission — and a passage relied on in a finding should be verified against the audio. Speaker attribution deserves specific scrutiny, since a system that assigns a sentence to the wrong speaker can invert the meaning of an exchange entirely. Transcription is also processing of a person's speech and should proceed on the same authority the recording rests on, not on the availability of a service.

<p class="discovery-label">Discovery questions</p>

- How are interview recordings used today, and how often is one re-listened to in full?
- What accuracy on names, figures, and dates would make a transcript usable here?
- How many speakers are typically present, and how often do they talk over one another?
- Do interviews occur in more than one language, or through interpreters?
- What is the authority for processing a recording, and does sending it to a service raise any constraint?
- Would an investigator verify a quoted passage against the audio before relying on it?
- What would the consequence be of a misattributed or mis-transcribed passage reaching a report?

<p class="pattern-label">Implementation pattern</p>

- Use a text extraction service with speaker diarization to produce a transcript from the recording, and keep the recording authoritative.
- Store the transcript as a derived representation linked to the recording, never replacing it.
- Time-align the transcript so any passage can be played from its position in the audio in one action.
- Record the transcription tooling and version on every transcript, so a disputed passage can be reproduced or re-run.
- Preserve confidence and alternatives where the tooling provides them, so an uncertain passage is visibly uncertain.
- Support correction of a transcript as a tracked amendment with its author, rather than as a silent edit.
- Confirm that transcription is within the authority under which the recording was made, and that any external processing is permitted for the material's classification.
- Index transcripts in an entitlement-aware search service so interview-level restrictions apply to results.

<p class="ai-label">AI opportunity</p>

- Use a speech-to-text model with speaker diarization to transcribe authorized interview recordings.
- Return per-passage confidence, so a reviewer can see which sections are least reliable.
- Treat speaker attribution as a distinct quality measure from word accuracy, since a misattributed sentence can reverse an exchange's meaning.
- Evaluate accuracy specifically on names, figures, and dates rather than on aggregate word error rate.
- Keep the recording authoritative in every downstream use, so a finding rests on what was said rather than on what was transcribed.

<p class="eyebrow">Use case</p>

## Draft Interview Summaries with Citations

An investigator reviewing a matter needs to know what an interview established without rereading forty pages of transcript, and a supervisor or counsel needs the same at a coarser grain. A summary that sets out the topics covered, what the interviewee said on each, what they were unable or unwilling to address, and what remains open gives a usable picture, with each statement citing the passage it came from so anything can be checked.

A summary of testimony is a compression of what a person said, and the compression is where the risk sits. Losing a qualification — the interviewee said they believed rather than knew, or recalled approximately rather than precisely — turns a hedged account into a definite one, and that difference is frequently the substance of an investigation. Summaries should preserve hedging and uncertainty as stated, distinguish what the interviewee asserted from what the interviewer put to them, and remain plainly distinct from a statement the interviewee actually adopted.

<p class="discovery-label">Discovery questions</p>

- Who needs a summary of an interview here, at what level of detail, and how soon?
- How long does producing an interview report take today, and who writes it?
- What must a summary preserve to be safe to rely on in this program?
- How would a reader verify a statement in a summary against the transcript?
- Where is the line between a summary and an interview report that becomes part of the record?
- How is the distinction maintained between what the interviewee said and what was put to them?
- What would the consequence be of a summary that dropped a qualification the interviewee gave?

<p class="pattern-label">Implementation pattern</p>

- Generate summaries from the transcript and interview record only, with each statement citing the passage supporting it.
- Preserve hedging, uncertainty, and refusals as stated, rather than resolving them into definite assertions.
- Distinguish what the interviewee asserted from what the interviewer proposed, so a suggestion is not recorded as an admission.
- Enforce the requester's entitlements at generation time, so a summary cannot surface interview content they could not open.
- Keep generated summaries in a working state distinct from the interview report, requiring a deliberate logged action to place one in the record.
- Carry the compelled or voluntary marking onto every summary, so use restrictions travel with derived material.
- Link every summary to the recording as well as the transcript, so verification can reach the audio.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to draft interview summaries from the transcript, structured by the topics the interview covered.
- Cite the transcript passage for every statement, and exclude anything the transcript does not support.
- Instruct the model to retain qualifiers and expressions of uncertainty verbatim rather than paraphrasing them into assertions.
- Keep the model out of assessing credibility, demeanor, or whether an account is plausible.
- Monitor summaries specifically for dropped qualifiers and for attributing to the interviewee something the interviewer put to them.

<p class="eyebrow">Use case</p>

## Identify Contradictions and Unresolved Questions

Interviews are where inconsistency most often appears — between a witness's first and second accounts, between two witnesses to the same event, between what a subject says and what the documents show. Reading for these across a set of long transcripts is exacting work, and the ones that matter are frequently subtle: a date shifted by a week, a sequence reversed, an attribution changed from one person to another. Surfacing candidates lets an investigator apply judgment to a shortlist rather than to everything.

An inconsistency is a prompt to investigate, never a conclusion about truthfulness. People misremember, describe things imprecisely, and correct themselves; accounts also differ because one is false. Distinguishing these is core investigative work involving corroboration, plausibility, and often a further interview — and it is exactly the judgment that must not be delegated. The system's contribution is reliably noticing that two accounts differ; characterizing why belongs to the investigator, and the resolution should be recorded so the same point is not reopened repeatedly.

<p class="discovery-label">Discovery questions</p>

- How many interviews does a typical matter involve, and how are they read against each other?
- Which kinds of inconsistency matter most here — dates, sequence, attribution, amounts?
- When are contradictions usually noticed, and by whom?
- How are interview accounts currently compared against documentary records?
- How should an investigator record that an apparent contradiction was considered and resolved?
- What review of interview material happens before findings are finalized?
- What is the risk of an investigator treating a flagged inconsistency as evidence of dishonesty?

<p class="pattern-label">Implementation pattern</p>

- Compare accounts across interviews and against collected records, resolving entities and dates through the entity register so the same person and event are recognized across sources.
- Present each candidate with both passages in full, so the investigator reads the accounts rather than a characterization of them.
- Present findings as observations requiring investigation, with interface language that does not imply deception.
- Require a recorded resolution to close a flagged inconsistency, and attach it so the same point is not re-raised.
- Track unresolved questions from each interview as open items against the case rather than as annotations on a transcript.
- Route unresolved contradictions to review before findings are finalized.
- Report flag volume and resolution outcomes, so a comparison type producing only noise is retired.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to surface candidate contradictions across interview transcripts and between transcripts and collected records.
- Cite both passages for every candidate, so the investigator evaluates the underlying accounts.
- Extract names, dates, and events mentioned in interviews and resolve them against the entity register, so newly raised entities reach the investigation.
- Keep the model out of assessing credibility, motive, or whether an inconsistency indicates deception.
- Monitor precision closely, since flags that prove routinely meaningless train investigators to dismiss them and flags framed as deception risk prejudicing the matter.

<p class="eyebrow">Use case</p>

## Suggest Follow-Up Questions

After an interview, what was not asked is often as consequential as what was. A topic in the plan went uncovered because time ran short, an answer opened a line the interviewer did not pursue, a document was never put to the interviewee, an assertion went untested against a record that contradicts it. Proposing candidate follow-up questions from the transcript, the interview plan, and the case record gives the investigator a checklist against omission before the opportunity closes — and interview opportunities do close, since a second interview is harder to arrange and sometimes not available at all.

The questions remain the investigator's. Interviewing is a skill involving sequence, framing, and judgment about what to hold back, and a proposed question that is leading, that reveals something the investigation is not ready to disclose, or that is improper for the interviewee's category can do real damage. Proposals should be grounded in the plan's objectives and what the transcript shows was left open, restricted to what is proper for that category of interviewee, and offered as candidates the investigator selects from rather than a script to work through.

<p class="discovery-label">Discovery questions</p>

- How often does a topic in an interview plan go uncovered, and how is that noticed?
- How readily can a second interview be arranged in this program?
- What review happens after an interview to identify what was missed?
- Which question types would be improper for particular categories of interviewee here?
- What is the risk of a question revealing something the investigation should not disclose yet?
- How does interviewing experience vary across the team?
- How should a proposed question that the investigator rejects be recorded, if at all?

<p class="pattern-label">Implementation pattern</p>

- Derive proposals from the interview plan's objectives and the topics the transcript shows were left open, rather than generating questions generally.
- Restrict proposals to what is proper for the interviewee's category, excluding question types the applicable authority does not permit.
- Suppress questions that would disclose case information not yet appropriate to reveal, based on the case's disclosure position.
- Present proposals as candidates the investigator selects and rewords, never as a script.
- Ground each proposal in the plan objective or transcript passage that motivates it, so relevance can be judged.
- Record which proposals were used, adapted, and rejected, so proposal quality is measurable.
- Report post-interview coverage against plan objectives, so systematically uncovered topics surface as a planning problem.

<p class="ai-label">AI opportunity</p>

- Use a generative AI model to propose follow-up questions from the transcript, the interview plan, and the case record.
- Cite the objective or passage motivating each proposal, so the investigator can judge whether it applies.
- Constrain proposals to non-leading forms and to what is permitted for the interviewee's category.
- Exclude any question that would reveal case information outside the matter's current disclosure position.
- Monitor which proposals investigators use and which they reject, and treat a consistently rejected category as a signal to constrain the proposal set further.

## Architecture

Build toward this shape. It combines the implementation patterns and AI opportunities from the use cases above into one design, and it names no product or vendor. Agree on it before you evaluate any product, because it sets what any product you choose has to do.

Keep AI out of judging the person. Models can transcribe, summarize, and suggest. They must never assess credibility, demeanor, or whether someone is telling the truth. Those are investigative judgments about a person's honesty. This line matters more here than anywhere else on the site. Anyone reading the output will assume that a system appearing to judge someone's truthfulness has done exactly that.

<div class="architecture-stack" aria-label="Logical architecture for Interviews and Statements">
  <section class="architecture-layer architecture-layer--experience">
    <p class="architecture-layer-title"><span>01</span> Experience</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Interview planning workspace</strong><small>Objectives, topics, exhibits, participants, and approvals.</small></div>
      <div><strong>In-interview capture</strong><small>Advisements, notes, and recording at the point of interview.</small></div>
      <div><strong>Review and approval view</strong><small>Statements, reports, follow-ups, and supervisory review.</small></div>
    </div>
  </section>
  <section class="architecture-layer">
    <p class="architecture-layer-title"><span>02</span> Interview core</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Interview register</strong><small>Interviewee category, authority, and linked lines of inquiry.</small></div>
      <div><strong>Advisements and consent</strong><small>What was delivered, its version, and the response given.</small></div>
      <div><strong>Scheduling and participants</strong><small>Interviewers, representatives, interpreters, and accommodations.</small></div>
      <div><strong>Statements and follow-up</strong><small>Attested statements, reports, and open commitments.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--platform">
    <p class="architecture-layer-title"><span>03</span> Shared solution services</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Entitlement service</strong><small>Interview-level access enforced wherever content is read.</small></div>
      <div><strong>Interview recording capture</strong><small>Consent-gated capture routed straight into custody.</small></div>
      <div><strong>Workflow and rules engines</strong><small>Advisement determination, interview approval, and follow-up rules.</small></div>
      <div><strong>Search and notification</strong><small>Entitlement-aware search over transcripts, and follow-up routing.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--intelligence">
    <p class="architecture-layer-title"><span>04</span> Optional intelligence</p>
    <div class="architecture-nodes architecture-nodes--three">
      <div><strong>Transcription and diarization</strong><small>Time-aligned transcripts with per-passage confidence.</small></div>
      <div><strong>Grounded summarization</strong><small>Topic summaries citing transcript passages, qualifiers intact.</small></div>
      <div><strong>Contradiction and question proposal</strong><small>Candidate inconsistencies and follow-ups, both cited.</small></div>
    </div>
  </section>
  <section class="architecture-layer architecture-layer--records">
    <p class="architecture-layer-title"><span>05</span> Data and authoritative systems</p>
    <div class="architecture-nodes architecture-nodes--dense">
      <div><strong>Evidence repository</strong><small>Recordings held under custody from the moment of capture.</small></div>
      <div><strong>Document and attachment store</strong><small>Attested statements, reports, and correction history.</small></div>
      <div><strong>Append-only activity log</strong><small>Immutable advisement, artifact, and amendment history.</small></div>
      <div><strong>Policy and authority library</strong><small>Advisement wording and interview procedure by version.</small></div>
    </div>
  </section>
  <aside class="architecture-controls"><strong>Control plane</strong><span>Identity and access · Rights and advisements · Audit and provenance · Records and retention · Configuration · Observability · AI policy and evaluation</span></aside>
</div>

### Baseline and additive components

Build the baseline first, because nearly every use case depends on it. Add each of the other components later, when you commit to the use case that needs it. Do not buy everything up front.

| Component | What it must do | When to build |
| --- | --- | --- |
| Interview register | Hold interviewee category, authority, advisements, participants, and artifacts | Build first |
| Interview recording capture | Capture recordings under a verified consent basis and route them into custody | Build first |
| Evidence repository | Hold recordings write-once with integrity values from the moment of capture | Build first |
| Document and attachment store | Retain attested statements and reports with their correction history | Build first |
| Append-only activity log | Record advisements, artifacts, and amendments with actor and timestamp | Build first |
| Entitlement service | Decide what each person may see at interview granularity | Build first |
| Workflow engine | Gate subject interviews and statement attestation behind recorded approval | Build first |
| Rules engine | Determine required advisements and authorizations from category, authority, and matter type | Build first |
| Notification and queue service | Route follow-up commitments, due dates, and escalation | Build first |
| Policy and authority library | Hold advisement wording and interview procedure with version and effective dates | Build first |
| Resource and capacity data | Show interviewer, interpreter, and facility availability at planning | Build first |
| Search and retrieval | Search interviews and transcripts within the requester's entitlements | Build first |
| Reporting | Report follow-up aging, plan coverage, flag outcomes, and transcript quality | Build first |
| Text extraction service | Transcribe recordings with speaker diarization and time alignment | Add to unlock searchable transcripts |
| Generative model with grounding and citation | Summarize, surface contradictions, and propose follow-up questions from cited content | Add to unlock the summarization and proposal use cases |
| Entity register | Resolve names and organizations raised in interviews against existing records | Add to unlock carrying newly raised entities into the investigation |
| Model evaluation and monitoring | Track transcript accuracy on names and figures, speaker attribution, and dropped qualifiers | Add alongside any model component |

Record what the interviewee was told and what they agreed to, at the time of the interview. Store which advisement was given, which version of its wording, what the person said in response, and under what authority they answered. Everything downstream depends on this: whether you may record the interview, whether you may produce a transcript, and what the answers may be used for. Mark whether the statement was compelled or voluntary, and carry that mark onto every summary drawn from it. A record written up later from memory is worth very little.

Send the recording to the evidence register as it is made, not afterwards. If it sits as working material until somebody uploads it, custody starts at the upload rather than at the recorder. That gap is the same one Evidence Management & Chain of Custody exists to prevent. Interviews are where it most often opens up: a recorder in a bag, a phone in a pocket, a file copied to a laptop on the way back.
