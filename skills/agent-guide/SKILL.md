---
name: agent-guide
description: "Use when writing, revising, reorganizing, or reviewing AGENTS.md files or scoped agent-facing repository guidance. Creates stable orientation for coding agents: repo or folder purpose, structure, commands, local conventions, boundaries, safety notes, and where to find deeper docs. Keeps AGENTS.md separate from workflow systems, human documentation, Praxis artifacts, task state, plans, handoffs, and transcript summaries."
---

# Agent Guide

Write AGENTS.md as orientation for coding agents.

AGENTS.md guides agents through a repo or folder. It does not manage the work, preserve task state, or explain the agent workflow engine.

## Required Reads

Load `praxis:conventions` before changing agent-facing repo instructions.
Load `praxis:explore` when repo structure, commands, package boundaries, or local patterns are not already known.
Load `praxis:docs` when the content is actually human-facing documentation instead of agent guidance.
Read `../workflow/references/artifacts.md` when deciding whether content belongs in AGENTS.md or in `.agents/` operational state.

## Role

Use AGENTS.md for stable, local orientation:

- what this repo or folder is responsible for;
- important directories and ownership boundaries;
- local commands for setup, test, build, lint, typecheck, and verification;
- coding, testing, naming, and review conventions that are specific to this repo or subtree;
- safety constraints such as generated files, migrations, secrets, production data, destructive commands, or forbidden edits;
- where deeper human docs live;
- how scoped instructions override or refine parent instructions.

Do not use AGENTS.md for task management, planning, issue state, handoff notes, queue state, or conversation summaries.

## Top-Level AGENTS.md

Write the root file as a compact repo map:

- project purpose in one or two sentences;
- major apps, packages, services, or directories;
- primary development commands;
- verification expectations;
- architecture or ownership boundaries that prevent common mistakes;
- documentation map;
- safety notes;
- scoped AGENTS.md files worth reading.

Keep it portable. Do not require the reader to know a specific workflow plugin.

## Scoped AGENTS.md

Write scoped files for local differences only:

- what this subtree owns;
- local commands or tests;
- local patterns and file conventions;
- boundaries with neighboring packages or services;
- local safety notes;
- local docs or examples.

Do not repeat the root AGENTS.md unless the scoped file changes or sharpens the rule.

## Fresh Context Rules

- Write the current stable truth as if a new agent just opened the repo.
- Prefer short sections, bullets, commands, paths, and concrete constraints.
- Remove stale notes, process commentary, and task-specific history.
- Link to README, docs, ADRs, package files, or scripts instead of copying large explanations.
- Ask or leave a narrow gap when a repo convention is not discoverable.

## Do Not

- Do not tell agents to use a particular workflow plugin.
- Do not copy Praxis lifecycle, routing, or artifact instructions into AGENTS.md.
- Do not put `.agents/` state, plans, issues, reviews, verification notes, or handoffs in AGENTS.md.
- Do not write user-facing product docs in AGENTS.md.
- Do not preserve discarded ideas unless they prevent a likely repo-specific mistake.
- Do not include generic engineering advice that is not specific to this repo or subtree.

## Flow

1. Identify whether the guide is top-level or scoped.
2. Read parent AGENTS.md files, README/docs, package scripts, CI, and existing conventions.
3. Inspect the relevant tree enough to verify commands, boundaries, and local patterns.
4. Decide what belongs in AGENTS.md versus human docs versus `.agents/` state.
5. Write compact, stable instructions for future coding agents.
6. Remove duplicated parent rules unless needed for a local override.
7. Verify commands, paths, and referenced files when practical.

## Output

Good AGENTS.md answers:

- Where am I?
- What owns what?
- How do I run the relevant checks?
- What local rules matter?
- What should I avoid touching casually?
- Where do I read deeper docs?

## Next Skills

Load `praxis:docs` when the requested content belongs in README or docs instead.
Load `praxis:context`, `praxis:checkpoint`, or `praxis:handoff` when the content is operational state.
Load `praxis:verify` before claiming commands, paths, or referenced files are accurate.
