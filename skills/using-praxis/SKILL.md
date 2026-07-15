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

Use one initial skill and add another only when its trigger becomes real. Keep one-turn alignment in conversation, but when another owner, session, or system needs a local record, write the artifact under `.agents/`: explorations in `explorations/`, decisions in `decisions/`, specifications in `specs/`, issues in `issues/<state>/`, plans in `plans/<state>/`, programs in `programs/`, continuity records in `context/`, handoffs in `handoffs/`, and durable review or verification evidence in `evidence/`. Use `YYYY-MM-DD-short-title.md` unless the owning skill specifies a stable name.

A repository-declared artifact location or configured tracker may own the record instead; do not mirror it into `.agents/`. Treat `.agents/` as ignored local operational state unless the repository explicitly commits agent artifacts. Once durability is warranted, do not substitute a chat response for the artifact. Create one authoritative artifact per concern, delegate only independently briefable work, verify only the claim being made, and inspect source instead of asking for facts the repository can answer. The latest user instruction and repository policy take precedence.

Design and queue execution are activities, not artifact types: preserve pre-decision reasoning as an exploration, accepted choices as decisions, observable contracts as specifications, and queue state in its owning issues, plans, or program. Before creating a local artifact, inspect its owning `.agents/` directory for an existing current record. Treat legacy `active` state as `running`; classify legacy `designs/` by content; treat legacy `queues/` as derived views and preserve their authoritative state before retiring them.
