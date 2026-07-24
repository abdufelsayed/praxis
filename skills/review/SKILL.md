---
name: review
description: Use when a bounded diff, branch, pull request, plan, design, or implementation needs adversarial evaluation against requirements and current source, or review comments must be triaged and addressed.
---

# Review

Use the shared [assurance ladder](../../references/assurance.md) when deciding whether the review stays inline or needs an independent agent. Delegation alone does not require independent review.

Establish the target, intended behavior, repository conventions, and claims still lacking proof. Review only the named files or reliable diff such as `BASE...HEAD`; exclude unrelated dirty or untracked work.

Check requirement coverage first, then correctness, failure handling, compatibility, tests, maintainability, and proof. Verify source-answerable concerns before reporting them. Each finding needs a tight location, concrete failure mechanism, consequence, and expected correction.

When a plan or spec governs the target, review along two axes, reported side by side and never merged or reranked: **spec fidelity** — the diff implements the contract, nothing missing, nothing extra; and **standards** — the diff meets repository conventions and sound design.

Inline review is the default. Under independent assurance, dispatch one fresh `reviewer` under the [role contract](../../references/roles.md) to evaluate both axes in one bounded pass. A specialist reviewer owns one distinct risk that the first pass cannot cover.

Use repository severity conventions; otherwise use:

- **Critical:** unsafe, destructive, security-sensitive, or fundamentally incorrect.
- **Important:** likely bug, regression, missing requirement, or proof gap that blocks readiness.
- **Minor:** worthwhile improvement that does not block the stated result.

Do not manufacture findings. Findings are the output: omit praise, process narration, and a restatement of the diff. If none remain, state that briefly with the review and verification limits.

Keep findings in the current review surface. Apply [artifact lifetime](../../references/artifacts.md) before preserving review evidence. When findings must survive, evidence owns them even when the consumer is a future maintainer or reviewer; use `handoff` only for an explicitly requested transfer of the whole active work context. A durable record must not become a second issue tracker.

Remain read-only when the user asks for review. If the request is to address existing comments, treat each as a technical claim: inspect the cited source and callers, classify it as a defect, preference, stale context, ambiguity, conflict with requirements, or unrequested generality, then implement only verified findings. Group comments that share a cause and fix that cause once. Ask precisely when context is missing, cite current behavior when feedback is stale, apply YAGNI to speculative generality, and challenge incorrect feedback with source-backed reasoning.

Run focused checks after coherent corrections and verify the combined result before reporting comments resolved. Reply in the original review thread when the platform supports it, stating what changed and the evidence. Do not trust implementer summaries instead of the diff, accept feedback performatively, resolve threads merely because code changed, or claim a concern fixed without fresh evidence.
