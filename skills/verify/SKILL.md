---
name: verify
description: Use before claiming that work is complete, ready, correct, fixed, passing, or safe to deliver when the claim requires current evidence.
---

# Verify

State the exact claim, then choose current evidence that could prove or disprove it. Use the repository's intended command, reproduction, inspection, or external status when one exists. Run it now; read the complete output, exit status, failures, warnings, and skips; then match the strength of the conclusion to the scope of the check.

Examples:

- “Tests pass” requires the intended test target, not one unrelated test.
- “Bug fixed” requires the original reproduction and a regression check when practical.
- “Build succeeds” requires the build, not a linter.
- “Requirements met” requires mapping accepted behavior to the integrated result.
- “Subagent completed” requires inspecting its evidence and verifying the integration.
- “Ready” requires the intended diff, delivery rules, and relevant checks to agree.

Report `verified`, `failed`, or `unverified` with the decisive evidence and any gap. A failed check blocks only the claim it was selected to prove. Do not soften failure into optimism or rerun a flaky check until it happens to pass without diagnosing the variability.

Keep evidence in command output and a concise report unless an audit, external reviewer, or future session needs a durable record.
