# Skills

Personal Claude Code skills for AI-assisted work. One clone and one script install them on any host.

## Skills

| Skill | Purpose |
| --- | --- |
| [`amazon-writing-check`](skills/amazon-writing-check/SKILL.md) | Audit a drafted document against Amazon 6-pager / narrative memo standards |
| [`writing-polished-docs`](skills/writing-polished-docs/SKILL.md) | Write proposals, strategy docs, and one-pagers in the author's voice |
| [`capturing-voice`](skills/capturing-voice/SKILL.md) | Build the voice profile `writing-polished-docs` uses from samples of your own writing |
| [`finishing-up`](skills/finishing-up/SKILL.md) | Wrap up a work session: commit, update the changelog, file findings as issues, push, never deploy |

## Install

```sh
git clone https://github.com/zachthieme/skills.git ~/code/skills
~/code/skills/install.sh
```

`install.sh` symlinks each directory in `skills/` into `~/.claude/skills` (override with `CLAUDE_SKILLS_DIR`), so edits in this repo take effect immediately on that host. Other hosts pick them up with `git pull`. It is safe to re-run and works when run through a symlink. It skips any existing skill that isn't a symlink, links the rest, and exits non-zero so a skipped skill isn't missed.

The `skills/<name>/SKILL.md` layout also works with `npx skills add zachthieme/skills`.

## Using your own voice

`writing-polished-docs` writes in the voice described in [`voice-patterns.md`](skills/writing-polished-docs/voice-patterns.md). That file describes the author of this repo. To make the skill write like you:

1. Fork or clone this repo and run `install.sh`.
2. Gather 3 to 6 samples of your writing, covering each register you use (formal proposals, blog posts).
3. Ask Claude to capture your voice from those samples. The `capturing-voice` skill rewrites `voice-patterns.md` from them and replaces every example with an invented one, so nothing from your samples ends up in the file.
4. Review the diff and commit.

`amazon-writing-check` needs no changes: its rules apply to any author. A few rules live in `voice-patterns.md` as policy rather than voice (no em dashes, third person in proposals, the 6-pager exceptions). `capturing-voice` keeps them unless you tell it otherwise.

## Adding a skill

1. Create `skills/<name>/SKILL.md` with `name` and `description` frontmatter. Supporting files go alongside it.
2. Run `./install.sh` to link it.
3. Add a row to the table above.
