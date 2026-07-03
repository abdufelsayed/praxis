---
name: issue
description: Use when creating, splitting, triaging, syncing, or processing durable work items in GitHub issues, Linear, a repo tracker, or local `.agents/issues/` markdown. Turns intent into independently verifiable slices.
---

# Issue

Issues hold durable intent. Plans hold execution details.

## Flow

1. Use the repo tracker when configured.
2. Otherwise use local markdown under `.agents/issues/`.
3. Write vertical slices with observable acceptance criteria.
4. Make dependencies explicit.
5. Link a plan path or mark `needs plan`.

## Local States

```text
.agents/issues/inbox/
.agents/issues/ready/
.agents/issues/running/
.agents/issues/blocked/
.agents/issues/done/
```

Do not invent product requirements. Block with the smallest question when acceptance criteria are missing.
