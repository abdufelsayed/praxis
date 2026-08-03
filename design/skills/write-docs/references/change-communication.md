# Change Communication

> **Status: accepted Write Docs reference design; runtime implementation
> pending.**
>
> Load this reference when readers need to understand a versioned change, its
> impact, or a required transition through release notes, changelogs,
> deprecation notices, or migration guidance.

## Select the communication form

Keep one Change Communication reference because every form depends on the same
before-and-after truth, affected audience, compatibility boundary, and
transition evidence. Select only the forms the readers need:

- **Changelog entries** preserve concise durable history for version lookup.
- **Release notes** explain the consequential impact of one release to its
  intended audiences.
- **Deprecation notices** warn that a supported surface is moving through a
  lifecycle transition.
- **Migration guides** help an affected reader complete and verify a required
  transition.

Link the forms instead of repeating the same change in each one. A migration
guide may use Task Guidance mechanics for its executable journey, while Change
Communication retains ownership of the version transition.

## Begin with the reader-visible delta

Identify:

- who is affected;
- the previous supported behavior or contract;
- the behavior, contract, configuration, data, or operational state that
  changes;
- when and under which version, rollout, or event it changes;
- whether action is required; and
- the consequence of taking or omitting that action.

Lead with that impact before implementation detail. Mention changed modules,
storage, algorithms, or internal architecture only when they alter
compatibility, risk, migration, operation, performance, security, or another
durable reader consequence.

Do not translate the diff, commit log, pull request, Plan, or implementation
notes into release prose. Reconstruct the change from delivered behavior and
the reader's relationship to it.

## Bind every claim to a transition boundary

State the exact baseline and destination:

- the prior version, capability, or supported behavior;
- the version, date, rollout event, or capability that introduces the change;
- the new supported behavior;
- any overlap or compatibility window; and
- the point at which old behavior becomes unsupported or is removed.

Keep shipped, currently rolling out, scheduled, experimental, and merely
proposed changes visibly distinct. Do not write a planned change into current
release history or present a partial rollout as universal behavior.

Use exact public names and link the old and new Contract Reference surfaces.
Change Communication owns the transition narrative; Contract Reference owns
the precise interface available at each documented point.

## Include changes by consequence

Include a change when it materially affects:

- observable behavior or output;
- compatibility or supported versions;
- required setup, configuration, or migration;
- data shape, persistence, retention, or recovery;
- security or permissions;
- deployment, operation, monitoring, or troubleshooting;
- performance characteristics on which readers rely;
- availability, removal, or deprecation of a public surface; or
- another action or judgment a durable reader must make.

Classify impact from the affected reader's position rather than implementation
effort or diff size. A one-line default change may matter more than a broad
internal refactor.

Omit internal churn, agent activity, commit chronology, temporary
implementation states, and refactoring with no durable reader consequence.
Do not inflate release communication to prove that work occurred.

## Make deprecations and migrations actionable

For a deprecation, identify:

- the affected audience and exact surface;
- the reason the lifecycle is changing when it helps the reader judge the
  transition;
- the supported replacement;
- how to detect current use;
- when warnings begin;
- the compatibility period;
- the deadline or removal version; and
- the behavior after removal.

For a migration, add:

- prerequisites and supported starting states;
- coexistence or ordering constraints;
- the smallest complete transition path;
- data, configuration, deployment, or client effects;
- observable checkpoints;
- verification of the destination state;
- fallback or rollback where genuinely supported; and
- recovery or escalation for partial completion.

Link exhaustive old and new contracts instead of copying them. Do not promise
rollback, coexistence, automatic conversion, or backward compatibility unless
the delivered system actually supports it.

## Keep each form coherent

A changelog entry should be brief enough for scanning while naming the
affected surface and linking required action. It is durable history, not an
implementation diary.

Release notes should group changes by the reader's work or impact rather than
source directory or author. Lead with the changes that most affect use,
compatibility, operation, or required action.

A deprecation notice should remain visible where affected readers encounter
the old surface and route them to the replacement and migration path.

A migration guide should start from a declared supported state and finish at a
verified destination. Split materially different starting states or
environments rather than interleaving branches the reader cannot safely
follow.

## Reconcile the current documentation system

Update the current Task Guidance, Contract Reference, Understanding, and
Operations surfaces whose present behavior changes. Keep current docs focused
on the supported present state and use Change Communication for the
transition.

Remove stale announcements from current guidance after their transition no
longer affects a supported reader, while preserving appropriate durable
history in the changelog or release archive. Do not make every current guide
carry the product's implementation timeline.

## Verify the delivered transition

In addition to Write Docs' common verification, check that:

- the baseline and destination match delivered source, contracts, tests, and
  observed behavior;
- the affected audiences and consequences are complete;
- version, rollout, deprecation, and removal states are accurate;
- breaking, operational, data, security, configuration, and performance
  effects are represented proportionately;
- migration steps work from each declared starting state;
- compatibility, coexistence, fallback, and rollback claims are exercised;
- linked old and new references describe the correct versions; and
- current guidance no longer contradicts the announced change.

State any compatibility branch, transition step, or recovery claim that could
not be tested and the resulting limit on confidence. A plan, merged diff, or
passing unit test does not by itself prove the reader's migration path.

Return the verified change communication and any material gap to Write Docs.
This reference does not publish a release, choose a rollout, grant migration
authority, rewrite product history, or absorb Task Guidance, Contract
Reference, Understanding, or Operations.
