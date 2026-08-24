---
name: manage-worktree
description: Create, hand off, or clean up one Git worktree when a concrete collision, preservation, rollback, parallel-editor, or repository-experiment risk justifies checkout isolation.
---

# Manage Worktree

A worktree is useful isolation for checkout files, not a default for every task.

## Inspect the isolation boundary

Read repository policy, branch and `HEAD`, staged and unstaged work, untracked
and relevant ignored files, existing worktrees and branches, candidate path,
active editors or agents, intended destination, and rollback needs. Also inspect
resources the work may share: databases, containers, volumes, ports, processes,
caches, generated output, configuration, credentials, services, accounts, and
infrastructure.

If a new checkout would not materially reduce the named risk, use the current
checkout. Otherwise choose the exact absolute path, base, branch or detached
state, owner, intended use, lifetime, and whether it is disposable. Never reuse a
branch checked out elsewhere or disturb another checkout.

## Create and hand off safely

Preserve every existing checkout, index, file, process, and unrelated dirty
change. Create the worktree from the exact base, reconstruct only the minimum
repository-native environment, and verify path, `HEAD`, branch state,
cleanliness, environment differences, and resources still shared.

A handoff names the absolute path, base, destination, branch, staged, unstaged,
untracked and relevant ignored state, active processes and shared resources,
proof, limits, destination drift, and next bounded action. It transfers state and
evidence, not authority to integrate or publish.

## Clean up only proved-disposable state

Remove a worktree automatically only when this skill created it as explicitly
disposable and current inspection proves it has no modified, staged, untracked,
relevant ignored, unique-commit, unique-branch, process, editor, mount,
external-resource, or future-consumer state.

Otherwise ask for exact cleanup direction. Before force removal, branch deletion,
history rewrite, remote cleanup, or another consequential action, use Check Safety
for the resolved target and preserve the state when it cannot proceed.

Report the checkout identity, preserved state, shared resources, decisive checks,
limits, and next action. Worktree management does not imply commit, integration,
publication, or adjacent cleanup.
