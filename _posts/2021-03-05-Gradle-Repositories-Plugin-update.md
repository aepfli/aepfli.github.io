---
layout: post
title: "Gradle Repositories Plugin Update"
categories: 
- gradle
- gitlab
author:
- Simon Schrottner
---

My work on tthe Gradle Repositories Plugin is progressing quiet fast.
I released version `0.2.0` today.
Mainly because i setup proper CI and also think that i reached a fine maturity level.


## Findings

Furthermore i found some interesting improvements along the way.
I am still not sure if all of them are good practice, but anyways it is worth sharing.

### Avoiding of Class imports

In my first iteration it was necessary to import the token classes for configuration (or use absolute paths).
Otherwise gradle would have complained, because it would not have found the necessary classes.

```groovy
import at.schrottner.gradle.auths.PrivateToken
import at.schrottner.gradle.auths.DeployToken

gitLab {
    token(PrivateToken) {
        it.key = 'jenkinsToken'
        it.value = gitLabDeployToken
    }
    token(PrivateToken) {
        it.key = 'privateToken'
        it.value = gitLabPrivateToken
    }
}
```

This is somewhat ugly and forces the user to a certain level of implementation knowledge, which is imho too much.
Why should the user want to know about the package for this classes.

Luckily there is a simply by pass to this.
I am abusing the `extra properties` of Gradle to store a reference of the class as variable name.
The `extra properties` are used to store gradle.properties etc. due to that, there is no need for an import, or any other mechanism to retrieve this information.
As it will simple resolve to the class.

`extra properties` is actually an gradle extension which you can access with `project.extensions.extraProperties`.

Based on this, i used following snippet to add a reference to the classes, with the same name.

```groovy
project.extensions.extraProperties.set('DeployToken', DeployToken.class)
project.extensions.extraProperties.set('PrivateToken', PrivateToken.class)
```

This allowes the user to remove the import and just use it like

```groovy
gitLab {
    token(PrivateToken) {
        it.key = 'jenkinsToken'
        it.value = gitLabDeployToken
    }
    token(PrivateToken) {
        it.key = 'privateToken'
        it.value = gitLabPrivateToken
    }
}
```

### Settings plugins

As i never wrote about it before, i think it is worth sharing my findings.
Just briefly, i think will dedicated another blog post to this.

You can write a Plugin for `settings.gradle`.
It is not nice to apply, you still need a buildscript block :(.
It is complicated to add in functional tests, as you can not rely on the basic GradleTestKit functionality.
Classes vary from settings to project and you can not just use the same Objects (or maybe it is a developer issue).