---
name: setup
description: Use when beginning work in a repository, establishing Praxis conventions, choosing where plans/issues/context/worktrees should live, configuring `.agents/`, checking `.gitignore`, or discovering project verification commands and tracker preferences.
---

# Setup

Establish the repo's workflow conventions before durable work starts.

## Required Reads

Load this skill before choosing artifact locations, tracker behavior, verification commands, or branch/worktree policy for a repo. When setup discovers durable conventions, load `praxis:context` or `praxis:decide` before recording them.
Read `../workflow/references/persistence.md` before choosing local artifact paths or `.gitignore` policy.

## Flow

1. Read repo instructions: `AGENTS.md`, README, docs, package scripts, CI config, and existing `.agents/`, `.github/`, Linear/GitHub references.
2. Identify tracker preference: repo tracker, GitHub issues, Linear, committed docs, or local markdown.
3. Identify artifact root. Use repo convention first; otherwise use `.agents/`.
4. Identify branch/worktree policy. By default, keep the primary checkout on `main`, use Conventional-Commit-style branch names, and put non-trivial work in `.agents/worktrees/<flattened-branch>/`; load `praxis:worktree` before creating or changing worktrees.
5. If local `.agents/` artifacts are used, ensure `.agents/` is in `.gitignore` unless the repo intentionally commits them.
6. Find verification commands and update or create local verification notes when useful.

## Output

Summarize conventions in plain language before acting:

- artifact root;
- issue tracker;
- plan location;
- worktree policy;
- verification commands;
- any missing repo decision.

## Next Skills

Load `praxis:context` or `praxis:decide` to record durable setup conventions. Load `praxis:plan` when setup unblocks implementation planning.
