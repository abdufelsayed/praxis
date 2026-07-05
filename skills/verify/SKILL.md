---
name: verify
description: Use before claiming work is done, fixed, passing, ready, reviewed, committed, merged, or complete. Maps each claim to fresh evidence.
---

# Verify

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Evidence before claims.

## Required Reads

- Read `../kernel/references/quality-gates.md`.
- Load the claim domain first when needed, such as `praxis:repair` for a bug-fix claim, `praxis:review` for a review-clean claim, or `praxis:deliver` for final readiness.
- Load `praxis:repo-policy` when verification commands are unknown.
- Use `../kernel/references/templates/evidence.md` when verification evidence must outlive the turn.

## Gate

Before a completion claim:

1. Identify the command or check that proves it.
2. Confirm the command exists in repo policy, scripts, CI, or a discovered quality manifest.
3. Run it fresh unless impossible.
4. Read output and exit code.
5. State the actual result.
6. Name anything not verified.

## Mapping

- "tests pass" requires current test output.
- "build passes" requires current build output.
- "bug fixed" requires the original repro no longer failing.
- "plan complete" requires acceptance criteria checked.
- "review clean" requires an actual review.
- "docs accurate" requires source-backed commands, paths, examples, or APIs.

Do not use success language when verification did not run. If no valid check exists or it cannot be run safely, return `unverified` or `needs-user`.

## Evidence Contract

Write verification evidence only when it must survive the current turn:

- claim;
- commands or checks run;
- result and signal;
- evidence location or output summary;
- anything not verified.

## Transition

```text
output: verification result or evidence path
lane: <current lane>
state: verified | implemented | blocked
result: passed | failed | unverified | needs-user
next: deliver | repair | execute | stop
evidence: command output, repro, manual check, or named gap
```
