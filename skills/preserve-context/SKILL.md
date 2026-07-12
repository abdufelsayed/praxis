---
name: preserve-context
description: Use when consequential work must survive context loss, a pause, another session, or a change of owner and cannot be reconstructed cheaply from source and version control.
---

# Preserve Context

## Overview

Keep one current recovery record so the next owner can resume without replaying the conversation. Do not create it for work that will finish in the current session or is already captured adequately by an issue, plan, branch, or pull request.

Use `handoff` when ownership is actively changing. This skill preserves recoverability for the same ongoing owner or session lineage.

## Decide Whether To Save State

Save context when at least one condition is true:

- a different session or owner will continue the work;
- losing the current reasoning would discard a consequential decision or blocker;
- several workers need one shared current objective;
- an investigation produced evidence that would be expensive to reproduce.

If source, git history, and the current request make the next action obvious, create nothing.

## Write One Recovery Record

Use the repository's approved location. If none exists, choose one ignored or private file only after confirming it will not enter the product unintentionally. Do not change ignore rules automatically.

Keep only:

- objective and stop condition;
- consequential constraints and non-goals;
- current evidence and decisions;
- active work, ownership, and blockers;
- exact next action.

Rewrite the record when reality changes. Delete stale claims instead of appending a diary. Link to plans, issues, branches, and pull requests instead of copying them. Adapt [references/work-record.md](references/work-record.md) when no repository format exists.

Useful: “Run `npm test -- auth`; one failure remains in `src/auth.ts` because the refresh path still reads the removed field. Next inspect `refreshToken()` callers.”

Not useful: “Worked on authentication. Some tests still fail.”

## Resume Safely

1. Read the user's latest request.
2. Inspect current source, branch, and working-tree state.
3. Read linked issues, plans, or pull requests.
4. Compare that evidence with the recovery record.
5. Trust current source and the latest instruction when they disagree with saved prose.
6. Update or remove the record if continued persistence is still useful.

One current record is the limit. Do not split status, decisions, evidence, and handoff across several files.
