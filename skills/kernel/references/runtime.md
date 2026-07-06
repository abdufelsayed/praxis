# Praxis Runtime

Runtime is active-work infrastructure. It coordinates supervisors, scripts, delegates, worktrees, queues, and review packages. It is not durable SDLC memory.

## Primitives

- `script`: deterministic local tool pipeline or file generator.
- `delegate`: bounded subagent for investigation, implementation, review, or QA.
- `durable board`: tracker, issue set, plan queue, or work list that survives the current session.

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
Program: <program path or "none">

## Controller State

- Current objective:
- Current truth source:
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
3. Supervisor dispatches the worker through the current harness's native subagent/delegation tool.
4. Worker acts in its assigned scope and writes a report.
5. Reviewer checks requirement compliance first, implementation quality second.
6. Supervisor integrates accepted changes and rejects or reassigns failed work.
7. Supervisor resolves `Cannot verify from diff` through source reading, tests, or a follow-up task.
8. Supervisor runs final verification for the integrated result.
9. Supervisor runs final integrated review when multiple tasks, workers, or branches contributed.
10. Supervisor updates runtime progress and durable state only when needed.

Do not let worker reports become completion proof. They are inputs to supervisor review and verification.
Do not count brief creation as delegation. Without an actual worker dispatch, route to `queue`; use `execute` only after the artifact or route is revised down to one bounded local slice.

## Supervisor Mechanics

### Slice Selection

- Choose slices that are independently understandable, independently checkable, and small enough to review from a report plus diff.
- Prefer ownership boundaries from files, packages, issues, plans, or APIs already present in the repo.
- Do not split one contract across workers unless the supervisor owns the contract and the briefs name the integration order.
- Keep one task unsplit when the cost of explaining, merging, or verifying it would exceed the benefit of delegation.

### Bounded Concurrency

- Set a concurrency limit in `progress.md` before spawning workers.
- Start with the smallest number that can make useful parallel progress.
- Reduce concurrency when review finds serious issues, verification fails, workers touch adjacent files, or the supervisor cannot keep up with reports.
- Add workers only after existing task ownership and expected integration points are clear.
- Spawn independent workers before waiting when their write scopes, worktrees, or investigation domains are disjoint. Wait immediately only when the next supervisor action depends on that worker's result.

### Stale Workers

- Treat a worker as stale when its brief is obsolete, its files changed under it, its report is missing, or its verification target no longer matches the integrated state.
- Pause, cancel, or rebrief stale workers before accepting their output.
- If stale output is still useful, salvage it through source reading or a new bounded task; do not integrate it by trust.

### Conflicts And Integration

- Resolve file ownership conflicts before merging or applying worker changes.
- Integrate in dependency order: contracts and shared helpers first, leaf implementations next, docs and cleanup last.
- After each accepted slice, update `progress.md` with the current task state, report, and latest transition.
- If an integrated slice invalidates another worker brief, mark that worker blocked, stale, or reassigned before continuing.
- If an integrated slice invalidates program truth, route to `praxis:refine` before dispatching or integrating dependent work.

### Final Verification

- The supervisor, not workers, owns the final claim.
- Run the narrowest proof that covers the integrated result, then broader checks when contracts, shared behavior, docs claims, or delivery gates require them.
- A failed final check routes to refine, repair, execute, replan, blocked, or handoff; it never routes directly to done.
- Name any verification gap in the latest transition and final report.

## Controller Rules

- Keep one supervisor truth source for active task status.
- Use bounded concurrency; prefer fewer workers with clear ownership over many vague workers.
- Pause or stop spawning when review finds Critical/Important issues, verification fails, or file ownership conflicts appear.
- Interrupt or cancel stale workers before integrating over their files.
- Do not let two workers own the same file or contract unless the brief says how conflicts are resolved.
- For scenario probes, give delegates natural task prompts and audit the flow afterward; do not tell the tested agent the expected lane, driver, or that it is being tested.

## Runtime To Artifact

Distill only durable residue into existing artifact types:

- current truth -> `context`;
- evolving program truth -> `program`;
- proof or review verdict -> `evidence`;
- future work -> `issue` or `plan`;
- ownership transfer -> `handoff`.

Keep runtime-only details out of durable artifacts unless they affect future correctness, ownership, decisions, evidence, or recovery. Everything else can die with the run.
