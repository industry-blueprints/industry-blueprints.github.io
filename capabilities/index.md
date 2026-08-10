---
layout: default
title: Capabilities
collection_key: capabilities   # not used for listing here; drives nav highlighting
description: What a government organization must be able to do, independent of how it is structured or what it has bought. Capabilities are the map of the territory, and each one shows how far it has been taken across the four layers.
---

{% assign focus = site.focus_capabilities %}
{% assign featured = "" | split: "" %}
{% assign rest = "" | split: "" %}
{% for cap in site.capabilities %}
  {% if focus contains cap.url %}
    {% assign featured = featured | push: cap %}
  {% else %}
    {% assign rest = rest | push: cap %}
  {% endif %}
{% endfor %}

<section class="section">
  <div class="wrap">
    <div class="section-head">
      <span class="eyebrow">Ring 1 — business blueprint</span>
      <h1>Capabilities</h1>
      <p class="lede">
        What a government organization must be able to do, independent of how it is structured or
        what it has bought. Each capability page shows everything that exists for it, grouped by
        the four layers — and says plainly where nothing exists yet.
      </p>
    </div>

    {% if featured.size > 0 %}
      <div class="section-head" style="margin-top: var(--space-5);">
        <h2>Being taken all the way through</h2>
        <p class="lede">
          One capability is being developed across every layer first, because a complete slice
          reveals which parts of the model are wrong and a broad shallow pass reveals nothing.
        </p>
      </div>
      <div class="card-grid">
        {% for cap in featured %}
          {% include blueprint-card.html entry=cap %}
        {% endfor %}
      </div>
    {% endif %}

    <details class="disclosure" style="margin-top: var(--space-6);">
      <summary>
        <strong>The other {{ rest.size }} capabilities</strong> — described, and awaiting depth
      </summary>
      <p class="muted" style="margin-top: var(--space-2);">
        Every one of these is written and linked into the graph. They are collapsed here, not
        hidden — coverage across the layers is on the
        <a href="{{ '/layers/' | relative_url }}">layers page</a>, and the full territory including
        capabilities with no page yet is on the
        <a href="{{ '/industries/public-sector/' | relative_url }}">capability map</a>.
      </p>

      {% assign tiers = "complete,detailed,defined,named" | split: "," %}
      {% for tier in tiers %}
        {% assign group = rest | where: "depth", tier | sort: "title" %}
        {% if group.size > 0 %}
          <div class="depth-group">
            <h3 class="depth-group-title">
              {{ site.depth_levels[tier].label }}
              <span class="depth-group-count">{{ group.size }}</span>
            </h3>
            <p class="depth-group-note">{{ site.depth_levels[tier].note }}</p>
          </div>
          <div class="card-grid">
            {% for cap in group %}
              {% include blueprint-card.html entry=cap %}
            {% endfor %}
          </div>
        {% endif %}
      {% endfor %}
    </details>
  </div>
</section>
