---
name: debug
description: Use when something is broken, failing, throwing, flaky, slow, regressed, or unexpected. Requires evidence-first diagnosis, reproduction, hypotheses, root cause, fix, regression coverage, and verification.
---

# Debug

Find the cause before fixing.

## Required Reads

Load `praxis:source` when the failure depends on external, version-sensitive, or security-sensitive behavior.

## Flow

1. Reproduce the exact symptom.
2. Tighten the loop so it is fast and specific.
3. Read errors and recent changes carefully.
4. Write falsifiable hypotheses.
5. Probe one hypothesis at a time.
6. Identify the root cause or the smallest proven cause.
7. Add or update regression coverage when practical.
8. Fix the cause, not just the symptom.
9. Re-run the original repro and relevant tests.

Do not stack guesses. If the cause is unknown, keep investigating or ask for the missing fact.

## Output

- repro command or manual steps;
- root cause or current best evidence;
- changed files and why;
- regression coverage or explanation for alternate verification;
- verification result and remaining risk.

## Stop Conditions

Stop before broad rewrites, data changes, production-impacting fixes, or fixes whose cause is still unknown but risky.

## Next Skills

Load `praxis:tdd` when the fix should be driven by a regression test. Load `praxis:verify` before claiming the bug is fixed.
