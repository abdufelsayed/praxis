---
name: refactor
description: Use when changing code structure without intending behavior changes, or when a feature requires controlled cleanup of boundaries, names, duplication, or module shape.
---

# Refactor

Change structure with behavior protected.

## Required Reads

Load `praxis:design` when boundaries, ownership, or abstractions are unclear.

## Flow

1. Identify the behavior that must remain unchanged.
2. Ensure tests or checks cover that behavior.
3. Make the smallest structural change that serves the current goal.
4. Run verification after each meaningful step.
5. Avoid broad style churn and unrelated cleanup.

If behavior changes are needed, load `praxis:tdd` or `praxis:plan`.

## Next Skills

Load `praxis:verify` before claiming behavior was preserved.
