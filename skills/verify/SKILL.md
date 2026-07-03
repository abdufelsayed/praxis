---
name: verify
description: Use before claiming work is done, fixed, passing, ready, reviewed, committed, merged, or complete. Maps claims to fresh evidence.
---

# Verify

Evidence before claims.

## Required Reads

Load the skill for the claim domain first when needed, such as `praxis:debug` for a bug fix claim, `praxis:review` for a review-clean claim, or `praxis:finish` for a completion claim.
Load `praxis:conventions` when the repo's verification commands are unknown.
Use `../workflow/references/templates/evidence.md` when persisted verification evidence is needed.

## Gate

Before a completion claim:

1. Identify the command or check that proves it.
2. Confirm the command exists in repo conventions, scripts, CI, or a discovered quality manifest.
3. Run it fresh unless impossible.
4. Read output and exit code.
5. State the actual result.
6. Name anything not verified.

## Mapping

- "tests pass" requires current test output.
- "build passes" requires current build output.
- "bug fixed" requires original repro no longer failing.
- "plan complete" requires acceptance criteria checked.
- "review clean" requires an actual review.

Do not use success language when verification did not run. If no valid check exists or it cannot be run safely, return `unverified` or `human_needed`.

## Evidence Contract

Persist verification as evidence only when it must survive the current turn:

- claim;
- commands or checks run;
- result and signal;
- evidence location or output summary;
- anything not verified.

## Transition

```text
output: verification result or evidence path
state: verified | failed | unverified | human_needed
next: finish | debug | execute | stop
evidence: command output, repro, manual check, or named gap
```

## Next Skills

Load `praxis:debug` when verification fails unexpectedly. Load `praxis:finish` when verification supports the final claim.
