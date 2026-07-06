---
name: explore
description: Use when investigating unfamiliar code, tools, APIs, libraries, product behavior, architecture, failures, or options before deciding what to build or change. Produces evidence-backed findings and next experiments.
---

# Explore

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Investigate before changing.

## Required Reads

Load `praxis:source` when outside documentation, exact version behavior, security, law, finance, medicine, or fast-changing facts matter.
Load `praxis:program` when findings change durable program truth. Load `praxis:refine` when findings produce a concrete counterexample or invalidate an artifact.

## Flow

1. Inspect local context first.
2. Use primary sources for unfamiliar or version-sensitive behavior.
3. Separate facts from hypotheses.
4. Keep probes small and reversible.
5. Record evidence: files, commands, source links, or observations.
6. Stop when the next safe action is clear enough.
7. Report what is known, unknown, and the narrowest next action.
8. Update or route to the program when findings affect durable assumptions, hypotheses, candidates, or current synthesis.

## Enough Evidence

Exploration is sufficient when it identifies the likely owner surface, the relevant constraint or failure signal, and the next driver. It does not need to exhaust the codebase.

Adapt when:

- the question is actually a user preference: return to `discuss`;
- the fact is external or version-sensitive: use `source`;
- the finding is a counterexample or invalidation: use `refine`;
- probes start changing behavior: route to `execute` or `repair`;
- the investigation becomes multi-session: write an exploration or handoff.

## Output

- facts with evidence;
- hypotheses clearly labeled;
- risks or unknowns;
- next experiment or transition to `program`, `refine`, `decide`, `spec`, `plan`, `repair`, or stop.

## Stop Conditions

Stop and ask or hand off when the next step depends on credentials, destructive access, user preference, unavailable services, or a source that cannot be verified.

## Next Skills

Use `../kernel/references/templates/exploration.md` when preserving findings as an exploration artifact. Load `praxis:program` when exploration creates or changes durable truth. Load `praxis:refine` when exploration disproves an existing candidate or artifact. Load `praxis:decide`, `praxis:spec`, or `praxis:plan` when exploration creates durable direction.

## Transition

```text
output: findings, exploration path, direct inspection result, or blocker
lane: <current lane>
state: none | exploring | ready | blocked
result: facts-found | hypothesis | needs-source | unresolved
next: program | refine | decide | design | spec | plan | repair | stop
evidence: files, commands, source links, observations, or unknowns
```
