---
layout: post
title: "GitLab CI - Environment Variables Fun"
categories: 
- ci
- configuration
- environment
- gitlab
author:
- Simon Schrottner
---

My company is currently migrating to GitLab and also GitLab CI.
We do have a lot of similar projects which rely on similar tooling and therefore the CI configuration is also pretty similar.
This created the need to centralize it but we still wanted to provide some configurational options with an explanation without spoiling the run pipeline ui.

The environment variables are a good tool to define those options.
There are two was to define them, both use the same `variables` directive, but one allows us to define a description which will be shown in the UI when manually triggering the pipeline.

    ```yaml
    variables:
        # without description
        VARIABLE_A: "value"
        # with a description
        VARIABLE_B:
            value: "value"
            description: "description"
    ```

![Run Pipeline](/assets/2021-03-18/run-pipeline.png)

