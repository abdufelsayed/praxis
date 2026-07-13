---
name: review
description: Use when a bounded diff, branch, pull request, plan, design, implementation, or set of review comments needs adversarial evaluation against requirements and current source.
---

# Review

Establish the target, intended behavior, repository conventions, and claims still lacking proof. Review only the named files or reliable diff such as `BASE...HEAD`; exclude unrelated dirty or untracked work.

Check requirement coverage first, then correctness, failure handling, compatibility, tests, maintainability, and proof. Verify source-answerable concerns before reporting them. Each finding needs a tight location, concrete failure mechanism, consequence, and expected correction. Use repository severity conventions; otherwise distinguish blocking defects from non-blocking improvements. Do not manufacture findings.

Remain read-only when the user asks for review. If the request is to address existing comments, treat each as a technical claim: inspect the cited source and callers, classify it as a defect, preference, stale context, ambiguity, or conflict with requirements, then implement only verified findings. Group comments that share a cause and fix that cause once. Challenge incorrect feedback with source-backed reasoning.

Run focused checks after coherent corrections and verify the combined result before reporting comments resolved. Do not trust implementer summaries instead of the diff, accept feedback performatively, resolve threads merely because code changed, or claim a concern fixed without fresh evidence.
