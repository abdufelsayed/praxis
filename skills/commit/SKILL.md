---
name: commit
description: "Commit one coherent Git snapshot. Use when the requester explicitly requests creating or amending a commit, or rewriting Git history."
---

# Commit

Load [Praxis Control](../../references/control.md).

Begin only when the requester asks to create, amend, or otherwise operate on a
commit. Commit owns the snapshot, message, Git action, and result. It does not
push, publish, merge, tag, release, deploy, or clean unrelated state.

## Establish the exact operation

Inspect repository policy, branch and upstream, `HEAD`, staged and unstaged
diffs, untracked paths, relevant ignored state, conventions, checks, and hooks.
The working tree is evidence, not requested scope. Preserve unrelated work and
pre-existing staged content; staging carries no inclusion authority.

For amend, squash, rebase, reset, or another rewrite, bind the exact operation,
commit or range, ordering or mode, old and intended identity, message effect,
sharing state, and recovery. A rewrite requires an approved Plan, separate
current Implementation Authorization, and a final [Check Safety](../check-safety/SKILL.md)
`proceed`. If any boundary is missing, return `revised` before changing the
index. An ordinary new local commit needs no safety call unless its actual
effect is consequential.

## Form one coherent snapshot

Stage only the requested paths or hunks. “Commit all current changes” includes
relevant tracked and untracked work only after inspecting for secrets,
generated junk, and accidental material. Ignored files remain excluded unless
the requester names them and force-adding is safe.

If independent intentions are mixed, propose a concrete split. If the requester
explicitly requested one combined snapshot, include its complete approved
scope. Never unstage, reset, restage, use a temporary index, or otherwise
reorganize unrelated index state to make the operation easier. Return the
conflict when the exact snapshot cannot be formed safely.

Reinspect the final staged diff. For a rewrite, inspect the exact range,
ordering, intended tree, history, and message effect instead. Check for missing
scope, accidental files, conflicts, binaries, generated noise, secrets,
compatibility effects, and unsupported claims. Run proportionate fresh checks.
Disclose failures before committing; proceed with a concern-bearing or WIP
commit only when the requester clearly chooses it.

Invoke Check Safety only after the exact consequential operation and final
snapshot are known. Act only on `proceed`; preserve any authorized staging on
`revise` or `stop`.

## Message and execute

Preserve existing messages during rewrites unless the request explicitly
changes them. For a new or changed message, follow repository convention. If
none exists, use a Conventional Commit type and an optional stable scope; use
an imperative subject of at most 70 characters without a period. Add a body
only for rationale, consequential behavior, compatibility, or limitations.
Never invent issues, attribution, or motivation, and exclude secrets and
personal data.

Use a non-interactive command when the request fully determines it. Run normal
hooks and never bypass them without explicit authority for that exact
exception. If a hook changes the snapshot, reinspect and rerun affected proof
before retrying.

## Verify and stop

After success, inspect the resulting commit or rewritten history, branch,
`HEAD`, old-to-new identity when applicable, upstream, index, working tree,
untracked paths, and relevant ignored state. Return the operation, identity
and subject, included intention, decisive checks, hook outcome, limitations,
and all remaining work. Use `committed` only for an inspected new commit and
`rewritten` for an inspected history change. Otherwise return exactly one of
`revised`, `safety-revise`, `safety-stop`, `refused`, `dismissed`, `blocked`,
`failed`, or `partial` with its current state and missing decision or evidence.
Stop.
