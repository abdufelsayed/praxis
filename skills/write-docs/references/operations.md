# Operations

Load this reference when the reader must safely diagnose, maintain, deploy,
recover, contain, or restore a real system from an operational condition. It
supplements the common Write Docs procedure; it documents action but never
executes it or grants production authority.

## Select one operational job

Choose only the forms the reader needs:

- **Maintenance** performs a planned recurring change and confirms health.
- **Deployment** releases a controlled change with preconditions, observation,
  rollback, and post-release checks.
- **Troubleshooting** narrows an unknown cause through evidence-led diagnosis.
- **Recovery** restores a failed system, service, or data set to a defined
  usable state.
- **Incident response** contains impact and coordinates restoration while
  preserving decisive evidence.

Keep one coherent procedure. Link separate procedures when triggers,
authority, hazards, or recovery paths differ materially.

## Begin from a recognizable condition

Name the operator, supported system and environment, observable trigger, likely
impact, required access, and healthy or recovered state. State entry conditions
so the reader can decide whether the procedure applies. A vague title is not an
entry condition; prefer a bounded signal such as failed replica health checks
while the primary still serves traffic.

List prerequisites that change safe execution: role, target, version or
topology, backup/snapshot/redundancy state, tools and access paths, maintenance
window or coordination, and conditions needing immediate containment or
escalation.

## Reconstruct state before action

Start with the smallest safe observations that distinguish the documented
conditions. Preserve evidence a restart, cleanup, failover, or mutation would
erase. For each diagnostic step say what to inspect, expected result, how each
consequential result is interpreted, which branch it selects, and when an
unrecognized result requires stopping. Branch only on observable evidence;
never present speculative fixes as diagnosis.

## Make each consequential action explicit

For every state-changing operation, name exact target and environment,
expected effect and completion signal, authority and coordination,
prerequisites, affected data/traffic/users/dependents, reversibility and
repeatability, containment/rollback/recovery point, and conditions that forbid
or stop it. Prefer inspection, preview, dry-run, containment, and reversible
action before destructive mutation when they answer the question honestly.
Use the repository's safety boundary when the documented operation is
destructive, irreversible, production-affecting, data-affecting,
permission-changing, secret-handling, or otherwise consequential.

Examples use placeholders that make the target explicit without embedding a
production identifier, credential, or copyable broad destructive command.

## Advance through observable checkpoints

After each consequential transition, explain how the reader distinguishes
intended completion, partial completion, no effect, a new unsafe state, and
readiness for the next action. A zero exit code alone does not prove restored
service, preserved data, healthy dependencies, or completed traffic movement.
When monitoring or waiting is required, name the signal, direction or
threshold, observation window, and end condition; never say merely “wait until
healthy.”

## Design for interruption and re-entry

Assume timeout, process stop, concurrent operator, or partial state. At every
consequential checkpoint explain how to reconstruct current state, whether the
last action is safe to repeat, how to resume, how to roll back or contain, and
when another owner must take over. A handoff includes current state, impact,
actions attempted, results, preserved evidence, containment, remaining risk,
and the next decision boundary; a last step number is not enough.

## Stop, recover, or escalate

Define success through system state and user- or operator-visible behavior.
Stop before further mutation when evidence matches no branch, a prerequisite
is false, target/environment is uncertain, recovery is unavailable, impact
exceeds the boundary, authority or coordination is absent, or a step leaves
an unexplained partial state. Name the receiving owner or procedure and the
decision needed. “Contact support” is incomplete when a repository has a
defined operational owner or incident path.

## Verify the full operational path

Test the safest representative environment and verify prerequisites, signals,
branch selection, target safeguards, mutations, checkpoints, partial
completion, re-entry, rollback/containment/recovery, healthy completion, and
handoff/escalation. Bind varying instructions to supported version, topology,
or capability. State every branch or environment not exercised and its impact
on confidence. A lint pass, review date, or individually valid command is not
operational proof. Return the verified runbook and gaps to Write Docs; never
declare an incident or execute the procedure from this reference.
