---
name: worktree
description: Use when feature work, risky experiments, parallel editors, or a dirty primary checkout may require isolation, or when an existing worktree must be understood before editing.
---

# Worktree

Use isolation only when it materially reduces collision or rollback risk. Stay in the current checkout for a focused change when its branch and unrelated work are understood.

Run [scripts/worktree-state](scripts/worktree-state) to identify the repository root, branch, Git directories, superproject, and whether the checkout is normal, linked, detached, or a submodule. Do not create another worktree merely because the current one is unfamiliar or already host-isolated.

Before creating one, inspect existing worktrees and ownership, follow repository naming and location rules, choose a path outside tracked content, and create a new branch unless the host intentionally provides a detached workspace. Run setup and a relevant baseline check inside the new workspace; report an existing failure before implementation.

Never remove, reuse, force-clean, or overwrite a worktree without knowing who owns it and what unmerged or untracked work it contains. Host-created workspaces normally belong to the host.

Report the full path, branch or detached state, ownership, and baseline result. Use `safety` before destructive cleanup or removal.
