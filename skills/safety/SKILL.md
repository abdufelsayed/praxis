---
name: safety
description: Use immediately before a destructive, irreversible, production, data-affecting, permission-changing, force, secret-handling, cross-project, or broad rewrite operation.
---

# Safety

Pause at the last responsible moment before the risky mutation.

Name the exact target and operation, why it is needed, and what could be lost, exposed, or disrupted. Inspect current state, ownership, dependencies, and unrelated work. Bound the blast radius, prefer a reversible route, and state the rollback or recovery path. Confirm the user approved this exact scope; prior approval is sufficient when nothing material changed.

Always apply this check before force pushes, history rewrites, hard resets, checkout overwrites, removing dirty or unmerged worktrees, destructive migrations or SQL, production writes, secret exposure, recursive permission changes, or broad deletion outside known generated output. Credential paths are also guarded mechanically where the harness supports it (praxis-guard); never read credential files directly — use the owning service or an authenticated integration.

Stop when the target or owner is ambiguous, unrelated work cannot be protected, recovery is unavailable and loss was not explicitly approved, credentials are missing, evidence changed, or the operation expands beyond scope. Ask only for the smallest missing decision.

After execution, verify the resulting state and return to the original task. Do not create a standing safety artifact.
