# Commit

> **Design document — not a runtime skill.** Accepted behavioral contract and target package design; runtime implementation pending.

Commit records one intentional change in local Git history after the human asks
for it. It protects the exact requested boundary, verifies the snapshot its
message will describe, creates the commit, reports what entered history and
what remains, then stops.

Commit is never an automatic tail of Delivery, Result Acceptance, or another
Praxis capability. A completed and accepted result grants no commit, history
rewrite, push, pull-request, merge, tag, release, or deployment authority.

A normal new local commit whose boundary is clearly contained in the explicit
request is an ordinary workflow effect. It does not require an Implementation
Plan or Check Safety merely because it records local history. A history rewrite
or any commit action whose actual consequence is consequential returns to an
approved Implementation Plan and separate Implementation Authorization before
Check Safety.

## Resolve the human's intended boundary

Start from the request and the current repository state. Inspect the branch,
HEAD, staged diff, unstaged diff, untracked paths, ignored-state implications,
and repository commit conventions before constructing anything.

The working tree is evidence, not the requested boundary:

- “Commit the authentication fix” includes only the coherent authentication
  change and preserves unrelated work.
- “Commit all current changes” includes all relevant tracked and untracked
  changes after checking for secrets, generated junk, accidental files, and
  clearly unintended material.
- Ignored paths remain excluded unless the human explicitly names them and
  force-adding them is safe and intentional.

When material ambiguity remains, ask one concrete question before staging.
Never turn “commit this” into “commit whatever Git currently sees.”

## Preserve existing index state

Inspect `HEAD` to index and index to working tree separately. Existing staged
content carries no implied inclusion authority.

Construct the requested commit while preserving out-of-scope staged,
unstaged, untracked, and ignored work. Do not clear, restage, force-add, or
otherwise reorganize the user's index merely because that would simplify the
command. If the exact commit cannot be formed without disturbing existing
state, explain the conflict and stop for direction.

After staging, inspect the exact staged diff again. The proposed commit is that
snapshot, not the earlier working-tree intention.

## Keep one coherent intention

One commit represents one independently understandable and reviewable
intention. Cohesion follows purpose rather than file count or artifact type.
Implementation, tests, documentation, generated outputs, and dependency
changes may belong together when all are necessary to make one intention
complete.

When requested work contains independent intentions, recommend a concrete
commit split. If the human explicitly chooses one combined commit, include the
complete approved scope rather than silently dropping pieces to manufacture
atomic-looking history.

## Respect branch policy without inventing it

Inspect the current branch and repository policy. Warn or return before a
direct commit when branch protection, repository instructions, or the human's
stated workflow requires another branch.

Do not automatically create or switch branches merely because the current
branch is named `main` or `master`. Some repositories deliberately commit
there. Branch creation and switching change workspace state and should follow
the repository's real policy and the human's intent.

## Verify the exact snapshot

Inspect the staged diff for:

- intended scope and complete supporting changes;
- accidental files, conflict markers, generated noise, binaries, or secret
  material;
- compatibility or breaking consequences;
- message claims unsupported by the diff; and
- relevant repository checks and fresh verification.

Use current proportionate evidence for the claim the commit message will make.
Reuse fresh verification when the relevant target has not changed; repeat proof
materially affected by later edits, staging, or hooks.

Known failures or meaningful verification gaps are disclosed before committing.
Recommend correction or an explicitly concern-bearing or WIP commit rather than
turning missing proof into a confident history claim.

## Write a Conventional Commit

Follow the repository's established message convention first. When none exists,
use:

```text
<type>(<optional-scope>): <concise imperative outcome>

<why the change was needed and its consequential behavior or structure>

<optional compatibility, limitation, or required footer>
```

Use `feat`, `fix`, `refactor`, `perf`, `test`, `docs`, `build`, `ci`, `chore`,
or `revert` according to the commit's actual intention. Scope is optional and
names a stable component rather than a filename.

Write the subject in imperative present tense, capitalize it, omit the trailing
period, and keep it at 70 characters or fewer. Keep body and footer lines under
100 characters. Use the body only when rationale, previous behavior,
consequential structure, compatibility, limitations, or future interpretation
needs to survive.

For example:

```text
fix(auth): Reject revoked sessions at the API boundary

Centralize revocation enforcement in session validation so every public
endpoint observes the same behavior. Preserve existing unauthenticated
responses and refresh-token invalidation.
```

Do not write file lists, implementation narration, generic “update” subjects,
verification dumps, invented motivations, agent attribution, or invented issue
identifiers.

Never include customer or organization names, user emails, support-ticket
contents, secrets, or other personally identifiable information. Describe the
technical behavior or symptom instead.

## Use honest footers

Use `Refs <issue>` when the commit contributes to confirmed tracked work. Use
`Fixes <issue>` only when repository convention supports that footer and the
committed intention genuinely completes the issue. Never infer an identifier
from a branch name or nearby text without confirming the actual Issue.

Use `!` and `BREAKING CHANGE: <impact>` only for a real compatibility break,
and explain the concrete impact. Add other trailers only when repository policy
or established metadata requires them.

Construct subjects, paragraphs, and footers non-interactively with separate
message arguments or an equally safe mechanism. Do not embed literal `\n`
sequences or open an interactive editor that the agent cannot control
reliably.

## Honor hooks and repository checks

Run normal commit-time hooks. A hook that modifies files changes the proposed
snapshot. Reinspect the staged diff and repeat materially affected verification
before retrying.

When a hook fails, return its decisive signal to the owning work. Do not bypass
hooks merely to create the commit. `--no-verify` or an equivalent exception
requires explicit human authority for that exact bypass.

## Rewrite history only when explicitly requested

Create a new commit by default. Amend, squash, rebase, reset, or another
history rewrite requires explicit human intent for that exact operation.
Inspect the affected commit, branch, upstream or sharing state, and
recoverability. Before invoking [Check Safety](../check-safety/README.md),
return to an approved Implementation Plan and obtain separate Implementation
Authorization for the exact rewrite, target, recovery, and proof. Check Safety
then preflights the action; it never supplies the missing authority. The same
Plan -> Authorization -> Check Safety order applies to any other commit action
whose actual consequence triggers the preflight. Commit still owns the exact
snapshot, message, result, and stopping boundary.

“Commit this fix” never implies rewriting the previous commit. A cleaner
history is not authority to alter existing history.

## Verify the result and stop

After Git succeeds, inspect the created commit and current working tree. Report:

- the commit identity and subject;
- the coherent intention included;
- the decisive verification or disclosed gap;
- any hook or approved exception that materially affected the snapshot; and
- remaining staged, unstaged, untracked, or relevant ignored work.

Commit completes there. It does not push, open a pull request, tag, merge,
deploy, clean unrelated state, or continue Delivery.

## Reference influence

Sentry's
[Commit skill](https://github.com/getsentry/skills/blob/main/skills/commit/SKILL.md)
informed the fallback message limits, privacy rule, issue footers, and safe
non-interactive construction. Praxis keeps repository convention above that
fallback and does not adopt Sentry's automatic branch creation or
organization-specific type vocabulary.

## Direct dependencies

### Skills

- [Check Safety](../check-safety/README.md) — inspect an exact consequential
  commit or history-rewrite action; return `proceed`, `revise`, or `stop`;
  Commit retains snapshot, message, Git action, and stopping ownership.

### Shared references

- None.

## Target runtime package

> **Status: accepted target package design; runtime implementation pending.**
> This section is not implementation authority.

### Invocation and host projection

Commit is model-invoked so explicit natural-language requests to create,
amend, or otherwise operate on a commit load its repository-preservation rules.

```yaml
---
name: commit
description: "Commit one coherent Git snapshot. Use when the human explicitly requests creating or amending a commit, or rewriting Git history."
---
```

```yaml
interface:
  display_name: "Commit"
  short_description: "Create one exact coherent Git commit"
  default_prompt: "Use $commit to record this reviewed change as one coherent commit."
policy:
  allow_implicit_invocation: true
```

### Information hierarchy, effects, and package

`SKILL.md` keeps boundary resolution, existing-index preservation, coherence,
branch-policy discovery, exact snapshot verification, message construction,
footers, hooks, history-rewrite authority, result verification, and stopping
inline. Completion requires the resulting commit identity and post-commit
index/worktree state to match the request.

The target reference map is `None`. Commit may stage and create the exact
authorized local commit; amend, rewrite, branch, remote, or destructive effects
retain their explicit boundaries and Check Safety trigger. No script is earned
because repository conventions and native Git state are the controlling input.
Target files are exactly `SKILL.md`, `SPEC.md`, and `agents/openai.yaml`.

The existing Check Safety call is accepted. `SPEC.md` adds cases for pre-staged
user state, partial path selection, mixed intentions, repository message
policy, hook failure, privacy-sensitive text, amend versus new commit,
unauthorized rewrite, and verified post-commit state. No package decision
remains unresolved.
