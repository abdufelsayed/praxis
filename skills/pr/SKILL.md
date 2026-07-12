---
name: pr
description: Use when the user asks to create, update, prepare, or rewrite a pull request, including its title, body, base branch, draft status, validation evidence, risks, and reviewer guidance.
---

# PR

## Overview

Prepare a pull request that explains what reviewers cannot learn efficiently from the diff alone. Base every claim on the current branch, complete comparison diff, and fresh verification.

## Establish The Review Surface

Inspect repository instructions and pull-request templates, then determine:

- base and head branches;
- commits and full diff between them;
- uncommitted or unpushed work;
- existing pull request state;
- required checks, issue links, and draft conventions.

Use `commit` first when intended PR changes remain uncommitted. Use `verify` before calling the branch ready.

## Write For Reviewers

The title should describe one reviewable outcome. The body should explain:

1. why the change exists;
2. the behavioral or architectural change;
3. how it was verified, using exact current evidence;
4. breaking impact, migration, rollout, or known risk when relevant;
5. the area where reviewer attention is most useful.

Follow the repository template when it exists, but remove empty boilerplate. Do not turn the body into a file inventory, commit transcript, or chronological account of agent activity.

## Publish Or Update

Confirm before pushing that the remote, upstream, base, and head are correct. Create or update the pull request with the repository-preferred tool. Default to draft when required checks, review, product approval, or material verification is still missing.

After publishing, re-read the rendered title, body, base/head, draft state, and URL. Report remaining checks separately from successful PR creation.

Do not merge, force-push, or delete the working branch as part of writing the pull request unless the user explicitly asks.
