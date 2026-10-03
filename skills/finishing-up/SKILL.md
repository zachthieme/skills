---
name: finishing-up
description: Use when wrapping up or handing off a work session in any repo, when stepping away, ending a batch of tasks, or when the user says "finish up", "wrap up", or "save everything". Commits, updates the changelog, logs findings as GitHub issues, and pushes. Never deploys.
---

# Finishing Up

End-of-session wrap-up. The goal is to **lose nothing**: every change is committed and pushed, the changelog and issues reflect reality, and every finding is captured as a GitHub issue.

**This pushes. It never deploys.** Deploying is a separate, deliberate step the human asks for per task. A standing authorization to push is not one to deploy.

## Before you start: read the project's rules

Read the repo's `CLAUDE.md` or `AGENTS.md` and the docs they point to for:

- **Branches:** which branch you may push from, and which you never push to directly (usually `main`).
- **Push:** the push command, if it isn't a plain `git push` (a make target, a script that pushes subtrees or forks).
- **Changelog:** whether there is one, its format, and whether entries go in `CHANGELOG.md` or as fragments (`changelog.d/`).
- **Issues:** the tracker conventions (types, labels, milestones, epics).
- **Deploy and verification:** where a fix is verified (a local run, a dev environment, production), and what deploys it. Never run that deploy.

Where the project's rules conflict with this skill, the project wins. Walk the checklist in order and track each section as a task so nothing is skipped.

## 1. Commit everything

- Run `git status` at the repo root. Nothing meaningful may be left uncommitted or stashed.
- Make per-task atomic commits. Don't lump unrelated changes into one.
- End state: `git status` is clean.

## 2. Changelog

- If the project keeps a changelog, add an entry for every user-visible change in its format. Write what changed and why, not a commit dump. Skip mechanical or internal churn.
- "Internal" is a judgement, not an excuse. A refactor nobody sees is internal. A restyled component every reader looks at is not, even when no behaviour changed.

## 3. Log every finding as a GitHub issue

GitHub issues are the source of truth. **A finding that lives only in your reply is lost**, because the human reads the reply once and it is gone.

**What counts as a finding.** Anything you learned that outlives the session and isn't already tracked:

- A bug you noticed but didn't fix, or fixed only partially.
- Follow-ups and deferred work the session created.
- **Defects in code you wrote this session**, including anything a code review flagged that you chose not to act on. These are the easiest to rationalize away and the most likely to be forgotten, because only you know they exist.
- A duplicated or diverging construct you left in place because converting it was out of scope.
- A stale claim in a doc, or a misleading name, that cost you time. If it misled you, it will mislead the next session.

**Before filing:**

- **Verify the finding is real.** Run the grep, read the code, confirm the count. A filed issue asserting something false is worse than none, and "I noticed X" is not evidence.
- **Check it isn't already filed** (`gh issue list --search`). If it is, comment there instead.

**When filing:** follow the project's tracker conventions for type, labels and placement. Give it a plain descriptive title. State the failure concretely: what breaks, when, and why it matters. Mark it ready for an agent only when it is specified well enough to hand straight to one.

## 4. Issue state: never close on a push

- **Close an issue only when its fix is verified in the environment where the problem was seen.** Pushing is not deploying. If the project verifies in a deployed environment, a pushed-but-undeployed fix is still **not** verified: label it `pending-verify`, comment the status (for example "fixed on `<branch>` @ `<sha>`, pushed, pending deploy"), and leave it open. After the check passes, remove `pending-verify` and close. A handler can pass its unit tests while the route it sits behind still 404s live, because the test never goes through the router.
- The awaiting-verification backlog is a query, never a list: `gh issue list --label pending-verify`.

## 5. Memory

- If durable learnings emerged (a correction on how to work here, a non-obvious project fact or constraint), save them to memory per the memory instructions. Skip anything the repo, CLAUDE.md or git history already records, and prefer extending an existing memory over adding a near-duplicate.
- If the project tracks memory in the repo (the memory directory is a symlink into the working tree), a new or edited memory is an ordinary change: commit it with everything else. An uncommitted memory reaches no other checkout and no other machine.

## 6. CLAUDE.md: promote durable learnings, then de-drift

CLAUDE.md files are shared, durable project docs loaded for everyone, unlike personal memory.

- **Promote project-wide principles into the right CLAUDE.md:** a hard-won invariant, a recurring gotcha, a "we deliberately did not build X" decision. Put a component-specific one in that component's CLAUDE.md (if the repo has per-directory ones) and a cross-cutting one in the root file. Keep them thin: state the principle and point to the authoritative doc or ADR. Don't paste volatile specifics like exact function or file names, which go stale.
- **De-drift: check every CLAUDE.md for correctness.** List them (`git ls-files '*CLAUDE.md'`) and skim each. Is every claim still true? If one names a file, flag or function, grep that it still exists. Has any copied text diverged from its source? Fix it inline. A stale context file misleads worse than none.

## 7. Push (never deploy)

Only once sections 1 to 6 are done and everything is committed.

- **Confirm the branch first.** Push only from a branch the project allows, never directly to `main` unless the project says that's how it works. If you are somewhere else, stop and report rather than pushing.
- **Push** with the project's push command, or `git push` if it has none.
- **Check CI afterwards** (`gh run list --branch <branch> -L 3`). A failing run is only visible if you look. Report it; don't silently accept it.
- **Don't run any deploy or release workflow.** If the work needs a deploy to be verified, say so in the report and stop there.

## 8. Report

Summarize for the human: commits made and pushed, issues closed versus commented and left open, new issues filed, CI status after the push, and what still needs a deploy and a live check to fully close.

## Red flags: you are NOT done if

- `git status` shows uncommitted changes.
- You fixed or changed something user-visible but the changelog doesn't mention it.
- You closed an issue whose fix isn't verified where the problem was seen. Pushing is not verifying.
- You committed a fix but didn't label its issue `pending-verify`, so its awaiting-verification state is invisible.
- A finding lives only in your reply and not in a GitHub issue, **especially a defect in code you wrote this session**.
- You filed an issue on a claim you did not verify.
- A durable, project-wide principle you learned lives only in your reply or in memory, not in the CLAUDE.md a future session loads.
- A CLAUDE.md makes a claim that is no longer true and you left it standing.
- You pushed from a branch the project doesn't allow.
- You deployed. Finishing-up pushes; it never deploys.
