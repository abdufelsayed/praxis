# Learning and Return

> **Status: accepted plugin-wide reference.**

Use this reference when a capability, delegate, later phase, review, test, or
implementation discovery must return new information to another Praxis owner.
It defines semantic meaning, not one serialized host schema.

## Return the smallest useful message

Carry only what can change the receiving owner's next judgment:

```text
Message {
  target_or_attempt,
  evaluator_context?,
  observation,
  interpretation,
  kind?,
  decisive_evidence?,
  affected_truth?,
  still_valid_truth?,
  uncertainty_or_disagreement?,
  causal_owner?,
  recommendation?
}
```

Omit fields that add no decision value. Include a recommendation only when the
evidence supports one; otherwise name the missing evidence or human judgment
needed to proceed honestly.

Use `kind` only when confusing human preference, observed evidence, critique,
verification, approval, or acceptance would change the receiver's
interpretation. Preserve disagreement and uncertainty rather than flattening
them into false consensus.

Messages transfer knowledge, never authority. A handoff or delegation return
may point to the original human grant, but the receiver independently
establishes whether that grant, exact Plan, governing ancestors, route, and
latest human direction remain valid.

When a return blocks work, invalidates authority, changes the route, or needs a
human judgment, notify the human explicitly with the current safe state, the
consequence, and the decision needed. Do not silently resume, mutate, or choose
the next route from the returned message.

## Find the exact causal owner

Ask:

> Which earliest governing record would change if this new answer were
> accepted?

Route the learning there:

- shared Initiative objective, success condition, cross-Project constraint,
  Project relationship, or ordering rationale → Coordinate Initiative;
- Project Outcome or Project boundary → that Project's Requirements Discovery;
- need, constraint, finding, human preference, problem-space choice, or problem
  understanding in Requirements → Requirements Discovery;
- progressive strategy or sequence → Evolution Map;
- selected high-level working form → affected Evolution;
- detailed behavior, boundary, exclusion, dependency, or required proof →
  affected Issue;
- implementation approach, mutation boundary, risk, recovery, or authority →
  current Implementation Plan;
- implementation defect that preserves accepted specifications and Plan
  authority → bounded Delivery correction;
- Plannotator readiness or selected optional Docker readiness, installation,
  configuration, or capability limitation → Setup; if the limitation exposes
  a flaw in a Praxis skill or tool contract, return that design learning to the
  owning skill or core owner as well;
- ready bounded result → human review, verification, and Result Acceptance.

Initiative is an optional strategic owner, not another global phase. Project is
a routing anchor whose Outcome and boundary belong to Requirements Discovery.
Solution choices belong to the Map, Evolution, Issue, or Plan that actually
owns them; do not flatten every choice into generic Requirements.

Do not stop at the nearest editable descendant because it can absorb a
workaround. Trace the false premise to its source, revise that source narrowly,
and then update only descendants whose meaning or authority changed.

## Distinguish local correction from backtracking

Remain inside the current loop when the new evidence preserves:

- accepted behavior and compatibility;
- governing Requirements and specifications;
- current Plan targets, approach envelope, exclusions, risk, recovery, and
  required proof; and
- the still-current human authority.

Return to the causal owner when any of those meanings change. A supporting
skill may discover the need to return, but it never takes over the owner or
decides what continues after the return.

Learning is an event, not a phase, backlog, or authority source. It may appear
during research, interviewing, prototyping, formalization, planning,
implementation, debugging, delegation, review, testing, verification, or
result inspection.

## Re-gate material meaning

For accepted Requirements, a material change alters meaning, strength, scope,
or downstream obligation. Editorial correction or provenance-only enrichment
does not repeat Requirements Alignment.

For every accepted record, feedback remains bound to the candidate, evidence,
and context actually judged. Preserve still-applicable learning, but obtain
fresh judgment when source, behavior, constraints, environment, model,
harness, evaluator, or presentation changed enough to alter the conclusion.

Broader promotion requires a named future consumer and evidence supporting the
broader scope. A local correction does not become a Project convention,
personal preference, or Praxis-wide rule merely because it was memorable.

When material learning crosses an accepted transition:

1. make affected descendant Plan authority non-active;
2. signal affected in-flight mutating work to stop at the earliest safe point,
   make its current state safe, and return its partial state and evidence;
3. revise the exact causal owner;
4. foreground the semantic diff and repeat that owner's gate;
5. propagate corrected truth only through affected descendants;
6. repeat their gates and collaborative choices when their meaning changed;
7. return the revised Plan to `awaiting`; and
8. require fresh Implementation Authorization before mutation resumes.

Truly independent read-only investigation may continue only when it does not
depend on the invalidated premise. No affected worker result is integrated or
subjected to discretionary cleanup by implication; the owner or human decides
whether to preserve the partial baseline, revise, backtrack, authorize cleanup,
or stop after safety is restored.

If the accepted comparison baseline is unreliable, present the complete record
rather than inventing a diff.

## Preserve authority semantics

Approval never invokes a child. Selection, planning, implementation,
consequential external action, Result Acceptance, commit, push, merge, and
deployment remain separate judgments or authorities.

Pause, redirect, ambiguous authority source, or dismissed Result Gate returns
the Plan projection to `awaiting`. Revocation, replacement, route abandonment,
infeasible return, or Result Acceptance exhausts it.

A supervisor may project a bounded subset of active Plan authority to a Worker
while retaining ownership and integration. That is supervised delegation, not
authority transfer. Peer handoffs and context messages carry no mutation
authority.

## Persist only consequential learning

Conversation and native messages carry transient work. Source, tests, Git,
Plannotator history, owning records, interpreted References, and retained
concrete artifacts carry reconstructible evidence.

Promote only truth a named future loop needs into the record that owns its
meaning. Do not create:

- message directories;
- complete trajectory logs;
- delegation reports by default;
- reflection diaries;
- scalar reward histories; or
- duplicate learning ledgers.

Retain the current causal truth, decisive evidence pointer, consequential human
reaction, unresolved uncertainty, and next recommendation—not the entire path
used to discover them.

## Complete the return

The receiving owner interprets the message and decides whether it can continue,
must investigate locally, must revise and re-gate, or needs human judgment. The
sender does not continue the receiver's work automatically.
