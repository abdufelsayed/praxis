# Praxis Lifecycle

The lifecycle is a map, not a mandate. Use it to keep autonomous work legible, but skip, merge, or revisit states when the work is small or the evidence changes.

## Contents

- Principles
- When To Read
- Default Flow
- Status Vocabulary
- Transitions
- Loops and Side Exits
- Persistence Rules

## Principles

- Direct user instructions and repo conventions override Praxis defaults.
- Use the lightest state that protects correctness, context, and handoff.
- Persist state only when it helps a future agent, queue, review, or human checkpoint.
- Move backward when facts invalidate the current state.
- Split work when an issue, plan, or branch becomes too broad.
- Do not treat lifecycle labels as proof; verification still needs evidence.

## When To Read

Read this file when work has durable state or transition risk:

- queued issues or plans;
- plan state such as draft, ready, running, blocked, or done;
- worktree ownership or merge/cleanup state;
- subagent or parallel work;
- blockers, deferral, cancellation, or handoff;
- long-running work or compaction risk;
- finish decisions after review and verification.

Do not use this file to choose L0-L4 level. `routing.md` owns classification and escalation.

## Default Flow

```text
intake
  -> discuss / brainstorm / explore
  -> spec / decision
  -> issue
  -> plan:draft
  -> plan:ready
  -> worktree:active
  -> executing
  -> review
  -> verification
  -> finish
  -> done
```

Not every task needs every state. For example, L1 can go from `intake` to `executing` to `verification` to `done`.

## Status Vocabulary

- `inbox`: captured but not triaged.
- `draft`: useful but not ready for execution.
- `ready`: sufficiently scoped and unblocked.
- `running`: actively owned by an agent or worktree.
- `blocked`: cannot progress without a decision, dependency, or external change.
- `deferred`: intentionally paused for later priority.
- `cancelled`: intentionally closed without completion.
- `done`: acceptance criteria and verification are satisfied.
- `handoff`: continuation is expected in another thread, agent, or session.

Use repo tracker statuses when configured. Otherwise mirror these states in `.agents/issues/<state>/` and `.agents/plans/<state>/`.

## Transitions

### intake -> discuss / brainstorm / explore

Use when intent is unclear, options matter, or code/system facts are unknown.

### discuss / brainstorm / explore -> spec / decision

Use when the conversation produces durable desired behavior or a choice future agents must respect.

### spec / decision -> issue

Use when work should become an independently verifiable slice.

### issue -> plan:draft

Use when execution details are non-trivial, risky, multi-file, queued, or useful for another agent.

### plan:draft -> plan:ready

Use after review or human acceptance confirms scope, acceptance criteria, commands, and blockers.

### plan:ready -> worktree:active

Use for L2+ implementation unless repo or user instruction says otherwise.

### worktree:active -> executing

Use once branch, worktree path, owner, and scope are known.

### executing -> review

Use when a slice appears complete or before marking a plan ready/done.

### review -> verification

Use when review has no blocking findings or after findings are addressed.

### verification -> finish

Use when fresh evidence supports the completion claim.

### finish -> done

Use after durable state is updated and commit, PR, merge, cleanup, or handoff choice is clear.

## Loops and Side Exits

- `review -> executing`: fix findings.
- `verification -> debug -> executing`: failed proof or regression.
- `blocked -> discuss / decide`: needs user or policy choice.
- `explore -> prototype -> spec / plan`: spike produced evidence.
- `executing -> plan:draft`: implementation exposed missing plan work.
- `any -> handoff`: compaction, thread switch, subagent transfer, or pause.
- `any -> deferred`: intentionally postponed.
- `any -> cancelled`: explicitly abandoned.

## Persistence Rules

- Issues and plans carry queue state.
- Context carries living project/session state.
- Checkpoints carry temporary continuity state.
- Handoffs carry transfer state.
- Worktrees carry branch/path/owner state.
- Review and verification carry quality evidence.

Prefer links between artifacts over copying the same facts into every file.
