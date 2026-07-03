---
name: handoff
description: Use when pausing long work, switching agents or threads, preparing for compaction, preserving current state, or handing off a plan, issue, branch, PR, or investigation to another agent or future session.
---

# Handoff

Write a compact continuation note.

## Required Reads

Read `../workflow/references/lifecycle.md` to record why work is being handed off and what state it resumes from.
Read `../workflow/references/persistence.md` before choosing the handoff path.
Use `../workflow/references/templates/handoff.md` for durable handoff files.

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
output: handoff path or handoff message
state: handoff | blocked | done
next: stop | resume target
evidence: commands, changed files, linked artifacts, and blockers
```

## Next Skills

Load `praxis:context` instead when ownership is not transferring and only living state needs updating.
