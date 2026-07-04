---
name: worktree
description: Use for non-trivial or parallel implementation that needs an isolated git worktree, branch setup, merge, PR handoff, or safe worktree cleanup.
---

# Worktree

Use git worktrees for isolated, parallel, mergeable work.

## Required Reads

Read `../kernel/references/storage-policy.md` only when the repo has no established worktree path or ignore policy.
Read `../kernel/references/state-machine.md` only when persisting worktree state.

## Default Policy

- For non-trivial `full` or `swarm` work, create a dedicated worktree before editing.
- For `focused` work, use a worktree when branch isolation, parallelism, or merge safety matters.
- Keep the primary checkout on the repo default branch.
- Store worktrees under `.agents/worktrees/<flattened-branch>/`.
- Use one branch and one worktree per independent task or subagent.
- Skip worktrees for read-only work, tiny reversible edits, non-git repos, user requests to stay in place, or when already inside the correct dedicated worktree.

## Naming

Use Conventional Commit style:

```text
<type>/<optional-scope-or-id>-<short-slug>
```

Common types: `feat`, `fix`, `docs`, `refactor`, `test`, `perf`, `build`, `ci`, `chore`, `style`, `spike`.

Use `spike/` only for disposable exploration. Flatten the branch for the directory by replacing `/` with `-`.

Examples:

```text
feat/praxis-worktree-flow
fix/plugin-install-path
feat/123-praxis-worktree-flow
spike/search-index-prototype
```

```text
branch:   feat/praxis-worktree-flow
worktree: .agents/worktrees/feat-praxis-worktree-flow
```

## Start

Use repo policy first. Then inspect state:

```bash
git status --short
git worktree list
```

Ensure `.agents/` is ignored when using the default location:

```bash
grep -qxF '.agents/' .gitignore
mkdir -p .agents/worktrees
```

If `.agents/` is not ignored, patch `.gitignore` deliberately and review that diff. Do not hide the change inside unrelated work.

Create from the repo default branch. Replace `<default-branch>` with the actual default branch:

```bash
git worktree add -b <type>/<slug> .agents/worktrees/<type>-<slug> <default-branch>
```

If the branch already exists and clearly belongs to this task:

```bash
git worktree add .agents/worktrees/<type>-<slug> <type>/<slug>
```

Do not reuse a dirty, ambiguous, or already-checked-out branch without asking. Load `praxis:safety` before risking worktree contents.

## Parallel Work

One worker, one branch, one worktree, one bounded scope. The supervisor owns integration, conflicts, verification, and final claims.

## Finish

Verify and commit inside the worktree. For local integration:

```bash
git checkout <default-branch>
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

Record branch/path/status in context, issue, plan, evidence, or handoff only when another agent or future session needs it.

## Transition

```text
output: branch/path, merge decision, cleanup result, or blocker
lane: <current lane>
state: running | ready | done | blocked
result: worktree:active | merged | pr-ready | cleanup-ready
next: execute | pr | deliver | safety | stop
evidence: git status, branch, worktree list, commits, or merge result
```

## Next Skills

Load `praxis:execute` after creating a worktree for implementation. Load `praxis:deliver` when deciding merge, PR, cleanup, or handoff.
