---
name: agent-guide
description: "Use when writing or reviewing AGENTS.md files or scoped agent-facing repo guidance. Write compact editing context: scope, ownership, commands, conventions, boundaries, safety notes, and pattern anchors."
---

# Agent Guide

Write AGENTS.md as editing context for coding agents.

AGENTS.md tells coding agents where they are, what owns what, how to check work, and what not to touch casually.

## Required Reads

Load `praxis:repo-policy` only when repo policy is unclear or changing.
Load `praxis:explore` when repo structure, commands, package boundaries, or local patterns are not already known.

## Scope

- Root AGENTS.md: repo contract, major areas, commands, global boundaries, safety, and where to read next.
- Scoped AGENTS.md: local delta: ownership, commands, patterns, dependencies, generated files, tests.
- Tool bridge: minimal redirect to authoritative docs or generated instructions, such as version-matched framework docs.
- Local/private instructions: personal paths, secrets, machine state, or preferences that should not be committed.

Closer scoped files sharpen or override parent instructions. Do not repeat parent rules unless repetition prevents a likely mistake.

## Content

Include content that changes agent behavior:

- ownership and boundaries;
- setup, build, test, lint, typecheck, and verification commands;
- allowed and disallowed dependencies or imports;
- source-of-truth docs, package references, and canonical files;
- safety rules for generated files, migrations, secrets, production data, and destructive commands;
- two or three pattern anchors when they prevent bad code.

## Route Elsewhere

- Human explanation -> README/docs.
- Repeatable procedure -> repo-scoped skill.
- Work state -> context, exploration, decision, spec, issue, plan, evidence, or handoff.
- Behavior truth -> source and tests.

## Style

- Be short, concrete, and local.
- Prefer commands, paths, boundaries, and canonical examples.
- Write rules that affect edits, tests, or safety.
- Keep the guide portable; do not require the reader to know an external workflow system.
- Remove generic advice, stale process notes, task history, and workflow-engine instructions.
- Leave a narrow gap or ask when a convention is not discoverable.

## Flow

1. Identify whether the guide is root, scoped, tool bridge, or local/private.
2. Read parent AGENTS.md files, README/docs, scripts, CI, and relevant code patterns.
3. Decide what belongs elsewhere before writing.
4. Write compact standing instructions for future coding agents.
5. Remove duplicated parent rules unless the scoped file sharpens them.
6. Verify commands and paths when practical.

## Output Test

Good AGENTS.md answers:

- Where am I?
- What owns what?
- How do I run the relevant checks?
- What local rules matter?
- What should I avoid touching casually?
- Where do I read deeper?

## Next Skills

Load `praxis:context` or `praxis:handoff` when material is operational state.
Load `praxis:verify` before claiming commands, paths, or referenced files are accurate.
