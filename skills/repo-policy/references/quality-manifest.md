# Quality Manifest

Use this reference when agents need repo-specific checks before verification, review, delivery, commit, or PR.

## Purpose

Agents should not guess stack commands. Discover the repo's quality signals and map them to claims.

## Discovery Order

1. Direct user instruction.
2. Repo instructions such as `AGENTS.md`, `CLAUDE.md`, README, contributor docs, or scoped guides.
3. Package scripts, task runners, CI workflows, Makefiles, Justfiles, Turborepo/Nx configs, language manifests, or test config.
4. Existing recent commands in local context or durable artifacts.
5. Praxis fallback: ask the user or state `unverified` instead of inventing a command.

## Map

Capture the commands that actually exist:

```markdown
# Quality Manifest

Last checked: <YYYY-MM-DD>

## Commands

- format: `<command>` -> <expected signal>
- lint: `<command>` -> <expected signal>
- typecheck: `<command>` -> <expected signal>
- unit tests: `<command>` -> <expected signal>
- integration tests: `<command>` -> <expected signal>
- browser/UI checks: `<command or manual check>` -> <expected signal>
- build: `<command>` -> <expected signal>
- security: `<command or review>` -> <expected signal>
- release/PR readiness: `<command or checklist>` -> <expected signal>

## Notes

- <scope, package-specific command, known slow check, or unavailable check>
```

## Use

- `praxis:verify` maps claims to the smallest command that proves them.
- `praxis:review` uses the map to spot missing checks.
- `praxis:deliver` uses the map before done, commit, PR, merge, or handoff claims.

If no command exists for a claim, name the gap. Do not turn a weaker check into stronger evidence.
