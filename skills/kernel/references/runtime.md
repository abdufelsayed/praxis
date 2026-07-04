# Praxis Runtime

Runtime is active-work infrastructure. It coordinates supervisors, scripts, delegates, worktrees, queues, and review packages. It is not durable SDLC memory.

## Primitives

- `script`: deterministic local tool pipeline or file generator.
- `delegate`: bounded subagent for investigation, implementation, review, or QA.
- `durable board`: tracker, issue set, plan queue, or persisted work list that survives the current session.

Choose the primitive by durability:

- Use scripts for repeatable mechanics.
- Use delegates for reasoning or bounded work inside the current session.
- Use durable boards for long-running autonomous work that must survive sessions.

## Runtime Directory

Default shape:

```text
.agents/runtime/<run-id>/
  .gitignore
  progress.md
  briefs/
  reports/
  review-packages/
```

`progress.md` is a short operational ledger:

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

Do not make it a transcript.

## Delegation Loop

1. Supervisor chooses a bounded task from a plan, issue, or queue.
2. Supervisor writes a task brief with scope, ownership, constraints, acceptance criteria, checks, and report path.
3. Worker acts in its assigned scope and writes a report.
4. Reviewer checks requirement compliance first, implementation quality second.
5. Supervisor integrates, resolves `Cannot verify from diff`, and runs verification.
6. Supervisor updates runtime progress and durable state only when needed.

## Runtime To Artifact

Distill only the durable residue:

- current truth -> `context`;
- proof or review verdict -> `evidence`;
- future work -> `issue` or `plan`;
- ownership transfer -> `handoff`.

Everything else can die with the run.
