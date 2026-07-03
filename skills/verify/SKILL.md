---
name: verify
description: Use before saying work is done, fixed, passing, ready, reviewed, committed, merged, or complete. Maps claims to fresh evidence from tests, builds, repros, manual checks, or review output.
---

# Verify

Evidence before claims.

## Required Reads

Read `../workflow/references/artifacts.md` when verification evidence should persist.
Load the skill for the claim domain first when needed, such as `praxis:debug` for a bug fix claim, `praxis:review` for a review-clean claim, or `praxis:finish` for a completion claim.

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

## Next Skills

Load `praxis:debug` when verification fails unexpectedly. Load `praxis:finish` when verification supports the final claim.
