---
name: workflow
description: Use when starting or coordinating software engineering work, including discussing requirements, exploring code, planning, implementing, debugging, reviewing, persisting context, delegating to subagents, or finishing delivery. Routes the task through the appropriate Praxis workflow while respecting user and repo preferences.
---

# Praxis Workflow

Praxis is the top-level engineering workflow. Use it to choose the right amount of process, not to make every task heavy.

## Control Plane

- `workflow/SKILL.md` is the entry point and operating contract.
- `references/routing.md` chooses the workflow level and required reads.
- `references/lifecycle.md` defines durable states and transitions only.
- `references/artifacts.md` defines artifact purpose, shape, and boundaries.
- `references/persistence.md` defines storage locations and ignore policy.
- Individual skills are commands. Load the command skill before acting in that domain.

## Start

1. Read user intent and current repo context.
2. Respect explicit user instructions and repo instructions first.
3. Load `praxis:conventions` when repo rules affect plans, issues, context, branches, worktrees, GitHub, Linear, docs, or verification.
4. Otherwise default durable local artifacts to `.agents/`.
5. Read `references/routing.md` and choose the lightest safe workflow.
6. Let `references/routing.md` decide which skills and references must be loaded next.

## Skill Chaining

Praxis is a workflow graph, not a list of suggestions. When this skill routes to another Praxis skill, load that skill before acting in that domain.

Use the smallest sufficient chain:

- Conversation: `praxis:discuss` or `praxis:brainstorm`.
- Durable artifacts: `praxis:distill`, the target artifact skill, and `references/artifacts.md`.
- Documentation: `praxis:docs`, plus `praxis:explore` or `praxis:source` when facts need proof.
- Agent guidance: `praxis:agent-guide`, plus `praxis:explore` when repo structure or commands need proof.
- Repo conventions: `praxis:conventions`, and `praxis:setup` when beginning durable repo work.
- Multi-step implementation: `praxis:setup`, `praxis:worktree`, `praxis:plan`, `praxis:execute`, `praxis:verify`.
- Bugs or behavior changes: `praxis:debug` or `praxis:tdd`, then `praxis:verify`.
- Parallel work: `references/subagents.md`, `praxis:subagents`, `praxis:worktree`, and the relevant plan or issue.
- Completion: `praxis:review`, `praxis:verify`, `praxis:finish`.

Stop loading when the next action is clear, safe, and covered by the loaded guidance. Do not treat named Praxis skills or references as optional background when the current task depends on them.

## Command Contract

When loading an individual Praxis skill, identify:

- why this skill applies;
- required reads from the skill or route;
- the expected output;
- the next Praxis skill, reference, or stop condition.

If a skill names another Praxis skill for the current action, load that next skill before doing that action.

## Common Routes

- Conversation or unclear intent: load `praxis:discuss`; load `praxis:brainstorm` when shaping a new feature or product direction.
- Messy conversation or artifact creation: load `praxis:distill` before writing durable context, specs, issues, plans, decisions, or handoffs.
- Requirements and choices: load `praxis:spec` for desired behavior and `praxis:decide` for durable decisions.
- Unknown code, library, or system: load `praxis:explore` and `praxis:source` when facts may be version-sensitive.
- Durable context or compaction risk: load `praxis:context`, `praxis:checkpoint`, or `praxis:handoff`.
- User or developer documentation: load `praxis:docs`.
- AGENTS.md or scoped agent guidance: load `praxis:agent-guide`.
- Non-trivial work: load `praxis:setup`, `praxis:worktree`, then `praxis:plan`, then `praxis:execute`.
- Bugs and failures: load `praxis:debug`; load `praxis:tdd` for bug fixes and behavior changes.
- Design or structure: load `praxis:design`, `praxis:model`, `praxis:prototype`, or `praxis:refactor`.
- Work queues: load `praxis:issue` and `praxis:queue`.
- Parallel or autonomous implementation: load `praxis:worktree` before delegating or editing.
- Risky operations: load `praxis:safety`.
- Completion: load `praxis:review`, `praxis:verify`, and `praxis:finish`; load `praxis:commit` or `praxis:pr` only when requested or repo convention expects it.

## Artifact System

Read `references/artifacts.md` before writing durable artifacts, choosing artifact type, moving existing artifacts, or inventing a local file shape. Load `praxis:distill` when the conversation has detours or discarded options. Artifacts are distilled operational state, not transcripts.

Docs are not Praxis artifacts. Load `praxis:docs` for user-facing or developer-facing documentation, and keep agent-only work state in artifacts instead.

AGENTS.md files are agent-facing orientation and repo-local convention surfaces. Load `praxis:agent-guide` for AGENTS.md or scoped agent guidance; do not use them for workflow state or human documentation.

## Lifecycle

Read `references/lifecycle.md` only when state or transitions matter: queued work, plan or issue status, long-running work, multi-agent work, worktree ownership, blockers, handoff, or finish. Treat it as a flexible map, not a required ceremony.

## Subagents

Read `references/subagents.md` before delegating. Load `praxis:subagents` only when subagents are useful and allowed.

## Finish

Before claiming completion, verify with evidence. Report what changed, what passed, and what remains unverified.
