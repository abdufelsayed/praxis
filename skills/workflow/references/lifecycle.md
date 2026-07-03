# Praxis Lifecycle

Lifecycle is state vocabulary for durable work. Routing chooses the next driver; lifecycle keeps long-running work legible.

## Principles

- Direct user instructions and repo conventions override defaults.
- Use the lightest state that protects correctness, context, and handoff.
- Persist state only when it helps a future agent, queue, review, or human continuation point.
- Move backward when facts invalidate the current state.
- Split work when an issue, plan, or branch becomes too broad.
- Do not treat lifecycle labels as proof; verification still needs evidence.

## When To Read

Read this file when durable state has transition risk:

- queued issues or plans;
- draft, ready, running, blocked, done, deferred, or cancelled state;
- worktree ownership, merge, or cleanup state;
- subagent or parallel work;
- blockers, handoff, or long-running work;
- finish decisions after review and verification.

Do not use this file to choose the fast/focused/full/swarm lane or artifact shape.

## Typical Flow

```text
intake
  -> understanding
  -> direction
  -> executable work
  -> isolated execution
  -> quality gate
  -> delivery
  -> continuity or done
```

Most tasks skip states. Fast work can go from `intake` to `execute` to `quality gate` to `done`.

## Status Vocabulary

- `inbox`: captured but not triaged.
- `draft`: useful but not ready for execution.
- `ready`: sufficiently scoped and unblocked.
- `running`: actively owned by an agent, branch, or worktree.
- `blocked`: cannot progress without a decision, dependency, or external change.
- `deferred`: intentionally paused for later priority.
- `cancelled`: intentionally closed without completion.
- `done`: acceptance criteria and verification are satisfied.
- `handoff`: continuation is expected in another thread, agent, or session.

Use repo tracker statuses when configured. Otherwise mirror queue states in local issue/plan paths from `persistence.md`.

## Transitions

### intake -> understanding

Use when intent is unclear, options matter, or code/system facts are unknown.

### understanding -> direction

Use when findings produce a durable decision or desired behavior.

### direction -> executable work

Use when work should become a spec, issue, plan, or independently verifiable slice.

### executable work -> isolated execution

Use when execution details are non-trivial, risky, multi-file, queued, or useful for another agent. Create or confirm the branch/worktree when needed.

### isolated execution -> quality gate

Use when a slice appears complete or before marking a plan ready/done.

### quality gate -> delivery

Use when review and verification support the completion claim.

### delivery -> continuity or done

Use after durable state is updated and commit, PR, merge, cleanup, or handoff choice is clear.

## Loops And Side Exits

- `quality gate -> isolated execution`: fix findings or failed checks.
- `blocked -> discuss / decide`: needs user, policy, or dependency choice.
- `exploration -> prototype -> direction`: spike produced evidence.
- `isolated execution -> executable work`: implementation exposed missing plan work.
- `any -> handoff`: compaction, thread switch, subagent transfer, or pause.
- `any -> deferred`: intentionally postponed.
- `any -> cancelled`: explicitly abandoned.

## Persistence Notes

- Issues and plans carry queue state.
- Context carries living project/session/workstream state.
- Evidence carries review and verification proof when it needs to survive the turn.
- Handoffs carry transfer state.

Prefer links between artifacts over copying the same facts into every file.
