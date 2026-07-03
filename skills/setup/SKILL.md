---
name: setup
description: Use when beginning work in a repository, establishing Praxis conventions, choosing where plans/issues/context should live, configuring `.agents/`, checking `.gitignore`, or discovering project verification commands and tracker preferences.
---

# Setup

Establish the repo's workflow conventions before durable work starts.

## Flow

1. Read repo instructions: `AGENTS.md`, README, docs, package scripts, CI config, and existing `.agents/`, `.github/`, Linear/GitHub references.
2. Identify tracker preference: repo tracker, GitHub issues, Linear, committed docs, or local markdown.
3. Identify artifact root. Use repo convention first; otherwise use `.agents/`.
4. If local `.agents/` artifacts are used, ensure `.agents/` is in `.gitignore` unless the repo intentionally commits them.
5. Find verification commands and update or create local verification notes when useful.

## Output

Summarize conventions in plain language before acting:

- artifact root;
- issue tracker;
- plan location;
- verification commands;
- any missing repo decision.
