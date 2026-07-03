# Praxis Runtime

Runtime files coordinate active work. They are controller infrastructure, not durable artifacts.

Default root:

```text
.agents/runtime/<run-id>/
```

Suggested shape:

```text
.agents/runtime/<run-id>/
  .gitignore
  progress.md
  briefs/task-<n>-brief.md
  reports/task-<n>-report.md
  review-packages/review-<base>..<head>.diff
```

## Use Runtime Files For

- subagent task briefs;
- worker reports;
- review packages;
- queue or swarm progress;
- compaction recovery during an active run.

## Keep Durable Artifacts Separate

Distill runtime state only when it must survive the run:

- current truth or next action -> `context`;
- verification or review proof -> `evidence`;
- ownership transfer -> `handoff`;
- persistent work item -> `issue`;
- executable future recipe -> `plan`.

## Progress Ledger

`progress.md` should be short and operational:

```markdown
# <Run> Progress

State: running | blocked | review | verified | done

## Active Work

- <task id>: <owner/status/path>

## Latest Transition

- output:
- next:
- evidence:
```

Do not turn progress into a transcript.
