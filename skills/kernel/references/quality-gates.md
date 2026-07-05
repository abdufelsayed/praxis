# Praxis Quality Gates

Quality gates prevent unsupported claims. They are proportional: tiny work may need only a focused check; risky work needs review, verification, and evidence.

## Before Planning

- Requirements are clear enough to act.
- Users, callers, or affected workflows are known when relevant.
- Acceptance criteria are observable.
- Unknowns are either resolved or named as blockers.
- User/product choices that could change scope, design, or proof have passed `praxis:grill-me` when they need human judgment.

## Before Execution

- The work slice is bounded.
- The correct branch/worktree is known.
- Repo verification commands are discovered or explicitly unavailable.
- Full, swarm, risky, architecture-shaping, or agent-authored plans have passed `praxis:preflight`.
- Risky/destructive steps have passed `praxis:safety`.

## During Execution

- Behavior changes should prefer tests through public seams.
- Refactoring stays behavior-preserving unless the plan/spec says otherwise.
- Each slice should be small enough to review.
- Subagents receive briefs and write reports; the supervisor integrates and verifies.

## Review Gate

Use `praxis:review` when the work is risky, user-facing, multi-file, delegated, architectural, security-sensitive, or likely to create regressions.

Review checks requirement compliance before implementation quality. Findings should be classified:

- Critical: must fix before continuing.
- Important: should fix before done, ready, or handoff.
- Deferred: valid but outside current scope, with owner or issue.
- Note: non-blocking observation.

Reviewers may say `Cannot verify from diff`; the supervisor must resolve that with source reading, tests, or a follow-up task before marking done.

Review is fail-closed for Critical and Important findings. Return to `execute`, `repair`, `plan`, or `discuss` until those findings are fixed, explicitly deferred by the user, or converted into a trackable issue outside current scope.

## Preflight Gate

Use `praxis:preflight` before marking substantial work ready, starting a large implementation, delegating, delivering, committing, or opening a PR from agent-authored work.

Preflight asks whether the agent's own route, assumptions, scope, design, proof, and handoff are strong enough. It resolves source-answerable objections from evidence, revises artifacts when needed, and routes only true user/product questions to `praxis:grill-me` or `praxis:discuss`.

Preflight is fail-closed for consequential objections. Route to `explore`, `design`, `spec`, `issue`, `plan`, `safety`, `review`, or `verify` until the route is defensible.

## Human Challenge Gate

Use `praxis:grill-me` when the user asks to be challenged, or when human-facing proposal pressure is needed before building.

Challenge asks whether the problem, scope, constraints, design, risks, and proof standard are strong enough to build from. It asks one question at a time, gives a recommended answer, and inspects source instead of asking when source can answer.

Challenge is fail-closed for consequential user/product unknowns. Route to `discuss`, `explore`, `design`, `spec`, `plan`, or `decide` until the changed truth is captured.

## Verification Gate

Use `praxis:verify` before claiming done, fixed, passing, ready, reviewed, committed, merged, or complete.

Map claims to evidence:

- tests pass -> fresh test output;
- build passes -> fresh build output;
- bug fixed -> original repro no longer fails;
- plan complete -> acceptance criteria checked;
- review clean -> actual review result;
- docs accurate -> source-backed paths/commands/examples.

If no safe check exists, state `unverified` and why.

Verification is fail-closed for the claim being made. A failed, unavailable, or inconclusive check routes to `repair`, `execute`, `blocked`, or an explicit `unverified` gap; it cannot support `done`, `ready`, `committed`, `merged`, or PR-ready language.

## Traceability

For full or swarm work, give requirements, plan tasks, checks, findings, and evidence stable IDs:

- requirements: `REQ-1`, `REQ-2`;
- plan tasks: `T1`, `T2`;
- checks: `CHK-1`, `CHK-2`;
- review findings: `REV-1`, `REV-2`;
- evidence: `EV-1`, `EV-2`.

IDs are handles for coordination, not ceremony. Use them when multiple agents, artifacts, checks, or follow-up items need to agree on the same thing.

## High-Risk Guidance Changes

Review root AGENTS.md, repo-wide docs policy, generated-file policy, branch/tracker policy, and public skill trigger changes when they alter future agent behavior.

## Convergence

For full or swarm work, compare final code against the spec/plan/issues before delivery. Append residual work as issues or plan tasks; do not rewrite history to pretend the plan was perfect.
