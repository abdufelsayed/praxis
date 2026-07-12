---
name: using-praxis
description: Use when the user invokes Praxis generally, several engineering concerns overlap, or the right Praxis skill is unclear.
---

# Using Praxis

## Overview

Praxis is a set of independent techniques, not a lifecycle. Load the skill that governs the next decision, then do the work.

## Choose The Next Technique

| Situation now | Use |
| --- | --- |
| Intent, requirements, API shape, or architecture is unclear | `design` |
| Observable behavior or compatibility needs a durable contract | `spec` |
| A consequential choice and rationale must survive | `record-decision` |
| Another person or session needs an executable implementation handoff | `plan` |
| An accepted written plan must be carried out | `execute-plan` |
| Durable work items must be created, split, or updated | `manage-issues` |
| Several ready work items must run serially | `run-queue` |
| A long-running initiative needs one current direction | `coordinate-program` |
| Work must survive a pause, context loss, or ownership change | `preserve-context` |
| Active work is changing owner, agent, task, or session | `handoff` |
| Something is failing or behaving unexpectedly | `debug` |
| Independent bounded work benefits from separate agents | `dispatch-subagents` |
| A diff, branch, design, or plan needs adversarial inspection | `review` |
| Review feedback must be evaluated before editing | `address-review` |
| A completion or readiness claim needs current proof | `verify` |
| A README, guide, runbook, or repository instruction needs work | `docs` |
| Isolation from the current checkout would reduce collision risk | `worktree` |
| Intended changes must be staged and committed | `commit` |
| A pull request must be created, updated, or rewritten | `pr` |
| The next operation could destroy, expose, or broadly alter state | `safety` |

Answer direct questions and implement clear changes without loading a generic implementation or finishing workflow. Repository instructions and the user's latest request take precedence.

## Keep The Workflow Proportional

- Use one initial skill. Add another only when its trigger becomes real.
- Keep plans and saved state in the conversation unless somebody will need them later.
- Create only the durable artifact whose owner needs it; do not duplicate state between artifacts.
- Delegate only work that can be briefed and checked independently.
- Verify only the claim you intend to make.
- Inspect source instead of asking for facts the repository can answer.
