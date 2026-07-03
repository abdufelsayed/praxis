---
name: worktree
description: Use when starting non-trivial or autonomous implementation work, keeping the main checkout clean, creating isolated branches under `.agents/worktrees/`, coordinating parallel subagent work, merging completed work back to main, or safely removing git worktrees.
---

# Worktree

Use git worktrees to make agent work isolated, parallel, and easy to merge.

Read `../workflow/references/artifacts.md` when worktree ownership or status should persist beyond the current turn.
Read `../workflow/references/lifecycle.md` when moving work into or out of `worktree:active`.

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

Use these types by default:

```text
feat fix docs refactor test perf build ci chore style revert spike
```

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

Use `spike/` only for disposable exploration. Convert production-bound work to `feat/`, `fix/`, `refactor/`, or the closest standard type before delivery.

Flatten the branch for the worktree directory by replacing `/` with `-`:

```text
branch:   feat/praxis-worktree-flow
worktree: .agents/worktrees/feat-praxis-worktree-flow
```

## Start

1. Read repo instructions and use repo branch/worktree policy first.
2. Inspect state:

```bash
git status --short
git branch --show-current
git worktree list
```

3. Ensure local agent state is ignored when using the default location:

```bash
grep -qxF '.agents/' .gitignore || printf '.agents/\n' >> .gitignore
mkdir -p .agents/worktrees
```

4. Choose a branch name using the naming rules above.
5. Create from the repo default branch, usually `main`:

```bash
git worktree add -b <type>/<slug> .agents/worktrees/<type>-<slug> main
```

If the branch already exists and clearly belongs to this task, use:

```bash
git worktree add .agents/worktrees/<type>-<slug> <type>/<slug>
```

Do not reuse a dirty, ambiguous, or already-checked-out branch without asking. Use `praxis:safety` before overwriting, force-removing, or otherwise risking worktree contents.

## Parallel Work

- Give each worker a separate worktree and non-overlapping scope.
- Pass the worktree path, branch name, plan, constraints, and expected output.
- The supervisor owns integration, conflict resolution, verification, and final user claims.
- Do not let two agents edit the same worktree or branch at the same time.

## Finish

1. Verify and commit inside the worktree.
2. Use `praxis:pr` when repo convention expects branch review.
3. For local integration, merge from the primary checkout after it is clean and up to date:

```bash
git checkout main
git pull --ff-only
git merge --no-ff <type>/<slug>
```

4. Remove only clean, merged worktrees:

```bash
git worktree remove .agents/worktrees/<type>-<slug>
git branch -d <type>/<slug>
```

Never force-remove a dirty or unmerged worktree unless the user explicitly approves the loss through `praxis:safety`.
