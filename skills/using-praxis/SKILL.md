---
name: using-praxis
description: "Route one concrete request to Direct Work or its smallest Praxis owner. Use for explicit Praxis requests, genuine ownership ambiguity, or existing Praxis state whose owner affects the request; obvious contained work stays Direct Work."
---

# Using Praxis

Route one concrete request to its smallest Praxis owner or back to ordinary
Direct Work. Using Praxis owns only navigation: it reconstructs the current
question, recommends or invokes one proportionate path, transfers the minimum
useful context, and exits. The receiving owner keeps its question, authority,
acceptance, and stopping rule.

## 1. Bind one routing question

Enter only when at least one of these is true:

- the human explicitly asks to use Praxis;
- ownership is genuinely ambiguous; or
- existing Praxis context materially changes who should own the request.

Bind the human's concrete intent, the decision or result needed next, whether
the request is analysis-only or names a mutation or external effect, the
repository and target currently in scope, and any caller or return context.
Record the entry trigger and the exact question that routing must answer.

A clear typo, explanation, contained edit, or ordinary bounded request remains
ordinary agent behavior when Praxis truth does not change its meaning. The
presence of `/.agents/` is evidence to inspect only when it affects the
question; it never creates ceremony. This step is complete when the request,
scope, effect boundary, and one routing question are explicit, or the ordinary
path has been returned without a Praxis result.

## 2. Reconstruct only the context this question needs

Start with current repository state, source, interfaces, tests, and observable
behavior. For existing work, load the local
[record-navigation](references/record-navigation.md) reference only when a
record must be located or resumed. Load [Learning and
Return](../../references/learning-return.md) only when new learning or
invalidated truth makes the causal owner uncertain. These are conditional
context pointers: follow the selected reference for its navigation or causal
question, then return to this skill.

Reconstruct the smallest honest current model:

- the owning question and current route;
- accepted versus draft governing records;
- the latest working result, proof, and limitations;
- unresolved learning or disagreement;
- any active Delivery checkpoint needed to explain a failure or partial state;
- the exact activity that stopped; and
- the human choice or authority still required.

Current source and observed behavior establish reconstructible implementation
truth. Records preserve accepted intent, specification, uncertainty, and
authority pointers. A file, an approved record, a completed Plan, or stale
conversation does not prove selection, Implementation Authorization, or the
next activity. Read only the relevant record, ancestors, and evidence; if two
owners remain materially plausible, ask one focused question before routing.

This step is complete when the current owner, truth basis, unresolved question,
and pending human boundary are explicit—or the exact missing evidence or
judgment has been returned without guessing.

## 3. Choose one proportionate owner

Use the current question, consequence, and evidence rather than a lifecycle
stage. Make one recommendation in the Project's language:

- clear ordinary reversible local work → **Direct Work**;
- a consequential unknown about needs, constraints, outcome, or boundary →
  **Discover Requirements**;
- accepted truth that needs an implementation-ready Issue shape →
  **Formalize**;
- a Project where at least two coherent advances make progressive work useful
  and the human chooses that path → **Evolve**;
- a selected outcome that needs detailed observable behavior and proof →
  **Define Issues**;
- a direct request to plan accepted work → **Plan** (the human is selecting or
  resuming the planning portion of one Deliver loop);
- implementation or result acceptance for one approved Plan → **Deliver**;
- shared objectives, cross-Project relationships, or strategic ordering →
  **Coordinate Initiative**;
- one bounded local question → the smallest supporting capability below.

If the request would mutate through Direct Work but Check Safety's consequence
boundary is triggered, recommend a standalone Plan and do not mutate. If
learning shows that accepted truth is wrong, route to the earliest owner whose
meaning changes; do not preserve a later stage by workaround or restart every
descendant.

Forward owners and explicitly invoked repository workflows are human-selected:
present **Formalize**, **Evolve**, **Define Issues**, **Deliver**, or
**Coordinate Initiative**, and wait for the human's ordinary-language choice.
Present **Setup**, **Commit**, **Prepare PR**, or **Write Docs** only when the
human clearly requested that workflow (already-authorized Delivery may call
Write Docs when its accepted Plan requires it). Approval of a record never
starts the next activity. Plan Approval and Implementation Authorization remain
separate acts, even when one message states both explicitly.

An explicit planning request is that human selection: it establishes or resumes
the planning portion of one Deliver loop and nothing more. Plan Approval and
Implementation Authorization remain separate boundaries; selecting Plan does
not approve the Plan, authorize implementation, or enter Delivery.

**Pair** is a human-initiated implementation posture and is never a
recommendation. **Orient** may be suggested only as one bounded supporting
explanation; state what it would clarify, why it matters, its scope or medium,
and what happens if accepted, then begin only after agreement. A direct request
to orient already satisfies its human entry. Do not infer either mode from
conversation style.

This step is complete when exactly one owner or ordinary path is selected and
the human boundary for starting it is explicit.

## 4. Invoke only an agent-startable bounded capability

When a clear trigger makes a supporting call proportionate, use only one of
these direct dependencies:

- [Discover Requirements](../discover-requirements/SKILL.md) for one
  consequential unknown-finding inquiry;
- [Research](../research/SKILL.md) for one bounded factual question;
- [Interview](../interview/SKILL.md) for one human-owned judgment;
- [Make Tangible](../make-tangible/SKILL.md) for one needed reaction surface;
- [Design Solution](../design-solution/SKILL.md) for one consequential solution
  comparison;
- [Debug](../debug/SKILL.md) for one unexpected behavior;
- [Refactor](../refactor/SKILL.md) for one concrete structural pressure;
- [Review](../review/SKILL.md) for one fixed target;
- [Verify](../verify/SKILL.md) for one bounded claim; or
- [Security](../security/SKILL.md) for one attacker-focused question.

Call [Plannotator](../plannotator/SKILL.md) directly only when the native
concern itself is current and its exact target or archive scope is already
available. The accepted direct branches are **Reaction Review** (including the
latest response), **Record Gate**, **Result Gate**, complete fixed-diff **Code
Review**, a small independent **Bundled interview or facts** surface, and
scoped **Review Learning**. A gate, review, result, or interview owner calls
Plannotator itself when the native concern is only supporting its judgment.

Before any call, construct one complete call envelope:

```text
Praxis Call {
  caller: using-praxis
  return_to: using-praxis
  question: one bounded question and why it matters now
  scope: repository, target, actors, scenarios, environment, exclusions
  governing_truth: accepted intent/specification and source or record anchors
  evidence: current observations with provenance, freshness, fidelity, limits
  authority: caller-retained authority pointer, effect/safety boundary
  unresolved: exact judgment, fact, or human boundary still needed
  return_shape: callee's named result, causal fields, and stopping states
  target_fields: all additional fields required by the selected callee below
}
```

The envelope is universal; `target_fields` makes each call constructible:

| Target | Additional fields before invocation | Exact return and outer projection |
| --- | --- | --- |
| Discover Requirements | `entry_and_inquiry_boundary`, `accepted_truth_owner`, `accepted_truth_revision`, `accepted_truth_provenance`, consequence, territory, human starting point, named consumer or artifact lifetime | Preserve the exact `Discover Requirements Result`; normal returns are `invoked`, an explicit causal return is `causal-return`, `blocked` is `blocked`, and `stopped` is `stopped`. |
| Research | `boundary_id`, `claim`, territory and freshness, `current_configuration`, `installed_version`, `environment`, `target_conditions`, consequence, evidence bar, cheapest falsifier, sources/tools, `origin=using-praxis`, `peer_edge_crossed=false` | Preserve `answered`, `unverified`, `conflicting`, `revised`, `blocked`, `stopped`, and routing `no-op`/`needs-human-judgment`; apply the same outer projection without renaming the inner outcome. |
| Interview | `boundary_id`, human-owned judgment, competing interpretations, consequence, intended receiving owner, recommendation order, `origin=using-praxis`, `peer_edge_crossed=false` | Preserve `clarified`, `qualified`, `deferred`, `needs-evidence`, `conflicting`, `no-op`, `blocked`, or `stopped`; an explicit causal return, block, or stop projects as above. |
| Make Tangible | audience and starting point, primary judgment, medium/fidelity, reaction to capture, `named_future_consumer`, `retention_condition`, artifact lifetime | Preserve the exact artifact/version, reaction, conclusions, limits, retention, `no-op`, `constructed`, `revised`, `blocked`, or `stopped`. |
| Design Solution | `boundary_id`, causal owner, `why_choice_matters`, candidates, criteria, hard constraints, `compatibility_duties`, safety/recovery concerns, evidence bar | Preserve `recommended`, `selected`, `qualified`, `no-choice`, `revised`, `refused`, or `stopped`, including candidate and dependency state. |
| Debug | symptom, affected boundary, conditions, accepted behavior, original full reproduction, `proof_boundary`, correction authority, current `assurance_path` | Preserve `corrected`, `diagnosed`, `unreproduced`, `needs-owner`, `blocked`, or `stopped`; never turn a diagnosis into a correction. |
| Refactor | pressure mechanism, preservation target and full scenario, `smallest_credible_completion_proof`, target/exclusions, current `assurance_path`, transformation authority | Preserve `analyzed`, `relieved`, `partial`, `needs-design`, `needs-owner`, `blocked`, or `stopped`, including preservation evidence. |
| Review | fixed target/version, governing records and source evidence, `review_question`, `required_lenses`, `requested_coverage`, exclusions, `evidence_boundary`, read-only authority | Preserve the complete `Review Result`, scoped coverage, and every dependency projection; `incomplete` remains incomplete. |
| Verify | falsifiable claims with `observable_property`, conditions/boundaries/contradictions, target/environment, `explicit_configuration`, sensitivity, evidence, `supported_scope`, current `assurance_path` | Preserve per-claim `verified`, `failed`, `unverified`, or `stopped` status and all evidence limits. |
| Security | attacker question, assets/properties, actors/trust boundaries, attacker inputs, controls, environment, sensitivity, `counterevidence`, `read_only_authority`, `decision_boundary`, `assurance_path` | Preserve `no-op`, `findings`, `no-high-confidence-findings`, `needs-verification`, `needs-owner`, `blocked`, or `stopped` and coverage limits. |
| Plannotator | exactly one `interaction_kind`, target revision or archive scope, requested judgment, declared non-authorizing meaning, native return shape | Preserve the exact native branch: Reaction Review, Record Gate, Result Gate, Code Review, Bundled interview/facts, or Review Learning. Approval/feedback stays `invoked`; meaning-changing feedback with a causal owner is `causal-return`; dismissal/closure is `stopped`; command/transport failure is `blocked`. |

For every Plannotator branch, the exact return is:

```text
Plannotator Result {
  interaction_kind, exact_target_or_scope,
  native_decision_or_closure, annotations_or_feedback,
  native_reference, fidelity_or_transport_limits, unresolved_questions
}
```

Do not invent a missing field, broaden the target, call a callee's dependency,
or pass a generic “figure it out” brief. Each callee is called once, in one
session where applicable, and returns to this router. The call carries context,
not authority. Store the untouched envelope and result under `dependency`; do
not flatten or reinterpret `no-op`, partial, revised, conflicting, owner or
causal return, blocked, dismissed, failed, or stopped states. If the result
changes governing truth, return only its causal learning message (the exact
owner, changed meaning, decisive evidence/result, still-valid truth, limits,
and recommendation); the owning capability may persist that message under its
authority and decides what happens next. This step is complete when one call
has returned with its exact result or the missing brief boundary has been
surfaced without a call.

## 5. Recommend human-selected work and exit

Every recommendation contains exactly:

1. what is understood about the request and current truth;
2. one owner or ordinary path;
3. why it fits the present uncertainty, consequence, and context; and
4. what happens immediately if the human chooses it.

A recommendation is navigation, not permission, approval, invocation, or effect
authority. Do not present a taxonomy or several equally weighted routes. If a
forward owner or explicit workflow is selected, pass only the intent, governing
truth, evidence, authority-source pointer, and unresolved question it needs;
then wait at its declared boundary. A clear bounded mutation request may
already authorize ordinary reversible local Direct Work, but an analysis-only
request authorizes no edit and a recommendation never broadens scope.

If a missing authority, unavailable dependency, or contradictory source blocks
an honest route, return the safe state, exact consequence, and one decision or
evidence request. A later “continue” confirms only one already-named,
non-consequential activity when no competing route is plausible; otherwise ask
the human to choose. This step is complete when the selected owner has exactly
the context it needs or the human boundary has been stated and routing is
waiting.

## 6. Return one envelope and stop

Return one bounded result with this shape:

```text
Using Praxis Result {
  outcome: direct-work | recommendation | invoked | causal-return |
           blocked | stopped,
  entry: explicit-request | ownership-ambiguity | existing-context | no-op,
  question,
  owner?,
  context {
    intent, scope, governing_truth?, evidence?, unresolved?, limitations
  },
  recommendation? {
    understanding, owner, reason, immediate_next, choice_needed
  },
  dependency? {
    skill, brief, exact_dependency_envelope, exact_result,
    native_reference?, limitations?
  },
  causal_return? {
    exact_owner, changed_meaning, decisive_evidence?, decisive_result?,
    still_valid_truth?, exact_learning_message?, revisit_condition,
    recommendation?
  },
  stop_reason? {
    kind: missing-context | missing-evidence | missing-authority |
          dependency-blocked | native-command-failure |
          native-transport-failure | human-stop | dependency-stopped |
          declined | unresolved-owner,
    safe_state, consequence, decision_needed?, partial_state?
  },
  authority: not-transferred,
  persistence: none
}
```

Use `direct-work` for a no-op or clear ordinary path and return control to the
caller. Use `recommendation` for human-selected forward work, Orient, or a
clearly requested explicit workflow. Use `invoked` only for a listed direct
dependency and retain its exact result. Use `causal-return` when learning
identifies the earliest owner whose meaning must change. Use `blocked` when the
route cannot be supported honestly; use `stopped` for a human stop, declined
suggestion, or dependency stop, preserving its exact partial state. Every
result reports limitations and stops after this one transfer. Using Praxis
creates no routing record, lifecycle receipt, wrapper, session state, or
adjacent work; a later genuine ambiguity starts a fresh routing question.
When learning changes governing truth, the router returns only the causal
learning message; the owning capability may persist it under its own authority
for a named future consumer.

`causal_return` is typed: `decisive_evidence` points to the observation that
changed the meaning, `decisive_result` preserves the exact supporting result,
`still_valid_truth` names the scoped truth that remains usable, and
`recommendation` is present only when that evidence supports one next owner or
action. `stop_reason.partial_state` is the exact safe dependency or phase state,
not a completion claim.
