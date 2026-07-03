---
name: verify
description: Use before claiming work is done, fixed, passing, ready, reviewed, committed, merged, or complete. Maps claims to fresh evidence.
---

# Verify

Evidence before claims.

## Required Reads

Load the skill for the claim domain first when needed, such as `praxis:debug` for a bug fix claim, `praxis:review` for a review-clean claim, or `praxis:finish` for a completion claim.
Use `../workflow/references/templates/evidence.md` when persisted verification evidence is needed.

## Gate

Before a completion claim:

1. Identify the command or check that proves it.
2. Run it fresh unless impossible.
3. Read output and exit code.
4. State the actual result.
5. Name anything not verified.

## Mapping

- "tests pass" requires current test output.
- "build passes" requires current build output.
- "bug fixed" requires original repro no longer failing.
- "plan complete" requires acceptance criteria checked.
- "review clean" requires an actual review.

Do not use success language when verification did not run.

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
state: verified | failed | unverified
next: finish | debug | execute | stop
evidence: command output, repro, manual check, or named gap
```

## Next Skills

Load `praxis:debug` when verification fails unexpectedly. Load `praxis:finish` when verification supports the final claim.
