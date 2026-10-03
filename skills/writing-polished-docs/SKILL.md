---
name: writing-polished-docs
description: Use when the user asks you to write or edit a proposal, strategy doc, one-pager, or any polished document for an audience. Also use when the user says to "write like me" or asks for voice/tone consistency.
---

# Writing Polished Documents

## Overview

Write in the author's voice using Amazon-style rigor. This skill owns the voice. The `amazon-writing-check` skill owns the rigor rules (weasel words, data presentation, "so what," assumptions, active voice) and the audit.

## Before Writing

1. Read `voice-patterns.md` in this directory. It contains the author's sentence patterns, characteristic constructions, and structural preferences extracted from their existing writing.
2. For proposals and polished docs, load the `amazon-writing-check` skill and draft to its rules, so the first draft already passes.

## Hard Rules

These apply to every register, blog posts included.

### No em dashes

Never use an em dash (U+2014). Use periods, commas, colons, or parentheses. Restructure the sentence if needed.

### No LLM-isms

Kill these on sight: "Additionally," "Furthermore," "It's important to note," "It is worth noting," "In order to," "This is a [adjective] constraint," "Notably," "Crucially," "Fundamentally," "Moreover," "Ultimately," "That said," "In today's...," "It's not just X, it's Y," "delve," "tapestry," "landscape," "navigate," "foster," "underscore," "pivotal." Use plain language.

## Before Presenting

- **Proposals and polished docs:** run the `amazon-writing-check` audit and apply its Blocking and Should Fix rewrites. Skip section 4 (6-Pager Format) and section 6 (Amazon Cultural Checks) unless the doc is a 6-pager or narrative memo.
- **Blog and personal writing:** skip the audit. Check the hard rules above and the voice patterns.
- **Every register:** confirm the draft matches `voice-patterns.md` and contains zero em dashes.

## When Voice and Amazon Rules Conflict

Where `voice-patterns.md` and `amazon-writing-check` disagree (sentence length, tables, bullets), `voice-patterns.md` notes the exception inline. In a 6-pager or narrative memo, the Amazon rule wins.
