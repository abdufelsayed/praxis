# Commit — Maintainer Contract

## Purpose

Commit records one intentional local Git commit or exact requested history
rewrite after an explicit human request. It resolves the boundary, preserves
unrelated repository state, verifies the staged snapshot or rewrite target,
preserves or constructs the applicable message, executes the exact Git path,
verifies the result, reports remaining work, and stops. It does not publish or
continue another workflow.

## Invocation, inputs, and exclusions

The skill is model-invoked so an explicit natural-language request to create,
amend, or otherwise operate on a commit can reach its repository-preservation
rules. Its accepted invocation and host projection are the `commit` frontmatter
and `agents/openai.yaml` metadata.

Inputs are the human's explicit commit request; current branch and repository
policy; HEAD, index, working-tree, untracked, and ignored state; the intended
paths, hunks, or all-current boundary; commit conventions; relevant checks and
hooks; and, for an eligible rewrite or consequential commit action, the
approved Plan, exact Implementation Authorization, recovery, and current
safety evidence. An amend, squash, rebase, reset, or other rewrite additionally
names its exact operation, affected commit or range, mode, intended identity,
sharing state, and recovery boundary.

Commit begins only from an explicit request. It excludes push, pull, fetch,
merge, tag, release, deployment, pull-request publication, unrelated cleanup,
and any mutation outside the requested commit or rewrite boundary. A normal
new local commit does not require Check Safety merely because it changes local
history. Every explicit amend, squash, rebase, reset, or other history rewrite
follows the Plan, Implementation Authorization, and Check Safety order defined
below, even when local recovery appears possible. Another commit action whose
actual consequence is consequential follows the same order.

## Behavioral entry and ownership

The human names the commit operation in ordinary language; a magic skill name
is unnecessary. Model invocation may load this package but never satisfies
that behavioral entry. Commit owns boundary resolution, staging choices,
snapshot verification, message construction, the Git commit action, result
interpretation, and stopping. It does not inherit authority from an approval,
accepted result, nearby staged content, or another skill.

Before staging, Commit reconstructs the request against current repository
state and distinguishes HEAD-to-index from index-to-working-tree changes. It
preserves out-of-scope staged, unstaged, untracked, and ignored state. The
proposed staged snapshot is the authoritative input to message claims and the
Git action.

## Invariants

1. The capability begins only for an explicit create, amend, or other commit
   request and acts on one current repository boundary.
2. Branch policy and the current branch are inspected; no branch is created or
   switched merely because the branch has a conventional name.
3. Existing staged content carries no inclusion authority. HEAD-to-index and
   index-to-working-tree state are inspected separately.
4. A commit contains one coherent intention. Mixed independent intentions are
   split or explicitly combined by the human; Commit never silently drops
   approved scope to manufacture atomic history.
5. Exact paths or hunks are staged without clearing, resetting, force-adding,
   reorganizing, or substituting a temporary index for out-of-scope index and
   worktree state. If exact preservation is impossible, return `revised`
   before mutation with the concrete conflict.
6. “All current changes” includes relevant tracked and untracked material only
   after inspection for secrets, generated junk, accidental files, and
   unintended content; ignored paths stay excluded unless explicitly named and
   safely force-added.
7. An amend, squash, rebase, reset, or other rewrite occurs only when
   explicitly requested and after its operation, exact commit or range, mode,
   old and intended new identity, branch, sharing state, and recovery are
   inspected. Ambiguous interactive choices return before mutation.
8. Every operation and actual effect is classified before staging. An explicit
   rewrite has approved Plan coverage, separate exact Implementation
   Authorization before staging, then a current Check Safety `proceed` result
   for the final exact staged snapshot or action before execution, even when
   local recovery appears possible. Another commit action needs those
   boundaries when consequential. Missing Plan or authority returns `revise`
   before the call or index mutation.
9. Check Safety is invoked only for the one exact eligible action; Commit
   retains staging, message, execution, interpretation, and stopping ownership.
   A `revise` or `stop` preserves and reports authorized staging already made.
10. The staged diff is checked for scope, accidental files, conflict markers,
    generated noise, binaries, secrets, compatibility consequences, and
    unsupported message claims before execution.
11. Proportionate fresh checks support the claims made by the commit. Known
    failures or meaningful gaps are disclosed and require an explicitly
    concern-bearing or WIP interpretation when they remain.
12. Repository message convention outranks the fallback. Fallback messages
    are imperative, capitalized, concise, privacy-safe, and use only confirmed
    issue footers or explained compatibility markers.
13. Rewrites preserve and reuse existing messages unless the human explicitly
    determines a replacement or consolidation; reset has no message step.
    Commit never invents issue identifiers, motivation, or attribution.
14. Git's normal hooks for the exact operation run. Reset has no commit-message
    or commit-time hook. A hook failure is returned without bypass; a hook
    mutation changes the proposed state and requires fresh inspection and
    affected verification before retry.
15. Post-action verification identifies the created commit or exact old-to-new
    rewritten range and current branch, `HEAD`, upstream or sharing state,
    index, worktree, untracked paths, and relevant ignored state.
16. Completion returns evidence, limitations, and remaining work, then stops
    without push, publication, merge, tag, release, deployment, cleanup, or
    another Delivery activity.

## Outcomes and observable return

The package exposes these states without collapsing them:

- `committed`: one new exact requested snapshot was created and the commit and
  post-commit repository state were inspected;
- `rewritten`: the exact explicitly requested amend, squash, rebase, reset, or
  other rewrite completed and its old-to-new identity plus post-action state
  were inspected;
- `revised`: the boundary, branch policy, message, verification, recovery, or
  other fixable input needs a human decision before staging or execution;
- `safety-revise`: an eligible consequential action has a fixable target,
  authority, recovery, evidence, or mitigation gap returned by Check Safety;
- `safety-stop`: Check Safety found the action outside authority, materially
  unsafe, insufficiently bounded, or knowingly irreversible without accepted
  loss;
- `refused`: the request is outside Commit's boundary, violates discovered
  repository policy, or names an adjacent operation that another capability
  owns, so no action was taken;
- `dismissed`: the human cancels the operation or declines the required split,
  WIP, boundary, or safety choice before Git execution;
- `blocked`: a required human choice, repository policy, hook result, or
  unresolved state prevents an honest commit and no action was taken;
- `failed`: Git or a required repository check failed, with the decisive
  command result and current state returned; and
- `partial`: a commit or hook changed state but complete post-commit proof or
  requested coverage cannot yet be established; current identity, state, and
  missing evidence are returned without adjacent repair.

Every return identifies the requested or attempted action, exact target or
boundary, included intention, evidence, message or message limitation,
authority and safety result when applicable, hook result, current repository
state, remaining work, and the next human decision when one is needed.

## Effects, authority, persistence, and lifetime

For a normal new local commit, effects are limited to staging the exact
authorized local paths or hunks, running normal repository checks and hooks,
creating one local commit, and reading the resulting state. An explicit
request to commit a named coherent local change may carry authority for those
contained effects; it grants no authority for adjacent Git or external
operations.

Staging is reversible local preparation but still follows the requested
boundary. Existing index and worktree content outside that boundary is
preserved. Ignored content is not included without an explicit safe request.

Every explicit amend, squash, rebase, reset, or other rewrite, or another
commit action with a consequential actual effect, requires an approved Plan
with exact operation, target or range, effect, recovery, and proof, separate
current Implementation Authorization, and Check Safety preflight. Check Safety
returns a scoped `proceed`, `revise`, or `stop` judgment to Commit; it never
grants authority or performs the action. Commit does not invoke it for an
ordinary contained new local commit or a known-missing boundary, and it never uses a
stale or nearby grant.

The commit message is part of the action's observable snapshot. A message may
contain rationale or limitations but never secrets or personal data. Hook
exceptions are not bypassed without exact human authority for `--no-verify`.

Results are conversational by default. Persist no receipt, ledger, staging
manifest, commit index, or generic history file. Git, repository records, and
the returned commit identity are the durable sources. A caller may promote
the narrow learning or limitation into its owning Plan, Issue, or delivery
record when a named future consumer needs it.

## Composition and resources

Direct calls carry the callee's required brief and preserve its exact return: one complete
brief, lossless returns, and no authority transfer. Each callee's own contract
owns its intake fields and outcome names. Commit's caller policy is:

### Direct skills

| Target | Trigger | Return | Retained ownership |
| --- | --- | --- | --- |
| [Check Safety](../check-safety/SPEC.md) | Every explicit history rewrite, or another commit action with a consequential actual effect, once approved Plan coverage plus exact current authority make the one exact preflight eligible. | Preserve its exact `proceed`, `revise`, or `stop` result, evidence, and limitations; a missing boundary remains Commit's caller-owned short circuit. | Commit retains exact staging, message, Git action, interpretation, result, and stopping. |

Commit does not declare transitive dependencies. It has no package-local
runtime references, scripts, assets, fixtures, templates, host hooks, wrappers,
MCP dependency, or automatic context-improvement integration. Direct-call
composition rules stay inline in `SKILL.md` and `SPEC.md`. Its required tree is exactly `SKILL.md`, `SPEC.md`,
and `agents/openai.yaml`.

## Invocation and host projection

Frontmatter and host metadata are model-invoked and agree on one capability,
its explicit commit branches, and no additional authority:

```yaml
---
name: commit
description: "Commit one coherent Git snapshot. Use when the human explicitly requests creating or amending a commit, or rewriting Git history."
---
```

```yaml
interface:
  display_name: "Commit"
  short_description: "Record one exact Git commit or history operation"
  default_prompt: "Use $commit for this explicitly requested commit or history operation."
policy:
  allow_implicit_invocation: true
```

The host prompt is launch copy only. It cannot add triggers, effects,
dependencies, message policy, or continuation.

## Source basis

**SKILL-CREATOR IS PROHIBITED. DO NOT READ, INVOKE, CITE, FOLLOW, OR USE IT FOR
PRAXIS DESIGN, IMPLEMENTATION, REVIEW, OR VALIDATION.**

This contract is maintained against the plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work and routes](../../docs/concepts/work.md)
owners. Its package projection follows the [skill-package contract](../../docs/maintainers/skill-packages.md)
and [conformance and release contract](../../docs/maintainers/conformance-and-release.md).
Its direct safety composition is the assembled [Check Safety](../check-safety/SPEC.md)
package, composed through its caller-local direct-call rules. These plugin-local
files are the complete maintainer source basis; the declared skill surface and
package-local runtime references are the complete runtime. No non-plugin material is
required to use, review, validate, or maintain this package.

## All-package conformance baseline

1. Explicit natural-language commit requests reach this model-invoked package;
   model selection alone never begins a commit.
2. Branch, HEAD-to-index, index-to-worktree, untracked, ignored, policy,
   convention, and hook state are inspected before staging.
3. Existing out-of-scope staged, unstaged, untracked, and ignored work remains
   untouched; no broad `git add .`, reset, clear, or force-add is implied.
4. The exact staged snapshot contains one coherent intention, or an explicit
   human choice combines independently understandable intentions.
5. Ambiguous scope or missing branch policy returns before staging; ignored
   paths remain excluded unless explicitly and safely named.
6. A new contained local commit avoids ceremonial Check Safety. Every explicit
   rewrite, even when local recovery appears possible, and any other
   consequential commit action, cannot pass without Plan coverage and separate
   exact authorization established before staging, then Check Safety `proceed`
   on the final exact staged snapshot or action.
7. A Check Safety `revise` or `stop` or failed applicable hook is returned
   honestly and never bypassed or called success. A human-accepted
   concern-bearing or WIP gap may still produce the exact Git-operation outcome
   with an explicit limitation, but never a clean-proof claim.
8. Message claims, privacy, subject limits, body limits, footers, amendment
   preservation, and compatibility markers follow repository convention or the
   stated fallback.
9. A successful commit is re-read from Git and the remaining repository state
   is reported; no adjacent Git, publication, or Delivery work follows.

## Package-specific conformance cases

1. **Explicit entry:** a direct request to commit one named local fix begins;
   a status-only or route recommendation does not.
2. **Pre-staged preservation:** unrelated staged content remains staged while
   the requested paths are added and committed; the result reports both the
   commit and remaining index state.
3. **Index conflict:** when the requested snapshot cannot be executed without
   including or disturbing out-of-scope staged content, return `revised`
   before mutation; do not unstage, restage, reset, or use a temporary index.
4. **Partial boundary:** a request naming one path or hunk does not include
   neighboring edits, ignored files, generated output, or unrelated untracked
   paths.
5. **All-current boundary:** “commit all current changes” inspects and
   includes relevant tracked and untracked work, flags secrets or generated
   junk, and leaves clearly unrelated ignored material out unless explicitly
   named.
6. **Mixed intention:** independent changes produce a concrete split
   recommendation; explicit combined authority includes the complete approved
   set without silent omission.
7. **Branch policy:** repository instructions requiring another branch or
   review path are surfaced; a conventional branch name alone does not cause
   creation or switching.
8. **Rewrite distinction:** before staging, an explicit amend, squash, rebase,
   or reset binds its exact operation, commit or range, mode, old and intended
   identity, sharing state, and recovery; ambiguous choices or missing Plan or
   exact authorization return `revise` before Check Safety and Git changes.
9. **Safety ownership:** every fully bounded explicit history rewrite calls
   Check Safety for the
   final exact staged snapshot or action; `proceed` returns to Commit, while `revise`
   and `stop` execute no rewrite, preserve any authorized staging, and report
   it explicitly.
10. **Snapshot proof:** conflict markers, accidental files, secrets, generated
   noise, binary surprises, unsupported message claims, or failed required
   checks block or qualify the commit rather than being hidden.
11. **Message fallback:** with no repository convention, the subject is
    imperative, capitalized, <=70 characters, and privacy-safe; body, issue,
    and breaking-change metadata are added only when supported.
12. **Rewrite messages:** amend, rebase, squash, and other rewrites preserve or
    reuse existing messages unless the human determines an exact replacement;
    reset skips message construction.
13. **Hook behavior:** normal hooks for the exact operation run; reset has no
    commit-message or commit-time hook. A failure returns its signal without an
    unauthorized bypass, and a hook mutation forces state reinspection and
    affected verification before retry.
14. **Post-action proof:** a successful new commit returns `committed` with its
    identity and subject; amend, squash, rebase, reset, or another rewrite
    returns `rewritten` with the exact old-to-new identity or range. Both return
    included intention, checks, applicable hook
    result, sharing state, limitations, and all remaining staged, unstaged,
    untracked, or relevant ignored work.
15. **Ambiguous rewrite:** an unknown target, range, mode, recovery, Plan, or
    exact authority returns before staging and leaves the index unchanged.
16. **Stopping:** after the result, Commit performs no push, PR, merge, tag,
    release, deployment, cleanup, or next Delivery activity.
