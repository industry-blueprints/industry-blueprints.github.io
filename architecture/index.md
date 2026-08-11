---
layout: default
title: Information & Architecture
description: Domain models, module boundaries, lifecycles, permissions, events, interfaces, integrations, and extension points.
reader_layer: architecture
---

<section class="section">
  <div class="wrap">
    <div class="section-head">
      <span class="eyebrow">Layer 2 · Architecture</span>
      <h1>See how the information and system fit together.</h1>
      <p class="lede">
        Architecture references translate the business model into domain concepts, module
        boundaries, lifecycles, permissions, commands, events, integrations, and extension points
        without assuming a particular implementation platform.
      </p>
    </div>

    {% assign entries = site.architectures | sort: "level" | sort: "title" %}
    <div class="card-grid">
      {% for entry in entries %}{% include artifact-card.html entry=entry %}{% endfor %}
    </div>
  </div>
</section>

<section class="section">
  <div class="wrap">
    <div class="callout">
      <h3>Architecture references describe a coherent pattern</h3>
      <p>Implementations can divide components differently while preserving the same business meaning, ownership boundaries, and observable behavior.</p>
    </div>
  </div>
</section>
