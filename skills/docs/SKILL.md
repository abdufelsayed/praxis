---
name: docs
description: Use when creating or revising READMEs, guides, reference documentation, runbooks, changelogs, release notes, or repository instructions.
---

# Docs

## Overview

Write for the reader's next action. Documentation should describe the product and repository as they are, not preserve the history of the editing session.

## Start With The Reader

Identify who will read the document and what they must be able to do afterward. Then inspect the authoritative source: manifests, scripts, configuration, tests, existing documentation, and linked external references.

Choose the right surface:

| Reader need | Document |
| --- | --- |
| First orientation and common usage | README |
| One end-to-end task | Guide or tutorial |
| Stable interfaces and options | Reference |
| Recurring operational response | Runbook |
| Standing repository rules | AGENTS.md or the repository's equivalent |
| User-visible shipped changes | Changelog or release notes |

## Write The Shortest Complete Path

1. Lead with the outcome or command the reader needs.
2. Use exact package names, paths, configuration keys, and commands.
3. Include one realistic example where syntax or sequencing is easy to misunderstand.
4. Explain failure modes at the point where the reader encounters them.
5. Link to authoritative detail instead of duplicating it.
6. Remove stale competing explanations rather than adding another version.

For repository instructions, keep root guidance repository-wide. Put local deltas near the code they govern: ownership, boundaries, commands, dependency rules, safety constraints, and a few source anchors. Do not put active task status, handoffs, or plans into standing guidance.

## Verify Documentation

Run commands and examples when practical. Check paths, package names, links, flags, API signatures, version claims, and generated output against current source. State an important verification gap instead of presenting a guess as instruction.

## Common Mistakes

- Writing a file-by-file catalog instead of the path a reader follows.
- Describing implementation history that does not affect current use.
- Copying the same configuration into several documents that will drift.
- Publishing a command that was never run.
- Adding private machine paths, secrets, temporary branches, or active-work state to committed docs.
- Creating documentation about the documentation process.
