---
name: worktree
description: Use when feature work, risky experiments, or parallel editors need isolation from the current checkout, or when an existing worktree must be understood before editing.
---

# Worktree

## Overview

Use a worktree when isolation materially reduces collision or rollback risk. Stay in the current checkout for a focused change when another workspace adds no value.

## Detect The Current Workspace

Run [scripts/worktree-state](scripts/worktree-state) from anywhere inside the repository. It reports the repository root, branch, git directory, common git directory, superproject, and whether the checkout is normal, a linked worktree, or a submodule.

Do not create a second worktree merely because the current one is detached or unfamiliar. First determine whether the host already provided isolation and who owns cleanup.

## Decide Whether Isolation Helps

Use a worktree for:

- parallel agents or humans editing disjoint slices;
- a risky experiment that should not disturb current work;
- explicit branch isolation requested by the user or repository;
- non-trivial work while the primary checkout contains unrelated changes.

Work in place for a small focused edit when the current branch and dirty tree are understood and protected.

## Create Safely

1. Prefer a host-provided worktree mechanism when available.
2. Follow repository instructions for location and branch naming.
3. For a manual worktree, inspect existing worktrees with `git worktree list --porcelain`.
4. Choose a path outside tracked content or an already ignored project-local directory. Do not modify ignore rules merely to create a worktree.
5. Create a new branch unless the host intentionally provides a detached workspace.
6. Run project setup and a relevant baseline check inside the new workspace.

If the baseline fails, report the existing signal before implementation so it cannot be confused with a regression.

## Preserve Ownership

Never remove, reuse, or force-clean a worktree without knowing who owns it and what unmerged or untracked work it contains. Host-created workspaces usually belong to the host; leave their cleanup to it unless instructed otherwise.

Report the full path, branch or detached state, and baseline result when the workspace is ready.

## Common Mistakes

- Creating a nested worktree when already isolated.
- Treating a submodule as a linked worktree because its git directory differs.
- Creating project-local worktrees inside tracked content.
- Running setup in the primary checkout instead of the new worktree.
- Deleting a workspace from inside it or before preserving unmerged work.
