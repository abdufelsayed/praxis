# Praxis Subagents

Use subagents only when the platform and user/repo policy allow it.

Subagent calls are ephemeral unless promoted into durable issues/plans and runtime controller state. The supervisor owns lifecycle truth.

Good delegation targets:

- independent investigation;
- implementation slices with disjoint files;
- review against a plan or requirements;
- QA verification while the main agent prepares delivery.

Bad delegation targets:

- the immediate blocking next step;
- vague "fix everything" work;
- tasks that require hidden conversation context;
- overlapping edits with no ownership boundary.

The supervisor keeps the plan, user communication, integration, verification, and final claims.

For implementation workers, use `praxis:worktree` by default: one Conventional-Commit-style branch, one `.agents/worktrees/<flattened-branch>/` checkout, and one bounded ownership area per worker.

## Runtime Protocol

For full or swarm work, use `.agents/runtime/<run-id>/`:

- `briefs/` for task briefs;
- `reports/` for worker reports;
- `review-packages/` for diffs and reviewer inputs;
- `progress.md` for current controller state.

Runtime files are controller infrastructure. Preserve only distilled context, evidence, issues, plans, or handoffs after the run.

## Required Worker Result

Each worker returns:

- Status: `DONE`, `DONE_WITH_CONCERNS`, `NEEDS_CONTEXT`, `BLOCKED`, or `FAILED`.
- Changed files.
- Checks run and results.
- Anything not verified.
- Remaining risk or review focus.

Do not mark work done from this report alone. Integrate, review, and verify independently.
