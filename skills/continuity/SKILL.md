---
name: continuity
description: Use when consequential engineering work must survive context loss, a pause, another session, or an ownership transfer and cannot be reconstructed cheaply from source and version control.
---

# Continuity

Preserve one current recovery record only when losing the present reasoning, evidence, or blocker would make safe resumption expensive. Source, Git history, issues, plans, and pull requests should carry state when they already suffice.

## Preserve Or Resume

Keep only the objective and finish condition, consequential constraints and non-goals, current evidence and decisions, active ownership or blockers, and one exact next action. Link authoritative artifacts instead of copying them. Rewrite stale statements rather than appending a diary. When no repository format exists and a durable record is warranted, adapt [references/work-record.md](references/work-record.md).

On resumption, read the latest request and inspect current source, branch, working tree, linked artifacts, and fresh evidence before trusting saved prose. Current evidence and the latest instruction win. Update or remove the record when it no longer improves recoverability.

## Transfer Ownership

When another person, agent, task, or session takes ownership, include the exact location, completed and pending outcomes, current diff or commit state, governing decisions, fresh verification, blockers, and the next action. Prefer the destination's native message surface; create a file only when requested or no reliable destination exists. Adapt [references/handoff-template.md](references/handoff-template.md) when needed.

One current continuity record is the limit. Do not duplicate status across recovery notes, handoffs, plans, and trackers, and do not treat a handoff as proof that unfinished work is complete.
