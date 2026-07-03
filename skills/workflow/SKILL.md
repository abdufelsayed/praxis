---
name: workflow
description: Use when starting or coordinating software engineering work, including discussing requirements, exploring code, planning, implementing, debugging, reviewing, persisting context, delegating to subagents, or finishing delivery. Routes the task through the appropriate Praxis workflow while respecting user and repo preferences.
---

# Praxis Workflow

Praxis is the top-level engineering workflow. Use it to choose the right amount of process and the next command, not to load the whole system.

## Control Plane

- `workflow/SKILL.md` is the entry point.
- `references/routing.md` classifies the work and chooses the next command.
- Individual skills are commands. Each command owns its output contract and next transition.
- Shared references are loaded only when the command needs that axis:
  - `references/artifacts.md`: shared artifact principles and ownership.
  - `references/persistence.md`: storage, trackers, and ignore policy.
  - `references/lifecycle.md`: durable states for queues, blockers, handoff, or long-running work.
  - `references/subagents.md`: delegation protocol.

## Start

1. Read user intent and current repo context.
2. Respect explicit user instructions and repo instructions first.
3. Read `references/routing.md`.
4. Choose the lightest safe route and load the next command skill.
5. Stop loading when the next action is clear and covered.

## Loading Discipline

Do not pre-load Praxis. Follow one transition at a time:

```text
workflow -> routing -> command skill -> command-owned reference if needed -> action -> transition
```

- Load `praxis:conventions` only when repo rules affect plans, issues, context, branches, worktrees, trackers, docs, or verification.
- Load `praxis:explore` or `praxis:source` only when facts are unknown or version-sensitive.
- Load `praxis:distill` before turning messy conversation into durable state.
- Load `references/lifecycle.md` only when durable state transitions matter.
- Load `references/persistence.md` only when choosing storage, tracker, or `.gitignore` behavior.
- Load `references/artifacts.md` only when choosing artifact type or checking artifact boundaries.
- Do not treat routed skills or references as optional background when the current action depends on them.

## Command Contract

Every command skill should make this local contract clear:

- input: what it consumes;
- action: what it does;
- output: artifact, code change, review, evidence, or answer;
- transition: next skill, state, or stop condition.

When a command names another skill for the current action, load that skill before acting in that domain.

## Common Transitions

- unclear intent -> `praxis:discuss`
- fuzzy product or feature idea -> `praxis:brainstorm`
- unknown code or behavior -> `praxis:explore`
- repo rules or workflow policy unknown -> `praxis:conventions` or `praxis:setup`
- messy conversation -> `praxis:distill` -> target artifact template or skill
- desired behavior -> `praxis:spec`
- durable choice -> `praxis:decide`
- independent work slice -> `praxis:issue`
- executable implementation -> `praxis:plan`
- non-trivial implementation -> `praxis:worktree` -> `praxis:execute`
- bug or regression -> `praxis:debug` or `praxis:tdd`
- completed slice -> `praxis:review` when risk justifies it, then `praxis:verify`
- verified completion -> `praxis:finish`
- compaction, pause, or transfer -> `praxis:checkpoint` or `praxis:handoff`
- risky operation -> domain skill, then `praxis:safety`

## Surfaces

- Artifacts are durable operational state. The artifact skill owns the shape.
- Docs are human or maintainer context. Use `praxis:docs`.
- AGENTS.md is editing context. Use `praxis:agent-guide`.
- Source code and tests are behavior truth.

## Completion

Before claiming completion, verify with evidence. Report what changed, what passed, and what remains unverified.
