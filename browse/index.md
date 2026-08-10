---
layout: default
title: Browse the library
description: Everything published so far, grouped by artifact type, with trust and freshness visible.
---

<section class="section">
  <div class="wrap">
    <div class="section-head">
      <span class="eyebrow">Blueprint library</span>
      <h1>Browse everything</h1>
      <p class="lede">
        Every artifact published so far, grouped by type. Trust and freshness are shown on each
        card — an unverified draft looks different from something a human has reviewed, on purpose.
      </p>
    </div>

    {% comment %}
      Layer order: the map, then layer 1 business knowledge, then layer 2 architecture
      and AI, then layers 3–4. Conversation types trail — they assert no facts and
      are no longer the reason to be here. See .design/vision.md §11.
    {% endcomment %}
    {% assign order = "industries,domains,capabilities,processes,personas,kpis,governance,domain_modules,data_models,data_entities,patterns,architectures,ai_integration_catalogs,ai_integrations,ai_agents,demonstrations,vendor_implementations,maturity_rubrics,playbooks,guides,decision_guides,videos,meta" | split: "," %}

    {% for key in order %}
      {% comment %}Depth first, then title — finished work above stubs within each type.{% endcomment %}
      {% assign entries = site[key] | sort: "title" | sort: "depth_rank" %}
      {% if entries.size > 0 %}
        <div class="section-head" style="margin-top: var(--space-6);">
          <h2>{{ entries.first.okf_type }}{% if entries.size > 1 %}s{% endif %}</h2>
        </div>
        <div class="card-grid">
          {% for entry in entries %}
            {% include blueprint-card.html entry=entry %}
          {% endfor %}
        </div>
      {% endif %}
    {% endfor %}
  </div>
</section>
