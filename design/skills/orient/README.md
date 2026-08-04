# Orient

> **Design document — not a runtime skill.** The accepted behavioral contract
> and target package design remain here; runtime assembly status is tracked in
> [Praxis Status](../../STATUS.md).

## What it does

Orient helps the human build a usable mental model of a codebase, system,
domain, artifact, proposal, or delivered change. It begins from one bounded
learning objective and the human's current knowledge, grounds the explanation
in authoritative evidence, teaches through the smallest useful structure,
adapts through conversation, and returns an honest comprehension state.

Its leading idea is **make settled truth understandable without turning
teaching into discovery, specification, or judgment**. Orient owns how to
orient. A calling Praxis owner retains its question, governing meaning, gate,
authority, and stopping rule.

Orient is a human-selected supporting capability, not an owning loop, forward
route, or special interaction posture. The human may request it directly. A
Praxis owner may recommend one bounded orientation when a nontrivial mental
model would materially improve the human's ability to understand or judge its
current work. Orient begins only after the human accepts that suggestion in
ordinary language.

## Recommend a bounded orientation

Recommend Orient from comprehension burden rather than change size or process
ceremony. It is useful when the human must understand interacting ownership,
control flow, data flow, state transitions, unfamiliar failure behavior, or
another consequential mechanism that a concise explanation cannot carry
honestly.

State:

1. the specific model the human may need;
2. why it matters to the current judgment or use;
3. the proposed scope and likely teaching medium; and
4. what will happen immediately if the human accepts.

Do not ask the human to name the skill or “enter Orient.” A natural suggestion
such as “I recommend a short state-model walkthrough before you judge this
result” is sufficient. Respect refusal without repeating the suggestion. The
caller still owes its ordinary concise explanation, and refusal implies
neither understanding nor acceptance.

If demonstrated competence is itself an accepted result claim, refusing the
orientation or check leaves that claim unproved. Praxis does not force teaching
or reinterpret refusal as success.

## Begin with one learning objective

A direct human request supplies the learning need. A calling owner supplies a
bounded orientation brief containing:

- what the human must be able to understand, inspect, operate, or judge;
- the human's apparent starting knowledge;
- the settled observed or accepted model to teach;
- authoritative source and evidence anchors;
- consequential mechanisms, boundaries, failures, and limitations; and
- uncertainty that must remain visible.

Infer the starting point from the request and vocabulary. Ask one short
calibration question only when the answer would materially change the
explanation. Do not administer an intake questionnaire or teach foundations the
human already demonstrates.

Orient may run without a Praxis Project or active owning loop. It creates no
Project, Requirement, Evolution, Issue, Plan, route, gate, or authority.

## Do not cross into discovery or specification

Orient teaches a model that is sufficiently settled to explain. It never uses
teaching questions to discover what should become true.

Use this boundary test:

> Would the human's answer only show how they understand the current model, or
> could it change what ought to be true?

If the answer could change a need, preference, constraint, desired outcome, or
other problem truth, return the question to
[Discover Requirements](../discover-requirements/README.md). If it could
change governing behavior, boundaries, exclusions, or proof, return it to the
exact [Formalize](../formalize/README.md) owner. If accepted behavior remains
fixed but the implementation approach is unsettled, return it to
[Plan](../plan/README.md).

Orient may explain current behavior, accepted meaning, an approved rationale,
or a delivered mechanism. It must not elicit preferences while pretending to
check comprehension, turn answers into Requirements, negotiate desired
behavior, choose a solution, resolve specification ambiguity, revise governing
records, or label a genuine disagreement as a misconception.

Requirements Discovery, Formalization, Plan, Delivery, Review, or another owner
may recommend Orient to establish background required for meaningful
collaboration. After orientation returns, that caller asks and owns the actual
preference, specification, implementation, review, or acceptance question.

## Return consequential choices to Design Solution

If orientation exposes a consequential architecture, domain-model, ownership,
workflow, contract or integration, transition or operations, trust, failure, or
changeability choice, stop teaching that point. Before calling [Design
Solution](../design-solution/README.md), verify its
complete current preflight. Every field must be concrete or honestly `not
applicable` when omission cannot change the comparison; never use a blank,
guess, or merely `unknown` value. The bounded brief contains:

- active caller/owner and earliest causal owner;
- accepted problem truth (Requirements/specifications) and current relevant
  evidence, with source, revision, provenance, and known limits;
- one exact open choice, why it is consequential, the consequence if wrong or
  deferred, and the conditions under which it applies;
- territory, actors, scenarios, and boundaries;
- hard Requirements, safety boundaries, invariants, and compatibility
  obligations;
- evidence standard and exact authority for source inspection or a bounded
  probe;
- known feasible, current-shape, caller-accepted, and provisional alternatives;
  and
- caller-retained route, gates, exact authority, acceptance, and overall stop.

If a comparison-changing field is missing, ask one focused clarification. If it
cannot be supplied without guessing, return the missing boundary, available
context/evidence with provenance and limits, and revisit condition to the
caller; do not invoke Design Solution or continue the affected teaching. An
out-of-scope route, authority, approval, acceptance, or other effect returns the
exact owner or human act.

When complete, pass the exact learning and unchanged `SupportingCallFrame`.
Carry Design Solution's exact top-level `recommended`, `selected`,
`qualified`, `no-choice`, `revised`, `refused`, or `stopped` result, including
its state-specific shape/no-choice reason, criteria, consequences,
evidence/provenance, maturity/fidelity limits, uncertainty, causal owner, and
revisit or repair condition. Orient does not choose, accept, or collapse that
result into comprehension; it stops the affected teaching and returns the
design message to the original caller. Design Solution owns candidate
comparison, synthesis, recommendation/selection, causal return, and its stop.

## Teach the smallest useful model

For repository and system questions, inspect current source, interfaces,
configuration, tests, runtime behavior, and consequential history far enough to
support the requested model. For other topics, use authoritative references and
concrete examples closest to the real question. Distinguish sourced fact,
accepted meaning, inference, and uncertainty.

Start with the purpose, major responsibilities, ownership boundaries, and
primary flow that organize the subject. Connect that map to a few decisive
source anchors, then deepen one branch at a time:

1. establish the whole the human must hold;
2. show the few relationships that make it work;
3. connect those relationships to concrete examples or source;
4. zoom into one difficult mechanism; and
5. return that detail to the whole.

Repository order, file count, call-tree depth, and exhaustive completeness are
not teaching structures. Avoid tours that leave the human with facts but no
usable model.

If one bounded factual uncertainty blocks an accurate explanation, invoke
[Research](../research/README.md) and integrate its result. If the uncertainty
would change governing truth rather than merely clarify it, return it to the
owning loop instead of turning Orient into open-ended investigation.

## Choose the teaching method proportionately

Orient owns the learning objective, teaching order, examples, conceptual
questions, interpretation of reactions, misconception correction, and decision
that the human has a usable model.

Use ordinary conversation for prose, short examples, simple text diagrams,
small state tables, source walkthroughs, and lightweight questions. Invoke
[Make Tangible](../make-tangible/README.md) when making the model perceptible is
a substantial construction and fidelity problem of its own: a visual diagram,
navigable or annotated view, interactive model, simulation, multi-state
walkthrough, demonstration, quiz interface, or versioned teaching surface.

Orient supplies the learning objective, conceptual content, relevant evidence,
and any proposed understanding checks. Make Tangible owns medium choice,
construction, interaction mechanics, rendering, accessibility, intended-medium
verification, artifact lifetime, and fidelity limits. Make Tangible returns the
surface and reaction; Orient interprets what they mean for the human's model.

Safe local disposable surfaces remain internal composition inside the accepted
orientation. Paid, credentialed, networked, persistent, mutating, or externally
published effects retain their ordinary effect-based authority.

## Adapt through understanding checks

Explain in short coherent units and use the human's questions and reactions to
choose the next depth. Lightweight conversational checks may ask the human to
predict a transition, explain a mechanism, distinguish two boundaries, apply
the model to an example, or identify uncertainty. The human may skip them.

A substantial constructed quiz has separate interaction cost. Explain what it
would reveal and let the human choose it unless demonstrated competence is
already an accepted result claim. Orient owns the learning objective, questions,
and interpretation; Make Tangible owns the optional quiz surface and mechanics.

Questions test applied reasoning rather than trivia, filenames, or memorized
phrasing. Wrong answers reveal a misconception, lead back to the relevant model
or evidence, and permit a changed scenario on retry. Use no score, grade, or
permanent learner profile by default.

Understanding checks never prove implementation correctness, replace Review or
Verify, approve governing meaning, grant authority, or become Result Acceptance.
They become a required result claim only when accepted governing work or the
human explicitly made demonstrated competence part of the outcome.

## Return discoveries to their owner

Orientation may reveal contradictory evidence, missing governing meaning, a
new preference, or disagreement with accepted truth. Explain the finding,
distinguish it from misunderstanding, and return it to the exact owner. Orient
does not revise Requirements, Evolutions, Issues, Plans, implementation,
documentation, or route state itself.

If a teaching surface is wrong or ambiguous, correct the explanation and repeat
only affected understanding checks. If the underlying source, specification,
Plan, or delivered result is wrong, stop teaching that point and return it
rather than building a persuasive explanation around falsehood.

## Remain read-only and ephemeral

Orient grants no product or repository mutation authority. It may inspect, run
safe read-only checks, and use disposable teaching surfaces that change no
product behavior or unapproved external state. It does not fix, refactor,
configure, document, commit, publish, or perform consequential actions because
the explanation exposed useful work.

Conversation carries the explanation by default. Understanding checks create
no transcript, scorecard, learner record, or comprehension receipt. A teaching
surface used only for current understanding is disposable. Preserve the exact
surface only while a named judgment needs it; enduring guidance for future
readers belongs to [Write Docs](../write-docs/README.md) under its separate
entry and authority contract.

## Return an honest comprehension state

Complete when the bounded learning objective has been taught from current
evidence, material uncertainty remains visible, and the human can continue or
has chosen to stop. Return the model taught, decisive source anchors, any
surface used, misconceptions corrected, and one honest state:

- **Explained:** the necessary model and evidence were presented.
- **Understanding observed:** the human applied the model successfully.
- **Misconception unresolved:** a consequential misunderstanding remains.
- **Understanding unconfirmed:** no explicit check was needed or completed.
- **Orientation blocked:** missing evidence or an unreliable model prevents an
  honest explanation.

The caller interprets this state. Ordinary work may proceed after explanation
without demonstrated mastery. `Orientation blocked` prevents a claim that the
matter was made honestly judgeable. A competence claim remains unproved unless
its required evidence exists. Orient never performs the caller's gate or
acceptance judgment.

## Packaging

Keep the complete orientation procedure in `SKILL.md`; it is the normal path,
not conditional knowledge. Orient needs no skill-local references, templates,
questionnaires, scripts, or durable record initially. It invokes Research for
one factual gap, Design Solution for one consequential choice, and Make
Tangible for a constructed teaching surface rather than copying any callee's
procedure.

## Direct dependencies

### Skills

- [Research](../research/README.md) — resolve one factual gap in the model;
  return evidence and limits; Orient retains explanation and learner context.
- [Design Solution](../design-solution/README.md) — compare one consequential
  solution choice after the complete current preflight above; return its exact
  bounded state and limits; Orient retains teaching and comprehension.
- [Make Tangible](../make-tangible/README.md) — construct and verify one
  teaching surface; return its exact version, reaction, and fidelity limits;
  Orient retains pedagogy and interpretation.

### Shared references

- None.

## Target runtime package


### Invocation and host projection

Orient is model-invoked so a direct human request or an explicitly accepted
bounded suggestion can load it. The description keeps teaching separate from
discovery, specification, and solution judgment.

```yaml
---
name: orient
description: "Orient the human to one settled model. Use after a direct teaching request or accepted orientation suggestion whose purpose is comprehension."
---
```

```yaml
interface:
  display_name: "Orient"
  short_description: "Teach one bounded settled mental model"
  default_prompt: "Use $orient to teach this settled model."
policy:
  allow_implicit_invocation: true
```

### Information hierarchy, effects, and package

`SKILL.md` keeps entry consent, learning objective, ownership preflight,
smallest useful model, method choice, understanding checks, adaptation, causal
return, ephemeral behavior, comprehension result, and stopping inline. The
orientation is complete when the human can use the model for the named
judgment or its remaining uncertainty is explicit.

The target reference map is `None`. Orient is read-only and ephemeral; durable
reader documentation routes to Write Docs. It has no scripts, assets, fixtures,
templates, or required integration. Target files are exactly `SKILL.md`,
`SPEC.md`, and `agents/openai.yaml`.

The Research, Design Solution, and Make Tangible calls are accepted. `SPEC.md`
adds cases for a direct request, accepted versus unaccepted suggestion,
unknown factual premise, unsettled requirement, consequential solution choice,
constructed teaching surface, failed understanding check, discovery returned
to its owner, and honest partial comprehension. No package decision remains
unresolved.
