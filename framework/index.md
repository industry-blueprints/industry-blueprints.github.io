---
layout: default
title: Capability Modernization Framework
description: A shared path for understanding a public-sector domain and turning that understanding into an achievable modernization plan.
section: framework
permalink: /framework/
---

<section class="section landing-intro">
  <div class="wrap">
    <div class="section-head">
      <span class="eyebrow">A reusable method</span>
      <h1>One path, applied to many domains.</h1>
      <p class="lede">The framework begins with public outcomes and how the work operates. It then connects information and technology to priorities, an achievable roadmap, and continuous improvement.</p>
    </div>
    <p class="hero-actions">
      <a class="button-link" href="{{ '/domains/asset-management/modernization/' | relative_url }}">See it applied to Asset Management</a>
    </p>
  </div>
</section>

<section class="section framework-phases">
  <div class="wrap">
    <div class="section-head">
      <span class="eyebrow">Fourteen stages, five readable phases</span>
      <h2>From purpose to sustained improvement.</h2>
    </div>
    {% for phase in site.data.framework.phases %}
      <section class="framework-phase">
        <header>
          <span>{{ phase.number | prepend: "0" | slice: -2, 2 }}</span>
          <div><h3>{{ phase.title }}</h3><p>{{ phase.description }}</p></div>
        </header>
        <ol>
          {% for stage_id in phase.stage_ids %}
            {% assign stage = site.data.framework.stages | where: "id", stage_id | first %}
            <li><span>{{ stage.number }}</span><div><strong>{{ stage.title }}</strong><p>{{ stage.core_question }}</p></div></li>
          {% endfor %}
        </ol>
      </section>
    {% endfor %}
  </div>
</section>

<section class="section">
  <div class="wrap narrow-copy">
    <span class="eyebrow">How to use it</span>
    <h2>The framework supports learning and action.</h2>
    <p>Readers can follow it as a course, use selected stages in a workshop, assess the maturity of a domain, develop architecture, evaluate AI opportunities, or assemble a modernization roadmap. Domain material supplies the specific examples, decisions, information, measures, and tools that make the common method concrete.</p>
  </div>
</section>
