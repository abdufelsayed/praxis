---
name: repair
description: Use when something is broken, failing, throwing, flaky, slow, regressed, or unexpectedly changed. Reproduce first, diagnose with evidence, fix the cause, and verify the original signal.
---

# Repair

Find the cause before fixing.

## Required Reads

Load `praxis:source` when the failure depends on external, version-sensitive, or security-sensitive behavior.
Load `praxis:repo-policy` when the repo's test, repro, or diagnostic commands are unknown.

## Flow

1. Reproduce the exact symptom or identify the missing repro.
2. Tighten the loop so it is fast and specific.
3. Read errors, logs, diffs, and recent changes carefully.
4. State falsifiable hypotheses.
5. Probe one hypothesis at a time.
6. Identify the root cause or smallest proven cause.
7. Add or update regression coverage when practical.
8. Fix the cause, not just the symptom.
9. Re-run the original repro and relevant checks.

Use TDD as a technique when it helps: write the regression first, watch it fail for the right reason, then fix.

## Stop Conditions

Stop before broad rewrites, risky data changes, production-impacting fixes, or fixes whose cause is still unknown and consequential.

## Output

- repro command or manual steps;
- root cause or current best evidence;
- changed files and why;
- regression coverage or alternate verification;
- verification result and remaining risk.

## Transition

```text
output: repair result or blocker
lane: <current lane>
state: running | implemented | blocked
result: cause-found | fixed | needs-execution | unresolved
next: verify | execute | review | discuss | stop
evidence: repro, root cause, diff, tests, or named gap
```
