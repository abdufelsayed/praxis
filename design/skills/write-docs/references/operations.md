# Operations

> **Status: accepted Write Docs reference design; runtime implementation
> pending.**
>
> Load this reference when a reader must safely diagnose, maintain, deploy,
> recover, contain, or restore a real system from an operational condition.

## Select the operational job

Keep one Operations reference because its forms share state reconstruction,
bounded action, evidence, recovery, and stopping mechanics. Select and combine
only the forms the reader needs:

- **Maintenance** performs a planned recurring state change and confirms the
  resulting healthy state.
- **Deployment** releases a controlled change with preconditions, observation,
  rollback, and post-release checks.
- **Troubleshooting** narrows an unknown cause through evidence-led diagnosis.
- **Recovery** restores a failed system, service, or data set to a defined
  usable state.
- **Incident response** contains impact and coordinates service restoration
  while preserving decisive evidence.

Do not mix several forms merely because they concern the same system. Link
separate procedures when their triggers, authority, hazards, or recovery paths
differ materially.

## Begin from a recognizable condition

Name the intended operator, supported system and environment, observable
trigger, likely impact, required access, and the healthy or recovered state the
procedure seeks.

State entry conditions precisely enough that the reader can decide whether the
procedure applies. A vague title such as "database problems" is not an entry
condition. Prefer a bounded signal such as failed replica health checks with
the primary still serving traffic.

List prerequisites that change safe execution:

- required role or authority;
- environment and exact target;
- supported version or topology;
- backup, snapshot, or redundancy state;
- tools and access paths;
- maintenance window or coordination requirement; and
- conditions that require immediate containment or escalation.

The procedure explains operational action but grants no authority to perform
it.

## Reconstruct current state before action

Start with the smallest safe observations that distinguish the documented
conditions. Preserve evidence that a mutation, restart, cleanup, or failover
would erase when that evidence may affect diagnosis or later review.

For every diagnostic step, state:

- what to inspect;
- the expected observable result;
- how to interpret each consequential result;
- which documented branch that result selects; and
- when an unrecognized result requires stopping.

Branch only on evidence the reader can actually observe. Do not present a
sequence of speculative fixes as diagnosis or improvise another mutation when
the evidence matches no documented condition.

## Make consequential actions explicit

For every state-changing action, identify:

- the exact target and environment;
- its expected effect and observable completion signal;
- the required authority and coordination;
- prerequisites and assumptions;
- affected data, traffic, users, or dependent systems;
- whether it is reversible, repeatable, or destructive;
- the containment, rollback, or recovery point; and
- conditions that forbid or stop the action.

Prefer inspection, preview, dry-run, containment, and reversible action before
destructive mutation when they can answer the operational question. Invoke
Check Safety when the real operation is destructive, irreversible,
production-affecting, data-affecting, permission-changing, secret-handling, or
otherwise crosses its accepted boundary.

Examples must use placeholders that make the target explicit without erasing
the property that determines safety. Never embed a production identifier,
credential, or copyable broad destructive command as though it were a harmless
example.

## Advance through observable checkpoints

After every consequential transition, state how to determine whether:

- the action completed as intended;
- it completed partially;
- it had no effect;
- it created a new unsafe state; or
- the system is ready for the next action.

Keep success criteria behavioral and externally meaningful. A command exiting
zero may be evidence, but it does not prove restored service, preserved data,
healthy dependencies, or completed traffic movement.

When monitoring or waiting is required, name the signal, expected direction or
threshold, observation window, and condition that ends the wait. Do not use an
unbounded "wait until healthy."

## Design for interruption and re-entry

Assume a command may time out, a process may stop, or another operator may join
after state has changed. At every consequential checkpoint, explain:

- how to reconstruct the current state;
- whether the preceding action is safe to repeat;
- how to resume from confirmed partial completion;
- how to roll back or contain the state; and
- when another owner or authority must take over.

Do not tell a reader to restart the procedure from step one unless every
earlier action is proven safe and repeatable from the observed state.

For handoff, communicate the current state, impact, exact actions attempted,
observed results, preserved evidence, active containment, remaining risk, and
next decision boundary. The last numbered step attempted is not a sufficient
handoff.

## Stop, recover, or escalate explicitly

Define successful completion through the system state and user-visible or
operator-visible behavior that must be restored. Include cleanup and reversal
of temporary containment only when those actions are inside the same
operational authority and have their own proof.

Stop before further mutation when:

- evidence no longer matches a documented branch;
- an assumption or prerequisite is false;
- the target or environment is uncertain;
- rollback or recovery is no longer available;
- observed impact exceeds the documented boundary;
- required authority or coordination is absent; or
- a step produces an unexplained partial state.

State who or which owning procedure should receive the evidence and what
decision is needed. "Contact support" or "escalate" is incomplete when the
repository has a defined operational owner or incident path.

## Verify the complete operational path

Test the procedure in the safest representative environment available. Verify
the full path rather than isolated commands, including:

- declared starting state and prerequisites;
- diagnostic signals and branch selection;
- target and environment safeguards;
- consequential mutations and checkpoints;
- partial completion and safe re-entry;
- rollback, containment, or recovery;
- healthy completion criteria; and
- handoff and escalation information.

Bind materially varying instructions to the supported system, topology,
version, or capability. State every step or branch that could not be exercised
and the environmental difference that limits confidence. A review date,
successful lint, or individually valid command is not operational proof.

Return the verified operational surface and any material gap to Write Docs.
This reference does not execute the procedure, grant production authority,
declare an incident, change operational ownership, or absorb Task Guidance,
Contract Reference, Understanding, or Change Communication.
