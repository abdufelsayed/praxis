---
name: repair
description: Use when something is broken, failing, throwing, flaky, slow, regressed, or unexpectedly changed. Reproduce first, diagnose with evidence, fix the cause, and verify the original signal.
---

# Repair

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

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

## Repair Loop

Run repairs as evidence cycles:

1. Capture the failing signal exactly: command, input, stack trace, user report, CI job, flaky seed, or manual steps.
2. Reduce the signal only if the reduced repro still fails for the same reason.
3. Inspect the code path and recent diffs before proposing a fix.
4. State one hypothesis that would explain the signal.
5. Probe or patch one hypothesis at a time.
6. If the hypothesis is wrong, record the observation and choose the next hypothesis; do not keep layering fixes.
7. When cause is proven, add regression coverage through the public seam when practical.
8. Apply the smallest fix that addresses the cause.
9. Re-run the original signal, not only the new narrow test.
10. Route to `verify` only after the original signal and relevant checks pass.

If three serious hypotheses fail, stop treating it as a small repair. Broaden exploration, inspect environment/history, ask for missing context, or replan.

## Adaptation

- If no repro exists, create the smallest credible repro or return an explicit verification gap.
- After repeated failed hypotheses, stop stacking guesses: broaden exploration, inspect environment, bisect, or replan.
- If the fix changes behavior beyond the reported failure, route to `spec` or `design`.
- If verification still fails, keep state `blocked`, `running`, or `implemented`; never deliver as done.
- If the failure is environmental, route to `repo-policy`, `source`, or `handoff` with evidence.

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
