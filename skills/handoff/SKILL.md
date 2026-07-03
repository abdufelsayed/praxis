---
name: handoff
description: Use when pausing long work, switching agents or threads, preparing for compaction, preserving current state, or handing off a plan, issue, branch, PR, or investigation to another agent or future session.
---

# Handoff

Write a compact continuation note.

## Required Reads

Read `../workflow/references/artifacts.md` for the canonical handoff shape.
Read `../workflow/references/lifecycle.md` to record why work is being handed off and what state it resumes from.
Read `../workflow/references/persistence.md` before choosing the handoff path.

## Location

Use repo convention first. Otherwise:

```text
.agents/handoffs/YYYY-MM-DD-short-title.md
```

## Include

- goal;
- current status;
- key decisions;
- files touched;
- commands run and results;
- next action;
- blockers and risks.

Keep it short enough for a fresh agent to use quickly.

## Next Skills

Load `praxis:checkpoint` instead when ownership is not transferring and only continuity state is needed.
