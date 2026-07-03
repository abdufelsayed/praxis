# Praxis Lanes

Use the lightest lane that can still produce a trustworthy result.

## Fast

Use for direct answers, small inspections, explanations, or tiny reversible edits.

- No durable artifact by default.
- No worktree by default.
- Verify with a focused command, readback, or clear reasoning.
- Stop as soon as the request is answered.

## Focused

Use for one bounded work item.

- Read relevant repo conventions.
- Use a short plan in chat or a compact local plan when it helps execution.
- Create a worktree when the edit is non-trivial or the repo expects branch isolation.
- Verify before completion.

## Full

Use for substantial, risky, multi-file, user-facing, long-running, or high-uncertainty work.

- Establish context and conventions.
- Use spec, issue, or plan boundaries as needed.
- Prefer worktree isolation.
- Use review and verification gates.
- Update durable state or handoff when future agents need it.

## Swarm Or Queue

Use for multiple work items, parallel workers, external coding agents, or long-running queues.

- Use durable issues/plans for work that must survive interruption.
- Use one branch/worktree per independent worker.
- Use `.agents/runtime/<run-id>/` for task briefs, reports, review packages, and progress.
- The supervisor owns integration, verification, and final claims.

## Escalation

Escalate for ambiguity, data loss, auth, security, migrations, CI/deploy, production behavior, large diffs, compaction risk, branch/worktree work, parallel workers, or repeated failed verification.

De-escalate for tiny reversible edits, pure explanation, explicit user preference, or work where the next safe action is obvious.
