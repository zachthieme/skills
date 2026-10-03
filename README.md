# Skills

Personal Claude Code skills I've written for AI-assisted work, kept in one place so they can be installed on any host.

## Skills

| Skill | Purpose |
| --- | --- |
| [`amazon-writing-check`](skills/amazon-writing-check/SKILL.md) | Audit a drafted document against Amazon 6-pager / narrative memo standards |
| [`writing-polished-docs`](skills/writing-polished-docs/SKILL.md) | Write proposals, strategy docs, and one-pagers in my voice |

## Install

```sh
git clone <this repo> ~/code/skills
~/code/skills/install.sh
```

`install.sh` symlinks each directory in `skills/` into `~/.claude/skills` (override with `CLAUDE_SKILLS_DIR`), so edits in this repo are live everywhere. It is safe to re-run and skips any existing skill that isn't a symlink.

The `skills/<name>/SKILL.md` layout also works with `npx skills add <owner>/<repo>`.

## Adding a skill

1. Create `skills/<name>/SKILL.md` with `name` and `description` frontmatter. Supporting files go alongside it.
2. Run `./install.sh` to link it.
3. Add a row to the table above.
