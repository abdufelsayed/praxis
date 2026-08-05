# Interview — Maintainer Contract

## Purpose

Interview resolves one human-owned intent, preference, priority, tolerance,
ambiguous meaning, or recognition-based judgment that current evidence cannot
determine. It asks the smallest consequential question in a concrete
scenario, adapts after every answer, and returns scoped meaning to its caller.
The caller retains governing records, interpretation, gates, authority,
acceptance, and forward routing.

## Invocation, inputs, and exclusions

Interview is model-invoked because any active Praxis owner may encounter one
consequential choice only the human can supply. A direct human request may
start it when the request identifies the same bounded judgment. Its exact
frontmatter and host projection are part of this contract.

The caller or human supplies, or makes discoverable:

- one human-owned judgment and why it can change the work;
- current context, evidence, artifacts, and competing interpretations;
- consequence of delay or error and the intended receiving owner;
- any known actors, situations, boundaries, or feasibility conditions; and
- a `boundary_id`, origin, return owner, and peer-call state when called by
  Research.

Missing judgment, caller, consequence, or usable context is a blocked input,
not a reason to invent a questionnaire. Discoverable facts belong to
[Research](../research/SPEC.md). Integrated unknowns, route choices, governing
record judgments, and acceptance belong to their owning Praxis loop. Make
Tangible, Plannotator, and Research are supporting calls, not owners of the
human decision.

Interview excludes fact finding, open-ended requirements discovery, route
selection, record gates, authority grants, implementation, product adoption,
acceptance, automatic progression, questionnaire libraries, domain playbooks,
and transcript or history management. A recommendation is navigation, never
permission or authority.

## Behavioral entry and bounded cycle

The package follows this bounded sequence:

1. Bind the human judgment, consequence, caller, origin, and `boundary_id`.
2. Maintain a live model and select the highest-value remaining question.
3. Select adaptive conversation or one independent grounded Plannotator
   bundle.
4. Ask through a concrete scenario, interpret the answer, and revise the
   live model.
5. Retire irrelevant questions, decide whether the caller can proceed, and
   return one scoped result.

The normal path is one question at a time whenever an answer could change a
later question, recommendation, available option, or required context.
Independent, already-grounded, small sets may use one Plannotator bundled
interaction. Recognition-based judgment captures the first reaction before
advice; evidence-dependent judgment receives enough factual context and a
separate recommendation before the preference is interpreted.

Interview and Research form a strongly connected component, but not an
unbounded loop. Every edge carries `boundary_id`, `return_to`, the lowercase
`origin` token `human`, `interview`, `research`, or the outer caller's stable
identifier, and boolean `peer_edge_crossed`. A round may cross the
Interview–Research edge at most once.
When Interview was entered with `origin=research`, it returns a missing factual
condition to Research instead of calling Research back for that boundary. If
Interview has already crossed to Research, it returns any new gap to the outer
caller. The receiving owner decides whether a new boundary is warranted; no
callee silently re-enters its peer.

Interview consumes every Research return explicitly: `answered` supplies
evidence; `no-op` identifies sufficient existing evidence; `conflicting`
preserves the conflict and permits only a remaining human judgment; `revised`
rebinds the question only when evidence is sufficient; `unverified`,
`needs-human-judgment`, and unresolved `conflicting`/`revised` returns become
`needs-evidence` for a new outer-owner boundary; and `blocked`/`stopped`
propagate. None permits reciprocal re-entry.

## Invariants

1. Every run has one human-owned judgment, caller, consequence, and bounded
   `boundary_id`, or returns a precise input blocker.
2. Discoverable facts route to Research; Interview never makes the human
   answer for a fact the agent can establish.
3. Each adaptive question uses a realistic case and states what its answer
   would change; a few options never limit ordinary-language answers.
4. The next question is chosen from the current live model, not a prepared
   ledger, and irrelevant questions retire immediately.
5. Recognition-based reactions are captured before recommendation; judgments
   that require evidence receive the relevant evidence and recommendation
   while preference and advice remain distinct.
6. A local rationale is not generalized into a broader preference without a
   useful contrasting case or an explicit human statement.
7. Mixed, tied, qualified, uncertain, possibly biased, rejected, and combined
   reactions remain distinguishable at the scope the scenario supports; a
   discriminating follow-up is asked only when it could change the next
   judgment.
8. “I don't know” distinguishes missing fact, missing experience, missing
   model, and safely deferrable judgment; it never forces an arbitrary answer.
9. Apparent contradiction is tested against actors, situations, environments,
   and boundaries before it is presented as a conflict.
10. Changed feasibility changes the question and available choices without
    rewriting the human's earlier preference.
11. Plannotator bundles contain only small independent human judgments already
    grounded by the same context and declare the native interaction kind,
    caller, exact bundle target/revision and scope, requested judgment, and
    non-authorizing meaning; skipped consequential answers return to adaptive
    conversation.
12. Plannotator presentation or transport failure and dismissal return
    `blocked` or `stopped` without an inferred answer, approval, or fallback.
13. A Research call maps every evidence or routing outcome; a Make Tangible
    `no-op` resumes ordinary conversation while a constructed/revised surface
    returns reaction and fidelity limits. Interview retains human interpretation
    and stopping.
14. No direct call transfers authority, passes a gate, chooses a route, or
    recursively re-enters Interview–Research for the same boundary.
15. Completion means the caller can proceed honestly with remaining
    uncertainty safe to carry, or the return names the missing evidence,
    judgment, contradiction, or authority; an empty Unknowns Map is not
    required.
16. The result is message-first. Exact answers or artifacts persist only for a
    named future consumer and are not stored as a transcript or generic log.
17. Every outcome carries scope, consequences, evidence or fidelity limits,
    unresolved points, and a recommendation only when supported, then stops.

## Outcomes and observable return

Interview exposes these conversational outcomes:

- `clarified` — a scoped human answer supports the caller's next judgment;
- `qualified` — a mixed, conditional, tied, or otherwise qualified reaction
  remains useful without being flattened;
- `deferred` — uncertainty is explicit and safe for the caller to carry;
- `needs-evidence` — a factual, experiential, or orientation boundary is
  named for the appropriate owner;
- `conflicting` — genuine human interpretations remain unresolved;
- `no-op` — existing context already determines the choice;
- `blocked` — input, dependency, authority, or native interaction prevents an
  honest interview; or
- `stopped` — the human stopped, dismissed, or closed the bounded interaction.

The semantic return is:

```text
Interview Result {
  outcome,
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

The return is not a serialized record requirement. It contains only fields
that change the receiving owner's next action and preserves feedback kind when
preference, evidence, critique, or acceptance could be confused. A receiving
owner independently rechecks any current authority or accepted boundary.

## Effects, authority, persistence, and lifetime

Ordinary effects are conversational questioning, read-only interpretation of
provided context, and the supporting calls described below. A bundled native
interaction is transport, not authority. Interview never mutates product or
governing records, publishes, commits, deploys, accepts, or authorizes.

Persist accepted meaning, material consequences, evidence pointers, and
relevant uncertainty only when a named future owner needs them and existing
authority covers the write. Otherwise keep answers, options, annotations, and
transcript transient. The caller promotes durable truth into its own record;
Interview creates no record, envelope, question ledger, or learning diary.

## Composition and direct calls

Direct calls carry the callee's required brief and preserve its exact return: one complete
brief, lossless returns, no authority transfer, and no re-entry. Interview
retains question choice, human interpretation, recommendation timing, and
stopping. The Research–Interview edge additionally carries its local
`boundary_id`, `origin`, `return_to`, and `peer_edge_crossed` guard.

| Direct target | Trigger and bounded request | Return consumed | Ownership retained by Interview |
| --- | --- | --- | --- |
| [Research](../research/SPEC.md) | A factual gap blocks the next honest human question and the peer-edge guard permits one crossing. Use a complete bounded brief with the exact claim, consequence, evidence bar, current context, and local Research–Interview guard. | `answered`, `unverified`, `conflicting`, `revised`, `blocked`, or `stopped` with evidence and limits, plus routing `no-op` or `needs-human-judgment`; every label maps as declared above and an Interview-origin call never calls back for the same boundary. | Question order, human interpretation, recommendation timing, and stopping. |
| [Make Tangible](../make-tangible/SPEC.md) | The human needs to compare, experience, manipulate, inspect, or understand a faithful surface before judging; the call passes exact question, audience/starting point, evidence/accepted truth, primary judgment, medium/fidelity, reaction, authority, and lifetime. | `no-op` with direct explanation, or artifact/reaction, exact version, supported conclusions, fidelity/transport limits, and `constructed`/`revised`/`blocked`/`stopped`. | Human judgment, interpretation of reaction, scope, and stopping; the artifact does not become governing truth. |
| [Plannotator](../plannotator/SPEC.md) | A small independent human-judgment bundle is already grounded and a native interaction materially improves answering together; the call declares `Bundled interview`, caller, exact target/revision and scope, requested judgment, and non-authorizing meaning. | Question IDs, answers, custom notes, skipped/uncertain states, native reference, dismissal, or transport failure. | Why questions matter, adaptive follow-up, answer interpretation, and stopping; no gate is passed. |

Each call is one bounded interaction. A callee cannot advance Interview,
choose its route, or grant authority. A missing required target is returned as
an explicit assembly dependency; Interview does not create a placeholder or
copy the callee's procedure.

## Invocation and host projection

The package is model-invoked with this exact frontmatter:

```yaml
---
name: interview
description: "Interview one consequential human-owned judgment. Use for intent, preference, priority, tolerance, ambiguous meaning, or recognition-based reaction."
---
```

Its host projection is:

```yaml
interface:
  display_name: "Interview"
  short_description: "Resolve human-owned uncertainty adaptively"
  default_prompt: "Use $interview to resolve this human-owned judgment."
policy:
  allow_implicit_invocation: true
```

Description, host prompt, and body agree on human-owned judgment triggers and
the discoverable-fact exclusion. Host launch does not satisfy behavioral entry
or provide authority.

## Runtime architecture and resources

The executable body contains the full question-selection, scenario,
recommendation, adaptive/bundle, contradiction, retirement, return, and stop
contract. Direct-call brief and exact-return rules remain inline when composing
a direct supporting call. The package has no package-local scripts, assets,
fixtures, templates, tool dependency, wrapper, hook, or automatic continuation.

The exact sparse tree is:

```text
skills/interview/
├── SKILL.md
├── SPEC.md
└── agents/
    └── openai.yaml
```

## Package-specific conformance cases

1. A direct human intent or preference request reaches Interview, while a
   discoverable fact returns to Research without asking the human for it.
2. An already-clear choice returns `no-op` without question or bundle
   ceremony.
3. A dependent question stays adaptive and the next question changes after
   the answer; irrelevant prepared questions retire.
4. A small independent grounded set uses one Plannotator bundle with stable
   IDs, custom answers, and skipped-state handling.
5. Recognition-based reaction is captured before recommendation; an
   evidence-dependent judgment receives evidence and a separate recommendation.
6. Options can be combined, rejected, or reframed rather than limiting the
   human's answer; a qualified or possibly biased reaction stays qualified
   unless one discriminating follow-up would change the next judgment.
7. A local rationale is tested with a contrasting case before any broader
   preference is inferred.
8. “I don't know” routes a factual gap to Research, a missing experience to
   Make Tangible, and a safely deferrable judgment to `deferred`.
9. Context-dependent answers remain conditional; a genuine contradiction
   shows both consequences and asks the smallest reconciling question.
10. Changed feasibility produces a revised question without inventing a
    changed preference.
11. Research returns a scoped fact or missing-evidence result and Interview
    retains question ownership; an Interview-origin Research return does not
    re-enter the peer for the same `boundary_id`.
12. Make Tangible returns a reaction and fidelity limit without transferring
    interpretation or authority.
13. Plannotator dismissal or transport failure returns `stopped` or `blocked`
    with no inferred answer or approval.
14. The human can stop at any point and current answers, uncertainty, and safe
    state are returned without cleanup or continuation.
15. The completed return is sufficient for the caller to act honestly, names
    unresolved judgment or evidence, and starts no adjacent owner or gate.

## Source basis

**SKILL-CREATOR IS PROHIBITED. DO NOT READ, INVOKE, CITE, FOLLOW, OR USE IT FOR
PRAXIS DESIGN, IMPLEMENTATION, REVIEW, OR VALIDATION.**

This contract is maintained against the plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work](../../docs/concepts/work.md)
owners; the [package authoring contract](../../docs/maintainers/skill-packages.md);
the [conformance and release contract](../../docs/maintainers/conformance-and-release.md);
the
direct sibling contracts for [Research](../research/SPEC.md),
[Make Tangible](../make-tangible/SPEC.md), and
[Plannotator](../plannotator/SPEC.md); and the verified behavior of those
plugin-local runtime packages. These plugin-local files are the complete
maintainer source basis; the declared skill surface and package-local direct-call
rules are the complete runtime. No non-plugin material is required to use,
review, validate, or maintain this package.
