# Check Safety — Maintainer Contract

## Purpose

Check Safety is the action-time preflight for one concrete consequential
action. It makes the action's exact target, effect, possible loss, recovery,
external reach, current evidence, and authority visible before the caller
acts. It returns a scoped safety judgment without executing the action.

## Invocation, inputs, and exclusions

The skill is model-invoked because any skill may need to call it before a
consequential action. Its invocation-facing contract is the accepted
`check-safety` description and OpenAI interface metadata in `agents/openai.yaml`.

Inputs are one proposed action; its exact target and environment; intended
effect; exclusions; possible loss and blast radius; recovery or
irreversibility; approved Plan inclusion; separate Implementation or external
authority; and current evidence and assumptions.

The trigger is the credible actual consequence: destructive, irreversible,
production-facing, data-affecting, permission-changing, secret-handling,
cross-project, infrastructure-related, or otherwise consequential effects.
Routine reversible work already inside existing authority is excluded and
must remain with its ordinary owner without a ceremonial preflight.
An explicitly requested Git history rewrite governed by Commit is classified
as consequential even when local recovery appears possible because it replaces
recorded identity and may affect shared history.

Check Safety does not plan the work, grant authority, execute a proposed action
or mitigation, implement, accept a result, commit, publish, deploy, or continue
the caller's workflow. Externality alone is not a trigger. A caller that
already knows the Plan or exact Implementation Authorization is missing
returns `revise` before invoking this package. If the package is explicitly or
mistakenly invoked anyway, it returns `revise` immediately and stops; any
separate read-only risk inspection remains caller-owned.

## Invariants

1. The package judges one exact action in its current state; it does not
   approve a category of commands or a future batch.
2. Every variable, glob, alias, environment, account, destination, payload,
   and target is resolved before a proceed result. Empty, broad, unexpected,
   or additional targets remain blocked until the boundary is exact.
3. A consequential action has both an approved Plan that includes its target,
   effect, recovery, and proof and separate Implementation Authorization that
   names the exact action. A known missing or vague boundary is returned as
   `revise` before invocation; an accidental invocation returns `revise`
   immediately and stops without risk investigation.
4. Current ownership, tracking state, affected people, Projects, services,
   data, concurrency, and exclusions are established from evidence rather than
   names, intent, or available credentials.
5. Recovery is credible only when its scope, location, consistency, and
   restoration path cover the proposed loss. Git protects only recorded
   content; verified disposable recreation is the only intentional exception
   to mechanically requiring recovery.
6. External effects require authority that names the actual action, target, and
   effect. Local preparation never implies external authority.
7. Secrets are verified and handled through the least revealing mechanism, and
   are not copied into prompts, reports, durable artifacts, routine output, or
   unnecessary delegates.
8. A mitigation is itself an action with consequences and authority; it may be
   recommended but is never silently executed.
9. A result is scoped to the exact action and current state. A material change
   invalidates it and requires a new proportional check.
10. The caller retains ownership of interpretation, authority, and workflow
    continuation; Check Safety never becomes an automatic permission gate.

## Outcomes and observable return

For a triggered action, the only outcomes are:

- `proceed`: exact boundary, consequence, recovery, current evidence, and
  existing authority are all sufficient.
- `revise`: the intended outcome may remain reasonable, but target, command,
  mitigation, recovery, evidence, or authority must change first. Missing Plan
  inclusion or exact Implementation Authorization returns this result before
  preflight, and an explicit or mistaken invocation under that condition
  returns it immediately and stops. That short circuit contains only the known
  action and target, missing boundary, preflight-not-run limitation, and
  recommended next step. A realistically fixable target ambiguity also
  returns this result and stops until the target is exact.
- `stop`: the action is outside authority, materially unsafe, insufficiently
  bounded, or knowingly irreversible without accepted loss.

For a completed triggered preflight, the return identifies the exact action and
target; decisive evidence; material consequence and blast radius; affected
scope; recovery status; authority relied upon; assumptions and exclusions;
limitations; and the recommended next step. The immediate missing-authority
short circuit uses only the four fields named above because the preflight did
not run; it makes no evidence, consequence, recovery, or authority-inspection
claim. An ordinary reversible request is a non-applicable no-op, not an
approval result.
Blocked, revised, failed, dismissed, and partial states remain distinguishable
in the caller's interpretation; this skill reports only the safety judgment it
can support and never disguises an unresolved state as `proceed`.

## Effects, authority, persistence, and lifetime

Effects are limited to proportionate read-only inspection after the authority
and target boundaries are eligible for preflight, plus conversational return.
The proposed action, safer alternative, external effect, secret access, and
any persistence are outside this skill's authority. A missing Plan or exact
Implementation Authorization short-circuits before inspection; caller-owned
read-only risk discovery is separate from this package.

Plan inclusion, human Implementation or external Authorization, and current
safety evidence are separate facts. Plan Approval alone does not authorize
execution. When accepted Plan and exact human authority still cover the action
and current evidence has no new consequence, the package does not ask for a
duplicate approval request.

Results are conversational by default and apply only to the action and state
inspected. Preserve the analysis only for a named future consumer, promoting
the useful truth into its owning Plan, Issue, operational procedure, or other
appropriate record; never create a generic Safety ledger.

## Composition and resources

### Direct skills

None.

### Shared or local references

None. Every branch uses the compact safety frame inline; no runtime reference
is loaded.

### Scripts, assets, tools, fixtures, and integrations

None. The package has no deterministic helper, output asset, fixture, required
tool, or external integration.

## Source basis

**SKILL-CREATOR IS PROHIBITED. DO NOT READ, INVOKE, CITE, FOLLOW, OR USE IT FOR
PRAXIS DESIGN, IMPLEMENTATION, REVIEW, OR VALIDATION.**

This contract is maintained against the durable
[Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md),
[Control](../../docs/concepts/control.md), and
[Context](../../docs/concepts/context.md) owners. Its package and
agent-readable surface follow the [skill-package contract](../../docs/maintainers/skill-packages.md)
and [plugin conformance and release contract](../../docs/maintainers/conformance-and-release.md).
These plugin-local files are the complete maintainer source basis; the declared
skill surface is the complete runtime. No non-plugin material is required to
use, review, validate, or maintain this package.

## All-package conformance baseline

1. The intended consequential request or direct caller reaches this
   model-invoked skill; routine reversible work stays with its ordinary owner.
2. The nearby negative case—ordinary reversible work inside existing
   authority—performs no ceremonial preflight and receives no approval.
3. There are no conditional references; every branch-common safety rule is
   inline in `SKILL.md`.
4. There are no direct skill calls; no caller-owned capability is transferred.
5. Missing Plan inclusion or exact Implementation Authorization prevents the
   affected action before Check Safety is invoked; an explicit or mistaken
   invocation returns `revise` immediately and stops with only the known
   action/target, missing boundary, preflight-not-run limitation, and next
   step. Required current evidence still prevents the action before it can
   proceed.
6. Revised, blocked, failed, dismissed, and partial situations are not
   collapsed into `proceed`; the return names the supported safety outcome and
   limitation.
7. A completed preflight returns evidence and limitations for one exact action,
   then stops without adjacent work; the missing-authority short circuit is not
   a completed preflight and returns only its minimal `revise` fields.
8. A trivial, already-satisfied, or non-triggering case does no extra ceremony.

## Package-specific conformance cases

The maintained package must preserve these observable cases:

1. **Consequence trigger:** a destructive, production, data-affecting,
   permission-changing, secret-handling, infrastructure, or irreversible
   effect triggers proportional preflight based on its real worst case, while
   a merely external or ordinary reversible action does not. An explicitly
   requested Git history rewrite governed by Commit is consequential even when
   local recovery appears possible because it replaces recorded identity and
   may affect shared history.
2. **Plan and authorization order:** a caller that knows a consequential action
   lacks approved Plan inclusion or separate exact Implementation Authorization
   returns `revise`, recommends the missing boundary, and does not invoke Check
   Safety or begin the action. If the skill is explicitly or mistakenly
   invoked anyway, it returns `revise` immediately with only the known
   action/target, missing boundary, preflight-not-run limitation, and next
   step; it stops and leaves any further read-only risk inspection to the
   caller.
3. **Target ambiguity:** an empty variable, broad glob, repository root, home
   directory, unexpected environment, alias, account, destination, or extra
   target cannot yield `proceed`. A realistically fixable ambiguity returns
   `revise` and stops until exact; a target outside authority, materially
   unsafe, or not realistically bounded returns `stop`.
4. **Dirty or changing state:** tracked, untracked, ignored, generated,
   shared, remote, production, dirty, and concurrently changing state are
   assessed; familiar names and credentials do not establish ownership, and a
   changed state invalidates the prior result.
5. **Honest versus fictional recovery:** a Git-only or out-of-scope backup is
   not accepted as recovery; a disposable target may be intentionally
   recreated; material irreversible loss needs explicit acceptance of that
   loss.
6. **External effect:** local preparation remains distinct from publishing,
   sending, pushing, deploying, permission changes, production changes, and
   other visible effects; `proceed` requires account, destination, audience,
   payload, environment, side effects, current state, and exact authority.
7. **Secret exposure:** presence, identity, scope, expiry, or bounded probes
   are preferred to contents; unsafe copying to prompts, artifacts, reports,
   output, delegates, backups, or diagnostics returns before exposure.
8. **Stale or insufficient authority:** stale, vague, nearby, or
   preparation-only authority cannot authorize the exact consequential action;
   exact current coverage avoids a duplicate approval request.
9. **Safer bounded alternative:** a dry run, bounded move, trash operation,
   transaction, snapshot, staged rollout, reduced permission, or smaller target
   is treated as its own consequential action, including secret and external
   effects, and is recommended only with clear authority.
10. **Three outcomes:** for a completed triggered preflight, a bounded,
    evidenced, recoverable, authorized action returns `proceed`; a fixable
    target, command, mitigation, recovery, evidence, or authority gap returns
    `revise`; and an outside-authority, materially unsafe, insufficiently
    bounded, or knowingly irreversible action returns `stop`. Each completed
    preflight outcome carries evidence, limitations, exclusions, and the
    recommended next step. The missing-authority short circuit returns `revise`
    with only the known action/target, missing boundary, preflight-not-run
    limitation, and recommended next step, and makes no unsupported evidence
    claim.
