---
name: dispatch
description: Use when the user requests subagents or independent, bounded investigations, implementations, reviews, or checks benefit from isolated context.
---

# Dispatch Subagents

Dispatch only work that can proceed without another worker's unfinished result. Separate tasks by outcome or ownership boundary, not arbitrary file count. Keep shared schemas, overlapping files, and ordered migrations serial.

Dispatch separate read-only questions concurrently and disjoint edits only when interfaces are stable. Diagnose a shared cause before dispatching dependent failures. Do one small task directly, and narrow or design a broad task before delegating it.

Give each worker one self-contained brief:

- observable outcome and explicit scope;
- owned paths or responsibility;
- requirements, current evidence, and interfaces to preserve;
- exact checks and expected signals;
- required return and stop conditions.

Send briefs through the host's dispatch mechanism; do not save coordination files in the product repository. Use a form suited to the work:

```text
Investigation: establish one question; define read scope and no-edit boundary; prefer primary sources over secondary write-ups; return a conclusion, exact evidence, remaining competing explanation, and next action. When the result must outlive the turn, the worker writes a cited output file and returns its path.

Implementation: state the observable outcome, owned paths, contracts to preserve, requirements, exact check and expected signal; return status, changed files, checks, self-review, and concerns. Under a plan, cite the plan path and task ID in the brief.

Review: state the target, requirements, and read-only mode; return severity-ordered findings with location, mechanism, consequence, and expected correction.
```

For implementation, require one status: `DONE`, `DONE_WITH_CONCERNS`, `NEEDS_CONTEXT`, or `BLOCKED`. Define stop conditions for missing context, destructive action, ownership collision, and scope expansion.

The supervisor owns decomposition, collisions, integration, and final proof. Dispatch independent work before waiting, continue only on disjoint responsibilities, inspect every returned diff or cited source, resolve stale assumptions, integrate in dependency order, and verify the combined result. Under a plan, the supervisor — never the worker — writes completion back to the plan's Execution block. Treat `DONE_WITH_CONCERNS` as unresolved, answer or narrow `NEEDS_CONTEXT`, and solve or redesign `BLOCKED`. A worker's `DONE` report is evidence to inspect, never proof by itself.

Keep briefs and reports ephemeral. Use `continuity` only when a long effort genuinely risks context loss. Stop or rebrief when a worker needs missing product intent, encounters overlapping ownership, proposes destructive action, or expands scope.
