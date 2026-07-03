---
name: docs
description: "Use when writing, revising, reorganizing, or reviewing user-facing or developer-facing documentation such as README files, guides, tutorials, API docs, architecture docs, setup docs, onboarding docs, troubleshooting docs, migration guides, changelogs, release notes, or docs/ content. Treat docs as fresh reader context: choose the project mode and doc surface, then write orientation, stable meaning, examples, commands, and links without turning docs into source inventories or process notes."
---

# Docs

Write docs as fresh context for a real reader.

A doc has a genre. Respect the genre: README is a front door, guide is a path, reference is lookup, AGENTS.md is editing context, a repo-scoped skill is a procedure, and Praxis artifacts are work state.

## Required Reads

Load `praxis:conventions` before changing repo documentation structure, README style, docs location, or committed docs policy.
Load `praxis:explore` when behavior, commands, APIs, architecture, or setup are not already known from local source.
Load `praxis:source` when docs depend on external, version-sensitive, or fast-changing facts.
Load `praxis:distill` before turning a messy conversation or investigation into documentation.
Read `../workflow/references/artifacts.md` when deciding whether material belongs in docs or in a Praxis artifact instead.

## Choose The Mode

Pick the project mode before choosing depth:

- Public framework/library: README is a front door; route deep teaching and API depth to docs unless README is the main docs surface.
- Small package: README may be the docs; include install, use, API, examples, compatibility, and links.
- App or service: README emphasizes purpose, setup, env, run/test/build, deploy, operations, and support links.
- Monorepo: root README maps the workspace; package READMEs describe stable package surfaces only when useful.
- Template or starter: README is a path from clone to customization and deploy.
- Docs repo: README explains how to run, build, preview, and contribute to the docs site.
- Internal tool: README favors owner, common tasks, operational notes, failure modes, and support path.

## Choose The Surface

- README: front door. Identity, purpose, quick start, common commands, stable public surface, high-level map when useful, and links.
- Tutorial: first successful path.
- Guide: workflow or concept in order.
- Reference: complete lookup for API, config, behavior, errors, compatibility.
- Architecture: current structure, responsibilities, flows, and tradeoffs that still matter.
- Runbook: symptoms, checks, actions, rollback, escalation.
- Changelog or release notes: user-visible change, breaking impact, upgrade notes.
- AGENTS.md: local editing context, conventions, boundaries, commands, safety notes, and pattern anchors.
- Repo-scoped skill: repeatable operation with steps, choices, examples, and verification.
- Praxis artifact: context, exploration, decision, spec, issue, plan, evidence, handoff.

Write only what belongs to the chosen surface.

## Editorial Test

Before writing, answer:

- Who is the reader?
- What are they trying to do next?
- What must be true and stable for this page to help?
- Is this the right surface for the material?

Write for the reader's next useful action. Reading code is research for judgment, not content to dump into the page.

## README Taste

A README should orient, not exhaust.

Good README content:

- what this is and when to use it;
- how to start;
- one minimal example when useful;
- high-level structure only when it clarifies;
- commands and links that are stable enough to maintain.

Move coding conventions to AGENTS.md. Move recurring procedures to repo-scoped skills. Move work history and task state to Praxis artifacts.

## Broad Docs Work

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

## Next Skills

Load `praxis:agent-guide` when useful conventions belong in AGENTS.md.
Load `praxis:decide` when docs reveal a durable choice that should become a decision record.
Load `praxis:spec`, `praxis:issue`, or `praxis:plan` when docs expose missing behavior or work to do.
Load `praxis:verify` before claiming docs are accurate, commands work, links are valid, or examples pass.
