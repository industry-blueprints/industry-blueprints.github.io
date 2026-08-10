---
layout: default
title: Prepare for a Session
permalink: /conversations/prepare-for-a-session/
description: What to read, who to get in the room, and the questions that matter — before you sit down with a customer for the first time.
---

<section class="section">
  <div class="wrap">
    <div class="section-head">
      <span class="eyebrow">Before the room</span>
      <h1>Prepare for a session</h1>
      <p class="lede">
        You have a first meeting with a customer and roughly a day to get ready. An
        <strong>engagement guide</strong> is ninety minutes of reading that tells you what
        matters: which pages to read first, who needs to be in the room, the fork in the
        conversation that changes every question after it, and the questions that actually
        reveal where an organization is — asked in the order that builds trust instead of
        burning it.
      </p>
      <p class="lede">
        It exists because showing up to a first session having only skimmed the library wastes
        the meeting, and reading all of it wastes your week. This is the shortcut, written once
        per capability so you don't have to work it out yourself each time.
      </p>
    </div>

    {% assign engagement_guides = site.guides | where: "shape", "engagement" | sort: "title" %}

    {% if engagement_guides.size > 0 %}
      <div class="card-grid" style="margin-top: var(--space-4);">
        {% for entry in engagement_guides %}
          {% include blueprint-card.html entry=entry %}
        {% endfor %}
      </div>
    {% endif %}
  </div>
</section>
