---
name: coordinate-program
description: Use when a long-running engineering initiative spans multiple issues, plans, branches, sessions, or uncertain workstreams and needs one durable source of current direction.
---

# Coordinate Program

## Overview

Maintain the minimum durable truth needed to coordinate a long-running initiative. The program record owns direction, boundaries, workstream relationships, and current risks; issues and plans own executable work.

## Create A Program Only When Needed

Use a program when work spans multiple independently tracked outcomes, will survive several sessions or owners, or contains unresolved workstreams whose relationships matter. Do not create one for a large but single executable plan.

Use the repository's established program or project surface. When the user requests a local record and no convention exists, adapt [references/program-template.md](references/program-template.md).

## Maintain Current Truth

Keep only:

- objective and measurable finish condition;
- scope boundaries and consequential constraints;
- accepted decisions and unresolved questions;
- workstreams with links, owners, and current states;
- cross-workstream dependencies and risks;
- one next coordination action.

Link issues, plans, evidence, branches, and pull requests rather than duplicating their contents. Rewrite stale statements instead of appending a chronology.

## Reconcile Before Acting

Compare the record with the user's latest instruction, source, tracker, and merged work. When they disagree, current evidence wins. Update affected workstreams, identify invalidated plans or decisions, and route actionable slices to `manage-issues`, `plan`, or `run-queue`.

Do not mark a program complete because its current queue is empty. Check the program's finish condition and unresolved risks directly.

