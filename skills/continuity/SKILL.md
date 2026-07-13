---
name: continuity
description: Use when consequential engineering work must survive context loss, a pause, another session, or an ownership transfer and cannot be reconstructed cheaply from source and version control.
---

# Continuity

Preserve one current recovery record only when another session or owner will continue, losing current reasoning would discard a consequential decision or blocker, several workers need one shared objective, or evidence would be expensive to reproduce. Source, Git history, issues, plans, and pull requests should carry state when they already suffice.

## Preserve Or Resume

Keep only the objective and finish condition, consequential constraints and non-goals, current evidence and decisions, active ownership or blockers, and one exact next action. Link authoritative artifacts instead of copying them. Rewrite stale statements rather than appending a diary. Do not change ignore rules merely to save state.

When no repository format exists and a durable record is warranted, use this shape:

```markdown
# Current Work
## Objective
<Outcome and finish condition.>
## Constraints
- <Consequential requirement or non-goal.>
## Current Evidence
- `<command or source>` — <decisive result and date when freshness matters.>
## Decisions
- <Choice and why it still constrains the next action.>
## Active Work And Blockers
- <Owner or branch, current state, blocker, and uncertainty.>
## Next Action
<One exact action.>
```

On resumption, read the latest request and inspect current source, branch, working tree, linked artifacts, and fresh evidence before trusting saved prose. Current evidence and the latest instruction win. Update or remove the record when it no longer improves recoverability.

## Transfer Ownership

Use a handoff only when ownership actually changes; same-owner recovery uses the record above. Before transfer, verify cited paths, hashes, commands, branch state, and external status against current reality. Include the exact location, objective and stop condition, completed and pending outcomes, current diff or commit state, governing constraints, fresh evidence, blockers or risks, and one next action. Prefer the destination's native message surface; create a file only when requested or no reliable destination exists.

```markdown
# Handoff: <Outcome>
- Location: <repository, branch, worktree, or task>
- Objective: <outcome and stop condition>
- Completed: <verified result>
- Pending: <remaining result>
- Evidence: <commands, commits, or links>
- Constraints: <consequential constraints>
- Blocker or risk: <exact signal or none>
- Next action: <one concrete action>
```

One current continuity record is the limit. Do not duplicate status across recovery notes, handoffs, plans, and trackers, and do not treat a handoff as proof that unfinished work is complete.
