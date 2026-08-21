# Voice guide

The house style for everything published here: blog posts, series pages, and the
site pages that sell the work.

This is a copy of the voice guide used for the *Left of the Loop* book, plus a
section on site copy that the book guide doesn't cover. The book repository holds
the original. When the two disagree, the book wins, and this file gets updated.

## Sentence rhythm

Clauses are economical and tend to connect. Two related thoughts belong in one
sentence, joined with a comma or a plain "and", rather than split into two. What
reads as tight isn't choppy, it's connected.

The sentence breaks happen when a thought is genuinely complete on its own. When
it isn't, connect it.

## Tone

**Direct.** State the thing. Don't set it up, don't announce it, don't explain
what you're about to say.

**Confident without posturing.** The argument stands on the evidence, not on
claims about the argument. No "this is important", show why it's important.

**Warm but restrained.** The personal stories are specific and self-implicating,
often unflattering. They earn the warmth by being real, not by being told warmly.

**Suggests rather than concludes.** The reader arrives at the conclusion. The
text leads them there without stating it.

## What to do

- Connect related clauses within the sentence rather than splitting them
- Use a comma for contrast and qualification: "the team still iterates, just with
  a shared picture"
- Reserve the colon for genuine multi-item lists and for a list that resolves
  into a claim. An aside that wants paired dashes wants two sentences instead
- Write personal stories with names, numbers, specific details
- Use "the team" not "you" when describing team behavior
- Cut rather than add, if a sentence can go without being missed, it should go

## Point of view

- **"I"** is the narrator. First-person stories, named and specific.
- **"you"** is the reader, used both for a deliberate turn toward the reader and
  for the generic actor ("the way you read code", not "the way one reads code").
- **"we"** is the profession, engineers and the industry, not a vague everyone.
  When the actor is a specific small group, name it.
- A generic actor whose behavior isn't the reader's ("an engineer", "the team",
  "a developer", "someone") stays third person.

Avoid the imperative mood for general advice, state it rather than instruct it.
Quoted or reported speech keeps whatever pronoun was actually said.

## What to avoid

- Label paragraphs that announce what the next paragraph will say
- Restatement sentences that repeat what the paragraph above just showed
- Setup sentences: "Before we get to X, we need to understand Y"
- Two-sentence buttons where the second restates the first
- Glue transitions: "This is why...", "In other words...", "To summarize..."
- Throat-clears: "Simply put", "In essence", "It's worth noting"
- Consultant language or jargon that signals camp allegiance over ideas
- Framework language: "In this section I will argue..."
- Em-dashes in prose, anywhere. They survive only in epigraph attribution lines
  and in footnotes

## Patterns to collapse

| Pattern | Fix |
| ------- | --- |
| "X isn't Y. It's Z." | Usually just "X is Z." The "isn't Y" is scaffolding, cut it unless the reader genuinely needs the correction. |
| "A. B." where B restates A | Cut B |
| "It's also..." as a standalone sentence | Fold into the previous sentence |
| "That's the X." as a standalone paragraph | Cut it, it's glue |
| "Not X. Y." | Cut the negation, just say Y. Only keep "not X" when there's a real misconception to correct. |

## What earns its place

- A sentence that adds something the previous one didn't say
- A personal story that is specific, real, and not flattering to the author
- A short sentence after a longer one, for rhythm, when the thought is complete
- A contrast clause that clarifies rather than just negating

## Site copy

The rules above hold on the site pages too. A landing page that sounds like a
brochure while the book sounds like a person breaks the thing the site exists to
establish.

What changes for site copy:

- **Scannability is a real constraint.** Headings, short paragraphs, and bullets
  carry weight that prose doesn't need. Structure hard, then write each piece in
  the voice.
- **Definition bullets use bold and a period**, not a dash: "**OpenFeature
  maintainer.** The CNCF's vendor-neutral standard for feature flagging."
- **Say what someone gets, not what they should feel.** No "transform your
  engineering culture". Name the work, name who it's for.
- **Claims need a source on the page.** Employers, projects, and roles are
  checkable. Results without a named client are worth less than the space they
  take, so leave them out until there's a client willing to be named.
- **One idea per section.** A visitor deciding whether to email should never have
  to hold two threads at once.

## Terminology

Blog posts in the *Left of the Loop* series share coined terms with the book, and
readers move between the two. The book's story bible is the source of truth for
which chapter introduces which term. The rules that bite on blog writing:

- **"spec"** carries the coined shared-understanding sense. **"specification"**
  is reserved for the formal or contractual sense, as in the OpenFeature
  specification.
- **The loop's geography is three zones** with two merge gates on the zone
  boundaries. Any text or figure describing two zones is out of date.
- **Coined terms** ("left of the loop", "the gate", "recognition work", "spec
  session", "minimum viable context", "epistemic safety", and the rest) are used
  consistently with the book's definitions. A post that introduces one to a new
  reader defines it in passing rather than assuming it.
