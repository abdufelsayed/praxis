---
name: workflow
description: Use when starting or coordinating software engineering work, including discussing requirements, exploring code, planning, implementing, debugging, reviewing, persisting context, delegating to subagents, or finishing delivery. Routes the task through the appropriate Praxis workflow while respecting user and repo preferences.
---

# Praxis Workflow

Praxis is the top-level engineering workflow. Use it to choose the right amount of process, not to make every task heavy.

## Start

1. Read user intent and current repo context.
2. Respect explicit user instructions and repo instructions first.
3. If a repo convention exists for plans, issues, context, GitHub, Linear, or docs, use it.
4. Otherwise default durable local artifacts to `.agents/`.
5. Choose the lightest safe workflow from `references/routing.md`.

## Routes

- Conversation or unclear intent: use `praxis:discuss`; use `praxis:brainstorm` when shaping a new feature or product direction.
- Unknown code, library, or system: use `praxis:explore` and `praxis:source` when facts may be version-sensitive.
- Durable context or compaction risk: use `praxis:context`, `praxis:checkpoint`, or `praxis:handoff`.
- Non-trivial work: use `praxis:setup`, then `praxis:plan`, then `praxis:execute`.
- Bugs and failures: use `praxis:debug`; use `praxis:tdd` for bug fixes and behavior changes.
- Design or structure: use `praxis:design`, `praxis:model`, `praxis:prototype`, or `praxis:refactor`.
- Work queues: use `praxis:issue` and `praxis:queue`.
- Risky operations: use `praxis:safety`.
- Completion: use `praxis:review`, `praxis:verify`, and `praxis:finish`; use `praxis:commit` or `praxis:pr` only when requested or repo convention expects it.

## Artifact Rules

Read `references/artifacts.md` before writing durable docs from a long conversation. Artifacts are distilled operational state, not transcripts.

## Subagents

Read `references/subagents.md` before delegating. Use `praxis:subagents` only when subagents are useful and allowed.

## Finish

Before claiming completion, verify with evidence. Report what changed, what passed, and what remains unverified.
