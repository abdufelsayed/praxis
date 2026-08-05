# Prepare PR — Maintainer Contract

## Purpose

Prepare PR turns one explicit human request into a reviewer-ready pull or
merge request for the exact current base-to-head change. It reconstructs the
boundary, writes an adaptive current cover note, adds a justified reviewer aid
when useful, preserves provider and repository semantics, publishes only the
exact reviewed head under separate authority, verifies the remote object, and
stops. It owns review communication, the reviewed snapshot, publication
result, and stopping; it never owns commits, history rewrites, merge,
deployment, release, or continuation of Delivery.

## Invocation, inputs, and exclusions

The package is model-invoked because a natural-language request to prepare,
create, or refresh a pull or merge request must reach it without requiring a
magic skill name. Its accepted description and host projection are the
frontmatter and `agents/openai.yaml` in this package. Model selection alone is
not behavioral entry: the human must explicitly ask for PR content, a
reviewer aid, creation, refresh, or update.

Inputs are the explicit request and mode; repository identity and policy;
provider and remote metadata; current branch, base, head, upstream, commit
range, complete diff, working-tree state, and existing object; title/body
conventions and required template fields; issue relationships; reviewer-aid
question and evidence; exact external authority; and, for a consequential
push, approved Plan coverage, Implementation Authorization, recovery, and
current safety evidence.

The package supports local drafting, one named remote create, and one named
remote refresh. An unqualified “prepare a PR” may remain local drafting; it
does not authorize a remote object action or push. It excludes commit,
amendment, rebase, reset, branch switching, cleanup, merge, review request,
assignment, discretionary labels, milestone, auto-merge, deployment, release,
tagging, and any metadata or external effect not explicitly requested or
owned by repository automation. A refresh request does not authorize a new
commit or push. A local result never supplies publication authority.

## Behavioral entry and retained ownership

Prepare PR begins only after explicit human workflow entry. It owns the
current reviewed base-to-head boundary; title, body, template fit, issue and
privacy semantics; optional aid inclusion; exact remote create/update; exact
reviewed-head publication; remote verification; interpretation of mismatches;
and stopping. The human retains product judgment, acceptance, review
decision, merge, release, deployment, and any authority not named for the
exact PR or push action.

A normal named same-repository pull/merge request create or update is an
ordinary contained external effect when its actual consequence is contained,
but it still needs human authority naming the action, target, and effect. It
does not require Check Safety merely because it is remote. Push is a separate
effect: PR creation or refresh never implies push authority. A normal
non-force push of an unchanged reviewed head to the named same-repository
branch is also ordinary after exact authority and current proof; a force,
history-rewrite, protected/shared-target, unexpected-remote,
cross-repository, secret, deployment-coupled, or otherwise consequential push
requires Plan coverage, separate Implementation Authorization, and a Check
Safety preflight.

## Invariants

1. The capability begins only from an explicit natural-language request for PR
   content, a reviewer aid, remote creation, or remote refresh/update.
2. The request is classified as `local-draft`, `remote-create`, or
   `remote-refresh`; a local draft performs no remote mutation or publication.
3. Repository instructions, provider, remote, repository identity, current
   branch, base, head, upstream, existing object, commit range, complete
   base-to-head diff, and relevant working-tree state are inspected before a
   reviewer-ready claim.
4. The PR boundary is everything the target branch receives. Latest-commit,
   working-tree, remembered-change, or commit-message views never replace the
   complete base-to-head reconstruction.
5. Staged, unstaged, untracked, and ignored state outside the request is
   preserved. Prepare PR never commits, rewrites, switches, resets, cleans,
   stashes, or mutates unrelated state.
6. Ambiguous/unexpected base or head, unrelated commits, required
   uncommitted changes, materially mismatched existing boundary, or policy
   conflict prevents publication. A local draft may expose an incomplete
   boundary only with explicit limitations and never calls it reviewer-ready.
7. The reviewed snapshot records repository, remote, base/head branches, exact
   head commit, base-to-head range/diff, provider/object identity when present,
   and working-tree limitations.
8. The title describes the dominant intention of the complete diff, follows
   repository convention, otherwise uses a concise imperative Conventional
   Commit form, and uses `!` only for a real compatibility break.
9. An existing truthful title is preserved; refresh changes title/body only
   when current behavior, scope, approach, compatibility, risk, migration,
   verification, or review expectation changed materially.
10. The body is an adaptive current cover note: it leads with behavior,
    affected surface, and significance, uses only useful headings, and avoids
    changelog prose, commit narration, file inventories, implementation
    diaries, routine logs, exhaustive checklists, and placeholders.
11. Verification appears only when it proves a non-obvious contract,
    meaningful regression coverage, readiness/risk judgment, or a material
    gap; no check or result is claimed without observation.
12. Repository templates and required fields outrank adaptive prose. Provider
    and issue semantics are inspected; `Fixes` is used only for a confirmed
    closing relationship, otherwise an appropriate reference form is used.
13. Personal data, customer or organization names, support content, secrets,
    and private payloads are excluded from title, body, metadata, aids,
    prompts, reports, and routine output; sanitized technical behavior is
    used instead.
14. Reviewer aids are included only when they materially reduce reconstruction
    of a consequential part of the diff. Evidence is observed, exact, and
    source-bound; decorative or fabricated aids are excluded.
15. A non-trivial explainer calls Make Tangible only for one bounded PR
   reviewer question. Its version, reaction, evidence, fidelity and
   transport limits, and retention declaration or transient status remain
   visible; Make Tangible owns construction and reaction while Prepare PR owns
   inclusion and stopping. If
   human reaction is needed before publication, Make Tangible may select its
   faithful Plannotator path; Prepare PR does not invoke Plannotator directly
   or turn reaction into PR approval or push authority.
16. Remote create/update changes only the explicitly authorized title, body,
    aid, draft/ready state, and requested metadata. Reviewers, assignees,
    discretionary labels, milestones, auto-merge, deployment, and release
    metadata remain unchanged unless explicitly requested or automation-owned.
    Its actual consequence is classified before mutation: an ordinary named
    same-repository action skips safety ceremony, while a consequential target,
    automation, data, permission, cost, or deployment effect requires approved
    Plan coverage, exact Implementation Authorization, and Check Safety
    `proceed` for that provider action.
17. New objects are draft by default unless the human explicitly requests
    ready-for-review. Existing draft/ready state is preserved unless the
    human explicitly requests its change; readiness is recommended rather
    than silently applied.
18. A push is announced as one exact normal non-force action naming remote,
    branch, reviewed head, and effect. It waits for separate ordinary-language
    human authority naming those same facts.
19. Push authority covers only the unchanged reviewed head, named remote, and
    named branch. It excludes other branches/tags, force/history rewrite,
    later commits, changed base, cross-repository publication, and a push
    implied by body refresh.
20. A changed head invalidates reviewed evidence and prior push authority.
    Prepare PR reconstructs the new complete diff and obtains authority for
    the newly reviewed head.
21. A normal non-force unchanged-head same-repository push uses no ceremonial
    Check Safety preflight after exact authority and current proof. A
    consequential push requires approved Plan coverage and separate exact
    Implementation Authorization before calling Check Safety.
22. Check Safety receives one exact provider-object or push action,
    target/environment, effect, consequence, recovery, authority, and current
    evidence. `proceed` allows only that exact authorized create/update or
    unchanged reviewed head; `revise` maps to Prepare PR `revised` and `stop`
    to `blocked`, preserving `safety_result` without the effect. Check Safety
    never executes or grants authority.
23. An exact authorized push is followed by a reread proving the named remote
    branch resolves to the unchanged reviewed head. Observed push failure is
    `failed`; ambiguous, interrupted, or unreadable remote state is `partial`.
    Both preserve exact operation/evidence/state and prevent provider-object
    mutation.
24. Provider-native create/update is used when remote action is authorized.
    Missing provider access, target, template, or required boundary returns an
    honest limitation without guessing. Provider failure never becomes
    success through prose.
25. After remote action, the actual object is reread. URL, title, base, head,
    draft/ready state, represented snapshot, decisive verification, gaps, and
    remaining local/unpublished state are reported.
26. A material remote mismatch or inability to reread is `partial`, not a
    silent repair or verified success. An already-accurate object with no
    requested field change is `unchanged`.
27. Every outcome identifies exact boundary, evidence, limitations, and
    remaining local/unpublished state and stops without review, merge,
    deployment, cleanup, or adjacent Delivery work.

## Outcomes and observable return

The package exposes these outcomes:

- `drafted`: a local title/body and any optional aid are prepared; no remote
  object or publication occurred;
- `unchanged`: the existing remote object already accurately describes the
  current reviewed diff and no requested field needed alteration;
- `created`: one requested remote object was created and reread to match the
  authorized reviewed state;
- `updated`: one requested remote object was refreshed and reread to match the
  authorized reviewed state;
- `revised`: a fixable boundary, stale head, changed request, missing template,
  or missing authority requires a new human decision before the action;
- `blocked`: a provider, target, safety, authority, or other dependency
  prevents an honest action;
- `failed`: a requested provider or required operation failed, with current
  state preserved and reported;
- `partial`: a remote effect occurred or verification is incomplete/mismatched
  and the result cannot yet be trusted; and
- `stopped`: the human cancelled, declined publication, or ended the bounded
  action without inferred approval.

The native return is:

```text
Prepare PR Result {
  outcome,
  request_mode,
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

`created` and `updated` require a reread proving URL, title, base, head,
draft state, and represented snapshot. A local `drafted` result names the
exact snapshot and any incomplete/unpublished state. `revised`, `blocked`,
`failed`, `partial`, and `stopped` preserve the current local and remote state
and identify the decision or evidence still missing. No outcome is a review
approval, merge, acceptance, or permission for another activity.

## Effects, authority, persistence, and lifetime

Read-only boundary reconstruction, local title/body drafting, and ordinary
local aid selection are allowed inside the workflow's current authority.
Creating or updating one explicitly named PR is a contained remote effect
when its actual consequence is ordinary; its authority must still identify
the exact action, repository/object, and effect. The package does not infer
provider access or create a hidden integration. A consequential provider
mutation separately needs approved Plan coverage, exact Implementation
Authorization, and Check Safety `proceed` before the provider call.

Publication is separate. An exact human push instruction authorizes only the
reviewed head, remote, and branch named in that instruction. A consequential
variation needs approved Plan coverage, exact Implementation Authorization,
and Check Safety `proceed`; the safety result is scoped evidence, not
authority. Any material head or boundary change invalidates previous evidence
and publication authority.

Conversation, drafts, and provider responses are transient unless a named
consumer needs the exact cover note, aid, reaction, or remote reference.
Prepare PR creates no PR ledger, publication receipt, review tracker,
release record, or generic history file. A retained reviewer aid remains under
Make Tangible's artifact-lifetime contract; a remote provider remains the
source of its object state.

## Composition and resources

Direct calls carry the callee's required brief and preserve its exact return: one complete
brief, lossless returns, and no authority transfer. Each callee's own contract
owns its intake fields and outcome names. Prepare PR's caller policies are:

### Direct skills

| Direct target | Trigger and bounded question | Return | Retained ownership |
| --- | --- | --- | --- |
| [Make Tangible](../make-tangible/SPEC.md) | A non-trivial reviewer explainer would materially reduce reconstruction; the call supplies the bounded reviewer question and exact diff/head plus its required current evidence and effect/lifetime boundary. | Preserve the exact native outcome, artifact/version, evidence, reaction, fidelity/transport limits, and retention declaration or transient status; `no-op` keeps the direct explanation and no aid. | Prepare PR retains reviewer question, aid inclusion, cover-note meaning, remote publication, and stopping; Make Tangible retains construction, fidelity, reaction, and artifact lifetime. |
| [Check Safety](../check-safety/SPEC.md) | A separately Plan-covered and authorized provider create/update or push has an actual consequential target, automation, data, permission, cost, history, publication, or deployment effect. | Preserve the exact native result; `proceed` permits only the exact authorized effect, `revise` maps to Prepare PR `revised`, and `stop` to `blocked`, with no execution. | Prepare PR retains reviewed head, exact provider mutation or publication, remote object, interpretation, and stopping. |

Normal named same-repository object mutation and unchanged-head
same-repository push do not call Check Safety. A known-missing Plan or exact
authority returns `revised` before the call. No other skill, runtime reference,
script, asset, template, MCP server, hook, or integration is required by this
package.

## Invocation and host projection

```yaml
---
name: prepare-pr
description: "Prepare one reviewer-ready pull or merge request. Use when the human explicitly asks to draft, create, or refresh it or its reviewer aids."
---
```

```yaml
interface:
  display_name: "Prepare PR"
  short_description: "Prepare one reviewer-ready pull request"
  default_prompt: "Use $prepare-pr to prepare this reviewed head for a pull request."
policy:
  allow_implicit_invocation: true
```

The host prompt is launch copy only and cannot add effects, metadata,
provider, authority, dependency, or continuation.

## Exact package tree

```text
skills/prepare-pr/
├── SKILL.md
├── SPEC.md
└── agents/openai.yaml
```

No package-local reference is needed: all branch-common boundary, reviewer,
privacy, provider, publication, verification, return, and stop rules stay in
`SKILL.md`. Direct-call composition rules remain inline. There are no scripts, assets,
fixtures, templates, wrappers, required integrations, or local runtime
reference chains.

## Source basis

**SKILL-CREATOR IS PROHIBITED. DO NOT READ, INVOKE, CITE, FOLLOW, OR USE IT
FOR PRAXIS DESIGN, IMPLEMENTATION, REVIEW, OR VALIDATION.**

This contract is maintained against the plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work and routes](../../docs/concepts/work.md)
owners; the plugin-local [skill-package contract](../../docs/maintainers/skill-packages.md)
and [conformance and release contract](../../docs/maintainers/conformance-and-release.md);
and the assembled sibling [Make Tangible](../make-tangible/SPEC.md)
and [Check Safety](../check-safety/SPEC.md) contracts. These plugin-local files are
the complete maintainer source basis; the declared skill surface and package-local
direct-call rules are the complete runtime. No non-plugin material is
required to use, review, validate,
or maintain this package.

## All-package conformance baseline

1. Frontmatter, host metadata, body, contract, entry, invocation, authority,
   effects, dependencies, return, and stop agree.
2. The explicit-entry boundary is honored; model invocation never substitutes
   for a human PR request, exact remote action, or push authority.
3. The complete base-to-head snapshot is reconstructed before a
   reviewer-ready claim, and unrelated local state is preserved.
4. Title/body/template/provider/privacy and issue semantics are current and
   agree with the complete reviewed diff.
5. Reviewer aids are optional, observed, faithful, and ownership-preserving.
6. Make Tangible and Check Safety are called only at their named conditions;
   missing authority returns before Check Safety.
7. Local drafts never mutate remote state; remote create/update and push remain
   separate exact effects.
8. Push authority is exact and invalidated by a changed head; ordinary
   unchanged-head same-repository publication skips ceremonial safety while
   consequential publication gets Plan, Implementation Authorization, and
   Check Safety.
9. New PRs default to draft; existing state and non-requested metadata remain
   unchanged.
10. Remote results are reread and mismatches or transport gaps remain partial,
    not silently repaired or presented as verified success.
11. Every outcome is evidence-backed, limitation-aware, privacy-safe, and
    stops without adjacent work or persistence ceremony.

## Representative conformance cases

1. **Local-only drafting:** an explicit content request produces a title/body
   and optional aid without provider contact, metadata mutation, or push, and
   reports the exact reviewed/unpublished boundary.
2. **Explicit entry:** model selection alone does not begin; a direct human
   request for content, creation, or refresh does.
3. **Whole-diff boundary:** the title/body covers every commit from base to
   head, not the latest commit or working-tree diff.
4. **Preserved checkout:** staged, unstaged, untracked, and ignored unrelated
   state survives; no commit, rewrite, branch switch, reset, clean, or stash
   is used to prepare publication.
5. **Ambiguous or unrelated boundary:** unexpected base/head, unrelated
   commits, uncommitted required changes, materially mismatched existing
   object, or repository-policy conflict returns before publication.
6. **Reviewer model:** a small change uses adaptive prose; a broad, contract,
   operational, visual, feature, fix, or refactor diff receives only the
   context needed to judge behavior, impact, risks, migration, or review
   order, without changelog or file-inventory narration.
7. **Title convention:** repository convention wins; fallback is imperative
   Conventional Commit form and `!` appears only for a real compatibility
   break. Existing accurate title survives a cosmetic refresh.
8. **Template/provider:** required repository fields are filled without
   duplicate sections or placeholders; missing provider or target blocks
   rather than guessing.
9. **Privacy and issues:** personal/private content and secrets are omitted;
   confirmed closing issues use `Fixes`, while other relationships use a
   reference form.
10. **Reviewer aid:** a compact observed aid is included only when it reduces
    reconstruction; a non-trivial explainer calls Make Tangible once and
    preserves version, reaction, fidelity, and retention limits. Make Tangible
    may use its faithful Plannotator path for pre-publication reaction; failure
    or dismissal produces no fabricated aid or approval.
11. **Refresh semantics:** a material whole-diff change rewrites the current
    cover note while preserving truthful metadata and removing stale claims;
    a cosmetic change leaves an accurate object unchanged.
12. **Draft state:** a new object is draft by default; existing draft/ready
    state changes only on explicit request, and readiness may be recommended.
13. **Exact push authority:** creation or refresh does not authorize push;
    the announced authority names remote, branch, unchanged reviewed head,
    and effect. Decline or imprecision returns the prepared unpublished state.
14. **Changed head:** a commit appearing after review invalidates evidence and
    push authority; the complete new diff is reconstructed before asking again.
15. **Ordinary publication:** an unchanged reviewed head pushed normally to a
    named same-repository branch after exact authority verifies remote/branch/
    head, rereads the remote branch to prove the exact head, and skips Check
    Safety. An observed push failure is `failed`; uncertain remote state is
    `partial`, and neither proceeds to provider mutation.
16. **Consequential remote effect:** an unexpected/cross-repository provider
    action, protected/shared automation, secret/private data, permissions,
    material cost, force/history rewrite, or deployment coupling requires Plan
    and Implementation Authorization before Check Safety; only `proceed`
    permits that exact create/update or publication action.
17. **Remote verification:** after create/update the actual URL, title,
    base/head, draft state, and represented snapshot are reread. A mismatch
    or unreadable object is `partial` with current evidence, not a silent
    repair or verified success.
18. **Stopping:** after a drafted, unchanged, created, updated, revised,
    blocked, failed, partial, or stopped result, Prepare PR does not request
    review, merge, auto-merge, release, deploy, cleanup, or continue Delivery.

The package is accepted only when this exact three-file tree, frontmatter and
YAML parse, all plugin-local links resolve, fences and whitespace are clean,
no forbidden runtime source references exist, direct call contracts agree,
and the representative cases hold against the frozen package diff.
