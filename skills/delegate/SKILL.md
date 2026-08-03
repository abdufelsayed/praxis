---
name: delegate
description: "Delegate one bounded question or outcome. Use when isolated context, independent evidence, parallel work, or a cheaper capable agent provides net benefit."
---

# Delegate

Assign one bounded investigation, implementation, review, or verification
while the supervisor keeps the human relationship, governing context,
judgment, authority, integration, and final claim. Delegation is a context
boundary, not a transfer of ownership or a mandatory worker pipeline.

## 1. Establish a real delegation benefit

Begin only when the outcome is bounded and delegation has a positive expected
benefit. Evaluate these separately:

- **Supervisor-context quality:** noisy searches, logs, discarded paths, or
  independent reasoning would crowd the context needed for synthesis;
- **Total cost:** a cheaper capable model is likely to save cost after
  briefing, correction, integration, and assurance; or
- **Elapsed time:** genuinely independent work can proceed concurrently while
  coordination and integration remain cheaper than the time saved.

Name the benefit briefly. A quick targeted change, work requiring frequent
human back-and-forth, or tightly dependent reasoning stays in the supervisor
context unless another benefit clearly outweighs the handoff. If no benefit
survives that comparison, return `no-op` and leave the work with its ordinary
owner.

This step is complete when one bounded outcome, its supervisor, and the
positive benefit—or the evidence for `no-op`—are explicit.

## 2. Write the bounded brief and retain ownership

Before launch, state a single delegation brief:

```text
Delegation Brief
- Outcome
- Accepted Truth and Consequential Context
- Scope and Exclusions
- Authority, Tools, and Safety Boundaries
- Required Behavior or Claims
- Required Proof
- Authoritative Sources and Starting Pointers
- Return and Escalation Conditions
- Requested Result Shape
```

The supervisor retains human intent, current Praxis owner, accepted
Requirements, Evolutions, Issues, Plans, consequential design context,
decomposition, priorities, architecture, interfaces, authority, integration,
human-facing recommendations and gates, acceptance, and the decision to
correct, backtrack, escalate, or stop. A brief describes a bounded subset of
an already-current human grant; it never creates authority. A missing outcome,
scope, exclusion, source, required proof, or exact mutation boundary returns
`blocked` before launch rather than being guessed.

This step is complete when the delegate can distinguish a local choice from a
consequential unknown and the supervisor's retained ownership is explicit.

## 3. Protect checkout and shared-state boundaries

Inspect whether concurrent work could overlap in files, indexes, generated
state, processes, or other resources. Use one active mutating owner whenever
overlap is possible; read-only delegates may run concurrently only when they
cannot alter shared state.

When the caller has named a concrete subagent collision or preservation risk
that a separate checkout may remove, invoke [Manage Worktree](../manage-worktree/SKILL.md).
Ask it only for the smallest checkout decision or lifecycle action. It returns `current
checkout safe`, `worktree ready`, `handoff ready`, `cleanup complete`,
`blocked`, or `stopped`; Delegate retains task division, supervision,
synthesis, and all human-facing ownership. A dirty tree, task size, another
agent, or tidiness alone is not a worktree trigger. Do not use a worktree to
claim isolation for databases, services, ports, processes, caches,
credentials, containers, remote state, or infrastructure.

If Manage Worktree returns `blocked` or `stopped`, preserve any checkout and
state it reports and return the bounded delegation outcome without launching
affected mutation. A worktree result never grants authority or implies
integration, commit, publication, or cleanup.

This step is complete when every mutating owner and shared resource is named,
or the exact isolation blocker has returned.

## 4. Choose the role and capable runtime path

Choose from the work, not from an artificial sequence:

- **Scout** traces repository ownership, behavior, and source evidence;
- **Researcher** answers a bounded external, domain, standards, or comparative
  question;
- **Worker** implements or transforms one understood gray-box boundary;
- **Reviewer** adversarially examines a fixed target against governing truth;
- **Verifier** tests exact falsifiable claims with current evidence; and
- **Oracle** gives independent supervisor-grade judgment on consequential
  direction, drift, contradiction, or unresolved disagreement.

When role selection is not obvious or its authority, evidence, return, or
escalation contract must be consulted, load
[`references/roles.md`](references/roles.md) now. Keep it unloaded only when
the host exposes one obvious capable path and that role contract is already
fully understood. Choose the cheapest model capable of a trustworthy result;
role names are lenses, not lifecycle stages. Use one coherent role or a
justified combination, and use Oracle as an exception rather than routine
review.

This step is complete when the role, model capability, context-isolation
mechanism, tools, permissions, and requested proof match the bounded brief.

## 5. Launch a fresh, least-privilege delegate

Use a fresh isolated context and the intentional brief by default. Fresh
context isolates instructions and working narration, not the filesystem or
external resources. Use a bounded fork only when essential conversational
nuance cannot be transferred faithfully and economically. Delegation is one
level deep by default; a delegate that sees a useful further split returns it
instead of creating more delegates.

Use host-native delegation when available. If no host mechanism exists and the
bounded work remains feasible, the supervisor may perform the same brief
directly without changing its scope, authority, evidence, or stopping rule.

Give the delegate only the repository scope, tools, permissions, secrets, and
mutation authority named in the brief. Secrets are accessed only when their
exact purpose, recipient, scope, and authority are necessary; use least-
revealing checks and keep secret values out of prompts, reports, handoffs,
artifacts, durable records, routine output, and unnecessary delegates.

Only Worker may receive product-mutation authority. Scout, Researcher,
Reviewer, Verifier, and Oracle remain read-only with respect to product state;
Verifier may create only explicitly authorized disposable proof artifacts that
do not alter product behavior or unapproved external state. If a non-Worker
brief requests product mutation, return `blocked` before launch or mutation.

For a Worker, project only the bounded subset of an active Plan that the
human's current Implementation Authorization already covers. The supervisor
must understand the responsible boundary, observable behavior and failure
semantics, interfaces and invariants, side effects, compatibility, exclusions,
and proof before delegating implementation. If a consequential boundary is
not understood, return its evidence and impact instead of asking the Worker to
decide it.

This step is complete when the delegate has the exact brief, fresh-context
choice, access boundary, and proof obligation, or the supervisor has returned
an honest launch blocker.

## 6. Supervise by exception and preserve correction paths

The delegate works quietly. It reports only a material blocker or missing
input, conflict with governing truth or scope, safety or authority concern,
supervisor decision, or evidence that should cancel or redirect other work.
Keep routine status, searches, successful commands, logs, and heartbeats out
of the human-facing conversation.

If the brief and governing truth remain valid and correction is local, resume
the same delegate. Start a fresh delegate, escalate capability, or return to
the supervisor when the brief changes materially, context is polluted,
independent judgment is needed, the delegate misunderstood the governing
problem, or correction and integration now cost more than direct supervision.

If a return invalidates any governing truth or authority boundary, make
affected authority non-active and signal affected mutating delegates to stop
at the earliest safe point, make current state safe, and return partial state
and evidence. Truly
independent read-only work may continue only when it does not depend on the
invalidated premise. Return changed governing meaning to the exact causal
owner; do not absorb it in a lower-level delegate.

This step is complete when every running delegate is either within its brief,
has safely stopped with evidence, or has returned a material exception for
the supervisor's decision.

## 7. Evaluate independent returns when their condition is present

When several delegates pursue distinct evidence paths or their returns
conflict, load [`evaluation.md`](../../references/evaluation.md). Use it to
keep human preference, observed evidence, critique, verification, approval,
and acceptance distinct; preserve disagreement and evaluator context; test
whether paths are genuinely independent; and stop when another bounded attempt
cannot change the judgment. A single contained delegate does not load it.

Treat each completion report as evidence, not proof. Inspect the integrated
target, governing boundary, material diff or findings, and decisive evidence
closely enough to make the next claim honestly. Do not use evaluator count,
confidence language, or repeated agreement as a universal quality score.

This step is complete when every material return is bound to its target and
conditions, conflicts are preserved, and the supervisor knows what still
needs inspection or judgment.

## 8. Compact the result, persist only named truth, and stop

Return the smallest result from which the supervisor can act honestly:

```text
Delegate Result {
  outcome,
  role,
  result,
  exact_evidence_and_source_pointers,
  material_findings_or_changes?,
  verification_performed?,
  limitations_and_confidence,
  unresolved_questions_or_deviations,
  recommended_next_step
}
```

Include exact changed paths or integration pointers when work changed
anything, decisive proof and its signal, and partial state when work stopped
early. Keep raw searches, discarded paths, transcripts, logs, status files,
and coordination records transient unless a named future consumer needs a
durable projection. Promote only the interpreted truth into the record owned
by the relevant Praxis loop; never create a generic delegation ledger.

Return `delegated` when the bounded result and evidence are usable, `partial`
when safe incomplete state and evidence are returned, `blocked` when the
brief, authority, safety, resource, isolation, or execution dependency
prevents a usable launch or action, `stopped` when the human or supervisor
ends it, or `no-op` when direct work is the better path. State limitations and
the missing judgment for every non-complete outcome. The supervisor retains
interpretation, integration, acceptance, authority, and the next action;
delegation itself authorizes no correction, gate, Plan, commit, push, merge,
deployment, publication, external effect, or continuation.

The completion criterion is exhaustive: one bounded outcome has a compact
evidence-backed return or an honest blocker, every material change and limit
is named, no authority has transferred, and this capability has stopped.
