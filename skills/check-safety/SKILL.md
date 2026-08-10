---
name: check-safety
description: "Preflight one consequential action before execution. Use for destructive, irreversible, production-changing, data-affecting, permission-changing, secret-handling, cross-project, infrastructure-changing, or otherwise consequential effects, and for an explicitly requested Git history rewrite governed by Commit even when locally recoverable; exclude known missing Plan coverage or exact action authority, ordinary reversible work, and externality alone."
---

# Check Safety

Load [Praxis Control](../../references/control.md).

Evaluate the shared Proposed Action envelope against current record, gate,
authority, latest-direction, and inquiry policy projections. Missing or stale
control inputs fail closed. This local preflight adds effect-specific risk
judgment; it never supplies authority or executes the action.

Return `proceed`, `revise`, or `stop` for one exact action. Never execute it.

## Qualify the action

Judge credible effect, not the command name. Use this owner for destructive,
irreversible, production-changing, data-affecting, permission-changing,
secret-handling, cross-project, infrastructure, or similarly consequential
effects. An explicitly requested Git history rewrite also qualifies. Ordinary
reversible work and externality alone are outside this owner's entry. If the
skill was explicitly or mistakenly invoked for one, return `revise` with that
misclassification and stop without implying approval.

A qualifying action must already have an approved Plan covering its exact
target, effect, recovery, and proof, plus current exact Implementation
Authorization or external authority. If one is absent or stale, return
`revise` immediately. Safety inspection cannot create the missing authority.

## Preflight the current action

Resolve and inspect:

- the exact action, target, environment, and intended effect;
- possible loss, blast radius, affected scope, exclusions, and owners;
- current tracked, untracked, ignored, generated, shared, dirty, remote, or
  production state;
- recovery or irreversibility, including whether a backup actually covers the
  loss and has a viable restore path;
- external account, destination, audience, payload, and side effects; and
- secret purpose, recipient, channel, scope, expiry, and least-revealing check.

Resolve variables, globs, aliases, accounts, and destinations. Familiar names,
available credentials, and disposable-looking paths are not evidence. Keep
secrets out of prompts, reports, durable artifacts, routine output, and
unnecessary delegates.

Assess a dry run, transaction, snapshot, trash operation, staged rollout,
reduced permission, or smaller target when it materially reduces risk. That
mitigation is itself an action and must be covered by the same authority.
Execute nothing.

## Decide and return

- `proceed` when the boundary is exact, evidence is current, consequences and
  recovery are understood, and authority covers this action.
- `revise` when a fixable target, command, mitigation, recovery, evidence, or
  authority boundary must change first.
- `stop` when the action is outside authority, materially unsafe, insufficiently
  bounded, or knowingly irreversible without accepted loss.

Return the action and target, decisive evidence, loss and blast radius,
recovery, authority, assumptions, exclusions, limitations, and the next
needed step. A material state change invalidates `proceed`. Stop without
implementing, accepting, committing, publishing, or deploying.
