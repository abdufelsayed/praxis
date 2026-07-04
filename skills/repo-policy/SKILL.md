---
name: repo-policy
description: "Use when discovering or applying repository-specific rules: AGENTS.md, commands, tracker, artifact paths, branch/worktree policy, PR policy, docs policy, coding conventions, generated files, or safety boundaries."
---

# Repo Policy

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
5. Persist a convention only when future agents need it.

## Quality Commands

When review, verification, delivery, commit, or PR readiness depends on commands, read `references/quality-manifest.md` and discover real repo signals. Map claims to commands or manual checks; do not guess stack defaults.

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
