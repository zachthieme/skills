---
name: capturing-voice
description: Use when the user wants to build or rebuild the voice profile that writing-polished-docs writes in, from samples of their own writing. Also use when setting up writing-polished-docs for a new author.
---

# Capturing Voice

Turn writing samples into the `voice-patterns.md` file that `writing-polished-docs` reads before drafting. The output describes how the author writes. It carries none of what the samples say.

## Steps

### 1. Gather samples

Ask the user for writing samples: file paths, pasted text, or URLs. Aim for 3 to 6, covering every register they write in (formal proposals, blog posts). Label each sample with its register.

Done when: at least 3 samples are read in full, each labeled, and at least 2 belong to the formal register.

### 2. Read the template

Find the target file: `voice-patterns.md` in the `writing-polished-docs` skill directory (resolve symlinks, so edits land in the source repo). Read it in full. Its section headings are the template:

- Two registers, same voice
- Sentence structure
- Characteristic constructions
- Narrative structure
- Structure and lists
- What to avoid
- Paragraph rhythm
- Bold and emphasis

Some lines in the current file are **policy**, not voice, and carry over unchanged unless the user says otherwise: the em dash ban, third person in proposals, and every "In a 6-pager, ..." exception.

### 3. Extract patterns

For each template section, record the patterns the samples share. A pattern qualifies when it appears in at least 2 samples. Measure what can be measured: typical sentence length in words, paragraph length in sentences, how lists and bold are used. For characteristic constructions, capture the reusable frame ("The question is...", "What breaks is...") with placeholders for the variable parts.

Done when: every template section has findings backed by at least 2 samples, or a note that the samples show no consistent pattern.

### 4. Scrub

The voice file ships in a public repo, so every example in it is invented. Rewrite each example as a generic paraphrase that shows the same pattern on a neutral subject (a team, a service, a test machine). Then check the draft against the samples and remove anything that traces back to them:

- names of people, teams, companies, products, or customers
- numbers, dates, and metrics from the samples
- file paths, URLs, and document titles
- any phrase of 4 or more words copied from a sample
- any list of the source documents

Done when: a search of the draft for each sample's distinctive nouns and numbers returns nothing.

### 5. Write and review

Write the new `voice-patterns.md` in the template's section order, using periods, commas, colons, or parentheses wherever a dash might go. Show the user the diff against the previous file and walk through the biggest changes in voice. Confirm the file contains zero em dashes (U+2014).
