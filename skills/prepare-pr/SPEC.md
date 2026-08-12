# PR Writer — Maintainer Contract

This is the acceptance contract for the shipping [Prepare PR skill](SKILL.md).
It is maintainer material, not runtime context, and the skill must not link to
or depend on it.

## Purpose

Prepare PR writes or refreshes one reviewer-facing GitHub pull-request title
and description from the complete current base-to-head change. It reconstructs
the reviewed boundary, selects the smallest useful cover-note shape, includes
reviewer aids only when they reduce reconstruction work, creates or updates the
explicitly requested PR with authenticated `gh`, verifies the remote result,
reports limitations, and stops.

The PR body is a cover note for reviewers. It is not a changelog, repository
template substitute, validation transcript, commit diary, or file inventory.

## Invocation, inputs, and exclusions

The package is internally reachable so ordinary-language requests to draft PR
text, open a PR, update its title or body, or prepare branch changes for review
can reach it without a magic skill name. Frontmatter and
`agents/openai.yaml` define its accepted invocation and host projection.
Loading the package alone is not authorization for a remote effect.

Inputs are the request and requested mode; repository instructions and
identity; current branch and worktree; authenticated GitHub access when remote
inspection or mutation is requested; existing PR number, URL, title, body,
base, head, and draft state when present; repository default branch; complete
base-to-head commit range and triple-dot diff; required templates; available
issue evidence; visual or contract evidence for any reviewer aid; and the
remote object after creation or update.

The package supports three modes:

- `local-draft`: return a proposed title and body without contacting GitHub or
  mutating repository state;
- `remote-create`: create one new draft PR for the current feature branch;
- `remote-update`: update the title and body of one existing PR.

It excludes commits, amendments, history rewrites, branch cleanup, merge,
review submission, reviewer assignment, discretionary labels, milestones,
auto-merge, deployment, release, tags, and metadata changes not explicitly
requested. It does not manufacture missing commits or describe uncommitted
work as if it were already part of the remote PR.

## Behavioral entry and retained ownership

Prepare PR begins only when the requester asks for local PR writing, remote PR
creation, or an update to an existing PR title or body. It owns reconstruction
of the reviewed boundary; title and body composition; issue, privacy, and
template semantics; selection of small reviewer aids; the exact requested
`gh` create or REST update; result verification; and stopping.

The requester retains product judgment, readiness choice beyond the stated
draft default, review approval, merge, release, deployment, and every metadata
or provider effect not named by the request. Repository policy retains branch,
template, base, and review requirements. Existing PR text is evidence, not the
authority for the current description.

A local writing request is read-only. A remote request authorizes only the
requested create or title/body update for the identified repository and branch
or PR. Availability of authenticated `gh` never expands that boundary.

## Invariants

1. The capability starts only for an explicit local-draft, remote-create, or
   remote-update request.
2. The current branch and worktree are inspected before any reviewer-ready
   claim.
3. Remote modes require authenticated `gh`; a local draft skips provider calls
   and provider mutation.
4. An existing PR is inspected for number, title, body, URL, base, and head.
   If none exists, first-time creation uses the repository default branch.
5. A local draft uses the base named by the requester or the repository's
   remote default without contacting GitHub merely to obtain existing PR text.
6. The complete base-to-head commit log and triple-dot diff are inspected. The
   latest commit, remembered implementation, working-tree diff, or existing PR
   body never substitutes for the full branch change.
7. Before remote creation on `main` or `master`, a feature branch is created.
   Intended PR changes must be committed before remote creation.
8. Staged, unstaged, untracked, and ignored work is preserved. Uncommitted
   required changes are reported as a boundary limitation rather than
   presented as included in the PR.
9. Ambiguous or unexpected base/head selection, unrelated commits, materially
   stale PR identity, or repository-policy conflict prevents remote mutation
   until resolved.
10. The title describes the dominant intention of the complete branch diff
    with the narrowest accurate allowed type and scope.
11. An existing title is retained only while it accurately describes the
    complete current diff. It is never refreshed from the latest commit alone.
12. The body leads with concrete changed behavior, affected surfaces, and
    reviewer impact before implementation detail.
13. Motivation, risk, tradeoffs, migration, root cause, intentionally unchanged
    behavior, measured impact, failure modes, or review order appear only when
    they materially help review.
14. The smallest useful body shape is used. A small or obvious change uses one
    concise paragraph without headings.
15. Review-feedback updates describe the resulting PR as a whole and do not
    narrate the sequence of revisions.
16. Internal prompt, workflow, capability, or process terminology is replaced
    by the concrete behavior reviewers need to understand.
17. Required repository templates are honored. Empty or unhelpful `Summary`,
    `Changes`, and `Test Plan` sections are not imposed by default.
18. Routine validation is omitted unless it changes risk assessment, proves a
    meaningful regression boundary, or explains a material readiness gap.
19. Commands, CI logs, validation dumps, commit logs, placeholders, exhaustive
    file lists, and implementation diaries are excluded from the body.
20. Customer and organization names, user emails, support-ticket contents,
    secrets, private payloads, and personal data are excluded. Sanitized
    technical behavior is used instead.
21. Issue references are used only when verified from requester input, branch
    names, commits, PR discussion, or tracker output. `Fixes` closes; `Refs`
    only links.
22. A reviewer aid is included only when a compact before/after example,
    interface sample, Mermaid diagram, screenshot or recording note, rollout
    note, compatibility note, risk note, or review order reduces reviewer
    reconstruction work.
23. Every aid is supported by observed evidence and introduced with one
    sentence telling reviewers what to notice. Decorative or fabricated aids
    are omitted.
24. New PRs are created as drafts unless the requester explicitly requests
    another state.
25. PR bodies are passed through a temporary Markdown file. New PRs use
    `gh pr create --draft --title ... --body-file ...`; existing PRs use the
    REST pull-request endpoint through `gh api` with the body file.
26. Remote update changes the title and body requested by this capability. It
    does not silently add reviewers, labels, assignees, milestones, auto-merge,
    release metadata, or another provider effect.
27. Follow-up commits trigger a title/body refresh only when they materially
    change scope, approach, breaking behavior, risk, migration, or review
    expectations. Typo-only, formatting-only, and rename-only changes do not.
28. After remote creation or update, the PR is reread and its URL, title, body,
    base, head, and draft state are compared with the intended result.
29. A provider failure or unreadable/mismatched remote result is reported
    honestly. Prose never converts it into verified success.
30. Completion stops without requesting review, merging, tagging, releasing,
    deploying, enabling auto-merge, or cleaning branches.

## Title contract

Titles use one of these forms:

```text
<type>(<scope>): <subject>
<type>: <subject>
```

Allowed types are:

| Type | Meaning |
| --- | --- |
| `feat` | New user- or developer-visible behavior. |
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
| `revert` | Reversal of an earlier change. |

The scope is the narrowest stable component that improves recognition. The
subject describes the dominant full-branch outcome, has no trailing period,
and avoids vague phrases such as `update`, `cleanup`, `misc`, `fix stuff`, and
`address feedback`.

`!` is used only when the complete branch change breaks an external contract.
The affected API, schema, payload, configuration, permission, storage, CLI, or
other external surface is then explained in the body with compatibility and
migration guidance.

## Body and reviewer-aid contract

The default body shape is:

```markdown
<What changed and what effect it has.>

<Why the approach, risk, migration, or review focus matters, if not obvious.>
```

The second paragraph is omitted when the first is sufficient. Other shapes are
selected from the actual review burden:

| Change | Required reviewer content |
| --- | --- |
| Small or obvious | One concise paragraph without headings. |
| Feature, bug fix, or refactor | Changed behavior and effect; add root cause, unchanged behavior, or non-obvious approach when useful. |
| Contract or breaking change | Affected external surface, compatibility consequence, and migration guidance. |
| Operational, visual, or workflow change | User or operator effect, measured impact, failure mode, or flow when useful. |
| Broad, generated, or cross-cutting change | Organizing principle, reason for breadth, and recommended review starting point. |

Before/after or interface examples are compact and limited to changed
contracts. Mermaid is used for async flows or state transitions only when it is
clearer than prose. Screenshot or recording notes are included only when the
evidence exists. Rollout, compatibility, risk, and review-order notes appear
only when reviewers or adopters need them.

## Create and update contract

For a new PR, the body is written to a temporary Markdown file and creation
uses:

```bash
gh pr create --draft --title '<title>' --body-file /tmp/pr-body.md
```

For an existing PR, the title and body are updated through the GitHub REST
pull-request endpoint:

```bash
gh api -X PATCH repos/{owner}/{repo}/pulls/PR_NUMBER \
  -f title='<title>' \
  -F body=@/tmp/pr-body.md
```

The exact temporary path may vary, but the body-file boundary is preserved to
avoid shell quoting loss and accidental literal newline sequences. The remote
object is reread after the command rather than trusted from the submitted
payload alone.

## Outcomes and observable return

The maintainer contract distinguishes these observable results:

- `drafted`: a local reviewer-facing title and body were returned without
  provider or repository mutation;
- `unchanged`: the existing title and body already describe the complete
  current diff and no material refresh is required;
- `created`: one draft PR was created and reread successfully;
- `updated`: one existing PR title/body was refreshed and reread successfully;
- `revised`: a fixable base, head, commit, title, template, issue, or request
  boundary needs a requester decision before remote mutation;
- `blocked`: authentication, repository policy, provider identity, or another
  required dependency prevents the requested action;
- `failed`: a required local inspection or provider command failed before
  verified completion;
- `partial`: a remote effect may have occurred but the final PR cannot be
  reread or matched; and
- `stopped`: the requester cancelled or ended the bounded action.

The observable result contains, as applicable:

```text
PR Writer Result {
  mode,
  outcome,
  repository,
  reviewed_boundary {
    base_branch,
    head_branch,
    head_commit,
    commit_range,
    full_diff,
    working_tree_limits,
  },
  title,
  body,
  reviewer_aids?,
  remote_pr {
    number?,
    url?,
    title?,
    body?,
    base?,
    head?,
    draft_state?,
  }?,
  decisive_evidence,
  remaining_state,
  limitations,
  next_decision?,
}
```

`created` and `updated` require a successful remote reread. `drafted` requires
proof that no GitHub or repository effect occurred. Other outcomes preserve
the known local and remote state and identify the missing evidence or decision.
No result implies review approval, merge, release, or deployment.

## Effects, authority, persistence, and lifetime

Local inspection and title/body drafting are read-only. A remote-create request
may create a feature branch when the current branch is `main` or `master` and
may create one draft PR through `gh`. A remote-update request may change the
title and body of one identified existing PR. These effects stay within the
explicit repository, branch, or PR boundary.

The skill does not create missing commits. If PR creation requires publication
that `gh` cannot perform within the requested operation, the limitation is
reported rather than expanded into unrelated Git actions.

Local draft text is conversational unless a named consumer persists it. The
GitHub PR is durable provider state, and GitHub remains its source of truth.
Temporary body files exist only to transport the requested text and carry no
independent record authority.

Review, merge, release, deployment, and later metadata changes require distinct
requests. They never inherit authority from a successful draft, creation, or
update.

## Composition and resources

Prepare PR has no direct skill calls, shared runtime references,
package-local references, scripts, assets, fixtures, templates, wrappers, MCP
dependencies, or hidden provider adapters. It uses the locally configured `gh`
CLI for GitHub inspection and mutation.

The package intentionally does not load Praxis Control, Make Tangible, or
Check Safety. Its focused entry, provider boundary, reviewer-writing rules,
verification, and stopping behavior are stated locally.

Repository-owned PR templates remain external inputs discovered in the target
repository; they are not copied into this package.

## Invocation and host projection

```yaml
---
name: prepare-pr
description: Create or refresh reviewer-facing PR titles and descriptions. Use when opening a PR, updating its title or body, or preparing branch changes for review.
---
```

```yaml
interface:
  display_name: "PR Writer"
  short_description: "Write or refresh reviewer-facing pull requests"
  default_prompt: "Use $prepare-pr to write or refresh this reviewer-facing pull request."
policy:
  allow_implicit_invocation: false
```

Host copy cannot add triggers, effects, provider access, metadata changes,
dependencies, or continuation. Explicit selection still requires a matching
local-writing, create, or update request before any effect.

## Exact package tree

```text
skills/prepare-pr/
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
are not runtime dependencies. The declared `SKILL.md`, configured `gh` CLI,
and host metadata are the complete executable, provider, and invocation
surfaces.

## All-package conformance baseline

1. Frontmatter, host metadata, body, contract, entry, modes, effects, results,
   and stopping behavior agree.
2. Maintainer detail remains in `SPEC.md`; the runtime skill contains only the
   instructions needed to inspect, write, create, update, and verify a PR.
3. Local drafting is read-only and skips provider calls.
4. Remote modes require authenticated `gh` and an explicit create or update
   request.
5. The complete base-to-head change is reconstructed before title/body claims.
6. Title types, full-diff semantics, privacy, issue references, templates, and
   reviewer-aid rules match the runtime contract.
7. New PRs default to draft and use a body file; updates use the REST endpoint.
8. Unrequested provider metadata remains unchanged.
9. Remote success is established by rereading the actual PR.
10. No result continues into review submission, merge, release, deployment, or
    cleanup.

## Representative conformance cases

1. **Local-only writing:** a request for title/body text produces a complete
   proposal without `gh` calls, branch creation, or provider mutation.
2. **Existing PR inspection:** an update uses the PR's actual `baseRefName`,
   current head, full commit range, and full triple-dot diff.
3. **First-time base discovery:** absence of an existing PR uses the repository
   default branch rather than guessing `main`.
4. **Feature-branch requirement:** remote creation on `main` or `master`
   creates a feature branch first; local drafting does not.
5. **Committed boundary:** uncommitted required changes are reported and never
   described as already included in the remote PR.
6. **Whole-diff title:** the dominant branch intention determines type, scope,
   and subject; the latest commit alone does not.
7. **Vague title rejection:** `update`, `cleanup`, `misc`, `fix stuff`, and
   `address feedback` are replaced with the concrete branch outcome.
8. **Small change:** one concise paragraph communicates changed behavior and
   preserved behavior without headings or a routine test log.
9. **Bug fix:** the cover note includes the corrected behavior and root cause
   only when the cause helps reviewers understand the fix.
10. **Breaking contract:** the title uses `!`; the body names the exact
    external surface, compatibility consequence, and migration.
11. **Broad change:** the body explains the organizing principle, reason for
    breadth, and where review should begin without listing every file.
12. **Review-feedback refresh:** the current complete PR is described without
    narrating the sequence of review revisions.
13. **Routine follow-up:** typo-only, formatting-only, or rename-only commits do
    not cause an otherwise accurate title/body rewrite.
14. **Issue semantics:** a verified closing relationship uses `Fixes`; a
    verified non-closing relationship uses `Refs`; unsupported issues are
    omitted.
15. **Privacy:** customer identity, organization names, emails, support text,
    secrets, and private payloads are replaced with sanitized technical
    behavior.
16. **Reviewer aid:** an observed before/after, diagram, screenshot note, or
    rollout note is included only when it reduces reconstruction and says what
    reviewers should notice.
17. **Draft creation:** a new PR is created with `--draft`, a title, and a body
    file, then reread for URL, title, body, base, head, and draft state.
18. **Existing update:** `gh api` PATCH changes title/body without adding
    reviewers, labels, milestones, auto-merge, or release metadata.
19. **Provider failure:** authentication or API failure is returned with the
    known local state and no fabricated URL or success claim.
20. **Remote mismatch:** a created or updated object that cannot be reread or
    does not match is partial, not silently repaired or called verified.
21. **Stopping:** completion does not request review, merge, tag, release,
    deployment, auto-merge, or branch cleanup.

The package is accepted only when this exact three-file tree parses, all
plugin-local links resolve, whitespace and fences are clean, runtime contains
no maintainer dependency, remote commands match the documented GitHub surface,
and the representative cases hold against the frozen package diff.
