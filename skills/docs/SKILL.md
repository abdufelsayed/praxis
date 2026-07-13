---
name: docs
description: Use when creating or revising READMEs, guides, reference documentation, runbooks, changelogs, release notes, or repository instructions from current source.
---

# Docs

Write for the reader's next action. Identify the reader and outcome, then inspect authoritative manifests, scripts, configuration, tests, interfaces, and existing documentation.

Choose the surface that owns the information: README for orientation, guide for an end-to-end task, reference for stable interfaces, runbook for recurring operations, repository instructions for standing local rules, and changelog or release notes for shipped user-visible change.

Lead with the usable path. Use exact names, commands, configuration keys, and one example where syntax or sequencing is easy to misunderstand. Explain important failure modes where the reader encounters them. Link authoritative detail instead of copying it, and replace stale competing explanations rather than adding another version.

Keep active task status, handoffs, and plans out of standing documentation. Put repository-wide rules at the root and local deltas near the code they govern.

Do not commit private machine paths, secrets, temporary branches, active work state, or agent coordination history. Do not create documentation about the documentation process, and do not substitute a file inventory for explaining how the system is used.

Run commands and examples when practical. Check paths, links, flags, signatures, version claims, and generated output against current source. State material verification gaps instead of turning guesses into instructions.
