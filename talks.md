---
layout: default
title: Talks
permalink: /talks/
eyebrow: Speaking
---

I speak regularly on feature flagging, observability, developer experience, and the craft of open standards, and I'm available to hire for conferences, meetups, and in-house sessions. Slides and abstracts for most talks live on [Sessionize](https://sessionize.com/simon-schrottner), with recordings and decks linked below where available.

## Upcoming

{% assign upcoming = site.data.talks | where: "section", "upcoming" %}
{% include talk-list.html items=upcoming %}

## Book me for your event

I take the stage as a CNCF Ambassador, an AAIF Ambassador, and an OpenFeature maintainer and technical steering committee member, which means the talks come from inside the projects rather than from the outside looking in. Every session is built around something I've actually had to make work in production, never a vendor pitch and never a slide deck read aloud.

### Topics I speak on

<dl class="split-list">
  <dt>Feature flagging</dt>
  <dd>Flags that survive contact with production: patterns, failure modes, and OpenFeature.</dd>

  <dt>Observability</dt>
  <dd>Release confidence with OpenTelemetry, and what SREs actually need to see.</dd>

  <dt>Developer experience</dt>
  <dd>Platform engineering, and the plumbing that decides whether shipping is a strength or a tax.</dd>

  <dt>Open standards</dt>
  <dd>Vendor neutrality, and the governance that keeps them honest.</dd>

  <dt>Engineering with agents</dt>
  <dd>Shifting engineering left, the <a href="{{ '/series/left-of-the-loop/' | relative_url }}">Left of the Loop</a> thesis.</dd>
</dl>

### Formats

<dl class="split-list">
  <dt>Conference session</dt>
  <dd>30&ndash;45 minutes, or a lightning talk.</dd>

  <dt>Keynote</dt>
  <dd>Including co-delivered keynotes, which I enjoy more than the solo kind.</dd>

  <dt>Workshop</dt>
  <dd>Hands-on, half or full day.</dd>

  <dt>Meetup or user group</dt>
  <dd>Talk, podcast, or panel.</dd>

  <dt>In-house session</dt>
  <dd>Same material, tuned to your stack and your problems.</dd>
</dl>

### Practicalities

<dl class="split-list">
  <dt>Language</dt>
  <dd>English or German (native), and I'll happily do a German-language keynote.</dd>

  <dt>Travel</dt>
  <dd>Based in Austria, and I travel for the right event wherever it is.</dd>

  <dt>Fees</dt>
  <dd>Community conferences, meetups, and CNCF events are usually travel-only. Corporate events and in-house sessions are paid engagements, so <a href="{{ '/services/' | relative_url }}">ask me</a>.</dd>

  <dt>Fit</dt>
  <dd>Give me a rough audience profile and I'll tell you honestly whether one of my sessions fits, or propose something that does.</dd>
</dl>

<p class="cta">
  <a href="mailto:simon@schrottner.at" class="cta-button">Invite me to speak</a>
  <a href="https://calendar.app.google/XiivjTTvJAGM9mkE8" class="cta-button cta-button-secondary">Book a call</a>
  <a href="https://sessionize.com/simon-schrottner" class="cta-button cta-button-secondary">Session catalogue</a>
</p>

## Featured

<div class="featured">
  <h3>OpenFeature's Positive Impact on Confidence at Dynatrace</h3>
  <p class="meta">OpenFeature Summit @ KubeCon EU 2025 · London · with Todd Baert</p>
  <p>How OpenFeature changed the way we ship at Dynatrace, including the OpenTelemetry integration that gave SREs real visibility into flag evaluation in production.</p>
  <p><a href="https://www.youtube.com/watch?v=XhgIwxrtvuo">Watch the recording on YouTube →</a></p>
</div>

## 2026

{% assign conf2026 = site.data.talks | where: "section", "conference" | where: "year", "2026" %}
{% include talk-list.html items=conf2026 %}

## 2025

{% assign conf2025 = site.data.talks | where: "section", "conference" | where: "year", "2025" %}
{% include talk-list.html items=conf2025 %}

## Meetups & community

{% assign meetups = site.data.talks | where: "section", "meetup" %}
{% include talk-list.html items=meetups %}

---

Want me to speak at your event? [Get in touch](mailto:simon@schrottner.at) with the date, the audience, and roughly what you want them to walk away with. I'll come back honestly about whether I'm the right fit.
