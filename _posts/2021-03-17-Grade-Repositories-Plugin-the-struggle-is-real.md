---
layout: post
title: "Gradle Repositories Plugin - The Struggle is Real"
tags: 
- gradle
- gitlab
author:
- Simon Schrottner
---

I released version 0.3.0 due to some interesting bugs and some misconceptions.
All the functionality is covered, but i opened a box which was maybe not a good idea to open.

## Fixed topics

### Misconception

I was not careful enough when reading the GitLab Documentation regarding Gradle and the GitLab Package Registry.
It turns out, that you are able to download from two different endpoints:

- Group endpoint:
    `<url>/api/v4/groups/<groupId>/-/packages/maven`
- Project endpoint:
    `<url>/api/v4/projects/<projectId>/packages/maven`

Also logical you can only upload to one, the project endpoint.
My previous implementation did not cover projects at all.
Therefore i now deprecated my first API endpoint `maven(args)`.
Instead i offer now a `groups(args)` and a `projects(args)` endpoint.

### Upload

Together with the misconception this was also the reason, why upload did not work.
As we still need to somehow provide where we want those repositories to be added, i am currently still stuck with `.upload(owner, 'projectId')`.
But finally it works, and we are at a usable state.

## Plans for the Future

Simply said, reduce complexity and make it more elegant.
Currently there is too much code in the plugin from trial and error.
I think it is cluttered, it is missing structure, and it is confusing as hell.

### DSL-like API

My way of configuring the plugin is not ideal.
It works, but it could be better and in a nicer groovy way.
I will change it to a [DSL-like API](https://docs.gradle.org/current/userguide/implementing_gradle_plugins.html#modeling_dsl_like_apis).

The benefit is within the lazy evaluation, which might be beneficiary.
Although currently there is not much to gain, as the configuration is happening during the evaluation anyways, and not when the task is executed.

### Hand over from Settings to Projects

The current way is a little bit clumsy and suboptimal - fetching, recreation, applying, etc.

I would love to clean this up, make it more concise and easier to grasp.

Currently I also think that some of those limitations might be also caused by my need to support Gradle 4.10.3.
If my understandings are correct, i can remove this handover of artifacts to the projects in the future.
As soon as i can drop support of 4.10.3 - the question is, if i leave the functionality, but just ignore it in that case.

### How we add repositories

Currently the plugin is applied in two different ways:

- Downloading:
    Here I rely on the information at hand when the plugin is applied.
    I store the repositories of the `ExtensionAware`-Object which was used to instantiate the extension.
    This works fine for the dependency repositories, but also limits it to just them
- Uploading:
    Here we pass on the owner and use this information to add the repositories.
    I do not like this because it adds complexity to the API.

I try now to investigate, how i can maybe unify the API and reduce complexity.

1. Ideally i manage to add a method to the `DefaultRepositoryHandler` but this seems to be a hard task.
2. Alternatively i could change the way the repositories are applied and return the `Action` instead of adding it within the plugin.

```groovy
repositories {
    // Current way
    gitLab.groups('groupId')
    // 1. if i manage to extend DefaultRepositoryHandler
    gitLabGroups('groupId')
    // 2. not having influence on where it is added
    maven gitLab.groups('groupId')
}
```
