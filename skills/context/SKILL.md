---
name: context
description: "Use when project or session state should persist beyond the current chat: goals, current status, decisions, open questions, blockers, next actions, repo conventions, or context needed by future agents after compaction."
---

# Context

Persist the living state of the work, not the whole conversation.

## Required Reads

Read `../workflow/references/artifacts.md` for the canonical context shape.
Read `../workflow/references/lifecycle.md` when recording current work state.
Read `../workflow/references/persistence.md` before choosing the context path.

## Default Files

Use repo convention first. Otherwise use:

```text
.agents/context/project.md
.agents/context/session.md
.agents/state/current.md
```

## Include

- current goal;
- current status;
- important decisions;
- open questions and blockers;
- next action;
- relevant plans, issues, PRs, branches, or commands.

## Exclude

- discarded ideas unless they prevent a likely future mistake;
- transcript-style chronology;
- self-referential notes about the agent's process.

Update context at meaningful transitions, before compaction risk, and after long detours.

## Next Skills

Load `praxis:checkpoint` for temporary continuity state. Load `praxis:decide` for a durable choice future agents must respect.
