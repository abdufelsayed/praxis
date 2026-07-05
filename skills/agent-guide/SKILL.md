---
name: agent-guide
description: "Use when writing or reviewing AGENTS.md files or scoped agent-facing repo guidance. Write compact editing context: scope, ownership, commands, conventions, boundaries, safety notes, and pattern anchors."
---

# Agent Guide

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Write AGENTS.md as editing context for coding agents.

AGENTS.md tells coding agents where they are, what owns what, how to check work, and what not to touch casually.

## Required Reads

Load `praxis:repo-policy` only when repo policy is unclear or changing.
Load `praxis:explore` when repo structure, commands, package boundaries, or local patterns are not already known.
Before naming setup, build, test, lint, typecheck, or package commands, inspect manifests, `packageManager` fields, lockfiles, workspace config, scripts, task runners, CI, and relevant parent AGENTS.md files.

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

Pattern anchors should be concrete path plus reason pairs. Prefer a few examples that show where new work belongs and what common placement to avoid.

## Route Elsewhere

- Human explanation -> README/docs.
- Repeatable procedure -> repo-scoped skill.
- Work state -> context, exploration, decision, spec, issue, plan, evidence, or handoff.
- Behavior truth -> source and tests.

AGENTS.md may point to a reusable workflow or repo-scoped skill, but should not teach that reusable workflow. If the instruction applies unchanged across repos, move it to a shared skill or guide and leave only the local pointer.

## Style

- Be short, concrete, and local.
- Prefer commands, paths, boundaries, and canonical examples.
- Write rules that affect edits, tests, or safety.
- Keep the guide portable; do not require the reader to know an external workflow system.
- Remove generic advice, stale process notes, task history, and workflow-engine instructions.
- Leave a narrow gap or ask when a convention is not discoverable.

## Process

First action: identify whether the guide is root, scoped, tool bridge, or local/private, then read parent AGENTS.md files before changing local guidance.

Core loop:

- inspect README/docs, manifests, package-manager policy, lockfiles, scripts, task runners, CI, and relevant code patterns;
- decide what belongs elsewhere before writing;
- write standing editing instructions: scope, ownership, commands, boundaries, safety rules, and pattern anchors;
- verify command, path, link, and example claims before preserving or adding them;
- remove duplicated parent rules unless the scoped file sharpens them.

Adapt when:

- command syntax is ambiguous: use manifests, lockfiles, `packageManager`, workspace files, scripts, task runners, and CI to ground it;
- guidance teaches a reusable workflow: move it to a repo-scoped skill or shared guide and leave only the local pointer;
- material explains the project to humans: move it to README/docs;
- material records active work: move it to context, exploration, decision, spec, issue, plan, evidence, or handoff;
- a convention is not discoverable: leave a narrow gap or ask instead of guessing.

Output rule: deliver an AGENTS.md diff, scoped guide scope, review finding, or blocker with evidence for commands, paths, links, examples, ownership, and safety rules.

Exit condition: a future coding agent can tell where they are, what owns what, how to check work, what local rules matter, what not to touch casually, and where to read deeper.

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

## Transition

```text
output: AGENTS.md diff, scoped guide scope, review finding, or blocker
lane: <current lane>
state: draft | ready | blocked | implemented
result: guide-written | guide-reviewed | needs-source | moved-surface
next: verify | review | deliver | docs | repo-policy | stop
evidence: parent guides, scripts, CI, code patterns, paths, or commands
```
