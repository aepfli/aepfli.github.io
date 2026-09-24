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

- Feature flagging that survives contact with production: patterns, failure modes, and OpenFeature
- Observability for release confidence: OpenTelemetry, and what SREs actually need to see
- Developer experience and platform engineering: the plumbing that decides whether shipping is a strength or a tax
- Open standards, vendor neutrality, and the governance that keeps them honest
- Shifting engineering left in the age of agents: the [Left of the Loop]({{ '/series/left-of-the-loop/' | relative_url }}) thesis

### Formats

- Conference session (30–45 min) or lightning talk
- Keynote, including co-delivered keynotes, which I enjoy more than the solo kind
- Hands-on workshop, half or full day
- Meetup talk, user group, or podcast/panel
- In-house session for your engineering org: same material, tuned to your stack and your problems

### Practicalities

- English or German (native), and I'll happily do a German-language keynote
- Based in Austria, and I travel for the right event wherever it is
- Community conferences, meetups, and CNCF events are usually travel-only. Corporate events and in-house sessions are paid engagements, so [ask me]({{ '/services/' | relative_url }})
- Give me a rough audience profile and I'll tell you honestly whether one of my sessions fits, or propose something that does

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
