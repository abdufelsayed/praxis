# Praxis Artifacts

Artifacts are operational state, not transcripts. They help a fresh agent continue the work without replaying the conversation.

## Contents

- Rules
- Families
- Catalog

## Rules

- Write the current truth, not conversation archaeology.
- Preserve live goals, decisions, constraints, blockers, and evidence.
- Drop discarded options unless a future agent is likely to repeat the mistake.
- Keep each artifact scoped to one purpose.
- Link related artifacts instead of duplicating them.
- Use repo convention first; otherwise use the default `.agents/` paths below.

## Families

- Memory: `context`, `checkpoint`, `handoff`.
- Thinking: `discussion`, `decision`, `spec`.
- Execution: `issue`, `plan`, `worktree`.
- Quality: `review`, `verification`.

## Catalog

### context

Purpose: living project or session memory for future agents.
Default: `.agents/context/project.md`, `.agents/context/session.md`, or `.agents/state/current.md`.
Shape:

- Goal.
- Current status.
- Durable conventions and decisions.
- Open questions and blockers.
- Next action.
- Links to active issues, plans, branches, PRs, worktrees, or commands.

### discussion

Purpose: useful exploration before a decision or plan exists.
Default: `.agents/discussions/YYYY-MM-DD-short-title.md`.
Shape:

- Question.
- Relevant facts.
- Options considered with tradeoffs.
- Current leaning.
- Open questions.
- Follow-up artifact to create, if any.

### decision

Purpose: a choice future agents should respect.
Default: `.agents/decisions/YYYY-MM-DD-short-title.md`.
Shape:

- Decision.
- Context.
- Rationale.
- Consequences.
- Important rejected alternatives only when they prevent likely confusion.

### spec

Purpose: desired behavior and constraints before implementation planning.
Default: `.agents/specs/YYYY-MM-DD-short-title.md`.
Shape:

- Goal and non-goals.
- Users or callers.
- Required behavior.
- Constraints.
- Acceptance criteria.
- Risks and unknowns.

### issue

Purpose: durable work item or vertical slice.
Default: repo tracker, or `.agents/issues/<state>/YYYY-MM-DD-short-title.md`.
Shape:

- Intent or problem.
- Scope.
- Acceptance criteria.
- Dependencies.
- Links to spec, plan, branch, PR, or evidence.
- Status.

### plan

Purpose: executable recipe another agent can run.
Default: `.agents/plans/<state>/YYYY-MM-DD-short-title.md`.
Shape:

- Goal.
- Linked issue or spec.
- Context the worker needs.
- Files likely to change.
- Branch/worktree expectation.
- Acceptance criteria.
- Vertical tasks with checkboxes.
- Commands and expected signals.
- Blockers and rollback notes.

### checkpoint

Purpose: compact state snapshot during long work or compaction risk.
Default: `.agents/state/YYYY-MM-DD-short-title.md`.
Shape:

- Goal.
- What has been decided.
- What has changed.
- Current files and artifacts.
- Next step.
- Blockers.
- Verification status.

### handoff

Purpose: transfer work to another agent, thread, or future session.
Default: `.agents/handoffs/YYYY-MM-DD-short-title.md`.
Shape:

- Goal.
- Current status.
- Branch and worktree.
- Files touched.
- Commands run and results.
- Key decisions.
- Next action.
- Blockers and risks.

### review

Purpose: adversarial findings before landing, marking ready, or handing off.
Default: `.agents/reviews/YYYY-MM-DD-short-title.md`.
Shape:

- Scope reviewed.
- Findings by severity with file references.
- Missing tests or verification gaps.
- Residual risk.
- Follow-up actions.

### verification

Purpose: evidence for a claim such as done, fixed, passing, merged, or ready.
Default: `.agents/verification/YYYY-MM-DD-short-title.md`.
Shape:

- Claim.
- Commands or checks run.
- Result and signal.
- Evidence location or output summary.
- Anything not verified.

### worktree

Purpose: isolated branch/worktree ownership for autonomous or parallel work.
Default: `.agents/worktrees/<flattened-branch>/` and optional `.agents/state/worktrees.md`.
Shape:

- Branch.
- Worktree path.
- Goal or linked plan.
- Owner or agent.
- Status.
- Merge, PR, or cleanup state.
