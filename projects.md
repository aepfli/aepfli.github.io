---
layout: default
title: Projects
permalink: /projects/
---

# Projects & Contributions

## OpenFeature

**Maintainer.** OpenFeature is the vendor-neutral standard for feature flagging in the CNCF landscape (currently incubating).
I'm active across the full org — contributing to the spec and SDKs in Java, Python, Go, and JavaScript, driving testing automation across that polyglot environment, and helping shape governance and roadmap.

In a previous role I architected and shipped a centralized feature flag management service built on OpenFeature, integrated it with OpenTelemetry for SRE-grade observability over flag evaluation, and represented the project at the KubeCon Project Pavilion.

[Website](https://openfeature.dev) · [GitHub org](https://github.com/open-feature)

### flagd ecosystem

flagd is OpenFeature's reference flag evaluation engine.
The work below cuts across the polyglot test surface that keeps the ecosystem honest:

- **[flagd](https://github.com/open-feature/flagd)** — 22+ PRs across the targeting parser, OFREP traces, observability, and architectural decision records.
- **[flagd-evaluator](https://github.com/open-feature/flagd-evaluator)** — 12+ PRs on the Rust + WASM cross-language evaluator that lets every SDK share one targeting implementation.
- **[flagd-testbed](https://github.com/open-feature/flagd-testbed)** — 68+ PRs maintaining the gherkin-based cross-language conformance harness used by every flagd provider.

## JUnit Pioneer

**Maintainer.** A JUnit 5 extension pack with an active contributor community — small, focused, and a good on-ramp for first-time open source contributors.
[Website](https://junit-pioneer.org)

## Keptn

**Approver, lifecycle-toolkit.** Keptn is a CNCF project for cloud-native application lifecycle orchestration.
Granted approver status in 2023 for sustained work on documentation, linting, and project infrastructure ([community PR 272](https://github.com/keptn/community/pull/272)).

- **[lifecycle-toolkit](https://github.com/keptn/lifecycle-toolkit)** — 30+ PRs across the operator, docs, and CI.
- **[community](https://github.com/keptn/community)** — 14+ PRs on governance and contributor process.
- **[keptn.github.io](https://github.com/keptn/keptn.github.io)** — 31+ PRs on the project website and documentation pipeline.

## OpenTelemetry Demo

The CNCF reference demo for distributed tracing.
Contributed [PR #2114](https://github.com/open-telemetry/opentelemetry-demo/pull/2114) — adapting the load-generator to use the OpenFeature OFREP provider instead of the in-process evaluator, so the demo exercises a realistic remote-evaluation path.

## JoustMania

**Demo platform** behind the KubeCon EU 2026 talk *18 Bluetooth Controllers Walk Into a Bar* (with Manuel Timelthaler) — see [/talks]({{ '/talks/' | relative_url }}).
A Raspberry Pi jousting game wired up as a live testbed for OpenFeature, runtime configuration, and observability tooling under genuinely chaotic input.
Heavy involvement (440+ PRs) on the fork that drives the talk's demos.
[Source repository](https://github.com/WatchMeJoustMyFlags/JoustMania)

## Smaller things I built

- [gradle-gitlab-repositories](https://github.com/aepfli/gradle-gitlab-repositories) — Gradle plugin for multi-token GitLab dependency management
- [markdownlint-rule-max-one-sentence-per-line](https://github.com/aepfli/markdownlint-rule-max-one-sentence-per-line) — custom markdownlint rule

## Other notable contributions

- [JUnit 5](https://github.com/junit-team/junit5/pulls?q=is%3Apr+author%3Aaepfli) — upstream PRs into the framework that JUnit Pioneer extends.
- [cucumber-rs](https://github.com/cucumber-rs/cucumber/pulls?q=is%3Apr+author%3Aaepfli) — small fix to the Rust Cucumber implementation.
- [SonarJava](https://github.com/SonarSource/sonar-java/pulls?q=is%3Apr+author%3Aaepfli) — rule contributions from the static-analysis years.
- [GitLab](https://gitlab.com/gitlab-org/gitlab/-/merge_requests?author_username=s.schrottner) — upstream MRs from running CI/CD at scale.

## Roles

- OpenFeature maintainer
- Keptn approver (lifecycle-toolkit)
- CNCF Ambassador
- JUnit Pioneer maintainer
