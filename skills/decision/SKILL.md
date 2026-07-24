---
name: decision
description: Use when a consequential technical, product, workflow, dependency, naming, or policy choice and its rationale must remain understandable after the current conversation.
---

# Record Decision

Record a decision only when forgetting its rationale would plausibly cause re-litigation, incompatibility, or incorrect implementation.

Inspect the evidence and constraints that shaped the choice. State the decision directly, then preserve only the consequences that govern future work: compatibility rules, accepted costs, follow-up constraints, and the condition that would justify revisiting it. Distinguish accepted decisions from proposals and unresolved questions.

The supervisor owns the decision. Use `oracle` under the [role contract](../../references/roles.md) only when consequential tradeoffs, context drift, or unresolved disagreement make independent advice materially useful.

Keep the result in conversation when no future owner needs it. When the choice must remain understandable after the current conversation, write it to the repository's declared decision surface or, by default, `.agents/decisions/YYYY-MM-DD-short-title.md`; do not introduce a committed convention without approval or leave a durable decision only in chat. When no format exists, use:

```markdown
---
type: decision
created: YYYY-MM-DD
status: proposed | accepted | superseded
promoted-from: <exploration or none>
supersedes: <link or none>
---

# <Decision>
## Context
<Constraints and evidence that changed the choice.>
## Decision
<One direct statement.>
## Consequences
- <Material benefit, cost, compatibility rule, or follow-up constraint.>
```

Link specifications, issues, plans, and evidence instead of copying them; use `promoted-from` and `supersedes`, and constrained artifacts cite the decision with `governed-by`. Route observable behavior to `spec` and executable steps to `plan`. When evidence changes, supersede or update the decision rather than leaving two records that appear current. Do not silently rewrite accepted history when the repository treats decision records as immutable.
