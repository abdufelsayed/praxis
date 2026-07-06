---
name: preflight
description: "Use for agent self-check before marking a spec, issue, design, or plan ready; starting substantial implementation; delegating to subagents; delivering; or asking the user. Trigger when work is full, swarm, risky, architecture-shaping, weakly specified, newly planned by the agent, or when the agent may be overconfident and needs to challenge its own route, assumptions, scope, design, or proof standard."
---

# Preflight

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Challenge your own readiness before you move. Preflight is the agent grilling its own route, not a human-facing questionnaire.

Preflight is agent-facing. It is not `grill-me`, which challenges the user or proposal interactively. It is not `review`, which judges an artifact, diff, or implementation. It is not `verify`, which proves claims with evidence.

## Required Reads

- Read the current user request and latest direct instruction.
- Read the artifact or proposed route being checked: program, design, spec, issue, plan, task brief, implementation slice, delivery state, or commit/PR surface.
- Read source, tests, commands, or linked artifacts when they can resolve an objection.
- Load `praxis:refine` when an objection is a concrete counterexample or invalidates an artifact.
- Load `praxis:grill-me` only when the remaining blocker is a human preference, product choice, or proposal challenge.

## Procedure

1. State the proposed next action and the claim it depends on.
2. Generate the strongest practical objections to your own route. Cover intent, scope, current repo reality, design, sequencing, delegation, safety, verification, and handoff.
3. Resolve objections from source, artifacts, commands, or official/current sources when possible. Do not ask the user for facts the repo can answer.
4. Classify each consequential objection:
   - `clear`: evidence supports proceeding;
   - `revise`: update design/spec/issue/plan/brief before moving;
   - `program`: durable assumption, hypothesis, gap, or candidate must be recorded before moving;
   - `refine`: evidence is a counterexample or invalidation;
   - `explore`: source facts are missing;
   - `grill-me`: user/product judgment is the real blocker;
   - `safety`: destructive or data-affecting step needs a safety gate;
   - `blocked`: no safe next move.
5. Apply small artifact fixes through the owning skill instead of leaving them in chat.
6. Stop when objections no longer change the route, or route to the next required skill.

For delegated execution, preflight must specifically check: task independence, file ownership, brief completeness, worker collision risk, review package plan, verification plan, and what happens if a worker returns blocked or stale output.

## Self-Check Axes

- Intent: am I solving the user's latest request, not an older or easier one?
- Scope: what am I adding that the user did not ask for?
- Evidence: which assumptions have code/source proof, which are provisional program records, and which are vibes?
- Route: is this fast, focused, full, or swarm; direct, queue, subagents, or handoff?
- Design: is the chosen boundary the smallest one that fits existing patterns?
- Proof: what check will justify the claim I want to make?
- Delegation: can workers execute without rediscovering intent or colliding on files?
- Continuity: would another agent know the current truth and next action?

## Output

Keep output short and operational:

- proposed next action;
- objections that changed the route, not every thought;
- evidence checked;
- required revision, user question, blocker, or proceed decision.

Do not create a ledger of discarded ideas. Preserve only current truth, changed requirements, blockers, evidence, or future work.

Use one of these results:

- `proceed`: route is defensible; continue.
- `revise`: update an artifact, task split, proof, or route before moving.
- `needs-program`: durable uncertainty must be captured in a program.
- `needs-refine`: a counterexample, invalidation, or supersession must be handled before moving.
- `needs-exploration`: source facts are missing.
- `needs-grill-me`: the blocker is user/product judgment.
- `needs-safety`: destructive or high-risk action needs the safety gate.
- `blocked`: no safe next move.

## Transition

```text
output: proceed decision, required revision, route change, user question, or blocker
lane: <current lane>
state: draft | ready | running | blocked | review | verified
result: proceed | revise | needs-program | needs-refine | needs-exploration | needs-grill-me | needs-safety | blocked
next: program | refine | explore | design | spec | issue | plan | grill-me | safety | worktree | execute | queue | subagents | repair | review | verify | deliver | stop
evidence: artifact path, code fact, command, source, objection, or blocker
```
