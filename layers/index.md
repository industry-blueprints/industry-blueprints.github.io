---
layout: default
title: The four layers
description: How a blueprint is built — the business, the architecture, the running software, and the platform mapping — and honestly how far each capability has been taken.
---

<section class="section">
  <div class="wrap">
    <div class="section-head">
      <span class="eyebrow">How a blueprint is built</span>
      <h1>The four layers</h1>
      <p class="lede">
        A blueprint answers how a class of business system should work. It develops through four
        layers, and it is publishable at layer 1 and improves outward. Coverage below is shown as
        it actually is — most capabilities reach layer 1 and stop, and saying so is the point.
      </p>
    </div>

    <div class="card-grid">
      {% for layer in site.layers %}
        {% assign n = layer[0] %}
        {% assign reached = 0 %}
        {% for cap in site.capabilities %}
          {% assign idx = n | minus: 1 %}
          {% if cap.layer_counts[idx] > 0 %}{% assign reached = reached | plus: 1 %}{% endif %}
        {% endfor %}
        <div class="blueprint-card" style="cursor: default;">
          <span class="eyebrow">Layer {{ n }}</span>
          <h3>{{ layer[1].label }}</h3>
          <p class="summary">{{ layer[1].note }}</p>
          <p class="summary"><strong>{{ reached }}</strong> of {{ site.capabilities.size }} capabilities have content here.</p>
        </div>
      {% endfor %}
    </div>
  </div>
</section>

<section class="section">
  <div class="wrap">
    <div class="section-head">
      <span class="eyebrow">Coverage</span>
      <h2>How far each capability has been taken</h2>
      <p class="lede">
        Deepest first. A row that stops at layer 1 is not a defect — it is a capability that has
        been described but not yet designed, and the gap is the roadmap.
      </p>
    </div>

    {%- comment -%}
      Capabilities that have reached layer 2 or deeper lead; the layer-1-only
      majority is collapsed. Both lists are complete — the split is about what
      the page opens with, not about what it contains.
    {%- endcomment -%}
    {% assign ranked = site.capabilities | sort: "title" | sort: "layer_reach" | reverse %}
    {% assign deep = "" | split: "" %}
    {% assign shallow = "" | split: "" %}
    {% for cap in ranked %}
      {% if cap.layer_reach > 1 %}
        {% assign deep = deep | push: cap %}
      {% else %}
        {% assign shallow = shallow | push: cap %}
      {% endif %}
    {% endfor %}

    <div class="coverage">
      {% for cap in deep %}
        <a class="coverage-row" href="{{ cap.url | relative_url }}">
          <span class="coverage-name">{{ cap.title }}</span>
          <span class="coverage-layers" aria-label="Layers with content">
            {% for layer in site.layers %}
              {% assign idx = layer[0] | minus: 1 %}
              {% assign c = cap.layer_counts[idx] %}
              <span class="coverage-cell{% if c > 0 %} is-filled{% endif %}"
                    title="Layer {{ layer[0] }} — {{ layer[1].label }}: {% if c > 0 %}{{ c }} artifact{% if c > 1 %}s{% endif %}{% else %}nothing yet{% endif %}">{% if c > 0 %}{{ c }}{% else %}·{% endif %}</span>
            {% endfor %}
          </span>
        </a>
      {% endfor %}
    </div>

    <details class="disclosure" style="margin-top: var(--space-4);">
      <summary>
        <strong>{{ shallow.size }} more</strong> — described at layer 1, not yet designed
      </summary>
      <div class="coverage" style="margin-top: var(--space-2);">
        {% for cap in shallow %}
          <a class="coverage-row" href="{{ cap.url | relative_url }}">
            <span class="coverage-name">{{ cap.title }}</span>
            <span class="coverage-layers" aria-label="Layers with content">
              {% for layer in site.layers %}
                {% assign idx = layer[0] | minus: 1 %}
                {% assign c = cap.layer_counts[idx] %}
                <span class="coverage-cell{% if c > 0 %} is-filled{% endif %}"
                      title="Layer {{ layer[0] }} — {{ layer[1].label }}: {% if c > 0 %}{{ c }} artifact{% if c > 1 %}s{% endif %}{% else %}nothing yet{% endif %}">{% if c > 0 %}{{ c }}{% else %}·{% endif %}</span>
              {% endfor %}
            </span>
          </a>
        {% endfor %}
      </div>
    </details>
  </div>
</section>
