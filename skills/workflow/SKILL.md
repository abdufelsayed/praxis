---
name: workflow
description: Use when starting or coordinating software engineering work, including discussing requirements, exploring code, planning, implementing, debugging, reviewing, persisting context, delegating to subagents, or finishing delivery. Routes the task through the appropriate Praxis workflow while respecting user and repo preferences.
---

# Praxis Workflow

Praxis is the top-level engineering workflow. Use it to choose the right amount of process, not to make every task heavy.

## Start

1. Read user intent and current repo context.
2. Respect explicit user instructions and repo instructions first.
3. Use `praxis:conventions` when repo rules affect plans, issues, context, branches, worktrees, GitHub, Linear, docs, or verification.
4. Otherwise default durable local artifacts to `.agents/`.
5. Choose the lightest safe workflow from `references/routing.md` and use `references/lifecycle.md` when durable state or handoff matters.

## Routes

- Conversation or unclear intent: use `praxis:discuss`; use `praxis:brainstorm` when shaping a new feature or product direction.
- Messy conversation or artifact creation: use `praxis:distill` before writing durable context, specs, issues, plans, decisions, or handoffs.
- Requirements and choices: use `praxis:spec` for desired behavior and `praxis:decide` for durable decisions.
- Unknown code, library, or system: use `praxis:explore` and `praxis:source` when facts may be version-sensitive.
- Durable context or compaction risk: use `praxis:context`, `praxis:checkpoint`, or `praxis:handoff`.
- Non-trivial work: use `praxis:setup`, `praxis:worktree`, then `praxis:plan`, then `praxis:execute`.
- Bugs and failures: use `praxis:debug`; use `praxis:tdd` for bug fixes and behavior changes.
- Design or structure: use `praxis:design`, `praxis:model`, `praxis:prototype`, or `praxis:refactor`.
- Work queues: use `praxis:issue` and `praxis:queue`.
- Parallel or autonomous implementation: use `praxis:worktree` before delegating or editing.
- Risky operations: use `praxis:safety`.
- Completion: use `praxis:review`, `praxis:verify`, and `praxis:finish`; use `praxis:commit` or `praxis:pr` only when requested or repo convention expects it.

## Artifact System

Read `references/artifacts.md` before writing durable docs, choosing artifact type, or inventing a new local file shape. Use `praxis:distill` when the conversation has detours or discarded options. Artifacts are distilled operational state, not transcripts.

## Lifecycle

Read `references/lifecycle.md` before coordinating queued, multi-step, multi-agent, or handoff-heavy work. Treat it as a flexible map, not a required ceremony.

## Subagents

Read `references/subagents.md` before delegating. Use `praxis:subagents` only when subagents are useful and allowed.

## Finish

Before claiming completion, verify with evidence. Report what changed, what passed, and what remains unverified.
