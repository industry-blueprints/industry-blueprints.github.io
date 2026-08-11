---
layout: default
title: Capabilities
description: Mission workloads and use cases that public agencies care about.
section: capabilities
permalink: /capabilities/
---

<section class="section landing-intro capabilities-intro">
  <div class="wrap">
    <div class="section-head">
      <span class="eyebrow">Capabilities</span>
      <h1>The mission workloads and use cases that agencies care about.</h1>
      <p class="lede">Capabilities describe the work an agency needs to understand, operate, and improve—independent of a particular technology or implementation.</p>
    </div>
  </div>
</section>

<section class="section capabilities-catalog">
  <div class="wrap">
    <div class="capability-map">
      {% assign capability_areas = site.data.capability_areas | sort: "order" %}
      {% for area in capability_areas %}
        {% assign entries = site.capabilities | where: "capability_area", area.id | sort: "order" %}
        <section class="cap-domain" id="{{ area.id }}" aria-labelledby="{{ area.id }}-heading">
          <header class="cap-domain-head">
            <h3 id="{{ area.id }}-heading">{{ area.title }}</h3>
            <span class="cap-domain-count">{{ entries | size }} capabilities</span>
          </header>
          <p class="cap-domain-desc">{{ area.description }}</p>
          <ul class="cap-list">
            {% for capability in entries %}
              <li class="cap-item is-linked">
                <a href="{{ capability.url | relative_url }}">{{ capability.title }}</a>
                <span class="cap-def">{{ capability.description }}</span>
              </li>
            {% endfor %}
          </ul>
        </section>
      {% endfor %}
    </div>
  </div>
</section>
