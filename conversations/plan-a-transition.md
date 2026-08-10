---
layout: default
title: Plan a Transition
permalink: /conversations/plan-a-transition/
description: Once you know where an organization stands, a playbook is the plan for moving it one level up — phases, governance gates, a workshop agenda, and the failure modes named in advance.
---

<section class="section">
  <div class="wrap">
    <div class="section-head">
      <span class="eyebrow">After the score</span>
      <h1>Plan a transition</h1>
      <p class="lede">
        Scoring <a href="{{ '/conversations/find-where-you-are/' | relative_url }}">where an
        organization stands</a> is only useful if it leads somewhere. A <strong>playbook</strong>
        is the plan for moving one specific step — from departmental systems that don't talk to
        each other, say, to one shared record everyone can see — written as a transition between
        two levels on a rubric, not as a general "how to modernize this" essay.
      </p>
      <p class="lede">
        That framing matters: "how to modernize constituent service" is a book nobody finishes.
        "How to get from here to the next step" is a project with an end date.
      </p>
    </div>

    <div class="card-grid">
      <div class="blueprint-card" style="cursor: default;">
        <h3>Phased, with an exit test</h3>
        <p class="summary">
          Each playbook breaks the transition into phases with concrete deliverables and exit
          criteria — so "we're integrating our systems" becomes a series of decisions someone can
          actually finish and check off.
        </p>
      </div>
      <div class="blueprint-card" style="cursor: default;">
        <h3>A workshop agenda included</h3>
        <p class="summary">
          The hardest part of a transition like this is rarely technical — it's getting
          department directors to agree on ownership. Playbooks come with a timed session for
          having that argument on purpose, instead of by accident six weeks into a project.
        </p>
      </div>
      <div class="blueprint-card" style="cursor: default;">
        <h3>Failure modes named up front</h3>
        <p class="summary">
          The ways this kind of transition typically stalls — and typically not for the reasons
          people expect — are written down in advance, so the room can watch for them rather
          than discover them the hard way.
        </p>
      </div>
    </div>

    {% assign playbooks = site.playbooks | sort: "title" %}

    {% if playbooks.size > 0 %}
      <div class="section-head" style="margin-top: var(--space-6);">
        <h2>Playbooks available today</h2>
      </div>
      <div class="card-grid">
        {% for entry in playbooks %}
          {% include blueprint-card.html entry=entry %}
        {% endfor %}
      </div>
    {% endif %}
  </div>
</section>
