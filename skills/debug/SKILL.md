---
name: debug
description: Use when a bug, regression, failed check, flaky test, performance problem, or unexpected behavior needs diagnosis before the correct fix is known.
---

# Debug

Establish the failure before changing code. Capture the exact command or input, environment, observed result, expected behavior, and relevant warnings. For intermittent failures, preserve the seed, timing, ordering, state, and boundary values that distinguish occurrences. If reproduction is unavailable, state what evidence is missing.

Trace the incorrect value, state, or configuration backward from the visible failure. Compare the failing path with the nearest working path and locate the first boundary where correct input becomes incorrect output. When the failure spans components, start at the first observed mismatch, inspect the value before and after each upstream transformation, and repeat until input is correct and output is incorrect. Capture only distinguishing inputs, outputs, configuration, and state; redact secrets. A downstream guard may improve diagnostics, but it does not explain where the invalid value originated.

State one explanation and test it with the smallest reversible probe that could disprove it. Change one variable at a time and do not stack speculative edits. After three failed fix attempts—or earlier when each probe reveals a different coupled failure—stop changing code and reconsider the environment, architecture, or requirements with the user.

When practical, add a regression reproduction that fails for the established cause, then fix the earliest incorrect assumption or transformation. Rerun the original reproduction, the regression check, and affected broader checks.

Report the root cause, decisive evidence, focused correction, proof, and remaining uncertainty. A plausible patch or nearby passing test does not prove the reported failure is fixed.

Do not increase a timeout without establishing the event that should end the wait, weaken a test or validator to remove the signal, fix only the downstream exception while leaving the invalid source intact, bundle several suspected fixes, or claim success without rerunning the original reproduction.
