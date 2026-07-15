---
name: plan
description: Use when the user requests an implementation plan, another owner needs an executable handoff, or an accepted non-trivial plan must be carried out with durable progress.
---

# Plan

Use planning when work crosses meaningful boundaries or must survive another owner or session. An obvious local edit needs no plan.

## Create

Inspect accepted requirements, relevant source, tests, and repository constraints before naming files or commands. Divide work into independently checkable results, not setup trivia. Every task must contain:

- **Files:** exact files to create, modify, or test when known;
- **Interfaces:** exact symbols, types, formats, behavior, or contracts consumed and produced;
- **Change:** required behavior, edge cases, and compatibility constraints;
- **Check:** an exact command or observation and its decisive expected signal.

Put contracts and migrations before consumers. Name serial dependencies and genuinely independent work. Map every accepted requirement to a task and end with integrated proof. Keep exact code out unless the implementation must follow it.

Map every accepted requirement to a task, include only risks that change sequencing, compatibility, rollback, or verification, and finish with integrated proof. Do not leave placeholders, repeat the codebase, or prescribe exact code unless the implementation must follow it. Keep a one-session approach in conversation, but when another owner or session must execute or resume the plan, write it to the repository's declared planning surface or, by default, `.agents/plans/<state>/YYYY-MM-DD-short-title.md`; use `draft`, `ready`, `running`, `blocked`, or `done` for local state and treat legacy `active` as `running`. When no format exists, use this shape:

```markdown
# <Change> Implementation Plan
## Outcome
## Scope
- Include:
- Exclude:
## Global Constraints
## Tasks
### T1: <Independently testable result>
**Files** · **Interfaces** · **Change** · **Check**
## Risks
## Completion
## Execution
- [ ] T1 — <result>
Current task: <ID or none>
Blocked by: <exact signal or none>
Next action: <one concrete action>
```

## Execute

Read the entire accepted plan, current repository instructions, branch, worktree, and relevant source before editing. Reconcile it with current reality: stop for material contradictions and update harmless path or symbol drift in the existing plan.

Mark one task active through the host plan mechanism or the existing durable plan, moving a local plan between state directories when its plan-level state changes. Implement it, inspect its diff, run its focused proof, and mark it complete only when its acceptance criteria hold. Then select the next dependency-ready task. Keep evidence in checks, commits, or final verification rather than copying logs into the plan. Never create a second progress artifact.

Stop when execution requires an unresolved product choice, would overwrite unrelated work, expands into another subsystem, or repeatedly fails its stated proof. Use `worktree` when isolation becomes necessary and `dispatch-subagents` only for independent work when delegation is allowed. Use `verify` for the final integrated claim. Commit, PR, handoff, and delegation remain separate requested outcomes.
