---
layout: default
title: Find Where You Are
permalink: /conversations/find-where-you-are/
description: Score where an organization actually stands on a capability, out loud, with the people who do the work — no scoring engine, no number at the end.
---

<section class="section">
  <div class="wrap">
    <div class="section-head">
      <span class="eyebrow">In the room</span>
      <h1>Find where you are</h1>
      <p class="lede">
        Before anyone can plan where to go, they need to agree on where they actually are —
        which is harder than it sounds, because managers and front-line staff usually describe
        two different organizations. A <strong>maturity rubric</strong> is a structured way to
        have that argument productively: one table, several dimensions of a single capability,
        scored out loud with the people who do the work, in about forty minutes.
      </p>
    </div>

    <div class="card-grid">
      <div class="blueprint-card" style="cursor: default;">
        <h3>Five levels, one shared vocabulary</h3>
        <p class="summary">
          Every rubric in this library uses the same five stops, so "level 3" means the same
          thing on every capability: <strong>1 Manual</strong> (nothing systematic — it works
          because someone remembers it) · <strong>2 Digitized</strong> (systems exist, but each
          one is its own island) · <strong>3 Integrated</strong> (one shared record, work is
          visible across the whole organization) · <strong>4 Intelligent</strong> (the system
          actively assists — drafting, classifying, flagging) · <strong>5 Adaptive</strong>
          (the service reshapes itself from what it learns).
        </p>
      </div>
      <div class="blueprint-card" style="cursor: default;">
        <h3>Scored, not scored by</h3>
        <p class="summary">
          There's no quiz and no algorithm. A facilitator walks the room through observable
          questions — not "do we have a knowledge base" but "when a representative got an
          unusual question last Tuesday, what did they actually do?" — and the room agrees on a
          level, dimension by dimension.
        </p>
      </div>
      <div class="blueprint-card" style="cursor: default;">
        <h3>The gaps are the point</h3>
        <p class="summary">
          Nobody scores the same on every dimension. An organization with a modern phone system
          and a case record nobody shares has a specific, nameable problem — and the rubric is
          built to surface exactly that disagreement, not paper over it with one overall number.
        </p>
      </div>
    </div>

    {% assign rubrics = site.maturity_rubrics | sort: "title" %}

    {% if rubrics.size > 0 %}
      <div class="section-head" style="margin-top: var(--space-6);">
        <h2>Rubrics available today</h2>
      </div>
      <div class="card-grid">
        {% for entry in rubrics %}
          {% include blueprint-card.html entry=entry %}
        {% endfor %}
      </div>
    {% endif %}
  </div>
</section>
