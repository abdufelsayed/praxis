---
name: resolve-conflicts
description: Resolve an in-progress Git merge or rebase conflict by tracing each side's intent, preserving compatible behavior, and completing the current operation.
---

# Resolve Conflicts

Resolve the operation in progress; do not start a new merge or rebase.

## Reconstruct both intents

Inspect Git status, the operation state, base and heads, conflicting files, nearby
history, commits from both sides, and linked specifications or issues available
locally. For each hunk, identify what each side changed, why it changed, and the
behavior or invariant it intended to preserve.

Generated output should be regenerated from its source when the repository defines
that workflow. Preserve unrelated dirty state.

## Resolve hunk by hunk

Keep both intents when they are compatible. When they conflict, choose the intent
that matches the current operation's accepted goal and governing behavior, and
state the tradeoff. Do not invent adjacent behavior merely to make the text merge.

After each coherent file, inspect the resolved result without conflict markers and
run the narrowest useful check. Then run the repository's broader relevant
formatting, static, build, and test checks.

Stage only the resolved operation's intended files. Continue the merge or rebase
through remaining conflicts when the request is to resolve the operation. If Git
opens a new conflict set, repeat the intent reconstruction. Do not abort, discard a
side wholesale, force-push, or alter unrelated history by implication.

Report the conflicts, chosen resolutions and tradeoffs, checks, resulting
operation state, and any remaining manual or remote action.
