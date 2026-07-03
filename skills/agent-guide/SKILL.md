---
name: agent-guide
description: "Use when writing, revising, reorganizing, or reviewing AGENTS.md files or scoped agent-facing repository guidance. Treat AGENTS.md as editing context for coding agents: repo or subtree scope, ownership, commands, conventions, boundaries, safety notes, source-of-truth references, and compact pattern anchors."
---

# Agent Guide

Write AGENTS.md as editing context for coding agents.

AGENTS.md is the repo's standing instruction surface: where the agent is, what owns what, how to check work, what rules matter, and what not to touch casually.

## Required Reads

Load `praxis:conventions` before changing agent-facing repo instructions.
Load `praxis:explore` when repo structure, commands, package boundaries, or local patterns are not already known.
Load `praxis:docs` when the content is actually human-facing documentation.
Read `../workflow/references/artifacts.md` when deciding whether content belongs in AGENTS.md or in Praxis artifacts.

## Choose The Scope

- Root AGENTS.md: repo contract. Purpose, major areas, commands, verification, global boundaries, safety, and where to read next.
- Scoped AGENTS.md: local delta. What changes in this subtree: ownership, commands, patterns, dependencies, generated files, tests.
- Tool bridge: minimal redirect to authoritative docs or generated instructions, such as version-matched framework docs.
- Local/private instructions: personal paths, secrets, machine state, or preferences that should not be committed.

Closer scoped files sharpen or override parent instructions. Do not repeat parent rules unless repetition prevents a likely mistake.

## Choose The Content

Good AGENTS.md content changes agent behavior:

- ownership and boundaries;
- setup, build, test, lint, typecheck, and verification commands;
- allowed and disallowed dependencies or imports;
- source-of-truth docs, package references, and canonical files;
- safety rules for generated files, migrations, secrets, production data, and destructive commands;
- two or three pattern anchors or tiny examples when they prevent bad code.

## Route Elsewhere

- README/docs: human-facing explanation.
- Repo-scoped skill: repeatable procedure with steps, choices, examples, and verification.
- Praxis artifact: context, exploration, decision, spec, issue, plan, evidence, and handoff.
- Source code/tests: behavior truth.

## Style

- Be short, concrete, and local.
- Prefer commands, paths, boundaries, and canonical examples.
- Write rules that affect edits, tests, or safety.
- Keep the guide portable; do not require the reader to know an external workflow system.
- Remove generic advice, stale process notes, task history, and workflow-engine instructions.
- Leave a narrow gap or ask when a convention is not discoverable.

## Flow

1. Identify whether the guide is root, scoped, tool bridge, or local/private.
2. Read parent AGENTS.md files, README/docs, package scripts, CI, and relevant code patterns.
3. Decide what belongs in AGENTS.md versus human docs, repo-scoped skills, source/tests, or artifacts.
4. Write compact standing instructions for future coding agents.
5. Remove duplicated parent rules unless the scoped file changes or sharpens the rule.
6. Verify commands, paths, and referenced files when practical.

## Output Test

Good AGENTS.md answers:

- Where am I?
- What owns what?
- How do I run the relevant checks?
- What local rules matter?
- What should I avoid touching casually?
- Where do I read deeper context?

## Next Skills

Load `praxis:docs` when material belongs in README or docs.
Load `praxis:context` or `praxis:handoff` when material is operational state.
Load `praxis:verify` before claiming commands, paths, or referenced files are accurate.
