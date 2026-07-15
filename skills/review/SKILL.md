---
name: review
description: Use when a bounded diff, branch, pull request, plan, design, implementation, or set of review comments needs adversarial evaluation against requirements and current source.
---

# Review

Establish the target, intended behavior, repository conventions, and claims still lacking proof. Review only the named files or reliable diff such as `BASE...HEAD`; exclude unrelated dirty or untracked work.

Check requirement coverage first, then correctness, failure handling, compatibility, tests, maintainability, and proof. Verify source-answerable concerns before reporting them. Each finding needs a tight location, concrete failure mechanism, consequence, and expected correction. Use repository severity conventions; otherwise use:

- **Critical:** unsafe, destructive, security-sensitive, or fundamentally incorrect.
- **Important:** likely bug, regression, missing requirement, or proof gap that blocks readiness.
- **Minor:** worthwhile improvement that does not block the stated result.

Do not manufacture findings. If none remain, state the review and verification limits.

Keep an ordinary review in the current review surface. When findings or proof must survive the current turn for an audit, handoff, or future owner, write the evidence to the repository's declared evidence surface or, by default, `.agents/evidence/YYYY-MM-DD-short-title.md`; do not treat that record as a second issue tracker.

Remain read-only when the user asks for review. If the request is to address existing comments, treat each as a technical claim: inspect the cited source and callers, classify it as a defect, preference, stale context, ambiguity, conflict with requirements, or unrequested generality, then implement only verified findings. Group comments that share a cause and fix that cause once. Ask precisely when context is missing, cite current behavior when feedback is stale, apply YAGNI to speculative generality, and challenge incorrect feedback with source-backed reasoning.

Run focused checks after coherent corrections and verify the combined result before reporting comments resolved. Reply in the original review thread when the platform supports it, stating what changed and the evidence. Do not trust implementer summaries instead of the diff, accept feedback performatively, resolve threads merely because code changed, or claim a concern fixed without fresh evidence.
