---
name: amazon-writing-check
description: Use to audit any document against Amazon 6-pager and narrative memo standards. Run after writing a doc for readers who expect Amazon-style narrative memos, or any doc that should follow Amazon writing discipline. Also use when the user asks to "check this like Amazon" or "review against 6-pager standards."
---

# Amazon Writing Check

## Overview

Audit a document against Amazon's narrative memo standards. This skill is a post-writing review, not a writing guide. It assumes the document is already drafted. Run every check below, report findings grouped by severity (blocking, should fix, minor), and provide specific line-level fixes.

## When to Use

- After drafting a 6-pager, strategy doc, or narrative memo for readers who expect Amazon-style narrative memos
- When the user asks you to review a document against Amazon standards
- As a final pass before the document goes to a review meeting

## How to Run

1. Read the full document
2. Run every check in the audit below, in order
3. Report findings as a numbered list grouped by severity:
   - **Blocking:** Issues that would cause a senior reviewer to stop reading or lose trust in the document
   - **Should fix:** Issues that weaken the argument or violate conventions
   - **Minor:** Polish items
4. For each finding, quote the offending text and provide a specific rewrite

---

## The Audit

### 1. Sentence-Level Checks

**Sentence length.** Flag any sentence over 30 words. Rewrite it as two sentences or cut words. Amazon prose favors short, declarative sentences. Subject-verb-object. One idea per sentence.

**Active voice.** Search for passive constructions: "is being," "was," "were," "has been," "will be," "can be," "should be." Rewrite in active voice. "The feature was launched by the team" becomes "The team launched the feature."

**Weasel words.** Flag and replace every instance from this list:

| Banned | Fix |
|--------|-----|
| a number of, many, most, some, several, few, various, vast, numerous, countless, a lot of, lots of, plenty of, a handful of, the majority of, a fraction of, a bit | Use the number |
| significant, substantial, considerable | Use the number or cut |
| arguably, clearly, interestingly, remarkably, surprisingly, simply, just, easily, obviously | Cut the word |
| innovative, world-class, cutting-edge, robust, comprehensive, outstanding, excellent, extraordinary, well-crafted | Cut. Describe what it does. |
| could, may, might, possibly, probably, likely, should, would, perhaps, potentially, seemingly, apparently, somewhat, generally, typically, tends to, in some cases, to some extent | State the fact or label the assumption |
| fairly, quite, really, very, extremely, exceedingly, completely, relatively, incredibly, highly, truly, totally, absolutely, literally, actually, basically, essentially, definitely, certainly | Cut the word |
| recently, soon, shortly, in the near future, normally, often, usually, eventually, frequently, sometimes, occasionally, rarely, periodically, ASAP, going forward, in the coming weeks, near-term, long-term | Use a date or frequency |
| we believe, we think, we expect, hopefully | State the fact or label the assumption |
| studies show, research suggests, experts say, it is widely known, many believe, industry best practice | Name the source |
| I think, it seems, it is said, plan to, tiny, large | Replace with specifics |
| up to, less than, more than (with no number after) | Add the number. "Less than expected" is vague; "less than five minutes" is fine. |

**The test:** If a reader can ask "compared to what?", "how many?", or "says who?" the word is a weasel word.

**No em dashes.** Flag every em dash (U+2014), including spaced en dashes used as em dashes. Always blocking. Replace with a period, comma, colon, or parentheses, restructuring the sentence if needed.

**No LLM-isms.** Flag and cut: "Additionally," "Furthermore," "It's important to note," "It is worth noting," "In order to," "This is a [adjective] constraint," "Notably," "Crucially," "Fundamentally," "Moreover," "Ultimately," "That said," "In today's...," "It's not just X, it's Y," "delve," "tapestry," "landscape," "navigate," "foster," "underscore," "pivotal." Use plain language.

**Banned buzzwords.** Flag every use of "platform" that is not a proper noun (e.g., a product named "Acme Platform" is fine). At Amazon, "platform" is a hand-wavy word that avoids describing what something actually does. Replace each instance with what it specifically means: "the provisioning system," "fleet management," "the billing service," "the control plane," "the deployment pipeline," etc. Also flag: "ecosystem," "solution," "leverage" (as a verb), "synergy," "holistic," "seamless," "scalable," "best-in-class," "game-changer," "streamline," "empower," "unlock," "value-add," "impactful," "move the needle," "low-hanging fruit," "north star." These words obscure meaning. Describe the thing, not the category.

**Adjectives hiding data.** Every adjective describing magnitude ("fast," "large," "expensive," "better") must be replaced with a number. "We made performance much faster" becomes "We reduced TP90 latency from 10ms to 1ms." "Sales increased significantly" becomes "Unit sales increased 40% in Q4 2025 vs. Q4 2024."

**Absolute references.** Flag relative time references ("last week," "recently," "next quarter," "3 weeks ago"). Replace with absolute dates. "The deadline is next week" becomes "The deadline is Friday July 25, 2026." "We arranged this recently" becomes "The team arranged this in March 2026."

**Units.** Every number must include units. "Set to 23 degrees" becomes "Set to 23 degrees C." "Costs $500" is fine. "$500" without context is not.

### 2. Paragraph-Level Checks

**Topic sentence.** Every paragraph must open with a sentence that states the paragraph's main claim. If the conclusion is buried mid-paragraph or at the end, flag it and suggest moving it to the front.

**"So what" test.** After every paragraph, ask: would a reader ask "so what?" If the paragraph states a fact without connecting it to business value or a consequence, flag it. Fix by adding the implication. "Category page traffic grew 15% QoQ" needs "which contributed $2.3M in incremental revenue."

**One idea per paragraph.** If a paragraph covers two distinct topics, flag it and suggest splitting.

**Flow between paragraphs.** Each paragraph must build on the previous one. Flag any paragraph that introduces a topic with no connection to what came before.

**No bullets in the body.** Bullet points are acceptable only in the Goals/Tenets section and for short lists of metrics or options. Everything else must be narrative prose. Flag any bullets in the strategic priorities, state of the business, or lessons learned sections.

### 3. Data Presentation Checks

**Paired numbers.** Every percentage must have an absolute number alongside it, and vice versa. "30% failure rate" must become "30% failure rate (1,200 of 4,000 requests)." Do not make the reader calculate.

**Denominators specified.** Every fraction or ratio must include the denominator. "4 of 1,000 transactions" not "a small fraction."

**Time-bound metrics.** Every metric must include a time period. "Revenue grew 15%" needs "in Q3 2025." Flag any metric without a time reference.

**Basis points for percentage changes.** When showing a change in a percentage, use basis points. "Gross margin grew by 10 bps, from 3.2% in Q1 to 3.3% in Q2" not "Gross margin grew by 3.1%."

**Data without interpretation.** Flag any data point presented without narrative explanation of what it means and why it matters. Numbers in the body must be embedded in prose, not isolated in tables.

**Tables and charts in body.** Flag any table or chart in the main 6-page body. These belong in the appendix. The body contains narrative prose that references appendix exhibits.

**Missing data.** If a claim requires data that is not present, flag it. The fix is either to add the data or to use a visible placeholder: `[NEED: metric name and source]`. Never let a missing number hide behind vague language.

### 4. Structural Checks (6-Pager Format)

**Page count.** The main body must fit in 6 pages at 10-11pt font, single-spaced, 1-inch margins. If it exceeds this, the topic is too broad for a single document. Flag and suggest what to cut or move to appendix.

**No summary/conclusion section.** Amazon 6-pagers do not end with a recap or conclusion. The document ends on a forward-facing, actionable note. Flag any section titled "Summary," "Conclusion," or "In Summary."

**Tenets that lack tension.** Every tenet must pass this test: would a reasonable person disagree with it? If a tenet states something everyone agrees with ("we value quality"), it is not doing work. Flag it and suggest how to sharpen it into a genuine tradeoff.

**Goals with metrics.** If the document has a goals section, every goal must include: the metric today, the target metric, and the date by which the target will be reached. Flag any goal that is an aspiration without a number.

**Appendices are data only.** Flag any narrative prose in appendices. Appendices contain tables, charts, data, and diagrams. Narrative belongs in the body.

**Acronyms.** Every acronym must be spelled out on first use. Flag any acronym that appears without expansion.

**Self-contained prose.** The document will be read cold in a silent meeting with no presenter to explain it. Flag any sentence or paragraph that only makes sense if you already know the context. Every section must stand on its own.

### 5. Argument Quality Checks

**Assumptions disguised as facts.** Flag any statement that presents an assumption as established fact. The fix is to label it: "Our assumption is X because Y." or "We lack data on X. We assume Y based on Z."

**Activities without impact.** In the strategic priorities or plan section, flag any activity that is not connected to a specific goal with numerical backing. Readers will calculate whether your activities could plausibly produce the projected results.

**Evidence for recommendations.** Every recommendation must be grounded in either data or prior results ("when we did X, we saw Y"). Flag any recommendation that is purely speculative with no supporting evidence.

**Inconsistency between narrative and resources.** Flag any case where the stated priorities do not match the proposed resource allocation. If the document says "customer acquisition is our top priority" but allocates 80% of resources to maintenance, flag the inconsistency.

**Selling vs. truth-seeking.** The document should read as honest analysis, not a pitch. Flag any section that reads like it is trying to persuade rather than inform. Indicators: only positive data shown, risks minimized or absent, alternatives dismissed without analysis.

### 6. Amazon Cultural Checks

**Customer clarity.** The document must make clear who the customer is and frame the problem from their perspective. Flag if the customer is never defined or if the framing is purely internal/organizational.

**The Four Answers.** For any question the document anticipates or answers: the answer must be Yes, No, a number, or "We don't know and will follow up by [date]." Flag any answer that hedges without committing.

**No author attribution.** Amazon 6-pagers do not include author names. Ideas are judged on merit, not credentials. Flag if the author's name appears on the document (title page is acceptable for routing purposes, but not in the body).

**No external links.** The document may be printed. Flag any hyperlinks in the body. Reference appendix exhibits or companion documents by filename instead.

---

## Reporting Format

After running all checks, report findings as:

```
## Blocking
1. [Check name]: [quoted text] → [specific rewrite]

## Should Fix
1. [Check name]: [quoted text] → [specific rewrite]

## Minor
1. [Check name]: [quoted text] → [specific rewrite]

## Clean
[List which checks passed with no findings]
```

If the user asks you to fix the issues (not just report them), apply all Blocking and Should Fix rewrites directly to the document.
