# Praxis State Machine

The state machine describes durable work transitions. It is not a mandatory ceremony for small work.

## States

| State | Meaning |
| --- | --- |
| `none` | No durable state needed. |
| `inbox` | Work or input exists but has not been triaged into a durable shape. |
| `exploring` | Facts, options, failures, or requirements are being investigated. |
| `draft` | An artifact exists but is not ready for execution. |
| `ready` | The next owner can act without reconstructing context. |
| `running` | Work is actively being executed. |
| `blocked` | Progress needs user input, external state, credentials, or a dependency. |
| `implemented` | The intended change is made, but review, verification, delivery, or cleanup remains. |
| `review` | Work awaits adversarial review or has findings. |
| `verified` | The relevant claim has fresh evidence. |
| `done` | Work is complete and durable state is updated. |
| `handoff` | Another agent/session owns continuation. |
| `deferred` | Valid follow-up work is intentionally postponed with an owner or next artifact. |
| `cancelled` | Work intentionally stops without completion. |

## Truth Status

Artifact truth status is separate from lifecycle state:

| Truth Status | Meaning |
| --- | --- |
| `draft` | Still being shaped; not safe to drive execution. |
| `provisional` | Usable only under named assumptions, verifier, or accepted risk. |
| `accepted` | Current truth for downstream artifacts. |
| `superseded` | Replaced by a newer artifact or synthesis. |
| `invalidated` | Disproved or made unsafe by evidence/counterexample. |

Do not encode truth status as lifecycle `state`. A plan can be `running` while its truth status becomes `invalidated`; that must route to `refine`, not continue to done.

## Common Transitions

```text
discuss/explore -> program/design/decide/spec/issue/plan
program -> explore/design/decide/spec/issue/plan/preflight
refine -> program/explore/design/decide/spec/issue/plan/execute/repair
spec -> issue/plan
issue -> plan/queue/execute
plan draft -> plan ready -> worktree | execute | queue | subagents
execute -> implemented -> review | verify
queue -> implemented | blocked | handoff
subagents -> review | verify | blocked
review -> execute | verify
repair -> verify
verify failed -> refine | repair | execute | blocked
verify verified -> deliver
deliver -> commit | pr | handoff | done | deferred | cancelled
```

## Driver Call And Return

- The kernel calls one current driver for one bounded transition.
- Drivers return a transition packet; the kernel decides whether to continue, switch drivers, save state, ask, or stop.
- Helper drivers such as `repo-policy`, `source`, `safety`, and `worktree` return to their caller unless they surface a blocker or required route change.
- `subagents` is an execution driver when it owns fork/join work. It returns worker/review/integration state, not a helper note.
- `state` describes lifecycle position; `result` describes driver-local outcomes such as `clean`, `failed`, `delegated`, `committed`, or `worktree:active`.
- Do not skip from a failed, blocked, or stale driver result to `done`; route through repair, replan, review, verify, handoff, or cancellation.

## Adaptation Triggers

Change route when the current process no longer matches reality:

- unclear or changed user intent -> `discuss` or `spec`;
- counterexample, invalidated assumption, or superseded artifact -> `refine`;
- missing or contradicted facts -> `explore` or `source`;
- boundary, naming, or API uncertainty -> `design` or `decide`;
- plan disproved by implementation -> update `plan` or `issue`;
- broken behavior or failed check -> `repair`;
- ownership, branch, tracker, or command uncertainty -> `repo-policy`, `worktree`, or `handoff`;
- destructive, broad, or data-affecting action -> `safety`.

## Verification Failure

Failed verification is a transition, not a completion state.

```text
verify failed -> repair
verify failed -> execute
verify failed -> blocked
verify failed -> refine
verify failed -> explore/spec/plan
```

Use `refine` when the failure is a counterexample to a candidate, assumption, design, spec, plan, or verification claim. Use `repair` when the signal is reproducible or diagnosable and the model still holds. Use `execute` when the missing work is clear. Use `blocked` when proof depends on unavailable credentials, external state, or user input. Use exploration, spec, or plan when the failure shows the original understanding was incomplete.

After the fix or replan, rerun the original verification signal or name why it cannot be rerun.

## Resume And Recovery

On resume, compaction, stale runtime state, or messy prior work:

1. Reconcile the latest user request and direct constraints first.
2. Inspect branch, dirty tree, active artifacts or runtime progress, recent diffs, and last verification.
3. Classify existing work as useful, wrong, unrelated, blocked, or unknown.
4. Continue from the smallest coherent state that preserves user work.

Allowed recovery transitions:

```text
handoff -> exploring | ready | running | blocked
blocked -> exploring | ready | running | cancelled
implemented -> review | verify | repair
review -> execute | verify | blocked
verified -> deliver
deferred -> inbox | ready | cancelled
```

Do not treat stale `verified` or `done` as current proof after meaningful code, dependency, environment, requirement, or program truth changes.
Tiny no-durable-state work may stop after verification, but do not mark durable work `done` without the delivery gate.

## Transition Packet

Use this compact shape in chat, artifacts, runtime progress, or handoff when continuity matters:

```text
output:
lane:
state:
result:
next:
evidence:
```

`state` is the lifecycle state. `result` is optional and driver-local. Put local outcomes in `result`, not in `state`.

Examples:

```text
state: review
result: clean
```

```text
state: running
result: worktree:active
```

```text
state: done
result: committed
```

## Movement Rules

- Move one state at a time unless the work is tiny and obvious.
- Do not mark `ready` without enough context for the next owner.
- Do not mark `done` for any claim that failed verification or remains materially unverified.
- Do not bury blockers inside a plan; put them in state.
- Do not invent lifecycle states for local outcomes; use `result`.
- Do not bury invalidated truth inside notes; mark truth status and route to `refine`.
- Do not preserve stale discarded ideas as requirements.
- Repo trackers such as Linear or GitHub issues can replace local status folders when the repo says so.
