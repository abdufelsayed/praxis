---
name: dispatch-subagents
description: Use when the user requests subagents or independent, bounded investigations, implementations, reviews, or checks benefit from isolated context.
---

# Dispatch Subagents

Dispatch only work that can proceed without another worker's unfinished result. Separate tasks by outcome or ownership boundary, not arbitrary file count. Keep shared schemas, overlapping files, and ordered migrations serial.

Give each worker one self-contained brief:

- observable outcome and explicit scope;
- owned paths or responsibility;
- requirements, current evidence, and interfaces to preserve;
- exact checks and expected signals;
- required return and stop conditions.

Use [references/brief-examples.md](references/brief-examples.md) when a concise investigation, implementation, or review brief helps. Send briefs through the host's dispatch mechanism; do not save coordination files in the product repository.

The supervisor owns decomposition, collisions, integration, and final proof. Dispatch independent work before waiting, continue only on disjoint responsibilities, inspect every returned diff or cited source, resolve stale assumptions, integrate in dependency order, and verify the combined result. A worker's `DONE` report is evidence to inspect, never proof by itself.

Keep briefs and reports ephemeral. Use `continuity` only when a long effort genuinely risks context loss. Stop or rebrief when a worker needs missing product intent, encounters overlapping ownership, proposes destructive action, or expands scope.
