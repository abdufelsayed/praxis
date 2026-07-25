---
name: review
description: Use when a bounded diff, branch, pull request, plan, design, or implementation needs adversarial evaluation against requirements and current source, or review comments must be triaged and addressed.
---

# Review

Use the shared [assurance ladder](../../references/assurance.md) when deciding whether the review stays inline or needs an independent agent. Delegation alone does not require independent review.

Establish target, intended behavior, conventions, and unproven claims. Review only named files or a reliable diff such as `BASE...HEAD`; exclude unrelated work.

Check requirements, correctness, failure handling, compatibility, tests, maintainability, and proof. Verify source-answerable concerns. Each finding needs a location, failure mechanism, consequence, and correction.

When a plan or spec governs the target, review along two axes, reported side by side and never merged or reranked: **spec fidelity** — the diff implements the contract, nothing missing, nothing extra; and **standards** — the diff meets repository conventions and sound design.

Inline review is the default. Under independent assurance, dispatch one fresh `reviewer` under the [role contract](../../references/roles.md) to evaluate both axes in one bounded pass. A specialist reviewer owns one distinct risk that the first pass cannot cover.

Use repository severity conventions; otherwise use:

- **Critical:** unsafe, destructive, security-sensitive, or fundamentally incorrect.
- **Important:** likely bug, regression, missing requirement, or proof gap that blocks readiness.
- **Minor:** worthwhile improvement that does not block the stated result.

Do not manufacture findings. Omit praise, narration, and diff restatement. If none remain, state that with the review limits.

Keep findings in the review surface. Apply [artifact lifetime](../../references/artifacts.md) before preserving them; evidence owns durable findings, while `handoff` remains a requested whole-context transfer.

## Human Result Gates

When review is the result gate for an evolution or plan-governed delivery, read [control flow](../../references/control-flow.md). Complete adversarial review and verification first, then run `plannotator review` on the exact bounded diff. Approval accepts that reviewed result but grants no commit, push, merge, deployment, later evolution, or unrelated mutation authority.

Treat submitted annotations as technical claims. Verify each against source and the accepted plan. Corrections already inside the authorized evolution may iterate and re-gate autonomously unless Pair is active; feedback that changes behavior, compatibility, direction, or the evolution boundary stops and returns to the relevant earlier gate. If the diff changes after approval, re-gate unless the change is outside the reviewed result and separately scoped.

Remain read-only when the user asks for review. If the request is to address existing comments, treat each as a technical claim: inspect the cited source and callers, classify it as a defect, preference, stale context, ambiguity, conflict with requirements, or unrequested generality, then implement only verified findings. Group comments that share a cause and fix that cause once. Ask precisely when context is missing, cite current behavior when feedback is stale, apply YAGNI to speculative generality, and challenge incorrect feedback with source-backed reasoning.

Run focused checks after coherent corrections and verify the combined result before reporting comments resolved. Reply in the original review thread when the platform supports it, stating what changed and the evidence. Do not trust implementer summaries instead of the diff, accept feedback performatively, resolve threads merely because code changed, or claim a concern fixed without fresh evidence.
