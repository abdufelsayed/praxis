---
name: docs
description: "Use when writing or reviewing READMEs, guides, API docs, architecture docs, setup docs, runbooks, changelogs, release notes, or docs/ content. Write fresh reader context: purpose, next action, stable facts, examples, commands, and links."
---

# Docs

Write docs as fresh context for a real reader.

## Required Reads

Load `praxis:conventions` only when changing docs structure, location, or repo docs policy.
Load `praxis:explore` when behavior, commands, APIs, architecture, or setup are not already known from local source.
Load `praxis:source` when docs depend on external, version-sensitive, or fast-changing facts.
Load `praxis:distill` before turning a messy conversation or investigation into documentation.

## Reader First

Before writing, answer:

- Who is the reader?
- What are they trying to do next?
- What stable truth makes this page useful?
- Is this the right surface?

Reading code is research for judgment, not content to dump into the page.

## Surfaces

- README: front door, quick start, stable public surface, high-level map when useful.
- Guide/tutorial: a path through a task or concept.
- Reference/API: lookup for behavior, config, errors, compatibility, examples.
- Architecture: current responsibilities, flows, constraints, and tradeoffs that still matter.
- Runbook: symptoms, checks, actions, rollback, escalation.
- Changelog/release notes: user-visible impact and upgrade notes.

Use `praxis:agent-guide` for AGENTS.md. Use a repo-scoped skill for repeatable agent procedure. Use durable artifacts for work state.

## README Taste

A README should orient, not exhaust.

Good README content:

- what this is and when to use it;
- how to start;
- one minimal example when useful;
- high-level structure only when it clarifies;
- commands and links that are stable enough to maintain.

Move coding conventions to AGENTS.md. Move recurring procedures to repo-scoped skills. Move work history and task state to Praxis artifacts.

## Flow

Audit before rewriting:

- keep;
- tighten;
- rewrite;
- move;
- create;
- remove.

For each page, name the reader, job, current usefulness, and any displaced material with its better home.

## Style

- Prefer stable concepts, contracts, examples, commands, links, and observable behavior.
- Use high-level maps when they help orientation; avoid detailed file-by-file catalogs unless that reference is explicitly requested.
- Do not invent requirements, guarantees, commands, APIs, or setup steps that are not supported by source or repo convention.
- Remove stale claims, duplicate surface area, process notes, and agent voice.
- A smaller clear doc beats a complete-looking stale doc.

## Output Test

Good docs let the reader answer: what is this, should I use it, how do I start, where do I go next, and what can I trust?

Load `praxis:verify` before claiming commands, links, or examples work.
