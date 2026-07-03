---
name: pr
description: Use when creating, updating, preparing, reviewing, or describing a pull request, including PR title/body, issue references, test evidence, reviewer notes, and push-and-create-PR workflows.
---

# PR

Prepare a reviewable pull request.

## Required Reads

Load `praxis:verify` before claiming readiness. Load `praxis:review` when the diff deserves an adversarial pass before reviewer handoff.

## Flow

1. Confirm branch, base, worktree path, status, and commits.
2. Inspect the full diff from base.
3. Verify or name what remains unverified.
4. Write a clear title and body explaining what and why.
5. Link issues or plans.
6. Create or update the PR only when requested or repo convention expects it.

Keep PR descriptions focused on reviewer context, not a transcript of the work.

## Next Skills

Load `praxis:finish` after PR creation or update when durable state, cleanup, or handoff remains.
