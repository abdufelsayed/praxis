# Subagent Brief Examples

Adapt one example. Replace every bracketed field and remove irrelevant sections. Send it through the host's dispatch mechanism; do not save it in the target repository.

## Investigation

```text
Question: [one fact or explanation to establish]

Scope:
- Read: [paths, subsystem, or authoritative sources]
- Do not edit or change external state.
- Do not inspect unrelated untracked files.

Return:
- conclusion;
- evidence with exact paths, commands, or links;
- competing explanation still possible;
- narrowest useful next action.

Stop if [missing access, destructive probe, or scope expansion].
```

## Implementation

```text
Outcome: [observable behavior]

Ownership:
- May edit: [exact paths or responsibility]
- Must preserve: [shared contracts and unrelated work]

Requirements:
- [behavior or interface]

Checks:
- Run: [command]
- Expected: [decisive signal]

Return status: DONE | DONE_WITH_CONCERNS | NEEDS_CONTEXT | BLOCKED
Report changed files, checks, self-review findings, and concerns.

Stop before changing shared contracts, taking destructive action, or expanding scope.
```

## Review

```text
Review target: [BASE...HEAD, named files, plan, or design]
Requirements: [source of intended behavior]
Mode: read-only

Check requirement coverage, correctness, regressions, security, and missing proof. Ignore unrelated working-tree and untracked content.

Return findings ordered by severity. For each finding give a path and line, mechanism, consequence, and expected correction. If there are no findings, state the remaining review limits.
```
