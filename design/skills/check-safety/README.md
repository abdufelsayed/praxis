# Check Safety

> **Design document — not a runtime skill.** The accepted behavioral contract
> and target package design remain here; runtime assembly status is tracked in
> [Praxis Status](../../STATUS.md).

Check Safety is an action-time preflight for a concrete consequential action.
It makes the real target, effect, loss, recovery, external reach, and authority
visible before the caller acts. It is not a universal approval ceremony, a
substitute for a precise Plan, or a source of authority.

## Trigger from consequence

Invoke Check Safety before an action with a credible destructive,
irreversible, production, data-affecting, permission-changing, secret-handling,
cross-project, infrastructure, or other consequential effect, whether local or
external. Classify the actual effect rather than the command name.

Deleting a verified disposable build directory may need only a quick target
confirmation. A normal-looking migration or configuration command may need a
deeper check because it can destroy data, alter access, or affect a remote
system. Scale the investigation to the credible worst-case consequence.

Ordinary reversible work inside existing authority does not need Check Safety
merely because a tool could theoretically be misused. Externality alone does
not trigger Check Safety; an external operation enters it only when current
consequence analysis shows a consequential effect.

An explicitly requested Git history rewrite governed by Commit is classified
as consequential even when local recovery appears possible because it replaces
recorded identity and may affect shared history.

A mutation whose actual credible consequence triggers Check Safety does not
proceed as Direct Work or ordinary workflow work. It must first be governed by
an approved Plan and separate Implementation Authorization before Check Safety
preflights it. When a caller already knows that the Plan or exact
Implementation Authorization is missing, the caller returns `revise` and
recommends the missing boundary before invoking Check Safety. If Check Safety
is explicitly or mistakenly invoked despite that missing boundary, it
immediately returns `revise` with only the known action and target, the missing
boundary, the limitation that the Check Safety preflight was not run, and the
recommended next step, then stops. It makes no evidence, consequence,
recovery, or authority-inspection claim; any separate read-only inspection used
to understand the risk remains caller-owned and is not continued as this
preflight.

## Describe one exact action

State the proposed action in concrete terms:

```text
Safety Preflight
- Action
- Exact Target and Environment
- Intended Effect
- Possible Loss and Blast Radius
- Exclusions
- Recovery or Irreversibility
- Existing Authority
- Evidence and Current Assumptions
```

Resolve variables, globs, aliases, environments, accounts, destinations, and
other indirection before judgment. Verify that every target belongs to the
intended scope. An empty variable, repository root, home directory, broad
collection, unexpected environment, or additional target is a target
ambiguity. When it is realistically fixable, return `revise` and stop until
the target becomes exact. Return `stop` when the target is outside authority,
materially unsafe, or cannot be bounded.

Intent does not rescue an unsafe command. Judge what will run against the
current state.

## Establish ownership and current state

Inspect enough current evidence to know:

- what owns the target;
- whether it is tracked, untracked, ignored, generated, shared, remote, or
  production state;
- which people, Projects, services, or data may be affected;
- whether concurrent change could invalidate the check; and
- which exclusions must remain untouched.

Do not assume that a familiar path, local environment, disposable-sounding
name, or available credential belongs to the current task.

## Make recovery honest

Identify what can actually be recovered, what would be lost, and how restoration
would work. Git protects only content that Git recorded. A backup or snapshot
is useful only when its scope, location, consistency, and restoration path are
credible for the proposed loss.

Do not require recovery mechanically when the target is verified disposable
and the accepted action intentionally recreates it. When material loss is
irreversible, surface the exact loss and require authority that explicitly
accepts it. Likely command success is not evidence of recoverability.

## Separate external effects

Local preparation never implies authority to change an external system.
Publishing, sending, pushing, deploying, changing remote permissions, modifying
production, or creating another visible external effect requires authority that
names the actual action, target, and effect. Externality alone does not trigger
Check Safety, but an actual credible consequential effect follows the approved
Plan and separate Implementation Authorization order before preflight.

Before recommending that such an action proceed, confirm the relevant account,
destination, audience, payload, environment, side effects, and current state.
Preparation may continue independently when it stays local and authorized.

## Minimize secret exposure

Verify secrets through the least revealing mechanism available. Prefer
presence, identity, scope, expiry, or a bounded authenticated probe over
printing or reading secret contents.

Never copy secrets into prompts, reports, durable artifacts, routine command
output, or unnecessary delegates. When access or transmission is genuinely
required, establish the exact purpose, recipient, channel, scope, and authority
first. A backup or diagnostic action is unsafe when it spreads sensitive
material into a less protected place.

## Reconcile exact authority

Check Safety distinguishes three things:

1. **Plan inclusion** establishes that a consequential action was deliberately
   considered, with its target, effect, recovery, and proof.
2. **Implementation or external authority** establishes that the human has
   explicitly authorized the exact action, not merely nearby preparation.
3. **Current Safety evidence** establishes that the action still means what the
   accepted boundary says it means.

Check Safety adds no automatic permission gate. If the approved Plan and the
human's Implementation Authorization already name and cover the exact action,
and current inspection reveals no new consequence, the caller may continue
without asking again. Plan Approval alone, vague implementation authority, or
authority for local preparation is insufficient.

An ambiguous target, changed consequence, missing recovery, new external
effect, or uncovered authority returns to the human or the owning Praxis loop.
Check Safety never converts a recommendation into authority.

## Prefer a safer action when useful

Recommend a dry run, bounded move, trash operation, transaction, snapshot,
staged rollout, reduced permission, or smaller target when it materially
reduces risk without defeating the intended outcome.

Treat the mitigation as a real action with its own consequences. A snapshot may
copy secrets, a rollback may be incomplete, a dry run may still contact
production, and a staged rollout may still need external authority. The caller
may use the safer action when existing authority clearly covers it; otherwise
return the revised proposal for human judgment.

## Return a scoped result

Return one of:

- **`proceed`** — the exact action is bounded, its consequences and recovery
  are understood, current evidence supports it, and existing authority covers
  it.
- **`revise`** — the outcome remains reasonable, but the target, command,
  mitigation, recovery, evidence, or authority must change first.
- **`stop`** — the action is outside authority, materially unsafe,
  insufficiently bounded, or knowingly irreversible without accepted loss.

For a completed triggered preflight, include the exact action and target,
decisive evidence, material consequence and blast radius, affected scope,
recovery status, authority relied upon, assumptions, exclusions, and the
recommended next step. The result applies only to that action and current
state. Any material change invalidates it and triggers another proportional
check. The missing-authority short circuit is a minimal `revise` return with
only the known action and target, missing boundary, preflight-not-run
limitation, and recommended next step; it does not use the completed-preflight
fields.

Keep the result conversational by default. Preserve it only when a named future
consumer must rely on the analysis, promoting the useful truth into the owning
Plan, Issue, operational procedure, or other appropriate record rather than
creating a generic Safety ledger.

## Complete and stop

A completed preflight returns a defensible `proceed`, `revise`, or `stop`
result for the exact proposed action with its completed-preflight fields. The
missing-authority short circuit stops before preflight and is not a completed
preflight; it returns only its minimal `revise` fields. Check Safety does not
perform adjacent implementation, accept the result, commit, publish, deploy,
or continue the workflow. The caller interprets the result under its existing
ownership and authority.

## Direct dependencies

### Skills

- None.

### Shared references

- None.

## Target runtime package

### Invocation and host projection

Check Safety is model-invoked because any skill must be able to call it before
a consequential action. Routine reversible work is excluded.

```yaml
---
name: check-safety
description: "Preflight one consequential action before execution. Use for destructive, irreversible, production-changing, data-affecting, permission-changing, secret-handling, cross-project, infrastructure-changing, or otherwise consequential effects, and for an explicitly requested Git history rewrite governed by Commit even when locally recoverable; exclude known missing Plan coverage or exact action authority, ordinary reversible work, and externality alone."
---
```

```yaml
interface:
  display_name: "Check Safety"
  short_description: "Preflight one consequential action"
  default_prompt: "Use $check-safety to preflight this authorized consequential action."
policy:
  allow_implicit_invocation: true
```

### Information hierarchy, effects, and package

`SKILL.md` is a compact executable projection with exactly three visible steps:
Qualify the action, Complete one Safety Preflight frame, and Decide and return.
Qualify handles actual consequence, the no-op, and the known missing-authority
short circuit. The frame coalesces exact target, consequence, affected scope,
ownership, state, recovery, conditional external and secret implications,
authority, evidence, assumptions, and mitigation. Decide returns the scoped
outcome and stops. Each step has one observable completion criterion; the
authority boundary is checked first. The target reference map is `None`; all
branch-common knowledge stays inline.

The skill performs only proportionate read-only inspection after the authority
and target gates are eligible for preflight; it never executes the proposed
action. The immediate missing-authority return contains only the known action
and target, missing boundary, preflight-not-run limitation, and next step. It
has no direct runtime dependency, script, asset, fixture, template, or
required tool integration. Target files are exactly `SKILL.md`, `SPEC.md`, and
`agents/openai.yaml`.

The Direct dependencies section is accepted as exact. `SPEC.md` remains the
exhaustive maintainer contract for missing authority before invocation and
mistaken invocation, realistically fixable versus unbounded target ambiguity,
dirty or changing state, honest versus fictional recovery, external effects,
secret exposure, stale or insufficient authority, a safer bounded alternative,
and each of the three outcomes. The three-step runtime projection preserves
those cases at their decision points without restating the contract.
