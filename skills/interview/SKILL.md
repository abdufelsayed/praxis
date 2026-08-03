---
name: interview
description: "Interview one consequential human-owned judgment. Use for intent, preference, priority, tolerance, ambiguous meaning, or recognition-based reaction."
---

# Interview

Resolve one human-owned judgment by following the answer that changes the
work. Interview owns question choice, adaptive interpretation, recommendation
order, and stopping; the caller keeps the governing record, route, gate,
authority, and acceptance.

## 1. Bind the judgment and the round

Accept one bounded caller or human brief: the judgment only the human can
make, why it matters, known context, the consequence of delay or error, the
caller that will use the answer, and any current evidence or artifact. Give
the round a stable `boundary_id`. Record `origin` as the exact lowercase token
`human`, `interview`, `research`, or the caller's stable identifier, and record
`peer_edge_crossed` as `true` or `false`. Keep that guard with the brief:

- A direct call carries `boundary_id`, `origin`, `return_to`, and
  `peer_edge_crossed`.
- Cross that edge at most once in a round. If `origin=research`,
  do not call Research back for the same boundary; return the missing factual
  condition to Research instead. If the edge was already crossed, return the
  gap to the outer caller rather than re-entering either skill.
- A message, answer, artifact, or recommendation never grants authority or
  starts a forward owner.

If the request is a discoverable fact and `origin` is not `research` with
`peer_edge_crossed=false`, use the round's one guarded crossing to call
[Research](../research/SKILL.md) with the exact claim, `boundary_id`,
`origin=interview`, named `return_to`, and `peer_edge_crossed=true`. Research
returns its scoped result to that owner and cannot call Interview back for the
same boundary; stop after the handoff. If `origin=research` or the edge is
already crossed, return `needs-evidence` with the exact missing fact to the
named outer owner instead of calling Research. If it is an integrated unknown,
a route choice, or a governing record judgment, return that boundary to its
owner. If the answer is already clear and no human choice would change the next
action, return `no-op` with the sufficient existing evidence. This step is
complete when the human judgment, consequence, caller, and bounded round are
explicit, or one of those route/no-op returns is made.

## 2. Keep a live model and choose the next question

Maintain only the current unknown, candidate interpretations, what each would
change, and what remains safe to carry. Rank the next question by the scope,
architecture, behavior, compatibility, cost, or risk it can change—not by a
prepared list or an Unknowns Map. Retire a question as soon as its answer no
longer affects the caller.

Ask one concrete scenario at a time. State the consequence of the answer in
plain language and keep the response open to combination, rejection, or a
new direction. Use a few options only to make a real contrast visible; never
make them a hidden questionnaire.

Before asking, choose the recommendation order:

- For recognition-based reaction, collect the first human response to the
  concrete case before offering advice or preferred framing.
- For a judgment that needs technical facts or consequences, explain the
  relevant evidence and recommend a direction first, then keep preference and
  advice visibly separate.
- If a factual gap blocks an honest question, `origin` is not `research`, and
  `peer_edge_crossed=false`, call [Research](../research/SKILL.md)
  with `boundary_id`, the exact claim, required freshness, consequence,
  `origin=interview`, named `return_to`, `peer_edge_crossed=true`, and the
  return shape. Consume its result without re-entry: use `answered` evidence;
  use `no-op` only with the sufficient existing evidence it identifies;
  preserve `conflicting` evidence and ask only a consequential human judgment
  the conflict genuinely leaves open; on `revised`, rebind the human question
  only when the returned evidence is sufficient; map `unverified`,
  `needs-human-judgment`, or an unresolved `revised`/`conflicting` result to
  `needs-evidence` with the causal owner and a new boundary; and propagate
  `blocked` or `stopped`. Do not make the human answer for a fact or call
  Research back in this round.
- If that factual gap appears in an `origin=research` or already-crossed round,
  return `needs-evidence` with the exact missing condition to the named outer
  owner; do not call Research.
- If the human cannot judge without comparing, manipulating, experiencing, or
  seeing a faithful surface, call [Make Tangible](../make-tangible/SKILL.md)
  with the exact question, audience and starting point, evidence and accepted
  truth, primary judgment, required medium and fidelity, reaction to capture,
  and current authority and artifact lifetime. On `no-op`, use its direct
  explanation in the ordinary conversational path. On `constructed` or
  `revised`, resume with its artifact, reaction, and fidelity limits; propagate
  `blocked` or `stopped`. Keep interpretation here.

Only invoke those peers when the stated condition is present. A peer returns
its bounded evidence or reaction, not a route, gate, or authority. This step
is complete when the next question, its scenario and consequence, and any
required evidence or surface are ready.

## 3. Choose adaptive or bundled interaction

Use the ordinary conversational path when an answer could change the next
question, recommendation, available option, context, or required evidence.
Consequential or dependent questions stay adaptive even when a form would be
faster.

Call [Plannotator](../plannotator/SKILL.md) for one small bundle only when all
questions are independent, already grounded by the same context, and easier
to answer together. Declare `interaction_kind=Bundled interview`,
`caller=Interview`, the exact bundle target and context revision, its question
scope, the human judgment requested, and what that judgment does not authorize.
Give it stable question IDs, the concrete context and consequence for each,
and allowed custom or combined answers. Plannotator owns presentation and
transport only. On
return, retain every answer, note, skipped state, uncertainty, and native
limit; a skipped consequential question returns to this adaptive path. A
dismissed or failed native session returns `stopped` or `blocked` with no
inferred answer or approval.

Never bundle a discoverable fact, a question whose answer changes another
question, or a question whose
context is not yet grounded. Temporary bundle data is transport, not a record
or transcript. This step is complete when one faithful interaction mode and
its exact bounded question set are selected.

## 4. Ask, reflect, and update the model

Ask the selected adaptive question through one realistic scenario. After the
answer, reflect only meaning that is new, materially changed, nuanced, or easy
to misread; then update the live model and discard irrelevant follow-ups.
Preserve a mixed, tied, qualified, uncertain, possibly biased, or
none-of-the-above reaction at the level the scenario supports. Ask one
discriminating follow-up only when resolving the qualification could change
the caller's next judgment.

If a broader preference is tempting, test it with one contrasting scenario
only when the generalization would change later work. A local choice does not
become a global rule without useful contrast or an explicit human statement.

When the human says “I don't know,” classify the gap:

- missing fact → use the Research branch in Step 2;
- missing experience or comparison → use Make Tangible;
- missing settled mental model → return the need to the caller's orientation
  owner; or
- safely deferrable judgment → retain the uncertainty and continue only if
  another independent question still matters.

When a later answer appears contradictory, first test whether the answers
apply to different actors, situations, environments, or boundaries. If they
do, preserve the conditional intent. If they truly conflict, show both
interpretations, state what each changes, recommend a resolution only when
supported, and ask the smallest reconciling question. A changed feasibility
condition changes the question and available choices; it does not invent a
reversed preference. This step is complete when the answer has changed the
model, exposed a bounded missing evidence class, or shown that the remaining
uncertainty is safe to carry.

## 5. Retire, continue, or stop

Continue the current round only while another bounded question can change the
caller’s judgment. Retire questions whose answer no longer affects the work;
do not enumerate every unknown. Stop when the caller can proceed honestly with
remaining uncertainty safe to carry, when a required evidence class or human
choice is missing, when the human stops, or when a contradiction cannot be
resolved inside this round.

Return:

```text
Interview Result {
  outcome: clarified | qualified | deferred | needs-evidence |
            conflicting | no-op | blocked | stopped,
  boundary_id,
  judgment_and_scope,
  answer_or_reaction?,
  material_consequences,
  evidence_and_fidelity_limits?,
  retired_or_remaining_questions,
  unresolved_or_disputed_points,
  recommendation?,
  causal_owner_and_next_boundary
}
```

`clarified` means a scoped answer supports the caller; `qualified` preserves a
mixed or conditional answer; `deferred` names uncertainty safe to carry;
`needs-evidence` names the Research, Make Tangible, or orientation boundary;
`conflicting` preserves unresolved human interpretations; `no-op` identifies
the already-sufficient answer; `blocked` names a missing authority,
dependency, or usable interaction; and `stopped` preserves the current safe
state after a human stop or dismissed interaction. Recommend only when the
evidence supports it; otherwise name the missing human judgment or evidence.

Return the smallest message the caller needs to update its own working
meaning. Do not pass a gate, create a record, preserve a transcript, choose a
route, authorize mutation, or continue the caller. Persist exact answers only
when a named future consumer needs them; otherwise keep the return transient.
Stop after the return.
