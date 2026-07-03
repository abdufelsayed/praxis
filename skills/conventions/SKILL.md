---
name: conventions
description: "Use when discovering or applying repository-specific rules before work starts: AGENTS.md, tracker preference, artifact paths, branch/worktree policy, PR policy, verification commands, coding conventions, or docs policy."
---

# Conventions

Learn and apply the repo's rules before choosing defaults.

## Priority

1. Direct user request.
2. Repo instructions such as `AGENTS.md`, `CLAUDE.md`, `.github/`, docs, CI, and existing patterns.
3. Praxis defaults.

## Flow

1. Read only the repo surfaces needed for the current choice.
2. Identify the rule: tracker, artifact path, branch/worktree, PR, verification, coding, docs, or safety.
3. Prefer established repo convention over Praxis defaults.
4. If no convention exists, choose the lightest default and say it plainly.
5. Record durable convention decisions with `praxis:context` or `praxis:decide` only when future agents need them.

## Quality Commands

When verification, review, finish, commit, or PR readiness depends on commands, read `references/quality-manifest.md` and discover the actual repo signals. Map claims to real commands or manual checks; do not guess stack defaults.

## Rules

- Do not invent a tracker convention when none exists.
- Use existing artifact locations over `.agents/`.
- If conventions conflict, ask the smallest question that unblocks work.
- Read `../workflow/references/persistence.md` only when choosing artifact paths, tracker storage, or ignore policy.
- Read `references/quality-manifest.md` only when choosing or documenting checks.

## Next Skills

Return to `praxis:workflow` or the routed driver skill after conventions are known.
