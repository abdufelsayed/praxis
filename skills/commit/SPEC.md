# Commit — Maintainer Contract

This is the acceptance contract for the shipping [Commit skill](SKILL.md). It
is maintainer material, not runtime context, and the skill must not link to or
depend on it.

## Purpose

Commit drafts a Sentry-style Conventional Commit message or records one
intentional, coherent local Git snapshot. It inspects the repository boundary,
protects unrelated work, selects or validates the branch, constructs the
message from the actual change, runs applicable checks and hooks, verifies the
result, reports remaining state, and stops.

Commit does not own history rewriting, publication, pull-request creation,
merge, release, deployment, or unrelated repository cleanup. Those operations
are not implied by a request to draft or create a commit.

## Invocation, inputs, and exclusions

The package is internally reachable so ordinary-language requests to draft a
commit message or commit changes can reach it without requiring a magic skill
name. Frontmatter and `agents/openai.yaml` define its accepted invocation and
host projection. Loading the package alone is not authorization for a Git
effect.

Inputs are the requester's exact drafting or commit request; repository policy;
current branch and `HEAD`; staged, unstaged, untracked, and relevant ignored
state; the intended paths or hunks; the complete staged snapshot before commit;
available issue identifiers; applicable verification; normal hooks; and the
repository state after execution.

The package supports two modes:

- `message-draft`: inspect the relevant change and return a proposed message
  without staging, creating a branch, or committing;
- `create-commit`: create one local commit for the explicitly requested
  coherent change.

It excludes amend, squash, rebase, reset, filter operations, or any other
history rewrite; push, fetch, pull, tag, merge, pull-request publication,
release, and deployment; hook bypass without an exact request; and mutation or
cleanup outside the requested snapshot.

## Behavioral entry and retained ownership

Commit begins only when the requester asks to draft a commit message or create
a commit. It owns inspection of the commit boundary, branch handling required
by the stated fallback, staging choices for the requested snapshot, message
construction, the local `git commit` action, applicable verification, result
inspection, and stopping.

The requester retains scope and product intent. Repository policy retains
branch, message, hook, and verification requirements. Existing staged content,
the current worktree, earlier approval, or availability of Git never expands
the requested boundary.

A message-only request is always read-only. A create request authorizes only
the local preparation and commit effects stated by this contract. It supplies
no authority for adjacent Git or provider operations.

## Invariants

1. The capability starts only for a message-drafting or commit-creation
   request.
2. The current branch, status, staged diff, unstaged diff, and relevant
   untracked paths are inspected before message construction or staging.
3. A message-only request performs no branch creation, staging, index change,
   hook execution, or commit.
4. Before creating a commit on `main` or `master`, a feature branch is created
   unless the requester explicitly asks for a direct commit. The branch is
   rechecked, and the operation stops if it remains on `main` or `master`
   without that exception.
5. Repository instructions may impose a stronger protected-branch or naming
   rule. The fallback never overrides discovered repository policy.
6. One commit contains one coherent, independently reviewable intention.
   Independent changes are split or returned for a scope decision rather than
   silently combined.
7. Staged, unstaged, untracked, and ignored work outside the request is
   preserved. Working-tree presence alone gives no inclusion authority.
8. Existing unrelated staged content is never silently committed, unstaged,
   reset, restaged, or otherwise reorganized. If it prevents formation of the
   requested snapshot, the concrete conflict is returned before commit.
9. Only the intended paths or hunks are staged. Broad staging is not used to
   hide an unresolved mixed-worktree boundary.
10. The final staged diff and status are reread after staging and before
    message construction or execution.
11. The staged snapshot is checked for incomplete scope, accidental files,
    conflict markers, generated noise, binaries, secrets, personal data, and
    unsupported message claims.
12. Verification is proportionate to the behavior claimed by the commit.
    Known failures or material gaps are disclosed rather than converted into
    a clean result.
13. The message follows the Sentry-style fallback defined below unless a
    stronger repository policy applies.
14. Issue and breaking-change footers are included only when supported by the
    request or repository evidence. Identifiers and closure semantics are
    never invented.
15. Commit messages exclude customer and organization names, user emails,
    support-ticket contents, secrets, private payloads, and other personal
    data. The technical symptom is used instead.
16. Paragraphs and footers are passed as separate `-m` arguments. Literal
    `\n` sequences and interactive editors are not used.
17. Normal hooks run. A hook is bypassed only after an explicit request for
    that exact exception. A hook-mutated snapshot is reinspected and affected
    checks are rerun before retry.
18. Success is read back from Git. The returned result identifies the commit
    hash and subject, checks, hook outcome when material, and remaining staged,
    unstaged, or untracked work.
19. Completion stops without amend, rewrite, push, pull request, merge, tag,
    release, deployment, or cleanup.

## Message contract

The fallback form is:

```text
<type>(<scope>): <subject>

<optional body>

<optional footer>
```

Scope is optional. A breaking change places `!` before `:` and includes
`BREAKING CHANGE: <impact>` as a footer. Subjects are imperative, present
tense, capitalized, no longer than 70 characters, and have no trailing period.
Every line is shorter than 100 characters.

Allowed types are:

| Type | Meaning |
| --- | --- |
| `feat` | New behavior or capability. |
| `fix` | Corrected behavior. |
| `ref` | Refactoring without behavior changes. |
| `perf` | Performance improvement. |
| `docs` | Documentation change. |
| `test` | Test-only change. |
| `build` | Build-system or dependency change. |
| `ci` | Continuous-integration change. |
| `chore` | Maintenance outside the more specific types. |
| `style` | Formatting without logic changes. |
| `meta` | Repository metadata. |
| `license` | License text or metadata. |
| `revert` | Reversal of an earlier commit. |

The body is optional. It explains what changed and why when previous behavior,
motivation, compatibility, risk, or another non-obvious consequence helps a
future reader. It is not a file inventory or implementation diary.

`Fixes <issue>` closes the verified issue when merged. `Refs <issue>` records a
verified relationship without closure. No footer is added when no supported
issue or compatibility consequence exists.

## Outcomes and observable return

The maintainer contract distinguishes these observable results:

- `drafted`: a proposed subject, body, and footers were returned without Git
  effects;
- `committed`: one local commit was created, read back, and matched the
  requested snapshot;
- `revised`: a fixable scope, branch, message, issue, verification, or staged
  boundary requires a requester decision before commit;
- `blocked`: repository policy, protected state, or an unresolvable index
  boundary prevents an honest commit;
- `failed`: a required check, hook, or Git command failed before verified
  completion;
- `partial`: Git or a hook changed state but the exact requested result cannot
  yet be verified; and
- `stopped`: the requester cancelled or ended the operation before commit.

The observable result contains, as applicable:

```text
Commit Result {
  mode,
  outcome,
  branch,
  intended_snapshot,
  subject,
  body?,
  footers?,
  commit_hash?,
  decisive_checks,
  hook_result?,
  remaining_repository_state,
  limitations,
  next_decision?,
}
```

`committed` requires an inspected Git object and post-commit status. `drafted`
requires proof that no Git effect occurred. Other results preserve the current
repository state and name the missing evidence or decision. No outcome implies
publication or acceptance of another activity.

## Effects, authority, persistence, and lifetime

Read-only inspection and message drafting are local transient effects. A
create request may create a feature branch under the `main`/`master` fallback,
stage the exact requested paths or hunks, run checks and hooks, and create one
local commit. These effects remain limited to the named repository and
requested coherent snapshot.

The Git commit and any feature branch are durable repository state. The
returned message draft is conversational unless another named consumer stores
it. Git remains the source of truth for the created commit and repository
state.

Amendment, history rewriting, push, and provider mutation require distinct
requests and owners. They never inherit authority from a successful draft or
commit.

## Composition and resources

Commit has no direct skill calls, shared runtime references, package-local
references, scripts, assets, fixtures, templates, wrappers, MCP dependencies,
or provider integrations. All executable instructions are contained in
`SKILL.md`.

The package intentionally does not load Praxis Control. Its focused entry,
effects, preservation rules, verification, and stopping boundary are stated
locally without inquiry machinery.

## Invocation and host projection

```yaml
---
name: commit
description: Use for every request to commit changes or draft a commit message. Creates Sentry-style conventional commits with issue references.
---
```

```yaml
interface:
  display_name: "Commit"
  short_description: "Draft or create one coherent Git commit"
  default_prompt: "Use $commit to draft or create this coherent commit."
policy:
  allow_implicit_invocation: false
```

Host copy cannot add triggers, effects, message policy, dependencies, or
continuation. Explicit selection still requires a matching drafting or commit
request before any effect.

## Exact package tree

```text
skills/commit/
├── SKILL.md
├── SPEC.md
└── agents/openai.yaml
```

The package has no optional runtime directories or generated artifacts.

## Source basis

This contract is maintained against the plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work and routes](../../docs/concepts/work.md)
documents; the [skill-package contract](../../docs/maintainers/skill-packages.md);
and the [conformance and release contract](../../docs/maintainers/conformance-and-release.md).

Those documents explain package maintenance and neighboring architecture; they
are not runtime dependencies. The declared `SKILL.md` and host metadata are the
complete executable and invocation surfaces.

## All-package conformance baseline

1. Frontmatter, host metadata, body, contract, entry, effects, results, and
   stopping behavior agree.
2. Maintainer detail remains in `SPEC.md`; the runtime skill contains only the
   instructions required to draft or create a commit.
3. Message-only behavior is read-only and cannot fall through to branch or
   index mutation.
4. Branch policy and `main`/`master` fallback are checked before commit.
5. Mixed repository state is inspected and unrelated work remains intact.
6. The staged snapshot and message claims agree before Git execution.
7. Message types, subject limits, line limits, privacy, issue semantics, and
   breaking-change semantics match the stated fallback.
8. Hooks and relevant checks run without an unauthorized bypass.
9. A successful commit is read from Git and remaining state is reported.
10. No result continues into history rewriting, publication, review, or
    Delivery work.

## Representative conformance cases

1. **Message-only request:** a diff produces a compliant proposed message; the
   branch, index, worktree, and `HEAD` remain unchanged.
2. **Feature-branch fallback:** a commit request on `main` creates and verifies
   a feature branch before staging; explicit direct-commit direction suppresses
   only that fallback.
3. **Repository branch policy:** a stronger local branch rule wins over the
   generic `main`/`master` behavior.
4. **Coherent snapshot:** one independently reviewable intention is committed;
   independent work is split or returned for a decision.
5. **Pre-staged preservation:** related staged content may be included when it
   belongs to the request; unrelated staged content is preserved or causes a
   concrete conflict before commit.
6. **Partial-path request:** only the requested paths or hunks are staged;
   neighboring changes and unrelated untracked files remain outside the
   snapshot.
7. **Secret or personal data:** accidental sensitive content blocks the commit
   or is removed from the supported snapshot and message before execution.
8. **Type selection:** behavior-preserving refactoring uses `ref`; formatting
   without logic uses `style`; repository metadata uses `meta`.
9. **Issue semantics:** verified closing work uses `Fixes`; a contextual
   relationship uses `Refs`; unsupported identifiers are omitted.
10. **Breaking change:** `!` and `BREAKING CHANGE:` appear together only when
    the staged change actually breaks an external contract.
11. **Paragraph construction:** subject, body, and footer use separate `-m`
    arguments and contain no literal newline escapes.
12. **Hook mutation:** the changed staged snapshot is reread and affected
    verification reruns before any retry.
13. **Hook failure:** the failure and current repository state are reported;
    `--no-verify` is not inferred.
14. **Verified success:** the returned hash and subject come from the resulting
    Git object, and remaining work comes from post-commit status.
15. **Stopping:** completion performs no amend, rewrite, push, PR creation,
    merge, release, deployment, or cleanup.

The package is accepted only when this exact three-file tree parses, all
plugin-local links resolve, whitespace and fences are clean, runtime contains
no maintainer dependency, and the representative cases hold against the
frozen package diff.
