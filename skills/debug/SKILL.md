---
name: debug
description: Use when something is broken, failing, throwing, flaky, slow, regressed, or unexpected. Requires evidence-first diagnosis, reproduction, hypotheses, root cause, fix, regression coverage, and verification.
---

# Debug

Find the cause before fixing.

## Flow

1. Reproduce the exact symptom.
2. Tighten the loop so it is fast and specific.
3. Read errors and recent changes carefully.
4. Write falsifiable hypotheses.
5. Probe one hypothesis at a time.
6. Fix the cause, not just the symptom.
7. Add or update regression coverage when practical.
8. Re-run the original repro and relevant tests.

Do not stack guesses. If the cause is unknown, keep investigating or ask for the missing fact.
