---
name: docs
description: Use when writing, revising, reorganizing, or reviewing user-facing or developer-facing documentation such as README files, guides, tutorials, API docs, architecture docs, setup docs, onboarding docs, troubleshooting docs, migration guides, changelogs, release notes, or docs/ content. Keeps real documentation separate from Praxis work artifacts and prevents transcript residue, discarded options, and agent process notes from leaking into docs.
---

# Docs

Write documentation as fresh context for its reader.

Docs teach or explain the current system. Praxis artifacts coordinate work. Do not turn docs into plans, handoffs, checkpoints, or conversation summaries.

## Required Reads

Load `praxis:conventions` before changing repo documentation structure, README style, docs location, or committed docs policy.
Load `praxis:explore` when the documented behavior, commands, APIs, architecture, or setup flow is not already known from local source.
Load `praxis:source` when docs depend on external, version-sensitive, or fast-changing facts.
Load `praxis:distill` before turning a messy conversation or investigation into documentation.
Read `../workflow/references/artifacts.md` when deciding whether material belongs in docs or in a Praxis artifact instead.

## Reader First

Choose the reader before writing:

- User: wants concepts, workflows, examples, limits, and troubleshooting.
- Developer: wants setup, architecture, APIs, extension points, commands, tests, and local workflows.
- Maintainer: wants ownership, release, migration, operations, compatibility, and risk notes.
- Contributor: wants repo orientation, contribution flow, coding conventions, and review expectations.

Write for the reader's next useful action, not for the history of how the docs were produced.

## Doc Types

- README: what this is, who it is for, quick start, common commands, links.
- User guide: concepts, workflows, examples, expected outcomes, troubleshooting.
- Developer guide: setup, architecture, code map, extension points, tests, checks.
- API/reference: stable contracts, parameters, examples, errors, compatibility.
- Architecture doc: current structure, responsibilities, data/control flow, tradeoffs that still matter.
- Migration guide: who is affected, steps, before/after behavior, verification, rollback.
- Troubleshooting: symptoms, causes, checks, fixes, escalation path.
- Changelog/release notes: user-visible changes, breaking changes, upgrade notes, known issues.

## Fresh Context Rules

- Write the current truth as if the reader arrived cleanly.
- Explain what exists, how to use it, how it works, and where to go next.
- Include rejected alternatives only when they prevent a likely real-world mistake.
- Link to ADRs, specs, plans, or issues instead of copying their process history into docs.
- Prefer examples, commands, file paths, and observable behavior over vague intent.
- Remove stale claims, obsolete notes, and process commentary while editing.

## Do Not

- Do not preserve conversation chronology.
- Do not write self-referential agent notes.
- Do not over-emphasize discarded ideas.
- Do not frame docs around what was not done.
- Do not mix raw evidence dumps into docs; link or summarize only what readers need.
- Do not put agent-only planning or continuity state in committed docs.
- Do not invent requirements, guarantees, commands, or APIs that are not supported by source or repo convention.

## Flow

1. Identify the doc type, reader, and job-to-be-done.
2. Inspect existing docs and repo conventions.
3. Verify source facts from code, tests, commands, or authoritative docs.
4. Decide what belongs in docs versus Praxis artifacts.
5. Write or revise around the reader's task.
6. Remove transcript residue and stale process language.
7. Check links, commands, examples, and filenames when practical.

## Output

Good documentation should answer:

- What is this?
- Who is it for?
- How do I use or change it?
- What should I know before I start?
- What can go wrong and how do I recover?
- Where do I go next?

## Next Skills

Load `praxis:decide` when docs reveal a durable choice that should become an ADR or decision record.
Load `praxis:spec`, `praxis:issue`, or `praxis:plan` when docs expose missing behavior or work to do.
Load `praxis:verify` before claiming docs are accurate, commands work, links are valid, or examples pass.
