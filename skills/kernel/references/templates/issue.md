# Issue Template

Use for a durable SWE work slice that can be tracked, delegated, reviewed, or verified independently. Omit empty sections.

```markdown
# <Work Slice>

State: inbox | draft | ready | running | blocked | done
Priority: <high | medium | low, or omit>

Agent Control:
- Required process: `praxis:issue` while triaging; `praxis:plan` when execution is non-trivial; `praxis:queue` for serial batches or `praxis:subagents` for independent delegated batches.
- Execution mode: direct | queue | subagents | handoff
- Review gate: `praxis:preflight` before ready when substantial/risky/agent-authored; task review required when delegated, risky, cross-file, or user-facing.
- Verification gate: each acceptance criterion needs a check, manual proof, or explicit blocker.

## Problem Or Intent

<What needs to change and why.>

## Scope

In:
- <included behavior or area>

Out:
- <explicit non-goal>

## Acceptance Criteria

- AC-1: <checkable outcome>

## Ownership And Route

- Owner: <person/agent/package/team, or "unassigned">
- Execution route: direct | needs plan | queue | subagents | handoff
- Parallelizable with: <issue IDs or "none/unknown">
- Shared files or contracts: <paths/APIs/contracts that affect sequencing>

## Dependencies

- <decision/spec/issue/person/system>

## Links

- Spec:
- Plan:
- Branch/worktree:
- PR:
- Evidence:

## Notes

- <short context the executor or reviewer needs>

## Preflight Notes

- <self-check objection, source fact, issue change, or "not needed because ...">
```
