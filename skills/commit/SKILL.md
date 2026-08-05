---
name: commit
description: "Commit one coherent Git snapshot. Use when the human explicitly requests creating or amending a commit, or rewriting Git history."
---

# Commit

Record one exact local Git commit or explicitly requested history operation.
Commit owns the boundary, applicable staged snapshot and message, Git action,
result, and stopping point. It never turns a result into a push, pull request,
merge, tag, release, deployment, or another Delivery activity.

## 1. Establish the boundary

Begin only when the human clearly asks to create, amend, or otherwise operate
on a commit. Read the request and current repository state together. Inspect
the current branch and repository policy, `HEAD` to index, index to working
tree, staged and unstaged diffs, untracked paths, ignored-state implications,
commit conventions, and relevant checks or hooks. Treat the working tree as
evidence, not as the requested scope.

If repository policy or the human's stated workflow requires another branch,
review path, or precondition, return that requirement before staging. Do not
create or switch branches merely because the current branch has a conventional
name, and do not commit through a discovered policy boundary.

Separate existing staged content from later work. Pre-staged content carries
no inclusion authority; preserve it when it is outside this request. This step
is complete only when the requested action, repository policy, current state,
and any boundary ambiguity are explicit.

Classify the complete requested operation and actual effects before any
staging. For a rewrite, bind its exact operation, commit or range, mode, old
and intended identity, branch, upstream or sharing state, message effect, and
credible recovery. Every amend, squash, rebase, reset, or other rewrite needs
an approved Plan for that exact action, separate current Implementation
Authorization, and a final Check Safety `proceed`, even when local recovery
appears possible. Another commit action needs the same boundaries when its
actual effect is consequential. If any required
target, ordering, mode, recovery, Plan, or authority boundary is missing,
return `revised` without changing the index or invoking Check Safety. When
those boundaries are present, defer the action-scoped preflight until the
exact staged snapshot and operation are final.

## 2. Make one coherent snapshot

For a new commit, or an explicitly scoped amend whose snapshot must change,
resolve the requested boundary before staging:

- Include only the coherent change named by the request. “Commit all current
  changes” includes relevant tracked and untracked work only after checking for
  secrets, generated junk, accidental files, and clearly unintended material.
- Stage exact paths or hunks for the requested change while preserving
  out-of-scope staged, unstaged, untracked, and ignored work. Ignored paths
  remain excluded unless the human names them and force-adding them is safe.
- If independent intentions are mixed, recommend a concrete split and wait.
  When the human explicitly requests one combined commit, include the complete
  approved scope instead of silently dropping part of it.
- If out-of-scope index content would enter the Git action and the exact
  requested snapshot cannot be formed without disturbing that state, return
  `revised` with the concrete index conflict before mutation. Do not unstage,
  restage, reset, or substitute a temporary index to force the operation.
- If the action or scope remains ambiguous, ask one concrete question and stop
  before staging. Do not clear, reset, restage, force-add, or reorganize the
  human's index to make the command easier.

Do not stage for squash, rebase, reset, or another rewrite unless the exact
authorized operation itself explicitly requires a named index effect. Inspect
the staged snapshot again after any staging. It is the proposed commit, not the
earlier intention. This step is complete only when every staged path and hunk
has one coherent purpose and every out-of-scope state remains intact.

## 3. Separate new commits from rewrites

Create a new local commit by default. Amend, squash, rebase, reset, or another
history rewrite only when the human explicitly asks for that exact operation
and Step 1 has already established its complete boundary and eligibility.
Recheck that evidence immediately before execution. Use a controllable
non-interactive form only when the request fully determines it. A cleaner
history never supplies authority.

An ordinary new local commit whose actual effect is contained in the explicit
request does not need Check Safety. For every eligible preflight identified in
Step 1, invoke [Check Safety](../check-safety/SKILL.md). Give it the
final exact staged snapshot or rewrite action, target/environment, effect,
recovery, authority, and current evidence required by its intake. Retain
ownership of staging, message, Git execution, interpretation, result, and
stopping. Check Safety returns `proceed`, `revise`, or `stop` to Commit. Commit
acts only on `proceed`; it reports `safety-revise` or `safety-stop` to the human
without executing the action. Preserve and report any authorized staging
already produced; do not reset or reorganize it to compensate for the safety
result.

Do not turn a request to push, publish, merge, tag, deploy, or clean unrelated
state into a commit operation. Return that boundary to the human or its owning
capability. This step is complete only when the action is classified as a
contained new commit, an eligible rewrite with `proceed`, or an honest
returned revise, refused, dismissed, blocked, or stop state; no commit or
rewrite executes on a non-proceed branch, and any authorized staging is
preserved and reported.

## 4. Prove the exact snapshot

Before a new commit or amend, inspect the staged diff for complete intended
scope, accidental files, conflict markers, generated noise, binaries, secrets,
compatibility or breaking consequences, and unsupported message claims. Before
another rewrite, inspect the exact commits or range, ordering, mode, intended
resulting tree and history, and any message effect instead. Resolve variables,
paths, and repository identity rather than guessing from familiar names. Run
proportionate fresh repository checks for the claims the operation will make.

Disclose a known failure or meaningful verification gap before committing. If
the human has not clearly accepted a concern-bearing or WIP commit, return the
gap and wait for that choice; otherwise make the message and return truthful
about the limitation. Never convert missing proof into a confident claim. This
step is complete only when the staged diff and fresh checks support every
message claim, or the remaining gap has an explicit concern-bearing or WIP
choice; otherwise return the gap without executing Git.

## 5. Preserve or construct the message, then execute

Choose message handling by operation. Construct a new message for a new commit.
For amend, rebase, squash, or another rewrite, preserve and reuse existing
messages by default. Change or consolidate them only when the explicit request
names that effect and determines the exact replacement; otherwise return
`revised`. Reset has no commit message step, so skip message construction.

For any new or changed message, follow the repository's established convention
first. With no convention, use a Conventional Commit type (`feat`, `fix`,
`refactor`, `perf`, `test`, `docs`, `build`, `ci`, `chore`, or `revert`) and
optional stable component scope. Write an imperative, capitalized subject of
70 characters or fewer without a period. Use a body only for rationale,
consequential behavior, compatibility, limitations, or future interpretation;
keep lines under 100 characters. Add `Refs <issue>` only for confirmed tracked
work; add `Fixes <issue>` only when repository convention and the committed
intention support closure. Use `!` and `BREAKING CHANGE:` only for a real
explained compatibility break.
Keep customer or organization names, emails, support-ticket contents, secrets,
and other personal data out of the message. Do not invent issue identifiers,
motivation, attribution, or file-list narration.

Construct the command non-interactively with separate argument values. Never
embed literal `\n` escapes or bypass a hook. Run the normal hooks Git defines
for that exact operation; reset has no commit-message or commit-time hook.
If an applicable hook fails, return its decisive signal and stop. If a hook
changes the proposed snapshot or rewrite state, re-inspect it and repeat
affected verification before any retry. `--no-verify` requires explicit
authority for that exact supported exception. This step is complete only when
the operation-specific message and hook behavior are supported and no
unsupported message, hook claim, or bypass is executed.

## 6. Verify, return, and stop

After Git succeeds, inspect the created commit or rewritten history and the
current branch, `HEAD`, affected old-to-new identity or range, upstream or
sharing state, index, working tree, untracked paths, and relevant ignored
state. Return:

```text
Commit Result {
  operation,
  commit_identity?,
  rewritten_identity_or_range?,
  subject?,
  included_intention,
  decisive_verification,
  hooks_or_approved_exception,
  remaining_work,
  limitations,
}
```

The result must identify the exact operation, resulting commit and subject or
old-to-new rewrite identity, account for every included boundary, state the
checks and any gap or hook effect, and disclose remaining staged, unstaged,
untracked, or relevant ignored work. Return `committed` only when a new commit
and post-action state were inspected. Return `rewritten` for every successful
amend, squash, rebase, reset, or other rewrite; otherwise return the actual
safety-revise, safety-stop, revised, refused, dismissed,
blocked, failed, or partial state and its evidence. Stop immediately after the
return. Do not push, open a pull request, merge, tag, release, deploy, clean,
or continue Delivery.
