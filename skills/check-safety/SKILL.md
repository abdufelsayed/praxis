---
name: check-safety
description: Preflight one exact destructive, irreversible, production, data, permission, secret, infrastructure, or otherwise consequential action before execution.
---

# Check Safety

Inspect one exact consequential action immediately before it runs. This skill adds
risk evidence; it does not supply authority or execute the action.

## Resolve the action

Inspect:

- the exact command or operation, resolved target, environment, and intended effect;
- possible loss, blast radius, affected owners, and explicit exclusions;
- tracked, untracked, ignored, generated, shared, dirty, remote, or production
  state that changes the consequence;
- recovery or irreversibility, including whether a backup covers the actual loss
  and has a viable restore path;
- external account, destination, audience, payload, cost, and side effects;
- secret purpose, recipient, channel, scope, expiry, and least-revealing check;
- current user authority for this target and effect.

Resolve variables, globs, aliases, accounts, and destinations. Names that sound
disposable and available credentials are not evidence. Keep secrets out of
prompts, reports, durable artifacts, routine output, and unnecessary delegates.

Prefer a dry run, transaction, snapshot, trash operation, staged rollout, reduced
permission, or smaller target when it materially reduces risk. Inspect the
mitigation too; it may have consequences of its own.

## Decide

Return:

- **proceed** when the boundary is exact, evidence is current, consequences and
  recovery are understood, and authority covers the action;
- **revise** with a safer concrete operation when target, recovery, evidence, or
  authority can be fixed;
- **stop** when the action is outside authority, materially unsafe, insufficiently
  bounded, or knowingly irreversible without accepted loss.

State the action and target, decisive evidence, blast radius, recovery, authority,
assumptions, exclusions, and limitations. A material state change invalidates the
preflight. The caller decides whether to perform an action that is safe and
authorized.
