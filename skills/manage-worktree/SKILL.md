---
name: manage-worktree
description: "Manage one Git worktree for a named collision, preservation, rollback, parallel-editor, or repository-experiment risk. Use when that concrete risk may require checkout isolation."
---

# Manage Worktree

Load [Praxis Control](../../references/control.md).

Manage Worktree owns only one checkout decision and lifecycle. Use it for a
concrete collision, preservation, rollback, parallel-editor, or repository
experiment risk—not merely a dirty tree, large task, another agent, or tidiness.

## Inspect the real isolation boundary

Bind the caller, intended work, named risk, exact base commit, destination,
mutation surfaces, authority, and known lifetime. Inspect repository policy,
branch and `HEAD`, index, staged and unstaged work, untracked and relevant
ignored files, existing worktrees and branches, candidate path ownership,
active editors and agents, intended destination, and rollback needs.

Also inspect shared resources the work may touch: databases, containers,
volumes, ports, processes, caches, generated output, configuration, credentials,
services, accounts, and infrastructure. A worktree separates checkout files;
it does not isolate those resources. Use one mutating owner where any of them
overlap, and keep secrets out of prompts, reports, handoffs, and copied setup.

Return `current checkout safe` when a new checkout would not materially reduce
the named risk. Otherwise choose the smallest exact lifecycle: absolute path,
base and destination relationship, branch or detached state, owner, intended
use, lifetime, and disposable status. Never reuse a branch checked out
elsewhere, switch another checkout, or invent a branch unsupported by policy
and authority.

## Prepare and verify without disturbing state

Preserve every existing checkout, index, file, and process. Never stash, move,
overwrite, reset, delete, or reorganize another checkout for convenience.
Ordinary contained worktree creation covered by current authority may proceed.
Networked or privileged setup, secret or data transfer, container or service
actions, external resources, permissions, or consequential cleanup require
approved coverage, current exact authority, and
[Check Safety](../check-safety/SKILL.md) `proceed`.

Preserve the exact Safety result: only `proceed` releases the named lifecycle
action; `revise` or `stop` returns `blocked` with any created checkout intact.
Safety never authorizes cleanup or integration.

Create the exact checkout from the exact base and reconstruct only the minimum
repository-native environment. Verify path, `HEAD`, branch or detached state,
cleanliness, base, destination, environment differences, and resources still
shared.

Preserve successful work until an authorized owner moves it. A handoff names
absolute path, base, destination, branch, staged/unstaged/untracked/relevant
ignored state, processes and shared resources, proof, limits, destination
drift, and next bounded action. It transfers state and evidence, never
authority or integration.

Remove a worktree automatically only when this owner created it as explicitly
disposable and current inspection proves it has no modified, staged, untracked,
ignored, unique-commit, unique-branch, process, editor, mount, external-resource,
or future-consumer state. Otherwise require exact human cleanup direction and
Safety when the effect is consequential. Force removal, branch deletion,
history rewrite, remote cleanup, and integration are outside this owner.

Return `current checkout safe`, `worktree ready`, `handoff ready`,
`cleanup complete`, `blocked`, or `stopped` with checkout identity, preserved
state, environment and shared resources, safety result when used, decisive
evidence, limits, destination drift, and next action. Stop without commit,
integration, publication, or adjacent cleanup.
