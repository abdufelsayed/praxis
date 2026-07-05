---
name: docs
description: "Use when writing or reviewing READMEs, guides, API docs, architecture docs, setup docs, runbooks, changelogs, release notes, or docs/ content. Write fresh reader context: purpose, next action, stable facts, examples, commands, and links."
---

# Docs

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Write docs as fresh context for a real reader.

## Required Reads

Load `praxis:repo-policy` only when changing docs structure, location, or repo docs policy.
Load `praxis:explore` when behavior, commands, APIs, architecture, or setup are not already known from local source.
Load `praxis:source` when docs depend on external, version-sensitive, or fast-changing facts.
Use the relevant artifact template first when a messy conversation or investigation should become durable work state rather than documentation.
For package or app docs, inspect the current manifest, package-manager policy, scripts, generated files, lockfiles, workspace config, CI, and nearest source before preserving setup, build, or API claims.

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

## Process

First action: name the reader, their next job, the doc surface, and the local evidence needed for setup, command, link, API, and example claims.

Core loop:

- audit current text as keep, tighten, rewrite, move, create, or remove;
- ground commands in manifests, package-manager fields, lockfiles, scripts, task runners, CI, and local policy before naming them;
- ground links, examples, APIs, and behavior in source, generated docs, tests, or authoritative external sources;
- write the smallest useful page for the reader's next action;
- move conventions to AGENTS.md, repeatable procedures to repo-scoped skills, and work state to durable artifacts.

Adapt when:

- the package manager is ambiguous: inspect lockfiles, `packageManager`, workspace files, task runners, and CI before choosing command syntax;
- a claim cannot be verified: remove it, mark the gap, or ask instead of inventing;
- the page becomes a file inventory: keep only structure that helps the reader choose a next action;
- the work spans packages or docs surfaces: plan the page set, bound scopes, verify claims, then review for wrong surfaces.

Output rule: deliver a docs diff, docs scope, review finding, or blocker with the evidence behind changed commands, links, examples, and claims.

Exit condition: the reader can tell what this is, whether to use it, how to start, where to go next, and which claims were verified or intentionally left out.

## Interviewed Docs

Use this mode when the document depends on the user's judgment, taste, domain knowledge, or strategy rather than source facts.

1. Create or identify the target doc/artifact surface first.
2. Ask one concise question at a time. Do not dump a questionnaire.
3. If source can answer the question, inspect source instead of asking.
4. After the user answers, patch the doc before asking the next question.
5. Preserve the user's meaning, but write as fresh reader context rather than transcript.
6. If the answer is work state, move it to the fitting artifact instead of docs.

Never infer ranking, priority, or sequence from a list the user typed unless they explicitly said it was ordered. Ask for order when order matters.

## Style

- Prefer stable concepts, contracts, examples, commands, links, and observable behavior.
- Use high-level maps when they help orientation; avoid detailed file-by-file catalogs unless that reference is explicitly requested.
- Do not invent requirements, guarantees, commands, APIs, or setup steps that are not supported by source or repo convention.
- Do not preserve command, link, or example claims just because the old doc had them.
- Remove stale claims, duplicate surface area, process notes, and agent voice.
- Keep discarded ideas only when they prevent a likely future mistake; otherwise link the exploration or decision and write current truth.
- A smaller clear doc beats a complete-looking stale doc.

## Output Test

Good docs let the reader answer: what is this, should I use it, how do I start, where do I go next, and what can I trust?

Load `praxis:verify` before claiming commands, links, or examples work.

## Transition

```text
output: docs diff, docs scope, review finding, or blocker
lane: <current lane>
state: none | draft | ready | blocked | implemented
result: docs-written | docs-reviewed | needs-source | displaced-material
next: verify | review | deliver | agent-guide | repo-policy | stop
evidence: source files, commands, links, examples, or named gaps
```
