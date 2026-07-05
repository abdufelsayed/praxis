---
name: repo-policy
description: "Use when discovering or applying repository-specific rules: AGENTS.md, commands, tracker, artifact paths, branch/worktree policy, PR policy, docs policy, coding conventions, generated files, or safety boundaries."
---

# Repo Policy

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Learn the repo's rules before choosing Praxis defaults.

## Priority

1. Direct user request.
2. Scoped repo instructions such as `AGENTS.md`, `CLAUDE.md`, `.github/`, docs, CI, scripts, and existing patterns.
3. Praxis defaults.

## Flow

1. Read only the repo surfaces needed for the current choice.
2. Identify the rule: commands, tracker, artifact path, branch/worktree, PR, docs, generated files, coding convention, or safety boundary.
3. Prefer established repo convention over Praxis defaults.
4. If no convention exists, choose the lightest default and say it plainly.
5. Save a convention only when future agents need it.

## Quality Commands

When review, verification, delivery, commit, or PR readiness depends on commands, read `references/quality-manifest.md` and discover real repo signals. Map claims to commands or manual checks; do not guess stack defaults.

## Guided Setup

When walking the user through setup, configuration, install, or local environment repair:

1. Build the complete checklist from repo docs, scripts, manifests, current state, and user constraints.
2. Give one atomic current step at a time.
3. Also show the remaining steps, capped at eight items by grouping later phases.
4. After each user reply, update the checklist and move exactly one next step forward.
5. Add newly discovered required steps immediately; do not silently drop checklist items.

This is for user-guided setup. Autonomous repo setup still follows the active driver and verification gates.

## Storage

Read `../kernel/references/storage-policy.md` only when choosing artifact paths, tracker storage, worktree locations, or ignore policy.

## Output

- discovered rule or absence of a rule;
- source file or command;
- chosen default when no rule exists;
- transition back to the driver that needed the policy.

## Transition

```text
output: repo rule, quality map, or unresolved convention
lane: <current lane>
state: ready | blocked
result: known | unresolved
next: kernel | discuss | stop
evidence: AGENTS.md, package scripts, CI, docs, existing patterns, or user instruction
```
