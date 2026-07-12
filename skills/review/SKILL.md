---
name: review
description: Use when a diff, branch, pull request, plan, design, or implementation needs adversarial read-only review for requirement gaps, defects, regressions, or missing proof.
---

# Review

## Overview

Review a bounded target against its intended behavior. Lead with actionable findings; do not implement fixes or declare the work complete.

## Establish The Review Contract

Identify:

- the exact target: named files, a pull-request diff, or `BASE...HEAD`;
- the requirements, design, issue, or user request it claims to satisfy;
- repository-specific review and severity conventions;
- relevant checks already run and claims still unproven.

Do not review the entire dirty working tree or unrelated untracked content. If no reliable scope exists, ask for one or derive a base and head before reviewing.

## Review In This Order

1. Requirement coverage: missing, extra, or misunderstood behavior.
2. Correctness: inputs, state transitions, errors, cleanup, concurrency, permissions, and compatibility where relevant.
3. Tests: meaningful assertions, false positives, missing public behavior, and whether the reported checks exercise the change.
4. Maintainability: ownership boundaries, duplication, naming, and complexity introduced by this change.
5. Proof: claims the diff or current evidence cannot establish.

Verify source-answerable concerns before reporting them as defects. Passing tests do not replace requirement review.

## Write Actionable Findings

Use repository severity conventions when they exist. Otherwise:

- **Critical:** unsafe, destructive, security-sensitive, or fundamentally incorrect.
- **Important:** likely bug, regression, missing requirement, or proof gap that blocks readiness.
- **Minor:** worthwhile improvement that does not block the stated result.

Each finding needs a tight path and line, the mechanism, the consequence, and the expected correction:

```text
Important — src/retry.ts:42 — The retry branch reuses the expired token, so every attempt repeats the same authorization failure. Refresh the token before re-entering the request loop.
```

“Improve error handling” is not a finding. If there are no findings, say so and name the remaining review or verification limits. Do not manufacture issues to fill a report.

## Boundaries

- Remain read-only unless the user asks to address findings.
- Do not trust implementer summaries in place of the diff.
- Do not report speculative concerns without a concrete failure mechanism.
- Do not claim a concern is fixed without a subsequent diff and fresh proof.
