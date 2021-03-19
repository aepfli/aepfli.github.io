---
layout: post
title: "Linting and Spellchecking my Blog"
tags: 
- GitHub Actions
- GitHub Pages
- Blog
- Linting
- Spellchecking
- Automation
author:
- Simon Schrottner
excerpt_separator: <!--more-->
---

My biggest problem with my Blog is my bad writing.
I am making to many mistakes, either typos or bad formatting.
This bothered my heavily and it is also something, which can be easily prevented (to some degree) by automation.

<!--more-->

In this Blog Post i will shortly talk about:

- the tools i am using
- how to integrate the tools in GitHub Actions
- who inspired me

## Inspiration

I have to be honest here, i did not came across those tools by myself.
Within my current company we started writing a handbook and with a lot of editors, this became a mess over time.
One of the biggest problems have been spelling errors and inconsistent formatting of files.

Actually things which are easily to check by linters and a spellcheck.
Hence that we invested some time within the company and i decided to use the same tools, as i am already familiar with them.

## Tools

There are a lot of tools out there for this purpose.
There are even ready to use GitHub Actions, but i struggled with them.
I did not think they where as intuitive as the main tools by themselves.
Furthermore setting up GitHub Actions with Node.js and some packages is not really rocket since.

Additionally i have the benefit of even running them locally, so i can easier fix issues.

### Linting

I am using [markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli) for linting my Markdown files.

It has a really good documentation and also provides easy ways to ignore certain issues based on HTML comments, see [markdownlint configuration documentation](https://github.com/DavidAnson/markdownlint#configuration).
Furthermore can i really easily configure rule definitions with a file within the repository.
I chose yaml therefore i have a `.markdownlint.yaml` file within my repository.

To lint all your markdown files within a directory run:

```bash
npx markdownlint-cli ./
```

### Spellcheck

There are a lot solutions for spellchecking out in the open.
I took a look at [PySpelling](https://facelessuser.github.io/pyspelling/) and other tools.
In the end i stuck to a Node.js approach by using [markdown-spellcheck](https://github.com/lukeapage/node-markdown-spellcheck).

A really nice and easy to use tool, which offers even an interactive mode for fixing issues locally.

```bash
npx markdown-spellcheck '**/*.md'
```

Important to note is, that you might want to use `-n` to ignore numbers and when used in a CI environment `-r` for just reporting.

## Automation with GitHub Actions

{{site.data.alerts.note}}
I will not go into details about GitHub Actions, i will just explain my two jobs.
If you are lacking basic GitHub Actions knowledge, please read the reference documentation.
{{site.data.alerts.end}}

I implemented two jobs:

1. linting
2. spellchecking

Both of them rely on Node.js - so they are pretty similar in their configuration, and only diverge in the actual part of the execution.
I am using [Setup Node.js Environment](https://github.com/marketplace/actions/setup-node-js-environment) Action from the marketplace to set up Node.js in the correct version.

```yaml
    - uses: actions/setup-node@v1
      with:
        node-version: "15"
```

Furthermore both tools work with NPX so we do not even need to install anything upfront.

### Markdown-cli

As we have already setup Node.js for our next step the only thing missing is the execution.

```yaml
    - run: npx markdownlint-cli ./
```

As it might be hard to get an overview of all the changes, here you see the whole job.

```yaml
  lint:
    name: Linting
    runs-on: ubuntu-latest
    steps:
    - name: Check out code
      uses: actions/checkout@v2
    - name: linting  
      uses: actions/setup-node@v1
      with:
        node-version: "15"
    - run: npx markdownlint-cli ./
```

### Markdown-spellcheck

Note worthy is the environment variable `FORCE_COLOR`.
It enables colorful output and allows for easier debugging of issues within GitHub Actions.

```yaml
    - env:
        FORCE_COLOR: 1
      run: npx markdown-spellcheck --en-us -n -r **/*.md
```

As it might be hard to get an overview of all the changes, here you see the whole job.

```yaml
  markdown-spellcheck:
    name: Spellchecking
    runs-on: ubuntu-latest
    steps:
    - name: Check out code
      uses: actions/checkout@master  
    - name: Spellchecking
      uses: actions/setup-node@v1
      with:
        node-version: "15"
    - env:
        FORCE_COLOR: 1
      run: npx markdown-spellcheck --en-us -n -r **/*.md *.md
```
