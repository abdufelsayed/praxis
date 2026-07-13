---
name: record-decision
description: Use when a consequential technical, product, workflow, dependency, naming, or policy choice and its rationale must remain understandable after the current conversation.
---

# Record Decision

Record a decision only when forgetting its rationale would plausibly cause re-litigation, incompatibility, or incorrect implementation.

Inspect the evidence and constraints that shaped the choice. State the decision directly, then preserve only the consequences that govern future work: compatibility rules, accepted costs, follow-up constraints, and the condition that would justify revisiting it. Distinguish accepted decisions from proposals and unresolved questions.

Use the repository's established decision surface. Keep the result in conversation when no future owner needs it; do not introduce a committed convention without approval. When a durable local record is appropriate and no format exists, use:

```markdown
# <Decision>
Status: proposed | accepted | superseded
Date: YYYY-MM-DD
## Context
<Constraints and evidence that changed the choice.>
## Decision
<One direct statement.>
## Consequences
- <Material benefit, cost, compatibility rule, or follow-up constraint.>
## Supersedes
<Link or none.>
```

Link specifications, issues, plans, and evidence instead of copying them. Route observable behavior to `spec` and executable steps to `plan`. When evidence changes, supersede or update the decision rather than leaving two records that appear current. Do not silently rewrite accepted history when the repository treats decision records as immutable.
