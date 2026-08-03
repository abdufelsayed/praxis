---
name: check-safety
description: "Preflight one consequential action before execution. Use for destructive, irreversible, production-changing, data-affecting, permission-changing, secret-handling, cross-project, infrastructure-changing, or otherwise consequential effects; exclude known missing Plan coverage or exact action authority, ordinary reversible work, and externality alone."
---

# Check Safety

Preflight one exact consequential action with proportionate read-only evidence. Return `proceed`, `revise`, or `stop`; never perform the action.

## 1. Qualify the action

Classify the actual credible consequence, not the command name. Trigger for destructive, irreversible,
production, data-affecting, permission-changing, secret-handling, cross-project, infrastructure, or other
consequential effects. Externality alone and ordinary reversible work inside authority are no-ops: tell
the caller Check Safety is not applicable, issue no approval, and stop.

A triggered action needs an approved Plan covering this exact target, effect, recovery, and proof, plus
current exact Implementation Authorization or external authority before invocation. If the caller
knows any boundary is missing, incomplete, vague, stale, nearby, or preparation-only, it returns this
minimal `revise` without invoking Check Safety. If invoked anyway, return immediately:

```text
Safety Result: revise
- Action and Target: the known action and target
- Missing Boundary: approved Plan coverage, current exact Implementation Authorization, or current exact external authority
- Limitation: Check Safety preflight was not run
- Recommended Next Step: obtain the boundary, then invoke Check Safety
```

Perform no risk inspection on this branch; the caller may inspect read-only risk separately. Qualify
completes once consequence and authority are decided, returning a no-op, short circuit, or frame-eligible action.

## 2. Complete one Safety Preflight frame

Write one frame and fill every applicable field:

```text
Safety Preflight
- Action; Exact Target and Environment; Intended Effect
- Possible Loss; Blast Radius; Affected Scope
- Ownership; Current State; Exclusions; Recovery or Irreversibility
- External Effects and Secret Handling (when applicable)
- Existing Authority; Evidence; Current Assumptions
```

Resolve variables, globs, aliases, environments, accounts, destinations, payloads, and other indirection.
A realistically fixable target ambiguity returns `revise` and stops until exact. A target outside
authority, materially unsafe, or not realistically bounded returns `stop`; judge current state, not intent.

Establish ownership and whether the target is tracked, untracked, ignored, generated, shared, dirty,
remote, or production state. Evidence covers affected people, Projects, services, data, concurrency,
and exclusions; names, disposable-sounding paths, and available credentials do not establish scope.

Make recovery honest: Git protects only recorded content, and a backup or snapshot counts only when its
scope, location, consistency, and restoration path cover the loss. Verified disposable recreation is
the exception. Material irreversible loss needs authority that accepts that loss.

For an external effect, separate local preparation from the visible action and confirm account,
destination, audience, payload, environment, side effects, current state, and exact authority. For
secret handling, use the least revealing presence, identity, scope, expiry, or bounded-probe check;
establish purpose, recipient, channel, scope, and authority before access or transmission, and keep
secrets out of prompts, reports, durable artifacts, routine output, and unnecessary delegates; treat
backup or diagnostic handling as unsafe only when it spreads sensitive material into a less-protected
place.

Revalidate those Plan and authorization boundaries against current safety evidence; existing coverage
needs no duplicate approval. When a dry run, bounded move, trash operation,
transaction, snapshot, staged rollout, reduced permission, or smaller target materially reduces risk,
assess that mitigation as its own action and use it only when its consequences and authority are
covered; otherwise return `revise`. Execute nothing.

This step completes when all applicable fields are evidenced or one blocker supports `revise` or
`stop`; recheck recorded changes and leave no material unknown silent.

## 3. Decide and return

Return exactly one outcome for this action and current state:

- `proceed` when the boundary is exact, consequence and recovery are understood, evidence is current, and
  authority covers the action.
- `revise` when a fixable target, command, mitigation, recovery, evidence, or authority boundary must change first.
- `stop` when the action is outside authority, materially unsafe, insufficiently bounded, or knowingly
  irreversible without accepted loss.

For a completed frame, return action/target, decisive evidence, consequence/blast radius, affected scope,
recovery status, authority, assumptions, exclusions, limitations, and next step. The missing-authority
short circuit returns only its four fields and has no preflight evidence. Name blocked, revised, failed,
dismissed, or partial limitations rather than collapsing an unresolved result into `proceed`.

Keep the result conversational unless a named future consumer needs it; then promote the useful truth
into its owning Plan, Issue, operational procedure, or other appropriate record. The caller retains
interpretation and workflow ownership. A material state change invalidates this result and requires a new
proportional check. Stop here: do
not implement, accept, commit, publish, deploy, or continue adjacent work.
