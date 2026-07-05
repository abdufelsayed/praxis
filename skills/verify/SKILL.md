---
name: verify
description: Use before claiming work is done, fixed, passing, ready, reviewed, committed, merged, or complete. Maps each claim to fresh evidence.
---

# Verify

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Evidence before claims. Verification blocks the claim being made; it does not merely decorate the final answer.

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

If the proof is stale, partial, unavailable, or failed, the claim is not verified. Say `unverified`, `failed`, or `blocked` and route accordingly.

## Verification Procedure

1. Write the exact claim being verified in plain language.
2. Map the claim to required evidence: command, test, build, typecheck, lint, repro, manual check, review result, or source-backed inspection.
3. Prefer repo-defined commands from scripts, CI, task runners, Makefiles, package manifests, or AGENTS guidance.
4. Run the narrowest check that proves the claim; broaden only when the narrow check is insufficient.
5. Read the output, not just the exit code. Capture failures, warnings that matter, skipped tests, and environment limitations.
6. For each acceptance criterion, record passed, failed, unverified, or not applicable.
7. If anything fails, route to `repair` with the original signal. If evidence is impossible, return `unverified` or `needs-user`.
8. Only after fresh passing evidence may delivery, commit, PR, or done language use "verified", "passes", "ready", or "complete".
9. When verifying delegated work, verify the integrated result, not only worker reports or per-task checks.

## Mapping

- "tests pass" requires current test output.
- "build passes" requires current build output.
- "bug fixed" requires the original repro no longer failing.
- "plan complete" requires acceptance criteria checked.
- "review clean" requires an actual review.
- "docs accurate" requires source-backed commands, paths, examples, or APIs.

Do not use success language when verification did not run. If no valid check exists or it cannot be run safely, return `unverified` or `needs-user`.

Do not let a passing narrow check imply a broader claim. A targeted unit test can prove one behavior; it cannot prove "the app works" unless the claim is narrowed to that behavior.

## Verification Matrix

For non-trivial work, keep a small matrix in the response or evidence artifact:

| Claim | Evidence | Result | Gap |
| --- | --- | --- | --- |

Every row must have a real signal or an explicit gap. Do not turn missing evidence into optimistic prose.

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
