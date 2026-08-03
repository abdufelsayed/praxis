# Change Communication

Load this reference when readers need to understand a versioned change, its
impact, or a required transition through release notes, changelogs,
deprecation notices, or migration guidance. It supplements the common Write
Docs procedure; it does not publish a release, choose rollout, grant migration
authority, or replace the current contract surface.

## Select the communication form

Use only the form the audience needs:

- **Changelog** entries preserve concise durable history for version lookup.
- **Release notes** explain one release's consequential impact to its
  audiences.
- **Deprecation notices** warn that a supported surface is moving through a
  lifecycle transition.
- **Migration guides** help an affected reader complete and verify a required
  transition.

Link forms instead of repeating one transition. A migration guide may use
task-guidance mechanics for its executable path, while Change Communication
retains ownership of the version boundary and impact.

## Lead with the reader-visible delta

Identify who is affected, the previous supported behavior or contract, the
behavior/contract/configuration/data/operational state that changes, when and
under which version or rollout it changes, whether action is required, and the
consequence of taking or omitting that action. Lead with impact. Include
modules, storage, algorithms, or internal architecture only when they change
compatibility, risk, operation, performance, security, or another durable
reader consequence.

Do not translate a diff, commit log, Plan, pull request, or implementation
notes into release prose. Reconstruct the delivered change from source,
contracts, tests, observed behavior, and the reader's relationship to it.

## Bind claims to the transition boundary

State the exact baseline and destination: prior version or behavior, version,
date, rollout event, or capability introducing the change, new supported
behavior, overlap or compatibility window, and point at which old behavior is
unsupported or removed. Keep shipped, rolling out, scheduled, experimental,
and proposed states visibly distinct. Link old and new contract owners rather
than copying their exhaustive semantics.

Include a change when it materially affects observable behavior, compatibility,
setup/configuration/migration, data shape/persistence/retention/recovery,
security/permissions, deployment/operation/monitoring, relied-on performance,
availability/removal/deprecation, or another action or judgment a durable
reader must make. Omit internal churn, agent activity, temporary states,
refactoring without reader consequence, and chronology.

## Make deprecations and migrations actionable

For a deprecation, name the audience and exact surface, useful reason, supported
replacement, detection method, warning start, compatibility period, deadline
or removal version, and behavior after removal.

For a migration, name supported starting states, prerequisites, coexistence or
ordering constraints, the smallest complete transition, data/configuration/
deployment/client effects, observable checkpoints, destination verification,
supported fallback or rollback, and recovery/escalation for partial
completion. Do not promise automatic conversion, coexistence, rollback, or
backward compatibility the delivered system does not support.

Keep forms coherent. Changelogs scan; release notes group by reader work or
impact; a deprecation remains visible where the old surface is encountered;
and a migration starts from a declared state and ends at a verified
destination. Split materially different starting states or environments.

## Reconcile and verify

Update only the named, authorized task, contract, understanding, and
operational surfaces whose present behavior changes. Return any affected
out-of-bound surface and the smallest authority revision to Write Docs instead
of editing it. Remove stale announcements from authorized current guidance
after a transition no longer affects supported readers while preserving useful
history in its owning change surface.

Verify baseline and destination against delivered source, contracts, tests,
and behavior; affected audiences and consequences; version, rollout,
deprecation, and removal states; breaking/operational/data/security/
configuration/performance effects; migration steps from each declared state;
compatibility, coexistence, fallback, and rollback claims; linked old/new
contracts; and current-guidance consistency. State every untested branch and
its confidence limit. Return the verified transition communication and gaps to
Write Docs; do not publish or rewrite product history from this reference.
