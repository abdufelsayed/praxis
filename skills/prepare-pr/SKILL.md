---
name: prepare-pr
description: Draft, create, or refresh a reviewer-facing pull request title and description from the complete branch diff.
---

# Prepare PR

Write a cover note for reviewers, not a changelog, template, validation dump, or
file-by-file summary.

## Inspect the complete change

Read the current branch, worktree, target base, merge-base diff, commit list, and
existing PR when one exists. Use the user-supplied base; otherwise use the
existing PR base or remote default branch. A local writing request does not
authorize provider calls.

Create or update a remote PR only when explicitly requested. Before creating one,
ensure the intended changes are committed and the head branch can be published;
branch creation and push remain separate actions unless included in the request.

## Write for the reviewer

Use `<type>(<optional scope>): <subject>` with the same conventional types as
Commit. Describe the dominant full-branch change in an imperative subject with no
trailing period. Mark a breaking external contract with `!`.

Lead with concrete changed behavior, affected surfaces, and reviewer impact. Add
motivation, root cause, unchanged behavior, risk, migration, tradeoffs, or review
focus only when it helps. Use the smallest structure that makes the branch easier
to review.

Use reviewer aids only when they reduce reconstruction work: a compact before and
after, interface example, small diagram, screenshot note, rollout guidance, or
review order. Omit routine test plans, commands, CI logs, commit logs, exhaustive
file lists, and placeholder sections. Mention validation only when it changes risk
assessment or explains meaningful coverage.

Write around the current full diff when refreshing a PR; do not narrate the review
history. Use issue references only when verified. Keep secrets, PII, customer
names, and private ticket contents out of the message.

## Create or update only when asked

Create new PRs as drafts by default unless the requester specifies otherwise.
Update only the title and body unless other metadata is explicitly requested.
After a provider mutation, reread the PR and verify URL, title, body, base, head,
and draft state.

Do not add reviewers, labels, milestones, auto-merge, push branches, or change
release metadata by implication.
