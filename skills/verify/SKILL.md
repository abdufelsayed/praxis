---
name: verify
description: Use before claiming that work is complete, ready, correct, fixed, passing, or safe to deliver when the claim requires current evidence.
---

# Verify

State the exact claim, then choose current evidence that could prove or disprove it. Use the repository's intended command, reproduction, inspection, or external status when one exists. Run it now; read the complete output, exit status, failures, warnings, and skips; then match the strength of the conclusion to the scope of the check.

Verification stays with the supervisor by default. Dispatch a fresh `verifier` under the [role contract](../../references/roles.md) only when isolated execution materially strengthens the proof or the user requests independent verification.

Examples:

- “Tests pass” requires the intended test target, not one unrelated test.
- “Bug fixed” requires the original reproduction and a regression check when practical.
- “Build succeeds” requires the build, not a linter.
- “Requirements met” requires mapping accepted behavior to the integrated result.
- “Subagent completed” requires inspecting its evidence and verifying the integration.
- “Ready” requires the intended diff, delivery rules, and relevant checks to agree.

Report `verified`, `failed`, or `unverified` with the decisive evidence and any gap. Let command output carry reproducible detail rather than restating it. A failed check blocks only the claim it was selected to prove. Diagnose variable evidence instead of rerunning until it happens to pass.

Evidence stays in the current result by default. Apply [artifact lifetime](../../references/artifacts.md) when an audit, external reviewer, or future owner needs a durable record.
