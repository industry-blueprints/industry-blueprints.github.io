---
layout: default
title: Public-Sector Domains
description: Explore important public-sector missions through their outcomes, work, information, technology, and modernization choices.
section: domains
permalink: /domains/
---

<section class="section landing-intro">
  <div class="wrap">
    <div class="section-head">
      <span class="eyebrow">The main way into Industry Blueprints</span>
      <h1>Begin with the mission you care about.</h1>
      <p class="lede">A Domain is an end-to-end guide to a recognizable area of public-sector work. It brings practical use cases together with the operating model, modernization path, architecture, measures, and AI opportunities.</p>
    </div>
  </div>
</section>

<section class="section">
  <div class="wrap">
    <div class="domain-index-grid">
      {% assign domains = site.domains | sort: "title" %}
      {% for domain_page in domains %}
        {% assign domain = site.data.domains[domain_page.data_key].domain %}
        {% assign use_case_count = site.domain_use_cases | where: "domain_id", domain.id | size %}
        <a class="domain-index-card" href="{{ domain_page.url | relative_url }}">
          <span class="card-eyebrow">Reference domain · {{ use_case_count }} use cases</span>
          <h2>{{ domain.name }}</h2>
          <p>{{ domain.summary }}</p>
          <span class="card-action">Explore {{ domain.name }} →</span>
        </a>
      {% endfor %}
    </div>

    <div class="next-domains">
      <span class="eyebrow">Coming next</span>
      <h2>Investigations and Grants Management</h2>
      <p>These domains will be added after the Asset Management experience is validated. Their different lifecycles, decisions, information, risks, and participants will help reveal where the common model needs refinement.</p>
    </div>
  </div>
</section>
