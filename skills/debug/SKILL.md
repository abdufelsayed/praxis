---
name: debug
description: Use when a bug, regression, failed check, flaky test, performance problem, or unexpected behavior needs diagnosis before a fix is known.
---

# Debug

## Overview

Reproduce the signal, locate the first incorrect transition, test one explanation, then fix the cause. A plausible edit is not a diagnosis.

## 1. Establish The Failure

Capture the exact command, input, environment, observed output, and expected behavior. Read the complete error and relevant warnings. Reproduce consistently, or collect timestamps, seeds, ordering, state, and boundary values when the failure is intermittent.

If reproduction is unavailable, say what evidence is missing. Do not turn “could not reproduce” into a guessed fix.

## 2. Find The Fault Boundary

Read recent relevant changes and trace the value, state, or configuration entering the failing component. Compare the broken path with the nearest working path.

For a multi-component system, record each boundary:

| Boundary | Input | Output | Configuration or state |
| --- | --- | --- | --- |
| workflow → script | present or absent values | arguments and environment | shell, permissions |
| client → service | request | response or error | endpoint, auth, flags |
| service → store | query or command | rows or failure | transaction, tenant, schema |

Stop when a value is correct before one transition and incorrect after it. Use [references/root-cause-tracing.md](references/root-cause-tracing.md) for deep call chains or several boundaries.

## 3. Test One Hypothesis

State: “I think X causes the failure because Y.” Run the smallest reversible probe that could disprove X. Change one variable at a time.

If the probe disproves the hypothesis, keep the evidence and form another. Do not stack a second speculative edit on the first. After three failed fix attempts—or earlier when each attempt reveals a different coupled failure—stop changing code and reconsider the architecture, environment, or requirements with the user.

## 4. Fix And Prove

1. Add the smallest regression test or reproduction that fails for the proven cause when practical.
2. Demonstrate the failure before relying on the test.
3. Fix the earliest incorrect assumption or transformation.
4. Rerun the original reproduction, the regression test, and affected broader checks.

Keep downstream validation only when it independently improves safety or diagnostics.

## Common Mistakes

- Increasing a timeout without establishing what event should end the wait.
- Weakening a test or validator to remove the signal.
- Fixing the visible exception where the invalid value is consumed instead of where it originates.
- Bundling several suspected fixes, making the successful variable unknowable.
- Declaring a bug fixed because a nearby unit test passes while the original reproduction was never rerun.

Report the root cause, decisive evidence, focused change, original reproduction result, broader checks, and remaining uncertainty.
