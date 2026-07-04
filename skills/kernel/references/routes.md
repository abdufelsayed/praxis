# Praxis Routes

Use this table to choose one current driver. Helpers, gates, and references load only when the chosen driver is about to use them.

## Lanes

| Lane | Use When | Typical Rails |
| --- | --- | --- |
| `fast` | Answer, inspect, tiny reversible edit, direct command. | No durable artifact unless continuity risk exists. |
| `focused` | One bounded task or document with local verification. | Repo-policy as needed, execute/review/verify when warranted. |
| `full` | Multi-file, risky, user-facing, architectural, or multi-session work. | Context/spec/issue/plan, worktree, review, verification, deliver. |
| `swarm` | Parallel agents, queued issues/plans, long autonomous loop. | Runtime directory, task briefs, reports, review packages, progress ledger, supervisor integration. |

## Route Table

| Need | Driver |
| --- | --- |
| single command or read-only inspection with clear intent | `praxis:explore` |
| unclear intent, tradeoffs, or conversation before action | `praxis:discuss` |
| unknown local code, behavior, architecture, tools, or options | `praxis:explore` |
| structure, boundaries, APIs, placement, or domain language | `praxis:design` |
| desired behavior, constraints, requirements, or acceptance criteria | `praxis:spec` |
| durable choice, policy, naming, architecture, or workflow decision | `praxis:decide` |
| trackable work slice, queue item, or independent vertical task | `praxis:issue` |
| executable implementation recipe | `praxis:plan` |
| implementation of one bounded slice | `praxis:execute` |
| broken behavior, error, regression, failing test, flaky behavior, or failed verification | `praxis:repair` |
| multiple ready issues/plans or autonomous batch execution | `praxis:queue` |
| living state, current status, blockers, or next action | `praxis:context` |
| ownership transfer, restart instructions, or compaction handoff | `praxis:handoff` |
| repo rules, AGENTS, commands, tracker, branch, artifact, or docs policy | `praxis:repo-policy` |
| external, unfamiliar, version-sensitive, or high-stakes facts | `praxis:source` |
| destructive, irreversible, broad, or data-affecting operation | domain skill, then `praxis:safety` |
| branch/worktree isolation, merge, or cleanup | `praxis:worktree` |
| bounded worker/reviewer/QA delegation | `praxis:subagents` |
| adversarial correctness pass | `praxis:review` |
| completion or readiness claim needing proof | `praxis:verify` |
| final state, delivery decision, cleanup, commit/PR routing, merge, or handoff | `praxis:deliver` |
| commit requested or expected | `praxis:commit` |
| pull request requested or expected | `praxis:pr` |
| README, guide, runbook, changelog, release note, or maintainer docs | `praxis:docs` |
| AGENTS.md or scoped agent-facing repo guidance | `praxis:agent-guide` |

## Usual Flow

```text
kernel
  -> discuss/explore/design
  -> decide/spec
  -> issue/plan
  -> worktree/execute/repair/queue
  -> review/verify
  -> deliver
  -> commit/pr/handoff/stop
```

This flow is descriptive, not a ceremony. Skip stages that do not add safety, clarity, or continuity.

For tiny `fast` requests, the kernel may answer directly after a direct inspection. Still emit or report evidence when making a claim.

## Skill Surface

### Kernel

- `kernel`: route engineering work, choose lane, load one driver, emit transitions.

### Conversation And Shaping

- `discuss`: technical conversation before intent is executable.
- `explore`: evidence gathering, code reading, research, diagnosis probes, or disposable experiments.
- `design`: codebase shape, module boundaries, APIs, placement, testability, and domain language.
- `spec`: desired behavior and acceptance criteria.
- `issue`: durable work slices.
- `plan`: executable recipes.
- `decide`: durable choices.

### Execution And Repair

- `execute`: implement one bounded unit, including TDD/refactor modes when useful.
- `repair`: reproduce, diagnose, fix, and verify failures.
- `queue`: run multiple ready issues/plans under supervisor control.

### State

- `context`: living project/session state.
- `handoff`: continuation for another agent/session.

### Services And Gates

- `repo-policy`: repo conventions, commands, AGENTS, branch/tracker/docs policy.
- `source`: authoritative source checks.
- `safety`: destructive-operation gate.
- `review`: adversarial review.
- `verify`: evidence gate.
- `subagents`: delegate workers/reviewers/QA with briefs and reports.
- `worktree`: isolated branch/worktree mechanics.

### Delivery Surfaces

- `deliver`: final readiness and delivery decisions.
- `commit`: staging and commit-message craft.
- `pr`: PR title/body/readiness craft.
- `docs`: user-facing and maintainer docs.
- `agent-guide`: AGENTS.md and scoped agent guidance.
