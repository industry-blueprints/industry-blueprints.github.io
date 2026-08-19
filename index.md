---
description: Six components split evenly across business and technology connect public-sector work to vendor-neutral solution architecture.
---

<section class="hero">
  <div class="container hero-grid">
    <div>
      <p class="eyebrow">A public-sector knowledge and solution architecture system</p>
      <h1>Start with the work. Build toward action.</h1>
      <p class="lede">A consistent, vendor-neutral way to understand public-sector work and connect it to practical solution architecture — six memorable components split evenly across business and technology.</p>
      <div class="button-row">
        <a class="button" href="{{ '/workloads/' | relative_url }}">Explore workloads</a>
        <a class="button button--ghost" href="{{ '/about/' | relative_url }}">How this works</a>
      </div>
    </div>
    <div class="hero-aside">
      <strong>Designed for</strong>
      <p>Public-sector practitioners, solution architects, account teams, strategists, content authors, and knowledge administrators.</p>
    </div>
  </div>
</section>

<section class="section">
  <div class="container">
    <div class="section-heading">
      <div>
        <p class="eyebrow">The core model</p>
        <h2>Six components, business to technical</h2>
      </div>
      <p>Workload maps to Reference Architecture, Capability maps to Capability Architecture, and Use Case maps to Implementation Pattern. Workloads, capabilities, and reference architectures are pages; use cases and their implementation patterns are sections within a capability page. Everything else — AI, assessments, data, standards, products, governance, and sources — attaches as a cross-cutting layer, not another rung in the hierarchy.</p>
    </div>
    <p class="eyebrow" style="margin-bottom: 14px;">Business side</p>
    <div class="model-flow">
      <article class="model-step">
        <span class="step-number">Workload</span>
        <h3>What work are you responsible for?</h3>
        <p>A recognizable, recurring body of operational work that can be managed, measured, and improved.</p>
      </article>
      <article class="model-step">
        <span class="step-number">Capability</span>
        <h3>What must you be able to do?</h3>
        <p>A reusable business ability required to execute one or more workloads.</p>
      </article>
      <article class="model-step">
        <span class="step-number">Use Case</span>
        <h3>What problem or opportunity are we addressing?</h3>
        <p>A concrete scenario in which a capability is applied, improved, automated, or augmented — written as a section on its capability's page.</p>
      </article>
    </div>
    <p class="eyebrow" style="margin: 42px 0 14px;">Technical side</p>
    <div class="model-flow">
      <article class="model-step">
        <span class="step-number">Reference Architecture</span>
        <h3>What should the environment look like?</h3>
        <p>A vendor-neutral logical architecture for a whole workload, composed from the capability architectures beneath it.</p>
      </article>
      <article class="model-step">
        <span class="step-number">Capability Architecture</span>
        <h3>What shape does that ability take?</h3>
        <p>A vendor-neutral logical design for one capability, combining the implementation patterns from its use cases into a single shape.</p>
      </article>
      <article class="model-step">
        <span class="step-number">Implementation Pattern</span>
        <h3>How can this scenario be built?</h3>
        <p>A concrete, repeatable technical approach for a single use case, written inline with that use case.</p>
      </article>
    </div>
  </div>
</section>

<section class="section section--surface">
  <div class="container">
    <div class="section-heading">
      <div>
        <p class="eyebrow">Featured workloads</p>
        <h2>Start with the work you recognize</h2>
      </div>
      <p>Every workload connects outcomes, capabilities, use cases, data, AI opportunities, and a reference architecture.</p>
    </div>
    {% if site.workloads.size > 0 %}<div class="card-grid">{% for item in site.workloads %}<a class="card" href="{{ item.url | relative_url }}"><p class="card-kicker">Workload</p><h3>{{ item.title }}</h3><p>{{ item.summary }}</p><p class="card-link">Explore workload →</p></a>{% endfor %}</div>{% else %}<div class="empty-state"><h3>Workloads are taking shape</h3><p>Check back soon for the first published examples.</p></div>{% endif %}
  </div>
</section>

<section class="section">
  <div class="container">
    <div class="section-heading">
      <div>
        <p class="eyebrow">Explore the system</p>
        <h2>Follow the path that fits your question</h2>
      </div>
      <p>Start with a recurring body of work, a reusable ability, or the technical library. Each path connects back to the same knowledge.</p>
    </div>
    <div class="card-grid">
      <a class="card" href="{{ '/workloads/' | relative_url }}">
        <p class="card-kicker">The work</p>
        <h3>Workloads</h3>
        <p>Recognizable, recurring bodies of operational work that can be managed, measured, and improved.</p>
        <p class="card-link">Browse workloads →</p>
      </a>
      <a class="card" href="{{ '/capabilities/' | relative_url }}">
        <p class="card-kicker">The ability</p>
        <h3>Capabilities</h3>
        <p>Reusable abilities required to execute one or more workloads — each capability's page carries its own use cases and its capability architecture.</p>
        <p class="card-link">Browse capabilities →</p>
      </a>
      <a class="card" href="{{ '/architecture-library/' | relative_url }}">
        <p class="card-kicker">The design</p>
        <h3>Architecture Library</h3>
        <p>Reference architectures composed from the capability architectures beneath them — vendor-neutral, with product options shown only after the shape is understood.</p>
        <p class="card-link">Browse the library →</p>
      </a>
    </div>
  </div>
</section>

<section class="section section--surface">
  <div class="container section-heading">
    <div>
      <p class="eyebrow">Practitioner entry point</p>
      <h2>Bring this into a real conversation</h2>
    </div>
    <p><a href="{{ '/engage/' | relative_url }}">Assess &amp; Discover</a> reuses this same knowledge — discovery questions, assessments, and maturity models attached to each workload and capability — so a customer conversation starts from context, not a blank page.</p>
  </div>
</section>
