---
layout: default
title: Platform Examples & Mappings
description: Working sample applications and explicit mappings from vendor-neutral blueprint concepts to implementation platforms.
reader_layer: platform
---

<section class="section">
  <div class="wrap">
    <div class="section-head">
      <span class="eyebrow">Layer 3 · Platform</span>
      <h1>See the blueprint in working software.</h1>
      <p class="lede">
        Sample applications make the architecture concrete and testable. Platform mappings explain
        how the same concepts appear in commercial products, cloud services, or a custom stack.
        Both remain downstream from the vendor-neutral business and architecture references.
      </p>
    </div>

    <div class="section-head">
      <h2>Sample applications</h2>
      <p class="lede">Runnable examples maintained alongside the blueprints.</p>
    </div>
    {% assign samples = site.realizations | where: "realization_kind", "sample" | sort: "title" %}
    <div class="card-grid">
      {% for entry in samples %}{% include artifact-card.html entry=entry %}{% endfor %}
    </div>
  </div>
</section>

<section class="section">
  <div class="wrap">
    <div class="section-head">
      <span class="eyebrow">Specific platforms</span>
      <h2>Platform mappings</h2>
      <p class="lede">Concept, lifecycle, security, integration, extension, and AI mappings for particular implementation environments.</p>
    </div>
    {% assign mappings = site.realizations | where: "realization_kind", "platform-mapping" | sort: "title" %}
    {% if mappings.size > 0 %}
      <div class="card-grid">
        {% for entry in mappings %}{% include artifact-card.html entry=entry %}{% endfor %}
      </div>
    {% else %}
      <div class="callout">
        <h3>No platform mapping has been published yet</h3>
        <p>Municipal Constituent Services has a business reference, dedicated architecture artifacts, and a working sample application. Product-specific mappings can build on that stable core.</p>
      </div>
    {% endif %}
  </div>
</section>
