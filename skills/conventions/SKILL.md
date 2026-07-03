---
name: conventions
description: Use when applying repository-specific workflow rules, AGENTS.md instructions, project preferences for GitHub/Linear/local issues, plan locations, branch/PR policy, verification commands, or coding conventions before choosing a Praxis workflow.
---

# Conventions

Repo instructions override Praxis defaults.

## Priority

1. Direct user request.
2. Repo instructions such as `AGENTS.md`, `CLAUDE.md`, `.github/`, docs, CI, and existing patterns.
3. Praxis defaults.

## Rules

- Do not invent a tracker convention when none exists.
- Use existing artifact locations over `.agents/`.
- If conventions conflict, ask the smallest question that unblocks work.
- Record durable convention decisions with `praxis:context` or `praxis:decide`.
