---
name: worktree
description: Use when starting non-trivial or autonomous implementation work, keeping the main checkout clean, creating isolated branches under `.agents/worktrees/`, coordinating parallel subagent work, merging completed work back to main, or safely removing git worktrees.
---

# Worktree

Use git worktrees to make agent work isolated, parallel, and easy to merge.

## Required Reads

Read `../workflow/references/lifecycle.md` when moving work into or out of `worktree:active`.
Read `../workflow/references/persistence.md` before creating `.agents/worktrees/` or changing ignore policy.

## Default Policy

- For L2+ Praxis work, create a dedicated worktree before editing.
- Keep the primary checkout on `main` or the repo default branch.
- Store worktrees under `.agents/worktrees/<flattened-branch>/`.
- Use one branch and one worktree per independent task or subagent.
- Skip worktrees for read-only work, tiny reversible edits, non-git repos, user requests to stay in place, or when already inside the correct dedicated worktree.

## Naming

Use Conventional Commit style for branch names:

```text
<type>/<optional-scope-or-id>-<short-slug>
```

Default types: `feat`, `fix`, `docs`, `refactor`, `test`, `perf`, `build`, `ci`, `chore`, `style`, `revert`, `spike`.

Use `spike/` only for disposable exploration. Flatten the branch for the directory by replacing `/` with `-`.

Examples:

```text
feat/praxis-worktree-flow
fix/plugin-install-path
docs/skills-layout
refactor/praxis-routing
feat/123-praxis-worktree-flow
fix/gh-3336-blackbox-library
spike/search-index-prototype
```

```text
branch:   feat/praxis-worktree-flow
worktree: .agents/worktrees/feat-praxis-worktree-flow
```

## Start

Use repo branch/worktree policy first. Then inspect state:

```bash
git status --short
git branch --show-current
git worktree list
```

Ensure local agent state is ignored when using the default location:

```bash
grep -qxF '.agents/' .gitignore || printf '.agents/\n' >> .gitignore
mkdir -p .agents/worktrees
```

Create from the repo default branch, usually `main`:

```bash
git worktree add -b <type>/<slug> .agents/worktrees/<type>-<slug> main
```

If the branch already exists and clearly belongs to this task, use:

```bash
git worktree add .agents/worktrees/<type>-<slug> <type>/<slug>
```

Do not reuse a dirty, ambiguous, or already-checked-out branch without asking. Load `praxis:safety` before overwriting, force-removing, or otherwise risking worktree contents.

## Parallel Work

One worker, one branch, one worktree, one bounded scope. Pass branch, path, plan, constraints, and expected output. The supervisor owns integration, conflicts, verification, and final claims.

## Finish

Verify and commit inside the worktree. Load `praxis:pr` when repo convention expects branch review. For local integration, merge from the primary checkout after it is clean and up to date:

```bash
git checkout main
git pull --ff-only
git merge --no-ff <type>/<slug>
```

Remove only clean, merged worktrees:

```bash
git worktree remove .agents/worktrees/<type>-<slug>
git branch -d <type>/<slug>
```

Never force-remove a dirty or unmerged worktree unless the user explicitly approves the loss through `praxis:safety`.

## Durable State

Record worktree state in context, issue, plan, evidence, or handoff only when another agent or future session needs it:

- branch;
- worktree path;
- goal or linked plan;
- owner or agent;
- status;
- merge, PR, cleanup, or blocker state.

## Transition

```text
output: branch/path, merge decision, cleanup result, or blocker
state: worktree:active | merged | pr-ready | cleanup-ready | blocked
next: execute | pr | finish | safety | stop
evidence: git status, branch, worktree list, commits, or merge result
```

## Next Skills

Load `praxis:execute` after creating a worktree for implementation. Load `praxis:finish` when deciding merge, PR, cleanup, or handoff.
