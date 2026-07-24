---
name: dispatch
description: Use when the user requests subagents or independent, bounded investigations, implementations, reviews, or checks benefit from isolated context.
---

# Dispatch Subagents

Read the shared [assurance ladder](../../references/assurance.md). Dispatch when the user requests agents, parallel read-only questions are independent, or isolated context gives one bounded outcome a clear advantage. Direct work remains with the supervisor.

Separate work by outcome or ownership boundary. Keep shared schemas, overlapping files, ordered migrations, and dependent failures serial. Narrow or design a broad task before delegating it.

Select one [canonical role](../../references/roles.md):

- `scout` for bounded local repository evidence;
- `researcher` for bounded external primary evidence;
- `worker` for one owned implementation result;
- `reviewer` for one named adversarial risk;
- `verifier` for one objective claim;
- `oracle` for consequential direction, drift, or unresolved disagreement.

Give the selected role a self-contained brief:

- observable outcome and explicit scope;
- owned paths or responsibility;
- requirements, current evidence, and interfaces to preserve;
- exact checks and expected signals;
- one persistence declaration from [artifact lifetime](../../references/artifacts.md);
- stop conditions and the compact return contract.

Use `Persistence: message-only` unless a named future consumer needs non-reconstructible information. When durability is justified, use `Persistence: promote to <exact path>; consumer: <name>`. The role still returns natively; the supervisor writes or updates only that owning artifact and links it in the final result. A role must not invent a report, handoff, transcript, evidence file, or alternate path. If the declared mode is insufficient, it returns the unmet need instead of changing modes.

An investigation establishes one question and returns its conclusion, exact evidence, remaining uncertainty, and next action. A `worker` owns one observable result and returns one status—`DONE`, `DONE_WITH_CONCERNS`, `NEEDS_CONTEXT`, or `BLOCKED`—plus changed paths or commits, the decisive check and signal, and unresolved concerns. A `reviewer` returns findings with location, mechanism, consequence, and expected correction. A `verifier` returns `verified`, `failed`, or `unverified` with the decisive signal and gap. Under a plan, cite its path and task ID.

Send the brief through the host's native dispatch mechanism without session history or accumulated summaries. Use the host's configured role; if it is unavailable, supply the role contract to a generic agent without selecting a provider or model. Run read-only questions concurrently; run edits concurrently only when ownership and interfaces are disjoint.

The supervisor owns decomposition, collisions, integration, and final proof. Inspect every returned diff or cited source, resolve stale assumptions, integrate in dependency order, and verify the combined result. Under a plan, only the supervisor updates its Execution block. Treat `DONE_WITH_CONCERNS` as unresolved, answer or narrow `NEEDS_CONTEXT`, and solve or redesign `BLOCKED`.

Resume the same worker for a correction when the host preserves its context. Give it the verified finding and the check that will prove the correction. Re-review only when independent assurance still applies. A repeated failure calls for a stronger brief, different ownership, smaller scope, or a plan correction rather than an unchanged retry.

Worker coordination stays in native messages. Implementation summaries and review packages are not durable records.
