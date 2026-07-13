---
name: using-praxis
description: Use when the user invokes Praxis generally, several engineering concerns overlap, or the correct Praxis skill is genuinely unclear.
---

# Using Praxis

Praxis is a set of independent engineering techniques, not a mandatory lifecycle. Load the skill governing the next real activity, then do the work. Answer direct questions and implement clear local changes without routing them through generic ceremony.

| Current activity | Use |
| --- | --- |
| Intent, architecture, API shape, or tradeoffs are unclear | `design` |
| Observable behavior needs a stable contract | `spec` |
| Consequential rationale must survive | `record-decision` |
| Work needs an executable plan or an accepted plan must run | `plan` |
| Issues, a serial queue, or a program needs durable coordination | `work-management` |
| Work must survive a pause or ownership transfer | `continuity` |
| Something fails and the cause is unknown | `debug` |
| Independent bounded work should be delegated | `dispatch-subagents` |
| A bounded change or review feedback needs adversarial evaluation | `review` |
| A completion or readiness claim needs current proof | `verify` |
| Standing or user-facing documentation needs work | `docs` |
| Workspace isolation would reduce collision risk | `worktree` |
| Intended changes must be committed | `commit` |
| A pull request must be prepared or updated | `pr` |
| The next mutation could destroy, expose, or broadly alter state | `safety` |

Use one initial skill and add another only when its trigger becomes real. Keep plans and state in conversation unless another owner or session needs durability. Create one authoritative artifact per concern, delegate only independently briefable work, verify only the claim being made, and inspect source instead of asking for facts the repository can answer. The latest user instruction and repository policy take precedence.
