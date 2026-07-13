---
name: pr
description: Use when creating, updating, preparing, or describing a pull request, including its branch state, title, body, validation, reviewer guidance, and draft or ready status.
---

# PR

Confirm the base, head, remote, upstream, branch status, commits, existing pull request, repository instructions, and template. Inspect the complete branch diff against base and identify uncommitted or unpushed work.

Use `verify` before claiming readiness and `review` when an adversarial pass materially improves reviewer confidence. A PR may remain draft when checks, product judgment, or intended commits are incomplete.

Write for reviewers: state the problem, behavioral change, current validation, material risks or migration, focused review guidance, and issue links. Follow repository conventions; when none exists, adapt [references/pr-template.md](references/pr-template.md). Do not produce a file inventory, commit transcript, agent history, or confident claim that current evidence does not support.

Push only when the remote, branch, base, and intended scope are clear. Create or update the PR through the repository-preferred tool, then re-read its URL, title, rendered body, base/head, and draft state.

Do not merge, force-push, delete branches, change unrelated metadata, or mark ready without authorization. Report the URL or draft content, state, base/head, push result, current proof, blockers, and next useful action.
