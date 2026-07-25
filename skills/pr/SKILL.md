---
name: pr
description: Use when creating, updating, preparing, or describing a pull request, including its branch state, title, body, validation, reviewer guidance, and draft or ready status.
---

# PR

Confirm the base, head, remote, upstream, branch status, commits, existing pull request, repository instructions, and template. Inspect the complete branch diff against base and identify uncommitted or unpushed work.

Use `verify` before claiming readiness and `review` when an adversarial pass materially improves confidence. Before a plan-governed branch is marked ready, route the exact full diff through the Plannotator result gate in [control flow](../../references/control-flow.md); address bounded feedback and re-gate. An unchanged diff already approved as an evolution result may satisfy this review gate, but its approval still grants no push, PR-ready, merge, or deployment authority. When no convention decides status, keep the PR draft until checks and intended commits are complete and the user asks to mark it ready.

Write for reviewers and follow the repository template. When none exists, use:

```markdown
## Problem
## Change
## Validation
- `<command or observation>` — <current result>
- Unverified: <material gap or none>
## Risk And Migration
## Review Focus
## Links
```

Describe the problem, behavioral or structural result, current validation, material risk or migration, focused review guidance, and relevant issues, specifications, decisions, plans, or PRs. Do not produce a file inventory, commit transcript, agent history, or claim unsupported by current evidence.

Push only when the remote, branch, base, and intended scope are clear. Create or update the PR through the repository-preferred tool; use its CLI or API fallback when the normal surface is unavailable and the same scope is preserved. Then re-read its URL, title, rendered body, base/head, commit set, and draft state.

Do not merge, force-push, delete branches, change unrelated metadata, or mark ready without authorization. Report the URL or draft content, state, base/head, push result, current proof, blockers, and next useful action.
