---
layout: post
title: "GitLab CI - Centralization Configuration"
categories: 
- ci
- configuration
- centralization
- gitlab
author:
- Simon Schrottner
excerpt_separator: <!--more-->
---

My company is currently migrating to GitLab and also to GitLab CI.
We do have a lot of similar projects which rely on similar tooling and therefore the CI configuration is also pretty similar.
This created the need to centralize it but we still wanted to provide some configurational options with an explanation without spoiling the run pipeline UI.

<!--more-->

This is the first post of a series on our approaches.

## Centralized Configuration

The idea of generalizing configuration or of loading from a different repository was born due to a simple need - or own custom tools.
Sometimes our tools do have their own build images and need their own build step, which is a lot of prior knowledge if you just want to apply them to your project and use them.

Therefore we decided to move the CI definitions for those files into own projects or to the build image project.
The benefits are:

- lifecycle of job definition and tool are unified.

    If a project updates the job definitions, they will also use the appropriate image linked to it.

- User does not need to know internals of tool

    The user has a simple way to use the tool within his CI.
    There is no prior logic needed, but if there is the need, it allows manipulation from the outside.

- We can provide versioned updates for tool and job definition

### So how those this work?

We will be working within one repository to show this functionality, but it is not much effort to change this to multiple projects.
Additionally we use the assumption that `alpine:latest` is our own docker image build tool :).

A normal `.gitlab-ci.yml` looks like:

```yaml
job:
    stage: stage
    image: alpine:latest
    before_script:
        - echo "some tool specific setup"
    script:
        - echo "default action"
```

Our user is quiet unhappy, because he needs to write all those lines, just for doing the default action.
Also he has to know about all those things upfront.
Furthermore if the tool implementation changes are changing he also need to be aware of that.

For easier usage, we need to

1. extract the job definition
2. apply the extracted job definition

#### Extraction into own CI file

Instead we can extract this whole job definition into our own `tools.gitlab-ci.yml` which will look like exactly within the `.gitlab-ci.yml`

```yaml
job:
    stage: build
    image: alpine:latest
    before_script:
        - echo "some tool specific setup"
    script:
        - echo "default action"
```

#### Usage of extracted file

To use the newly created `tools.gitlab-ci.yml` we need to include it within our build.

```yaml
include:
    - local: tools.gitlab-ci.yml
```

Voila the first step is done.
We centralized the configuration into an own file!

#### Change the action

As mentioned earlier, we also want to offer the user the possibility to change this definition.
Luckily GitLab got us covered here.
They over a really great merging of those `yml`-files and in the end they are combined.

This allows us to reuse the same definition and just override parts of it within our `.gitlab-ci.yml`

```yaml
include:
    - local: tools.gitlab-ci.yml

job:
    stage: test
    script:
        - echo "do this instead"
```

## Conclusion

Extracting functionality into an own file is easy.
Using extracted functionality is also not that hard.
Modifying extracted functionality works also like a charm.

## Word of advise

This seems to be great functionality and offers a lot of DRY possibilities.
I still urge you to evaluate what you try to reduce and how the user perspective is.
It is nice if it is DRY, but it can still be really confusing for the user.
