---
name: docs
description: "Use when writing or reviewing READMEs, guides, API docs, architecture docs, setup docs, runbooks, changelogs, release notes, or docs/ content. Write fresh reader context: purpose, next action, stable facts, examples, commands, and links."
---

# Docs

Write docs as fresh context for a real reader.

## Required Reads

Load `praxis:repo-policy` only when changing docs structure, location, or repo docs policy.
Load `praxis:explore` when behavior, commands, APIs, architecture, or setup are not already known from local source.
Load `praxis:source` when docs depend on external, version-sensitive, or fast-changing facts.
Use the relevant artifact template first when a messy conversation or investigation should become durable work state rather than documentation.
For package or app docs, inspect the current manifest, scripts, generated files, lockfiles, and nearest source before preserving setup, build, or API claims.

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

A structure section is not an inventory. Keep only folders, files, or entry points a reader needs to choose a next action.

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

For multi-package, repo-wide, or delegated docs rewrites, use `full` or `swarm`: plan the page set, give workers bounded scopes, verify commands and links, review for stale claims and wrong surfaces, then deliver.

## Style

- Prefer stable concepts, contracts, examples, commands, links, and observable behavior.
- Use high-level maps when they help orientation; avoid detailed file-by-file catalogs unless that reference is explicitly requested.
- Do not invent requirements, guarantees, commands, APIs, or setup steps that are not supported by source or repo convention.
- Remove stale claims, duplicate surface area, process notes, and agent voice.
- Keep discarded ideas only when they prevent a likely future mistake; otherwise link the exploration or decision and write current truth.
- A smaller clear doc beats a complete-looking stale doc.

## Output Test

Good docs let the reader answer: what is this, should I use it, how do I start, where do I go next, and what can I trust?

Load `praxis:verify` before claiming commands, links, or examples work.

## Transition

```text
output: docs diff, page plan, review finding, or blocker
lane: <current lane>
state: none | draft | ready | blocked | implemented
result: docs-written | docs-reviewed | needs-source | displaced-material
next: verify | review | deliver | agent-guide | repo-policy | stop
evidence: source files, commands, links, examples, or named gaps
```
