---
name: handoff
description: Use when another agent, thread, or future session needs compact continuation instructions for a plan, issue, branch, PR, investigation, or paused work.
---

# Handoff

Write a compact continuation note.

## Required Reads

Use `../kernel/references/templates/handoff.md` for handoff files.
Read `../kernel/references/storage-policy.md` only when the repo has no established handoff path.

If the next owner does not need a saved continuation note, do not call it a handoff. Report status through the current driver or update `praxis:context` instead.

## Location

Use repo convention first. Otherwise:

```text
.agents/handoffs/YYYY-MM-DD-short-title.md
```

## Contract

- goal;
- current status;
- branch and worktree, when relevant;
- key decisions;
- files touched;
- commands run and results;
- next action;
- blockers and risks.

Keep it short enough for a fresh agent to use quickly.

## Transition

```text
output: handoff path or blocker
lane: <current lane>
state: handoff | blocked | done
result: handoff-written | blocked
next: context | stop
evidence: commands, changed files, linked artifacts, and blockers
```

## Next Skills

Load `praxis:context` instead when ownership is not transferring and only living state needs updating.
