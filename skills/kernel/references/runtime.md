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
Lane: full | swarm
Supervisor: <agent/app/model or owner>
Plan/Issue: <path or tracker link>

## Controller State

- Current objective:
- Integration branch/worktree:
- Concurrency limit:
- Stop condition:

## Task Board

| Task | Owner | State | Branch/Worktree | Report | Updated |
| --- | --- | --- | --- | --- | --- |
| T1 | <owner> | ready | <path> | <path> | <time> |

## Latest Transition

- output:
- lane:
- state:
- result:
- next:
- evidence:

## Event Log

- <time> | <task/run event> | <evidence path or command>
```

Do not make it a transcript. Record controller events that affect coordination, resume, review, verification, or delivery.

## Delegation Loop

1. Supervisor chooses a bounded task from a plan, issue, or queue.
2. Supervisor writes a task brief with scope, ownership, constraints, acceptance criteria, checks, and report path.
3. Worker acts in its assigned scope and writes a report.
4. Reviewer checks requirement compliance first, implementation quality second.
5. Supervisor integrates accepted changes and rejects or reassigns failed work.
6. Supervisor resolves `Cannot verify from diff` through source reading, tests, or a follow-up task.
7. Supervisor runs final verification for the integrated result.
8. Supervisor updates runtime progress and durable state only when needed.

Do not let worker reports become completion proof. They are inputs to supervisor review and verification.

## Controller Rules

- Keep one supervisor truth source for active task status.
- Use bounded concurrency; prefer fewer workers with clear ownership over many vague workers.
- Pause or stop spawning when review finds Critical/Important issues, verification fails, or file ownership conflicts appear.
- Interrupt or cancel stale workers before integrating over their files.
- Do not let two workers own the same file or contract unless the brief says how conflicts are resolved.
- For scenario probes, give delegates natural task prompts and audit the flow afterward; do not tell the tested agent the expected lane, driver, or that it is being tested.

## Runtime To Artifact

Distill only the durable residue:

- current truth -> `context`;
- proof or review verdict -> `evidence`;
- future work -> `issue` or `plan`;
- ownership transfer -> `handoff`.

Everything else can die with the run.
