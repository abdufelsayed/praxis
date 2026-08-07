---
name: prepare-pr
description: "Prepare one reviewer-ready pull or merge request. Use when the human explicitly asks to draft, create, or refresh it or its reviewer aids."
---

# Prepare PR

Load [Praxis Control](../../references/control.md).

Begin only when the human asks for a local PR/MR draft, remote creation, or
refresh of one existing object. Prepare PR owns the reviewed boundary, cover
note, optional reviewer aid, exact requested remote action, and verification.
It never commits, rewrites history, merges, deploys, or continues Delivery.

## Reconstruct the complete reviewed boundary

Bind the mode, repository/provider, base, head, requested effect, metadata, and
draft/ready choice. “Prepare a PR” authorizes a local draft only; it does not
authorize push or provider mutation.

Inspect repository policy, identity, remotes, provider access, branches,
upstream, existing object, commit range, and complete base-to-head diff. That
diff—not the latest commit, working tree, or remembered change—is the review
target. Preserve and disclose staged, unstaged, untracked, and relevant ignored
state. Return ambiguity, unrelated commits, missing commits, stale object
boundary, or policy conflict before publication.

Write a title for the dominant intention of the whole diff using repository
convention, or concise imperative Conventional Commit form when none exists.
Preserve an existing title while still accurate. The body leads with changed
behavior, affected surface, and why it matters, then only the root cause,
intentional non-change, approach, compatibility, risk, migration, measured
effect, or review order that reduces reviewer reconstruction. Apply required
templates and verified issue semantics. Exclude diaries, file inventories,
routine logs, placeholders, secrets, private payloads, and personal data.

Add an aid only when it materially reduces reconstruction. Use existing
observed evidence or call [Make Tangible](../make-tangible/SKILL.md) for one
bounded explainer tied to the exact reviewed head. Include only a verified
version with its supported conclusion and fidelity limit.

Preserve Make Tangible `no-op`, `constructed`, `revised`, `blocked`, or
`stopped` with exact artifact, reaction, fidelity, transport, and retention
state. Prepare PR retains reviewer meaning and publication.

## Separate draft, push, and provider effects

For a local draft, return title, body, aids, reviewed snapshot, evidence, and
unpublished limits without contacting the provider.

For remote create or refresh, preserve truthful existing metadata and draft
state. Create as draft unless the human explicitly requests ready. Do not add
reviewers, labels, milestones, auto-merge, deployment, or release metadata
unless explicitly requested. A normal named same-repository create or update
requires exact human authority but no safety ceremony. Consequential or
unexpected targets, public/cross-repository effects, protected automation,
secrets, permissions, cost, or deployment coupling additionally require
approved coverage, exact Implementation Authorization, and
[Check Safety](../check-safety/SKILL.md) `proceed`.

Only Safety `proceed` releases the exact authorized provider action;
`revise` returns Prepare PR `revised`, and `stop` returns `blocked`, with no
remote effect.

If the reviewed head is not published, announce the exact normal non-force
push required—remote, branch, head commit, and effect—and wait for separate
human authority. A changed head invalidates the snapshot and prior push
authority. Force/history-rewriting, protected/shared, unexpected, or
cross-repository publication is consequential and uses the same Plan,
authority, and Safety boundary.

After an authorized push, reread the remote branch and verify it resolves to
the unchanged reviewed head. Only then create or refresh the object using the
authorized title, body, aid, draft state, and named metadata. Reread the remote
object and compare URL, title, base, head, draft state, and represented snapshot
with the authorized target. Do not silently repair mismatches or synthesize
success after provider failure.

Return `drafted`, `unchanged`, `created`, `updated`, `revised`, `blocked`,
`failed`, `partial`, or `stopped` with mode, exact reviewed boundary, title and
body, aids, remote object when present, publication and safety evidence,
decisive verification, remaining local/unpublished state, limits, and next
human decision. Stop without requesting review, merging, tagging, releasing,
deploying, or cleaning branches.
