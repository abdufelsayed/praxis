# Praxis State Machine

The state machine describes durable work transitions. It is not a mandatory ceremony for small work.

## States

| State | Meaning |
| --- | --- |
| `none` | No durable state needed. |
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

## Common Transitions

```text
discuss/explore -> decide/spec/issue/plan
spec -> issue/plan
issue -> plan/queue/execute
plan draft -> plan ready -> execute/queue
execute -> implemented -> review | verify
review -> execute | verify
repair -> verify
verify failed -> repair | execute | blocked
verify verified -> deliver
deliver -> commit | pr | handoff | done | deferred | cancelled
```

## Transition Packet

Use this compact shape in chat, artifacts, runtime progress, or handoff when continuity matters:

```text
output:
lane:
state:
next:
evidence:
```

## Movement Rules

- Move one state at a time unless the work is tiny and obvious.
- Do not mark `ready` without enough context for the next owner.
- Do not mark `done` without verification or a named unverified gap.
- Do not bury blockers inside a plan; put them in state.
- Do not preserve stale discarded ideas as requirements.
- Repo trackers such as Linear or GitHub issues can replace local status folders when the repo says so.
