---
name: context
description: "Use when project or session state should persist: goals, status, decisions, blockers, next actions, conventions, or context for future agents."
---

# Context

Persist the living state of the work, not the whole conversation.

## Required Reads

Use `../workflow/references/templates/context.md` for durable context files.
Read `../workflow/references/persistence.md` only when the repo has no established context path.

## Default Files

Use repo convention first. Otherwise use:

```text
.agents/context/project.md
.agents/context/session.md
```

## Contract

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

## Transition

```text
output: context path
state: current
next: handoff | decide | plan | stop
evidence: linked artifacts, commands, branch, or open question
```

## Next Skills

Load `praxis:handoff` when ownership or session is transferring. Load `praxis:decide` for a durable choice future agents must respect.
