# Working in this repository

A Jekyll site published to GitHub Pages at <https://schrottner.at>, holding the
blog, the *Left of the Loop* series, and the pages that describe the work Simon
takes on.

## Writing

**Read [VOICE.md](VOICE.md) before writing or editing any prose**, including site
pages and marketing copy. The site and the *Left of the Loop* book share one
voice, and the site pages are the ones most likely to drift out of it.

The rule that gets broken most often: no em-dashes in prose.

## Positioning

The site sells two tracks under one name:

1. **Fractional engineering leadership**, CTO and Head of Engineering work.
2. **Feature flagging and developer experience**, built on OpenFeature.

Speaking is a third, separate offering. The through-line across all of them is
release confidence, which is also what *Left of the Loop* argues about at the
organizational level. Keep the front page ordered so a visitor sees the outcome,
then the two tracks, then the evidence.

Claims on the site stay checkable: named employers, named projects, named roles.
No invented client results, metrics, or testimonials.

## Checks before pushing

CI runs both of these on every pull request, over all Markdown in the repository.

```bash
npx markdownlint-cli ./
```

```bash
npx markdown-spellcheck --en-us -n -r '**/*.md' '*.md'
```

US English, so "organization" and "judgment". The spellchecker has no project
dictionary beyond `.spelling`, so new proper nouns, product names, and any
non-word token that appears in inline HTML need adding there.

## Structure

- `_posts/` holds published posts, `_drafts/` holds unpublished ones. Posts dated
  in the future stay hidden until their date, and a scheduled workflow rebuilds
  Pages so they go live on time.
- `_data/series.yml` holds the part count and cadence for each series, which the
  progress line on series pages reads.
- Series overview pages live at the repository root as `series-*.md` with an
  explicit `permalink`.
- `assets/css/style.css` is the whole stylesheet, plain CSS with custom
  properties and a `prefers-color-scheme` dark theme. No build step.
