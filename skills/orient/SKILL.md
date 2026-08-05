---
name: orient
description: "Orient the human to one settled model. Use after a direct teaching request or accepted orientation suggestion whose purpose is comprehension."
---

# Orient

Teach one bounded, settled mental model so the human can understand, inspect,
operate, or judge the named subject. Orient owns the learning objective,
teaching order, examples, conceptual checks, interpretation of reactions, and
comprehension state. The caller retains its governing question, route, gate,
authority, acceptance, and stopping rule.

## 1. Confirm entry and bind one objective

Begin only from a direct human teaching request or after the human accepts a
caller’s bounded orientation suggestion in ordinary language. A loaded skill
is not behavioral entry. Record `entry=direct-request` or
`entry=accepted-suggestion` at entry and preserve it on every return. If a
suggestion is declined or not accepted, return
immediately with `return_kind=stopped`, `entry=declined-suggestion`, and no
comprehension or acceptance claim; the caller still owes its ordinary concise
explanation. Do not ask the human to name this skill or enter a special mode.

Bind exactly one learning objective and the smallest useful brief:

- what the human must understand, inspect, operate, or judge;
- the human’s demonstrated or inferred starting point;
- the settled observed or accepted model to teach;
- authoritative source and evidence anchors;
- consequential mechanisms, ownership boundaries, failures, limitations, and
  uncertainty; and
- the caller’s question, owner, and return context when the call is composed.

Infer the starting point from the request and vocabulary. Ask at most one
short calibration question when its answer would materially change the
explanation. If the objective, settled model, source, or starting point is
missing and cannot be supplied without guessing, return
`return_kind=comprehension`, `comprehension_state=orientation-blocked`, and
the exact missing boundary. This step is complete when one bounded objective,
starting point, settled model, evidence basis, and visible limits are explicit,
or the precise entry/blocker return has been made.

## 2. Keep teaching separate from ownership

Teach only a model that is sufficiently settled to explain. For every question
the human asks, apply this boundary test: would its answer only show how the
human understands the current model, or could it change what ought to be true?

- A changed need, preference, constraint, desired outcome, or problem truth
  returns as `return_kind=causal-return` to the Requirements Discovery owner.
- Changed governing behavior, boundaries, exclusions, or proof returns as
  `causal-return` to the exact Formalization owner.
- A fixed accepted behavior with an unsettled implementation approach returns
  as `causal-return` to the Plan owner.

Explain current behavior, accepted meaning, approved rationale, or delivered
mechanism. Do not use teaching questions to elicit preferences, negotiate
behavior, choose a solution, resolve specification ambiguity, revise records,
or label disagreement a misconception. The caller resumes its own question
after a comprehension return. This step is complete when every question that
could change governing truth has an exact owner or the remaining questions are
understanding checks only.

## 3. Return consequential solution choices

When teaching exposes a consequential architecture, domain model, ownership,
workflow, contract, integration, transition, operations, trust, failure, or
changeability choice, stop teaching that point and prepare the complete
current preflight owned by [Design Solution](../design-solution/SKILL.md).
Give the callee its required current brief; a blank or guessed field is not a preflight.

If any required preflight field is missing, return
`return_kind=causal-return` with the field, supplied evidence with provenance
and limits, the exact caller, and the revisit condition; do not invoke Design
Solution or continue that teaching branch. Otherwise call Design Solution with
that exact explicit preflight. Carry its result without selecting, accepting,
or collapsing it into comprehension: `recommended`, `selected`, `qualified`,
`no-choice`, `revised`, and `refused` return as
`return_kind=causal-return` to the owner named by the result; `stopped` returns
as `return_kind=stopped` with its exact state. This step is complete when the
choice is returned through that explicit envelope or the exact missing
preflight boundary has been returned.

## 4. Ground the model in current evidence

For repository or system questions, inspect current source, interfaces,
configuration, tests, and runtime behavior far enough to support the bounded
model. For other subjects, use authoritative references and concrete examples
closest to the question. Distinguish sourced fact, accepted meaning,
inference, and uncertainty; do not teach an intended future as current truth.

Teach in this order:

1. the purpose, responsibilities, ownership boundaries, and primary flow;
2. the few relationships that make that whole work;
3. concrete examples or decisive source anchors;
4. one difficult mechanism, transition, or failure; and
5. the detail returned to the whole model.

Repository order, file count, call-tree depth, and exhaustive completeness are
not teaching structures. If one bounded factual gap prevents an accurate
explanation, call [Research](../research/SKILL.md) with the round identity
(`boundary_id`, `origin=orient`, `return_to=orient`,
`peer_edge_crossed=false`). Map its returns exactly:

- `no-op` uses only the sufficient existing-context explanation and adds no
  research evidence; `answered` evidence is integrated with its provenance;
- `unverified` or `conflicting` preserves the exact result and limits and
  continues only when the remaining evidence still supports the learning
  objective at its evidence bar; otherwise return
  `return_kind=comprehension`, `comprehension_state=orientation-blocked`, and
  the exact Research state;
- `revised` gets a new factual `boundary_id` when the claim or conditions
  changed but the learning objective and governing truth remain stable; carry
  forward only in-scope evidence. If it changes a need, preference, constraint,
  desired outcome, problem truth, accepted or governing behavior, boundary,
  exclusion, proof, or implementation approach, return
  `return_kind=causal-return` to that exact owner;
- `needs-human-judgment` returns the missing qualification to its human or
  causal owner as `causal-return`, without investigating or claiming
  comprehension;
- `blocked` preserves the exact Research state and becomes
  `orientation-blocked` when the remaining evidence cannot support the learning
  objective at its evidence bar; otherwise its limitation remains visible; and
- `stopped` becomes `return_kind=stopped` with the exact Research state and no
  inferred evidence.

Research owns evidence selection and synthesis; Orient keeps the learning
objective and teaching. This step is complete when every material teaching
claim has a current anchor or an explicit uncertainty, causal return, or
blocker.

## 5. Choose a proportionate teaching surface

Use ordinary conversation, short examples, text diagrams, small state tables,
source walkthroughs, and lightweight questions by default. Call [Make
Tangible](../make-tangible/SKILL.md) only when construction is a substantial
fidelity problem of its own: for example, a visual or navigable model,
annotated view, interactive model, simulation, multi-state walkthrough, or
constructed quiz.

Call Make Tangible with the exact question, learning objective, conceptual
content, audience, primary judgment, and required medium/fidelity. Carry
`caller=orient` and `return_to=orient` in the bounded brief.

Consume `no-op` as an ordinary explanation. For `constructed` or `revised`,
retain the exact artifact identity/version, reaction, supported conclusions,
fidelity/transport limits, and returned retention state: disposition, named
consumer, owner/path, exact version, reaction export, and verified
preservation/removal evidence. Carry forward the caller-supplied lifetime. A
`blocked` result preserves the exact
target and current artifact/checkout state. Return `return_kind=comprehension`,
`comprehension_state=orientation-blocked`, when the ordinary teaching surfaces
cannot meet the learning objective and required fidelity; otherwise keep the
limitation visible and use the ordinary path. A `stopped` result
becomes `return_kind=stopped` with no inferred reaction. Make Tangible owns
medium choice, construction, interaction, rendering, accessibility,
intended-medium verification, artifact lifetime, and fidelity. Orient
interprets the reaction and never calls Plannotator directly. This step is
complete when the medium is proportionate and its exact state/limits are known,
or the explicit blocked/stopped envelope has returned.

## 6. Teach, check, and adapt

Explain in short coherent units. Use the human’s questions and reactions to
choose the next depth. Optional conversational checks ask the human to predict
a transition, explain a mechanism, distinguish boundaries, apply the model to
an example, or identify uncertainty. They test applied reasoning, not trivia,
filenames, or memorized phrasing.

When a check reveals a misconception, name the mistaken model, return to the
relevant source or explanation, and retry with a changed scenario. Preserve
the distinction between a correction and a disagreement about governing truth.
Use no score, grade, or learner profile. A human may skip a lightweight check.

A substantial constructed quiz has its own interaction cost: explain what it
would reveal and let the human choose it unless demonstrated competence is an
accepted result claim. Make Tangible owns the optional quiz surface and
mechanics; Orient owns the questions and interpretation. Checks never prove
implementation correctness, replace Review or Verify, approve governing
meaning, grant authority, or become Result Acceptance unless the human or
accepted governing work explicitly made demonstrated competence part of the
outcome. This step is complete when the objective’s necessary model has been
presented and each attempted check has an interpreted reaction or a recorded
skip.

## 7. Return discoveries and keep the work ephemeral

If orientation reveals contradictory evidence, missing governing meaning, a
new preference, or disagreement with accepted truth, explain the finding,
distinguish it from misunderstanding, and return
`return_kind=causal-return` to the exact causal owner.
Do not revise Requirements, Evolutions, Issues, Plans, implementation,
documentation, route state, or acceptance from Orient. If a teaching surface
is wrong, correct the explanation and repeat only affected checks; if source,
specification, Plan, or delivered behavior is wrong, stop that point and
return it rather than teaching a persuasive falsehood.

Orient is read-only. It may inspect current evidence, run safe read-only
checks, and use disposable teaching surfaces that change no product behavior
or unapproved external state. Conversation carries the explanation by
default; checks create no transcript, scorecard, learner record, or
comprehension receipt. A surface used only for current understanding is
disposable. If a named future consumer needs the exact surface, preserve the
complete retention state returned by Make Tangible. Durable guidance for future
readers returns as `return_kind=causal-return` to the separate [Write Docs](../write-docs/SKILL.md) entry
with the named reader, purpose, current-source anchors, exact surface when one
exists, documentation authority, and revisit condition. Orient does not invoke
or continue that route. This step is complete when every discovery has an owner
return or remains a comprehension-local correction, and all
ephemeral/preserved state is explicit.

## 8. Return one bounded envelope and stop

Complete when the bounded objective was taught from current evidence, material
uncertainty is visible, and the human can continue. Return
`return_kind=comprehension` with the first applicable state in this order:
`orientation-blocked` when evidence cannot support an honest model;
`misconception-unresolved` when a consequential misunderstanding remains;
`understanding-observed` when an applied check succeeded;
`understanding-unconfirmed` when no applied check completed; otherwise
`explained`. The blocked state makes no comprehension or acceptance claim.

Owner or dependency routes return `return_kind=causal-return` with the exact
`causal_return` owner, reason, boundary, revisit condition, and dependency or
route result. They carry no comprehension state. A human stop, declined
suggestion, or dependency stop returns `return_kind=stopped` with
`stop_reason` and the exact partial state; it makes no comprehension or
acceptance claim. Every envelope includes `entry`, the learning objective,
starting point, any model taught, source anchors and truth status, the current
Research boundary and exact result when used, checks and interpretations,
uncertainty and limitations, any complete or partial surface state, and the
caller-retained route, gate, authority, acceptance, and stop. Do not perform
adjacent work, persist a generic record, or imply that comprehension authorizes
anything. After the envelope, stop.
