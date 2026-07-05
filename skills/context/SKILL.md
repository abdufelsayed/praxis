---
name: context
description: "Use when project or session state should survive future turns: goals, status, decisions, blockers, next actions, conventions, or context for future agents."
---

# Context

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Save the living state of the work, not the whole conversation.

## Required Reads

Use `../kernel/references/templates/context.md` for durable context files.
Read `../kernel/references/storage-policy.md` only when the repo has no established context path.

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

## Context Interview

When context depends on user memory or preference:

1. Ask one question at a time.
2. Patch the context file after each answer before asking the next question.
3. Keep the file focused on current truth, decisions, blockers, and next action.
4. Do not infer priority from unordered lists; ask when priority matters.
5. Stop when the next agent can resume without replaying the conversation.

## Transition

```text
output: context path
lane: <current lane>
state: ready | running | blocked | done
result: context-updated
next: handoff | decide | plan | stop
evidence: linked artifacts, commands, branch, or open question
```

## Next Skills

Load `praxis:handoff` when ownership or session is transferring. Load `praxis:decide` for a durable choice future agents must respect.
