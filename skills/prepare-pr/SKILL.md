---
name: prepare-pr
description: "Prepare one reviewer-ready pull or merge request. Use when the human explicitly asks to draft, create, or refresh it or its reviewer aids."
---

# Prepare PR

Prepare one reviewer-ready pull or merge request from the exact current
base-to-head change. Prepare PR owns the reviewed boundary, cover note,
optional reviewer aid, requested remote object action, publication evidence,
verification, and stopping. It never commits, rewrites history, merges,
deploys, or continues Delivery.

## 1. Establish explicit entry and scope

Begin only when the human clearly asks to prepare PR content, create a pull or
merge request, or refresh/update one. Classify the request as one of:

- **local draft:** write or revise a title/body and optional reviewer aid;
- **remote create:** create one named pull or merge request; or
- **remote refresh:** update one existing pull or merge request.

An explicit request for a remote object names the repository or provider when
that is not unambiguous, the target branch, and the requested create/update
effect. A request for “prepare a PR” may produce a local draft, but it does
not by itself authorize a remote object action or a push. A request to refresh
does not authorize a new commit, push, merge, review request, release, or
deployment. Preserve the human's requested provider, target, metadata, and
draft/ready choice; do not infer adjacent work.

This capability is an explicitly invoked workflow. It may recommend a
provider or reviewer aid, but it does not begin a missing provider workflow or
turn a local result into publication authority. This step is complete when the
mode, repository, target, requested effect, and missing human choices are
explicit, or the request is returned as `revised`, `blocked`, or `stopped`
before any remote mutation.

## 2. Reconstruct the exact reviewed boundary

Inspect the repository instructions and pull-request policy, repository
identity, remotes, provider access, current branch, base branch, head branch,
upstream state, existing pull/merge request, commit range, and complete
base-to-head diff. The request concerns everything the target branch would
receive; it is not the latest commit, working-tree diff, or the change you
remember making.

Inspect and preserve staged, unstaged, untracked, and ignored state. Do not
commit, rewrite, switch branches, reset, clean, stash, or alter unrelated
state to make publication easier. Reconstruct a review snapshot containing
the repository identity, remote, base and head names, exact head commit, exact
base-to-head range/diff, provider/object identity when present, and the
working-tree limitations.

Return before publication when the base or head is ambiguous or unexpected,
the branch contains unrelated commits that should not enter the target,
required changes remain uncommitted, the existing object represents a
materially different boundary, or repository policy conflicts with the
request. A local draft may still be returned only when its title/body and
limitations clearly identify the incomplete or unpublished boundary; never
call it reviewer-ready when the reviewed snapshot is incomplete. This step is
complete only when every intended commit in the proposed base-to-head change
is accounted for, every excluded local state is named, and the exact reviewed
head is recorded.

## 3. Write the current reviewer cover note

Choose the title from the dominant intention of the complete base-to-head
diff. Follow repository title convention first; otherwise use a concise
imperative Conventional Commit form:

```text
<type>(<optional-scope>): <concise imperative outcome>
```

Use a narrow stable scope when it improves recognition. Use `!` only for a
real externally relevant compatibility break. For an existing object,
preserve its title while it still describes the current whole diff; update it
only when behavior, scope, approach, compatibility, risk, migration,
verification, or review expectations changed materially.

Write the smallest useful current cover note. Lead with changed behavior, the
affected surface, and why it matters. Adapt the shape to the complete diff:

- an obvious small change may use one paragraph;
- a feature, fix, or refactor may name behavior, root cause, intentionally
  unchanged behavior, or a non-obvious approach;
- a contract or compatibility change names impact and migration;
- an operational, visual, or workflow change names observable effect and any
  consequential failure mode or measured impact; and
- a broad, generated, or cross-cutting change explains why the breadth is
  necessary and where review should begin.

Use headings only when they reduce reconstruction. Do not add changelog
prose, commit-by-commit narration, file inventories, implementation diaries,
routine command logs, exhaustive validation checklists, or template
placeholders. Include concise verification only when it proves a non-obvious
contract, explains meaningful regression coverage, changes readiness/risk, or
exposes a material gap; link decisive existing evidence when useful and claim
only what was observed.

Before finalizing, apply repository pull-request instructions and required
template fields. Use the provider's native API or tool; when no template is
required, use adaptive prose. Fit the cover note into required fields without
duplicating sections. Confirm issue identifiers and relationships before
using them: use `Fixes <issue>` only when merging genuinely closes that work
under repository convention, otherwise use `Refs <issue>` or the provider's
equivalent.

Keep customer or organization names, emails, support-ticket contents,
secrets, private payloads, and other personal data out of the title, body,
metadata, aids, prompts, and routine output. Describe the sanitized technical
behavior or symptom instead. This step is complete when title, body,
template fields, issue semantics, privacy treatment, evidence claims, and
refresh changes all describe the same complete reviewed diff.

## 4. Add a reviewer aid only when it reduces reconstruction

Use a small before/after example, compact Mermaid diagram, existing
screenshot/recording/visual diff, or focused rollout, risk, compatibility, or
review-order note only when it makes a consequential part of this diff
materially easier to judge. Introduce what the reviewer should notice and how
the evidence relates to the diff. Do not fabricate screenshots, add decorative
diagrams, or create evidence that was not observed.

When a non-trivial explainer is needed, call [Make Tangible](../make-tangible/SKILL.md)
for one bounded PR explainer. Pass the reviewer question, exact reviewed
diff/head, audience and starting point, evidence and accepted truth, the
primary reviewer judgment, medium/fidelity need, requested reaction, current
authority, and artifact lifetime. Make Tangible returns its artifact/version,
supported conclusions, reaction, evidence, fidelity/transport limits, and
retention state; it may
return `no-op`, `constructed`, `revised`, `blocked`, or `stopped`. Use an aid
only when its returned version is verified and faithful, and preserve all
limits or qualified reaction in the cover note. On `no-op`, retain its direct
explanation, include no aid, and continue the ordinary cover-note path. On
`blocked` or `stopped`,
retain the reviewer question and current PR draft and return without inventing
an aid or treating the result as approval. Prepare PR retains reviewer
communication, whether the aid belongs in the object, publication, and
stopping; Make Tangible retains construction, fidelity, reaction capture, and
artifact lifetime. When the human needs to react before publication, Make
Tangible may choose its faithful Plannotator path under its own contract;
Prepare PR does not invoke Plannotator directly or treat that reaction as PR
approval or push authority. A visual reaction never grants PR or push
authority.

This step is complete when every included aid has an exact observed source or
artifact version, an honest supported conclusion, and a reason it reduces
review reconstruction; otherwise include no aid.

## 5. Choose local draft or exact remote action

For a local draft, return the title, body, optional aid, reviewed snapshot,
evidence, and unpublished/local limitations. Do not contact the provider,
change remote metadata, push, request reviewers, or infer a ready state.

For remote create or refresh, establish the exact provider object, repository,
base, head, requested title/body/aid effect, and existing draft/ready and
metadata state. Preserve truthful human-authored context, required metadata,
issue links, reviewer guidance, and still-valid operational notes. Revise or
remove stale claims; do not turn the body into a revision diary. Preserve an
existing object's draft or ready state unless the human explicitly asks to
change it. Create a new object as **draft** unless the human explicitly asks
for ready-for-review state; when evidence supports readiness, recommend the
state change instead of silently making it.

Do not request reviewers, assign people, add discretionary labels, set a
milestone, enable auto-merge, trigger deployment, or change other social or
release metadata unless the human explicitly requests that effect or
repository automation owns it. A normal named same-repository object create
or update is an ordinary contained external effect, but it still requires
exact human authority for the actual action, target, and effect. Do not invoke
Check Safety merely because the object is remote; use it when the actual
consequence is consequential.

Classify that consequence before the provider mutation. An ordinary named
same-repository create/update proceeds after exact authority without safety
ceremony. An unexpected or cross-repository/public target, protected/shared
automation, secret or private-data exposure, permission or material-cost
change, deployment coupling, or another consequential create/update requires
an approved Plan and separate exact Implementation Authorization. Return
`revised` if either is missing; otherwise call [Check Safety](../check-safety/SKILL.md)
with that one exact provider action, target and environment, intended effect,
blast radius and plausible loss, recovery and irreversibility, Plan coverage,
exact Implementation and external authority, and current evidence. Only
`proceed` permits the authorized create/update; map `revise` to Prepare PR
`revised` and `stop` to `blocked`, preserve the exact `safety_result`, and
perform no provider mutation. This safety result does not authorize or execute
the action and does not cover a push.

This step is complete when the exact remote operation and every metadata
change are authorized and any required safety result is `proceed`, or a
local-only draft is complete and no remote action is selected.

## 6. Publish only the exact reviewed head

Creating a new object may require publishing its head branch. A request to
create or refresh a PR does not authorize that push. Before publication,
reconfirm that the current repository, base, branch, head commit, complete
diff, remote, and reviewed evidence still match the snapshot from Step 2.

If the exact reviewed head is not published, announce the one normal
non-force push required, naming the remote, branch, exact head commit, and
effect. Wait for a separate ordinary-language human instruction that names
that exact push, remote, branch, reviewed head, and publication effect. If the
human declines or does not provide it, return the prepared request and exact
unpublished state without publishing.

Push authority covers only that unchanged reviewed head to that named remote
and branch. It does not cover another branch or tag, a force push or history
rewrite, later commits, a changed base, a cross-repository destination, or a
push merely because title/body refresh was requested. If the head changes,
invalidate the reviewed snapshot and prior push authority; reconstruct the
complete new diff and request authority for the newly reviewed head.

After exact push authority exists, classify the actual push consequence. A
normal non-force push of the unchanged reviewed head to the named
same-repository branch is ordinary after verifying remote, branch, head, and
unchanged snapshot; perform no ceremonial safety check. Force or history
rewrite, protected/shared target, unexpected remote, cross-repository
publication, secret handling, deployment coupling, or another consequential
variation requires an approved Plan and separate exact Implementation
Authorization. If those boundaries are missing, return `revised` before
calling Check Safety. Otherwise call [Check Safety](../check-safety/SKILL.md)
with one exact push action, target/environment, effect, blast radius,
recovery/irreversibility, Plan coverage, authority, and current evidence.
Map its `proceed` to permission to publish that unchanged reviewed head;
map `revise` to Prepare PR `revised` with the changed boundary/evidence and
`stop` to `blocked`; preserve the exact `safety_result` and perform no push.
Check Safety never performs the push or grants authority. Prepare PR retains
reviewed-head, publication, remote-object, and stopping ownership.

Perform only the exact authorized push, then reread the named remote branch and
verify it resolves to the unchanged reviewed head. An observed push failure
returns Prepare PR `failed` with the exact operation, target, error, and
preserved local/remote state. An interrupted, ambiguous, or unreadable remote
result returns `partial` with the uncertain effect and next verification
boundary. Neither outcome continues to provider-object creation or refresh;
only a verified remote head may enter Step 7.

This step is complete only when the requested remote action needs no push, the
exact authorized push is remotely verified, or an honest unpublished,
revised, blocked, failed, partial, or stopped Prepare PR result has been
returned with any exact `safety_result`. No other branch, tag, commit, or
external effect may be published.

## 7. Create or refresh, then verify the remote result

After Step 5 has established exact authority and any required `proceed`, use
the provider-native operation named there and apply only the authorized title,
body, aid, draft/ready choice, and explicitly requested metadata. If provider
access, a required template, or an exact target is missing, return `blocked` or
`revised` with the local draft and precise limitation; do not guess a provider,
repository, account, or target. A provider or transport failure returns
`failed` with the exact operation, target, observed error, and preserved
local/unpublished state; do not synthesize success.

After the operation, reread the actual remote object and compare it with the
authorized reviewed state. Report its URL, title, base and head branches,
draft/ready state, represented head commit/base-to-head snapshot, decisive
verification, material gaps, and any remaining local or unpublished state.
If the object differs materially from the authorized target, head, title,
body, draft state, or requested metadata, return `partial` with the observed
remote state and mismatch; do not silently repair or perform another update.
If the remote object cannot be reread, return `partial` with the operation
result and verification gap rather than claiming a verified PR. Cosmetic
refresh is `unchanged` when the current object already accurately describes
the whole diff and no requested field needs alteration.

This step is complete only when the actual remote object matches the reviewed
and authorized state, or the exact failure/mismatch and preserved state are
reported.

## 8. Return and stop

Return one result and stop:

```text
Prepare PR Result {
  outcome: drafted | unchanged | created | updated | revised | blocked |
    failed | partial | stopped,
  request_mode: local-draft | remote-create | remote-refresh,
  reviewed_boundary {
    repository,
    remote?,
    base_branch,
    head_branch,
    head_commit,
    base_to_head_range_or_diff,
    working_tree_limits,
  },
  title?,
  body?,
  reviewer_aids?,
  remote_object { url?, title?, base?, head?, draft_state?, snapshot? }?,
  safety_result?,
  publication { required, remote?, branch?, reviewed_head?, authority?,
    performed?, safety_result? }?,
  decisive_evidence,
  verification,
  remaining_local_or_unpublished_state,
  limitations,
  next_human_decision?,
}
```

`drafted` means only a local reviewer draft exists. `unchanged` means an
existing object already matches the current reviewed diff. `created` and
`updated` require the requested remote action and a reread that proves URL,
title, base, head, draft state, and represented snapshot. `revised` names a
fixable boundary, stale head, missing template/authority, or changed request;
`blocked` names an unavailable or unsafe dependency/boundary; `failed` names
an observed provider or required operation failure; `partial` names a remote
effect or incomplete verification that cannot yet be trusted; and `stopped`
names human cancellation or declined publication without inferring approval.
Every outcome includes evidence, limitations, and remaining local or
unpublished state. Prepare PR does not request review, merge, auto-merge, tag,
release, deploy, clean branches, alter unrelated metadata, or continue
Delivery after this return.
