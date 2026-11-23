---
layout: default
title: Projects
permalink: /projects/
eyebrow: Open source
heading: "Projects & Contributions"
---

## OpenFeature

**Maintainer.** OpenFeature is the vendor-neutral standard for feature flagging in the CNCF landscape (currently incubating).
I'm active across the full org, contributing to the spec and SDKs in Java, Python, Go, and JavaScript, driving testing automation across that polyglot environment, and helping shape governance and roadmap.

In a previous role I architected and shipped a centralized feature flag management service built on OpenFeature, integrated it with OpenTelemetry for SRE-grade observability over flag evaluation, and represented the project at the KubeCon Project Pavilion.

[Website](https://openfeature.dev) · [GitHub org](https://github.com/open-feature)

### flagd ecosystem

flagd is OpenFeature's reference flag evaluation engine.
The work below cuts across the polyglot test surface that keeps the ecosystem honest:

- **[flagd](https://github.com/open-feature/flagd).** 22+ PRs across the targeting parser, OFREP traces, observability, and architectural decision records.
- **[flagd-evaluator](https://github.com/open-feature/flagd-evaluator).** 12+ PRs on the Rust + WASM cross-language evaluator that lets every SDK share one targeting implementation.
- **[flagd-testbed](https://github.com/open-feature/flagd-testbed).** 68+ PRs maintaining the gherkin-based cross-language conformance harness used by every flagd provider.

## JUnit Pioneer

**Maintainer.** A JUnit 5 extension pack with an active contributor community, small, focused, and a good on-ramp for first-time open source contributors.
[Website](https://junit-pioneer.org)

## Keptn

**Approver, lifecycle-toolkit.** Keptn is a CNCF project for cloud-native application lifecycle orchestration.
Granted approver status in 2023 for sustained work on documentation, linting, and project infrastructure ([community PR 272](https://github.com/keptn/community/pull/272)).

- **[lifecycle-toolkit](https://github.com/keptn/lifecycle-toolkit).** 30+ PRs across the operator, docs, and CI.
- **[community](https://github.com/keptn/community).** 14+ PRs on governance and contributor process.
- **[keptn.github.io](https://github.com/keptn/keptn.github.io).** 31+ PRs on the project website and documentation pipeline.

## OpenTelemetry Demo

The CNCF reference demo for distributed tracing.
Contributed [PR #2114](https://github.com/open-telemetry/opentelemetry-demo/pull/2114), adapting the load-generator to use the OpenFeature OFREP provider instead of the in-process evaluator, so the demo exercises a realistic remote-evaluation path.

## The Orange Case

**[The Orange Case](https://orange-case.github.io)** is JoustMania, a Raspberry Pi jousting game with motion controllers, wired up as a live testbed for OpenFeature, runtime configuration, and observability under genuinely chaotic input.
It started as the demo platform behind the KubeCon EU 2026 talk *18 Bluetooth Controllers Walk Into a Bar* (with Manuel Timelthaler), and 440+ of its PRs are mine.
Now it lives in a case, with flagd and one OpenTelemetry collector that ships everything over OTLP to whichever observability backend is on trial, so the backends get compared under the same game, the same telemetry, and the same chaos.
Six challenges put them side by side, from high-density metrics and trace scale to cross-trace correlation and GenAI cost, and not all of them are playable yet.
The slides for the talks built on it live there too, most recently [Cloud Native Denmark](https://orange-case.github.io/slides/2026-11-20-cloud-native-denmark-presentation/).
[Website](https://orange-case.github.io) · [Source repository](https://github.com/orange-case/JoustMania) · [Talks]({{ '/talks/' | relative_url }})

## Smaller things I built

- [gradle-gitlab-repositories](https://github.com/aepfli/gradle-gitlab-repositories): Gradle plugin for multi-token GitLab dependency management
- [markdownlint-rule-max-one-sentence-per-line](https://github.com/aepfli/markdownlint-rule-max-one-sentence-per-line): custom markdownlint rule

## Other notable contributions

- [JUnit 5](https://github.com/junit-team/junit5/pulls?q=is%3Apr+author%3Aaepfli): upstream PRs into the framework that JUnit Pioneer extends.
- [cucumber-rs](https://github.com/cucumber-rs/cucumber/pulls?q=is%3Apr+author%3Aaepfli): small fix to the Rust Cucumber implementation.
- [SonarJava](https://github.com/SonarSource/sonar-java/pulls?q=is%3Apr+author%3Aaepfli): rule contributions from the static-analysis years.
- [GitLab](https://gitlab.com/gitlab-org/gitlab/-/merge_requests?author_username=s.schrottner): upstream MRs from running CI/CD at scale.

## Roles

- OpenFeature maintainer
- Keptn approver (lifecycle-toolkit)
- CNCF Ambassador
- [Cloud Native Graz](https://ocgroups.dev/cncf/group/cloud-native-graz) organizer
- JUnit Pioneer maintainer
