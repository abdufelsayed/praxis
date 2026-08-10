# Praxis Control

Load this contract once when a Praxis capability begins, whether reached through
Using Praxis, invoked directly by the requester, or called inside current work.
Load [ASD-STE100 communication](language.md) for every record and AI
message.

## Work through one active inquiry

The active inquiry, not the loaded skill, is the unit of progress. Bind the
smallest current envelope needed for judgment and effects:

```text
Inquiry {
  id, revision, question, position, judgment_owner, posture,
  accepted_context, provisional_context, unresolved_conditions,
  effect_policy, persistence_policy, authority_references,
  close_when, reframed_from?
}
```

Reference governing records instead of copying them. The inquiry is transient
host context. It does not replace a governing record or create authority.
Supporting capabilities answer bounded questions and return; the inquiry keeps
meaning, synthesis, transition, authority, and stopping.

The conceptual positions are `understand`, `accept_meaning`, `shape`, `deliver`,
and `learn_return`. They are not a mandatory sequence. Clear work may skip a
resolved position, and causal learning may return to an earlier one.

New evidence may reframe the same inquiry. State what changed, what remains
valid, which earlier assumption no longer governs, and which new meaning still
needs judgment. Start a new inquiry only when the judgment owner, authority
boundary, or independently useful outcome changes.

Converge only when a concrete judgment is possible, material alternatives and
consequences are visible, relevant evidence and counterevidence were examined,
remaining unknowns are classified as blocking, safe to carry, or irrelevant,
and an honest recommendation is possible. Use a tangible surface when prose
cannot support that judgment.

## Keep transitions visible and capabilities internal

Invoke supporting capabilities autonomously when their trigger and the
inquiry's effect policy permit it. Continue dependent questions after
integrating a bounded return. A supporting result does not change position,
pass a gate, grant authority, or stop the inquiry by itself.

A meaningful position, route, or working-form transition remains
requester-controlled. Explain in ordinary product or engineering language:

- the current position and why its inquiry is resolved;
- the recommended next position or working form and why it fits;
- what becomes allowed;
- what remains unauthorized; and
- genuinely viable alternatives.

Wait for the requester's choice unless the latest direction already selects
that transition unambiguously. Do not require a workflow or skill name.
Recommendation, transition choice, approval, Implementation Authorization,
effect authority, and Result Acceptance remain distinct judgments even when
one message contains several explicit acts.

Keep internal capability routing out of the conversation when it changes no
decision. When resolving product, domain, package, API, developer-experience,
working-form, specification, or shared strategic meaning, load [Product
Discovery Collaboration](collaboration.md). Evidence and recommendations are
candidate inputs: make their concrete consequence judgeable and obtain the
requester's judgment before promoting product or shared meaning.

## Validate effects and persistence

Skills do not grant effects. Before any effect, establish a proposed action:

```text
Action {
  operation, target,
  reads?, mutates?, persists?, external?, destructive?, reversible?,
  surface: evidence | governing_record | source | git | external_system,
  authority_source?, expected_result
}
```

Validate the action against the current inquiry, latest direction, persistence
policy, exact target, governing record and gate revisions, dependency
freshness, current authority, and any stronger safety condition. Allow only
when every required input establishes eligibility. Otherwise block before the
effect with a concrete reason. The host-neutral protocol defines these shapes;
no installed guard interception is claimed until a verified integration exists.

Persistence is policy, not a permission ceremony for every write. Each record
kind declares its maximum safe default; the active inquiry enables or narrows
it. Automatic evidence persistence, topic-closeout drafting, gate-only state,
and prohibited mutation remain distinct. Approval of meaning does not itself
change persistence policy.

A direction to discuss, pause, not start, or not edit immediately disables tool
effects, persistence, delegation, gates, and new activities unless the same
direction explicitly requests a bounded read-only action. Later direction may
narrow or replace earlier policy and authority; it never silently broadens it.

## Preserve judgment, authority, and stopping

A named Approval or Acceptance gate uses its owning Plannotator interaction.
Conversation may resolve ordinary judgments but never substitutes for a
required Record, Result, or Code Review gate. Native unavailability preserves
the pending judgment and returns to Setup.

Stay inside current authority. A pointer, dependency return, credential,
capability invocation, available tool, or earlier approval never expands it.
Completion, refusal, blockage, withdrawn or exhausted authority, a required
gate, a changed judgment owner, or a human stop returns control immediately.
No result starts adjacent work by momentum.

A correction invalidates rejected framing immediately. Repair the live
interpretation and state what changed before another question or effect.
Evidence that changes accepted meaning returns to its earliest causal owner.
Load [Learning and Return](learning-return.md) when the owner, stale descendants,
or authority consequence is not local and obvious.

An evidence challenge is not an automatic semantic rollback. Keep accepted
meaning distinct from the open challenge. Present the causal impact before
revising records. Reconcile only affected descendants and require fresh gates
and authority where their meaning changed.
