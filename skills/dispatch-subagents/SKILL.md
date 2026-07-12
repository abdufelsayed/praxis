---
name: dispatch-subagents
description: Use when the user requests subagents or a task contains independent, bounded investigations, implementations, reviews, or checks that benefit from isolated context.
---

# Dispatch Subagents

## Overview

Give each subagent one bounded outcome and enough context to succeed. The supervisor owns decomposition, conflicts, integration, and final verification.

**Core principle:** Isolate work by problem or ownership boundary, not by arbitrary file count.

## Decide What To Dispatch

| Situation | Route |
| --- | --- |
| Separate read-only questions | Dispatch concurrently |
| Disjoint files with stable interfaces | Parallel edits may be safe |
| Same files, shared schema, or ordered migration | Keep serial |
| One failure may cause the others | Diagnose the shared cause first |
| One small task | Do it directly |
| Broad task with no clear stop condition | Narrow or design it before dispatch |

Parallel work must not depend on another worker's unfinished answer. A database migration and an API change that consumes its schema are serial even if they touch different files.

## Write A Self-Contained Brief

Include:

- one outcome and explicit scope;
- paths or responsibility the worker owns;
- requirements, current evidence, and interfaces it must preserve;
- exact checks and expected signals;
- what the worker must return;
- stop conditions for ambiguity, collisions, destructive actions, and scope expansion.

Do not pass an entire conversation or dirty working tree when a few current paths and constraints are enough. Use [references/brief-examples.md](references/brief-examples.md) for an implementation, investigation, or review brief. Send the brief through the host's dispatch mechanism; do not save it in the product repository.

## Supervise Without Duplicating Work

1. Dispatch independent workers before waiting.
2. While they run, work only on disjoint files and contracts.
3. Read every result and inspect its cited evidence or exact diff.
4. Resolve overlaps and stale assumptions before integration.
5. Integrate in dependency order.
6. Run supervisor-owned verification on the combined result.

Handle status explicitly:

- `DONE`: inspect the evidence, then verify the integrated result.
- `DONE_WITH_CONCERNS`: resolve the concern before accepting the work.
- `NEEDS_CONTEXT`: answer the missing question or narrow the task, then rebrief.
- `BLOCKED`: solve the blocker centrally, redesign the slice, or stop.

A worker report is an input to verification, never proof by itself.

## Keep Coordination Ephemeral

Keep briefs and reports in the dispatch channel by default. Do not create progress ledgers, report directories, review packages, or task files merely to coordinate a short run. If a long effort genuinely risks context loss, use one record through `preserve-context`.

## Common Mistakes

- Dispatching coupled edits in parallel because their filenames differ.
- Omitting the expected return, then having to reconstruct what changed.
- Repeating the full project history in every brief.
- Trusting `DONE` without reading the diff or rerunning the combined check.
- Assigning several workers to discover the same root cause.
