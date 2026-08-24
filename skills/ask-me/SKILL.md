---
name: ask-me
description: Explain which Praxis skill or workflow fits the user's current situation. Use only when the user asks how to proceed or explicitly invokes Ask Me.
---

# Ask Me

Recommend the smallest path that resolves the actual uncertainty. Skills are
optional techniques; a clear contained task can proceed directly.

## Main path

For an idea that needs to become working software:

1. **Discover Requirements** only while needs, constraints, or boundaries remain
   consequentially unclear.
2. **Make Tangible** for a perceptible question or **Design Solution** for one
   consequential architecture choice.
3. **Formalize** accepted meaning into a reader-ready specification when durable
   precision is useful.
4. **Define Issues** as vertical tracer bullets with blocking edges.
5. **Plan** the selected issue at implementation seams.
6. **Deliver** it in vertical slices, using TDD, Debug, Refactor, Verify, Security,
   and Review only where they earn their cost.
7. **Commit** and **Prepare PR** only when requested.

Skip any stage whose answer is already settled. For a small task, Plan and Deliver
may happen in the current context without creating documents.

## On-ramps

- Something is broken and the cause is unknown → **Debug**.
- Incoming issues or external PRs need maintainer decisions → **Triage**.
- A destination is too large or foggy for one implementation context → **Evolve**.
- Several projects share a strategic dependency or decision → **Coordinate
  Initiative**.
- Architecture is resisting change but the pressure is not yet localized →
  **Improve Architecture**, then **Refactor** the selected pressure.
- The requester wants to implement interactively → **Pair**.
- A plan, result, artifact, or diff needs visual human review → **Plannotator**.
- Manual provisioning or dashboard work needs a repeatable human journey →
  **Wizard**.

## Persistence and context

Keep ordinary work in conversation. Use `.praxis` for cross-session continuity,
shared maps, accepted specifications, or decisions with a named future consumer.
Use a worktree only for a concrete isolation risk and delegation only for a clear
net benefit.

Explain the recommendation in the project's language, including what it resolves
and what can be skipped. Do not run a workflow merely because it appears in this
map.
