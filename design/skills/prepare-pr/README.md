# Prepare PR

> **Design document — not a runtime skill.** The accepted behavioral contract
> and target package design remain here; runtime assembly status is tracked in
> [Praxis Status](../../STATUS.md).

Prepare PR creates or updates one pull request after the human asks. It
reconstructs the exact base-to-head change, writes the smallest useful cover
note for a reviewer, preserves existing remote state, verifies the published
result, reports it, then stops.

Prepare PR is never an automatic tail of Commit, Delivery, or Result
Acceptance. A request to refresh a pull request authorizes no new commit or
push. A request to create one authorizes preparation and creation only. When
the exact reviewed head is unpublished, Prepare PR announces the exact normal
non-force push required to publish it and waits for separate human authority;
nothing broader is implied.

The named pull-request object create or update is an ordinary contained
workflow effect when the explicit request identifies that action, target, and
effect. It needs no Implementation Plan or Check Safety merely because the
object is remote, provided no additional consequential consequence appears,
but it remains an external effect and therefore requires exact human authority
for the actual action, target, and effect. Deployment coupling or another
genuine consequence returns the effect to Plan governance and Check Safety.

## Resolve the actual change boundary

Inspect the repository instructions, remote, current branch, base branch, head
branch, upstream state, existing pull request, commit range, working tree, and
complete base-to-head diff.

The pull request represents everything the target branch would receive. It is
not the latest commit, the current working-tree diff, or the change the agent
remembers making.

Return before publication when:

- the base or head is ambiguous or unexpected;
- the branch contains unrelated commits that should not enter the target;
- required changes remain uncommitted;
- the existing pull request points at a materially different boundary; or
- repository policy conflicts with the requested operation.

Preserve unrelated staged, unstaged, untracked, and ignored state. Prepare PR
does not silently commit, rewrite history, switch branches, or clean the
checkout to make the branch easier to publish.

## Write for the reviewer

Treat the body as a current cover note that reduces the reviewer's
reconstruction work. Lead with changed behavior, the affected surface, and why
the change matters. Add only the context needed to judge the full diff.

Use the smallest useful shape:

- A small obvious change may need one paragraph and no headings.
- A feature, fix, or refactor explains the behavioral effect and, when useful,
  the root cause, intentionally unchanged behavior, or non-obvious approach.
- A contract or compatibility change names the affected surface, impact, and
  migration.
- An operational, visual, or workflow change explains the observable effect
  and any consequential failure mode or measured impact.
- A broad, generated, or cross-cutting change explains why the breadth is
  necessary and where review should begin.

Do not impose `Summary`, `Changes`, or `Test Plan` sections when they do not
help. Avoid changelog prose, commit-by-commit narration, file inventories,
implementation diaries, routine command logs, and repository-template
placeholders.

## Choose an accurate title

Describe the dominant intention of the complete base-to-head diff. Follow the
repository's pull-request title convention first. Otherwise use the same
Conventional Commit form as Commit:

```text
<type>(<optional-scope>): <concise imperative outcome>
```

Use a narrow stable scope when it improves recognition. Use `!` only when the
pull request introduces a real externally relevant compatibility break, not
merely because the implementation is large.

For an existing pull request, preserve its title only while it still describes
the current whole diff. Do not retitle it from the latest commit or from one
recent revision.

## Add reviewer aids only when they reduce reconstruction

Use a compact aid when it makes a consequential part of the change materially
easier to judge:

- a before-and-after behavior or interface example;
- a small Mermaid diagram for a changed flow or ownership boundary;
- an existing screenshot, recording, or visual diff;
- a focused rollout, risk, compatibility, or review-order note.

Introduce what the reviewer should notice and how the evidence relates to the
diff. Do not add decorative diagrams, fabricate screenshots, or create visual
evidence that was never observed.

When a reviewer aid needs more than a small native Markdown diagram, invoke
[Make Tangible](../make-tangible/README.md) for one bounded PR explainer.
Prepare PR owns the reviewer question and whether the aid belongs in the pull
request; Make Tangible owns construction and fidelity. If the human needs to
react before publication, Make Tangible may present the verified aid through
[Plannotator](../plannotator/README.md).

## Report verification proportionately

A pull-request body is not a validation log. Omit routine commands, CI
transcripts, and exhaustive checklists when they add no useful judgment.

Include concise verification when it:

- proves a non-obvious behavioral contract;
- explains meaningful regression coverage;
- changes the risk or readiness judgment; or
- exposes a material verification gap.

Link decisive existing evidence when that is more useful than paraphrasing it.
Never claim a check, environment, screenshot, or result that was not actually
observed.

## Refresh existing pull requests as current truth

When the branch changes materially, rewrite the title and body as one current
cover note. Preserve truthful human-authored context, required metadata, issue
links, reviewer guidance, and still-valid operational notes. Revise or remove
stale claims.

Refresh only when scope, behavior, approach, compatibility, risk, migration,
verification, or review expectations changed materially. Skip churn for
cosmetic edits that leave the cover note accurate.

Do not turn the body into a revision diary. Git and the provider already retain
the history; reviewers need the present change.

## Protect privacy and issue semantics

Exclude customer or organization names, user emails, support-ticket contents,
secrets, private payloads, and other personally identifiable information.
Describe the sanitized technical behavior or symptom instead.

Use issue references only after confirming the identifier and relationship.
Use `Fixes <issue>` only when merging the pull request genuinely closes that
work under repository convention; otherwise use `Refs <issue>` or the
provider's equivalent.

## Respect templates, providers, and remote metadata

Use repository pull-request instructions, required template fields, and the
provider's native API or tool. Fit the adaptive cover note into required fields
without duplicating sections or leaving placeholders. When no template is
required, use adaptive prose rather than inventing one.

For a new pull request, create it as a draft unless the human explicitly asks
for ready-for-review state. When current evidence supports readiness,
recommend marking it ready. For an existing pull request, preserve its current
draft or ready state unless the human asks to change it.

Do not request reviewers, assign people, add discretionary labels, set a
milestone, enable auto-merge, trigger deployment, or change other social or
release metadata unless the human explicitly requests that action or
repository automation owns it. Preserve valid existing metadata while
updating the cover note.

## Publish only the exact reviewed head

Creating or updating a pull request may require publishing its head branch,
but the request to create or refresh the pull request does not authorize that
push. When the exact reviewed head is unpublished, announce the exact action,
remote, branch, and effect: one normal non-force push of that reviewed head.
Wait for a separate ordinary-language human instruction that names the exact
push, remote, branch, reviewed head, and publication effect—or an equally
precise action—before publishing it. If the human declines or does not provide
that authority, return the prepared request and exact unpublished state without
publishing it, then stop.

After the human grants that exact authority, invoke
[Check Safety](../check-safety/README.md) only when the actual push consequence
triggers the preflight. A normal non-force push of the unchanged reviewed head
to the named same-repository branch is not inherently Check-Safety-triggering:
verify the named remote, branch, and current head, prove the reviewed head is
unchanged, and publish under the separate exact push authority without a
ceremonial preflight. Check Safety returns one scoped result when a genuine
consequence requires it:

- `proceed` permits publishing the unchanged reviewed head;
- `revise` returns the changed boundary or evidence that must be corrected
  before another preflight; and
- `stop` prevents publication and returns the safe current state and reason.

Prepare PR retains reviewed-head, publication, and stopping ownership. It does
not treat the Check Safety result as a gate, authority source, or continuation
of another workflow.

The push authority covers only the exact reviewed head, named remote, and named
branch current when the human grants it. It does not authorize:

- pushing another branch or tag;
- force-pushing or rewriting history;
- publishing additional commits that appeared after review;
- changing the base branch;
- cross-repository publication; or
- pushing merely because a title or body refresh was requested.

A changed head invalidates both the reviewed snapshot and any prior push
authority. Reinspect the complete base-to-head diff and affected evidence,
then request exact authority for the newly reviewed head before publishing it.
Force, history rewrite, a protected or shared target, an unexpected remote,
cross-repository publication, secret handling, deployment coupling, or another
actual consequential variation requires an approved Implementation Plan and
separate Implementation Authorization before its proportionate Check Safety
preflight. Prepare PR retains the reviewed PR boundary, publication result,
and stopping.

## Verify the remote result and stop

After creating or updating the pull request, reread the actual remote object
and report:

- its URL and title;
- base and head branches;
- draft or ready state;
- the branch snapshot it represents;
- decisive verification and material gaps; and
- any remaining local or unpublished state.

Prepare PR completes there. It does not request review, merge, enable
auto-merge, tag, release, deploy, clean branches, alter unrelated metadata, or
continue Delivery.

## Reference influence

Sentry's
[PR Writer skill](https://github.com/getsentry/skills/blob/main/skills/pr-writer/SKILL.md)
informed the reviewer-cover-note model, adaptive body shapes, current-whole-diff
refresh, conditional reviewer aids, and privacy guidance. Praxis adds explicit
authority, explicit push requests, draft-state, metadata, provider,
verification, and stopping boundaries.

## Direct dependencies

### Skills

- [Make Tangible](../make-tangible/README.md) — construct and verify a
  non-trivial reviewer explainer; return the artifact, reaction, and fidelity
  limits; Prepare PR retains reviewer communication and publication.
- [Check Safety](../check-safety/README.md) — preflight a remote metadata or
  publication effect only when its actual consequence triggers the check;
  return `proceed`, `revise`, or `stop`; Prepare PR retains the reviewed-head,
  publication, and stopping boundary. A normal unchanged-head same-repository
  push remains ordinary after separate exact push authority and verification.

### Shared references

- None.

## Target runtime package


### Invocation and host projection

Prepare PR is model-invoked for explicit natural-language requests to prepare,
create, or refresh a pull or merge request and never treats a local result as
publication authority.

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

### Information hierarchy, effects, and package

`SKILL.md` keeps boundary reconstruction, reviewer model, title and body
selection, conditional aids, verification reporting, refresh semantics,
privacy, provider and template rules, exact-head publication, remote
verification, and stopping inline. Completion requires remote title, body,
base, head, draft state, and URL to match the authorized reviewed state.

The target reference map is `None`. Local drafting is ordinary; push, remote
creation, metadata updates, and publication require their exact request and
applicable safety check. Provider-native tools remain runtime choices, so no
wrapper script or required integration is declared. Target files are exactly
`SKILL.md`, `SPEC.md`, and `agents/openai.yaml`.

Prepare PR invokes Make Tangible and Check Safety only at the decision points
described above. `SPEC.md` adds cases for local-only drafting, stale head,
whole-diff refresh, repository template, privacy-sensitive metadata, optional
explainer, same-repository unchanged-head push, fork or changed-head
publication, draft state, remote mismatch, and missing provider access. No
package decision remains unresolved.
