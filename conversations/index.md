---
layout: default
title: Conversations
description: Everything here is written to be worked through with other people — a session to run, a rubric to score out loud, a transition to plan together.
---

<section class="section">
  <div class="wrap">
    <div class="section-head">
      <span class="eyebrow">Conversation layer</span>
      <h1>Conversations</h1>
      <p class="lede">
        Everything on this page is written to be worked through <em>with other people</em> — a
        session to run, a rubric to score out loud, a transition to plan together. The
        <a href="{{ '/browse/' | relative_url }}">library</a> is what you reach into while it is
        happening, and it is the point; this layer is a by-product of writing it well.
      </p>
    </div>

    {% comment %}
      One flat grid rather than a section per type. Every card already carries its
      type badge, so per-type headings restate it — and at this size they would be
      three full-width headings over one card each.
    {% endcomment %}
    {% assign conversations = site.guides | concat: site.maturity_rubrics | concat: site.playbooks | concat: site.decision_guides %}
    {% assign conversations = conversations | sort: "title" | sort: "okf_type" %}

    <div class="card-grid" style="margin-top: var(--space-4);">
      {% for entry in conversations %}
        {% include blueprint-card.html entry=entry %}
      {% endfor %}
    </div>
  </div>
</section>

<section class="section">
  <div class="wrap">
    <div class="section-head">
      <span class="eyebrow">The rule these follow</span>
      <h2>Conversation artifacts assert no facts</h2>
    </div>
    <div class="card-grid">
      <div class="blueprint-card" style="cursor: default;">
        <h3>Everything traces back</h3>
        <p class="summary">
          Every substantive claim in a session plan belongs to a reference artifact it links to.
          These pages sequence, frame, and time-box; they do not introduce a process step, a
          measure, or a control that exists nowhere else.
        </p>
      </div>
      <div class="blueprint-card" style="cursor: default;">
        <h3>Because the copy would win</h3>
        <p class="summary">
          Restating is easier than linking when you are writing an agenda at speed, and a
          conversation layer that restates becomes a second copy of the library that diverges
          silently — the copy people actually read. So the rule is structural, not editorial.
        </p>
      </div>
      <div class="blueprint-card" style="cursor: default;">
        <h3>The test</h3>
        <p class="summary">
          Deleting every conversation artifact must lose facilitation and lose nothing else. If
          deleting one would lose a fact, that fact was in the wrong place — see the
          <a href="{{ '/meta/type-registry/' | relative_url }}">type registry</a>.
        </p>
      </div>
    </div>
  </div>
</section>
