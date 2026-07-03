# Praxis Gates

Gates are checks before moving to a higher-trust state. They are not ceremony; use them when the lane and risk justify them.

## Spec Gate

Before implementation relies on a spec, check:

- problem or goal is clear;
- scope and non-goals are named;
- users, callers, or affected workflows are known;
- acceptance criteria are checkable;
- unresolved questions are explicit.

## Plan Gate

Before running a non-trivial or delegated plan, check:

- files, areas, or ownership boundaries are named;
- task order reflects dependencies;
- verification commands or manual checks are specific;
- risky decisions, blockers, and rollback/recovery notes are visible;
- another agent could execute without hidden conversation context.

## TDD Gate

For behavior changes and bug fixes, prefer:

- one failing test or repro for the behavior;
- smallest implementation that turns it green;
- refactor only while green;
- final relevant tests or checks.

When TDD is not practical, name the alternate evidence path before claiming completion.

## Review Gate

Review requirement compliance before implementation quality.

- If the change does not satisfy the requested behavior, stop at requirement findings.
- If it satisfies behavior, review code quality, tests, risk, security, data, and integration.
- Blocking findings return to execution.

## Verification Gate

Every completion claim maps to fresh evidence.

- "Fixed" needs the original repro or equivalent check.
- "Tests pass" needs current test output.
- "Ready" needs the relevant acceptance criteria checked.
- "Unverified" is an acceptable state; do not disguise it.

## Delivery Gate

Before commit, PR, merge, release, or cleanup:

- inspect branch, status, and diff;
- make sure verification evidence matches the claim;
- preserve reviewer context in commit/PR/handoff when useful;
- avoid destructive cleanup unless the worktree is clean and merged or the user approved the loss.
