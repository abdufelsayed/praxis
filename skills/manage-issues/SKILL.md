---
name: manage-issues
description: Use when the user asks to create, split, triage, update, prioritize, or close durable work items in a repository tracker, external tracker, or local issue file.
---

# Manage Issues

## Overview

Turn tracked intent into one outcome with observable acceptance criteria. An issue explains what must become true; an implementation plan explains how to change the code.

## Choose The Surface

Use the repository's configured tracker and conventions. Create a local issue file only when the repository already uses them or the user explicitly requests one. If the work does not need durable tracking, keep it in conversation.

Inspect related issues, current behavior, and repository ownership before writing. Link existing source, decisions, specifications, plans, branches, and pull requests instead of copying them.

## Shape The Work Item

Every actionable issue needs:

- the problem or desired outcome;
- scope and explicit non-goals where ambiguity is likely;
- observable acceptance criteria;
- dependencies and blockers;
- evidence or reproduction steps when reporting a defect;
- the next owner or execution route when known.

Split work when parts can be accepted and completed independently. Keep one issue when the pieces share one outcome, one integration proof, or inseparable changes. Do not disguise missing product decisions as implementation details.

## Update From Current Truth

When triaging or closing an issue, verify its state against current source, linked pull requests, and evidence. Record the smallest useful status change and why. Do not append session diaries or duplicate logs.

For repositories that use local issue Markdown but provide no template, adapt [references/issue-template.md](references/issue-template.md). The template is optional and should follow repository conventions when they exist.

