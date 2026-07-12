---
name: verify
description: Use before claiming that work is complete, ready, correct, fixed, passing, or safe to deliver when the claim needs current evidence.
---

# Verify

## Overview

Match each claim to fresh evidence that could prove it. A narrow check proves narrow behavior; it does not certify the application or branch as a whole.

## Verify The Claim

1. Write the exact claim in plain language.
2. Choose the command, reproduction, inspection, or external status that would prove it.
3. Confirm it is the repository's intended check when manifests or instructions define one.
4. Run it now and read the complete output, exit status, failures, warnings, and skips.
5. Compare the signal with the claim.
6. Report `verified`, `failed`, or `unverified`, with the decisive evidence and any gap.

## Evidence Matrix

| Claim | Required current evidence | Not enough |
| --- | --- | --- |
| Tests pass | Intended test command completes with no relevant failures | Earlier run or one unrelated test |
| Bug fixed | Original reproduction stops failing; regression test proves the old behavior when practical | Code changed or nearby test passes |
| Build succeeds | Build command exits successfully | Linter or formatter passes |
| Requirements met | Each accepted requirement is checked against the integrated result | Tests pass without a coverage map |
| Subagent completed | Diff or evidence is inspected and the combined check passes | Worker reports `DONE` |
| Change is ready | Intended diff, required checks, and repository delivery rules agree | Clean working tree alone |

## Failed Or Inconclusive Checks

A failed check blocks only the claim it was selected to prove. Report the exact command or observation and the decisive output. Preserve the signal for `debug`, return to implementation, revise the design, or state the external blocker.

Do not soften `failed` into “probably fine,” and do not rerun until a flaky check happens to pass without diagnosing the variability.

## Reporting

Useful: “Verified: `npm test -- auth` passed 34/34 on the current diff. The full package suite was not run, so package-wide readiness remains unverified.”

Not useful: “Everything looks good.”

Keep evidence in the command output and concise report by default. Save it only when an audit, regulated workflow, external reviewer, or future session independently needs a durable record.
