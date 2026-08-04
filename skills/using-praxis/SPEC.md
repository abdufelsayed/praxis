# Using Praxis — Maintainer Contract

## Purpose

Using Praxis is the thin, model-invoked entry point for routing one concrete
request. It identifies the smallest relevant Praxis owner or recognizes
ordinary Direct Work, transfers only the context that owner needs, and exits.
It owns navigation and context minimization; the receiving owner retains its
question, governing truth, gates, authority, acceptance, and stopping rule.

## Invocation, inputs, and exclusions

The skill is model-invoked because it must notice explicit Praxis requests,
genuine ownership ambiguity, and materially relevant existing Praxis context
without requiring the human to remember an internal skill name. The presence
of `/.agents/` alone is not an invocation trigger.

The entry brief contains the human's concrete intent; the decision or result
needed next; analysis-only versus mutation or external-effect scope; repository,
target, actor, and environment boundaries; current source and observed state;
caller and return context when composed; and any existing record, authority,
learning, or stop state that materially affects ownership.

Clear typos, explanations, contained edits, and ordinary bounded requests stay
with normal agent behavior when Praxis truth does not change their meaning.
Using Praxis is not a mandatory lifecycle, global router, workflow wrapper,
state machine, permission gate, record logger, or parent of every capability.
It does not mutate product or repository state, create or revise records,
approve or accept work, grant authority, monitor another owner, or continue
adjacent work after a route.

## Behavioral contract

1. Bind the concrete routing question and the entry trigger. Do not classify
   the request by lifecycle stage before understanding its current intent,
   consequence, and evidence.
2. Start from current repository state, source, interfaces, tests, and observed
   behavior. Load only the durable navigation or causal material required by
   the question, and distinguish accepted records from draft work, results,
   limitations, stops, and still-required human boundaries.
3. Select exactly one proportionate owner or ordinary path. Route clear
   ordinary reversible local work to Direct Work; route a consequential need,
   constraint, outcome, or boundary unknown to Discover Requirements; route
   accepted truth needing an implementation-ready Issue shape to Formalize;
   route an explicit plan request to Plan, where the human establishes or
   resumes the planning portion of one Deliver loop; route implementation or
   acceptance for one approved Plan to Deliver; route shared strategic truth to
   Coordinate Initiative; and use a listed supporting capability for one
   bounded local question.
4. When accepted truth is invalidated, identify the earliest causal owner whose
   meaning changes. Preserve the learning and authority consequence rather than
   hiding the change in a descendant or restarting unrelated work.
5. Start an agent-startable supporting capability only with its complete brief,
   exact return shape, and caller-retained authority. Human-selected forward
   work and explicitly invoked workflows are presented and wait at their own
   entry boundary.
6. Transfer one bounded context message, return one typed envelope, and stop.
   A later genuine ambiguity begins a fresh routing question; there is no
   persistent router state.

## Invariants

1. The trigger is explicit Praxis use, genuine ownership ambiguity, or
   materially relevant existing context. A clear ordinary request remains a
   no-op for the router.
2. One result is bound to one concrete routing question, target scope, and
   current state. It never generalizes a recommendation to a category of work.
3. Current source and observed behavior establish reconstructible implementation
   truth; records preserve accepted intent, specification, uncertainty, and
   authority pointers. A file, approved record, completed Plan, or stale
   conversation never proves selection, Implementation Authorization, or the
   next activity.
4. Context loading is progressive. The local record navigator is loaded only
   to locate or resume a record, and Learning and Return is loaded only when
   learning or invalidated truth makes the causal owner uncertain.
5. Routing produces exactly one owner or ordinary path and one recommendation
   when human choice is required. It does not present a taxonomy or create an
   automatic transition.
6. A clear bounded mutation may remain Direct Work only when it is ordinary,
   reversible, local, and already authorized by the request. If Check Safety's
   consequence boundary is triggered, recommend a standalone Plan and do not
   mutate through Direct Work.
7. Direct calls are limited to Discover Requirements, Research, Interview, Make
   Tangible, Design Solution, Debug, Refactor, Review, Verify, Security, and an
   explicit Plannotator-native utility. Forward owners and repository
   workflows are not called merely because they are reachable from the route.
8. Every direct call carries `caller=using-praxis`, `return_to=using-praxis`, a
   bounded question, scope and exclusions, governing truth, evidence with
   provenance and limits, authority pointers, unresolved judgment, and the
   callee's exact return shape. Missing fields stop before invocation.
9. Dependency results are lossless. `no-op`, partial, revised, conflicting,
   owner or causal return, blocked, dismissed, failed, and stopped states stay
   distinguishable; a dependency stop is not silently turned into completion or
   a router stop.
10. Recommendations are navigation, not permission, approval, invocation, or
    effect authority. Formalize, Evolve, Define Issues, Deliver, Coordinate
    Initiative, Setup, Commit, Prepare PR, and Write Docs begin only at their
    declared human boundary (with already-authorized Delivery's documented
    Write Docs exception).
11. Pair is a direct human-initiated implementation posture and is never
    recommended. Orient may be suggested once as bounded supporting teaching;
    teaching begins only after human agreement, while a direct teaching request
    already satisfies Orient's human entry.
12. Approval does not select or start the next activity. Plan Approval and
    Implementation Authorization remain separate acts, and a recommendation or
    route never broadens an effect boundary.
13. A human stop, declined suggestion, unavailable dependency, contradictory
    source, or unresolved owner preserves the safe state, exact consequence,
    required decision, and any partial dependency state.
14. The skill is read-only and ephemeral. It creates no routing record,
    lifecycle receipt, wrapper, message store, transcript, or persistent
    session state.
15. Routing ends after one handoff, recommendation, direct-work return, or
    bounded dependency return. It does not monitor the receiving owner or take
    up its next judgment.

## Outcomes and observable return

Every result has one `outcome`, the `entry` trigger, the concrete `question`,
the current `context`, `authority: not-transferred`, `persistence: none`,
limitations, and the next boundary. The maintained envelope is:

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

`direct-work` returns control to ordinary work and includes the no-op case;
it is not a Praxis approval. `recommendation` names exactly one human-selected
owner, explicitly requested workflow, or accepted-orientation suggestion and
states whether a human choice is still needed. `invoked` contains the exact
callee envelope and does not reinterpret its outcome. `causal-return` names
the earliest owner whose governing meaning must change and preserves the
Learning and Return message. `blocked` names missing context, evidence,
authority, or dependency and performs no affected action. `stopped` preserves a
human or dependency stop without claiming completion, acceptance, or
comprehension.

`causal_return` is typed: `decisive_evidence` points to the observation that
changed the meaning, `decisive_result` preserves the exact supporting result,
`still_valid_truth` names the scoped truth that remains usable, and
`recommendation` is present only when that evidence supports one next owner or
action. `stop_reason.partial_state` is the exact safe dependency or phase state,
not a completion claim.

An explicit planning request is a human selection that establishes or resumes
the planning portion of one Deliver loop. It does not approve the Plan,
authorize implementation, or enter Delivery; Plan Approval and Implementation
Authorization remain separate acts.

## Effects, authority, persistence, and lifetime

Using Praxis may inspect current source, repository state, records, tests, Git,
and already available evidence. It may make only conversational routing and
bounded direct calls declared below. It does not edit, create, delete, commit,
publish, deploy, open a persistent session, or invoke a consequential effect.

The caller's original human instruction and any approved Plan or exact
authority pointer remain the only authority facts. A route recommendation,
record approval, dependency brief, message, or human acceptance of Orient does
not grant mutation or external authority. A direct call returns to Using Praxis
with the caller's route, gate, authority, acceptance, and stopping unchanged.

Results are conversational by default. Preserve only the minimum causal
learning in the record that owns it when a named future consumer and existing
authority require persistence; otherwise keep the envelope transient. Never
create a routing ledger, progress receipt, lifecycle history, or duplicate
learning store.

Using Praxis returns only the causal learning message. The owning capability
may persist that message under its own authority when a named future consumer
requires it; the router does not revise a record, create a learning ledger, or
promote the message itself.

## Composition and resources

### Direct skills

| Skill | Call only when | Expected return | Retained by caller |
| --- | --- | --- | --- |
| Discover Requirements | One consequential unknown about needs, constraints, outcome, or boundary blocks honest ownership. | The exact `Discover Requirements Result`, including `no-op`, `discovered`, `aligned`, `revised`, `needs-human-judgment`, `blocked`, or `stopped`. | Routing question, Project/Requirements ownership, gates, authority, and stopping. |
| Research | One bounded factual claim needs current source, external evidence, or a discriminating probe. | The exact `Research Result` and evidence limits. | The owning question, governing truth, and next route. |
| Interview | One human-owned judgment cannot be inferred from evidence. | The exact `Interview Result`, including answer, conflict, no-op, block, or stop. | Human ownership, route, and acceptance. |
| Make Tangible | A constructed reaction surface is materially needed for one routing judgment. | The exact `Make Tangible Result`, artifact identity/version, reaction, limits, and retention state. | The question, interpretation, authority, and lifetime decision. |
| Design Solution | One consequential solution comparison is the unresolved owner question. | The exact `Design Solution Result` and candidates/limits. | Choice ownership, human selection, gates, and stopping. |
| Debug | One unexpected behavior is the smallest current question. | The exact diagnostic result and causal or stopped state. | Governing behavior, correction authority, and route. |
| Refactor | One concrete structural pressure is the smallest current question. | The exact preservation result and any owner/blocked/stop state. | Accepted behavior, Plan/authority, and acceptance. |
| Review | One fixed target needs adversarial inspection. | The exact `Review Result`, including scoped coverage and dependency projections. | Target, integrated judgment, gates, and next action. |
| Verify | One bounded claim needs falsifiable proof. | The exact verification result and per-claim evidence status. | Claim authority, acceptance, and stopping. |
| Security | One attacker-focused question needs threat reasoning and evidence. | The exact Security result and coverage limits. | Causal owner, remediation authority, and acceptance. |
| Plannotator | The native concern itself is current and an exact target or archive scope is available. | The exact native interaction result, feedback, reference, closure, or failure. | Judgment, revision causality, authority, and stopping. |

Each callee is invoked only once for the bounded question. Using Praxis does
not load a callee's references transitively, call the callee's dependencies,
or repeat the callee's procedure. The callee owns its synthesis and stopping.

### Complete call envelope and target mappings

Every direct call is constructible from one universal envelope:

```text
Praxis Call {
  caller: using-praxis,
  return_to: using-praxis,
  question,
  scope { repository, target, actors, scenarios, environment, exclusions },
  governing_truth { accepted_intent_or_specification, anchors },
  evidence { observations, provenance, freshness, fidelity, limits },
  authority { caller_pointer, effect_boundary, safety_boundary },
  unresolved,
  return_shape { named_result, causal_fields, stopping_states },
  target_fields
}
```

`target_fields` is required; it cannot be replaced by a generic instruction.
The following fields and mappings make every direct dependency and native
interaction constructible while the untouched callee call envelope and return
remain under `dependency.exact_dependency_envelope` and
`dependency.exact_result`:

| Target | Required target fields | Exact return / outer state |
| --- | --- | --- |
| Discover Requirements | entry and inquiry boundary, `accepted_truth_owner`, `accepted_truth_revision`, `accepted_truth_provenance`, consequence, territory, human starting point, named consumer or lifetime | `Discover Requirements Result`; ordinary → `invoked`, explicit causal → `causal-return`, blocked → `blocked`, stopped → `stopped`. |
| Research | boundary, claim, territory/freshness, `current_configuration`, `installed_version`, `environment`, `target_conditions`, consequence, evidence bar, cheapest falsifier, sources/tools, `origin=using-praxis`, `peer_edge_crossed=false` | `answered`, `unverified`, `conflicting`, `revised`, `blocked`, `stopped`, or routing `no-op`/`needs-human-judgment`, with no inner-label rewrite. |
| Interview | boundary, human judgment, competing interpretations, consequence, intended receiving owner, recommendation order, `origin=using-praxis`, `peer_edge_crossed=false` | `clarified`, `qualified`, `deferred`, `needs-evidence`, `conflicting`, `no-op`, `blocked`, or `stopped`, with exact answers and uncertainty. |
| Make Tangible | audience/start, primary judgment, medium/fidelity, reaction, `named_future_consumer`, `retention_condition`, artifact lifetime | Exact artifact/version, reaction, conclusions, limits, retention, and `no-op`/`constructed`/`revised`/`blocked`/`stopped`. |
| Design Solution | boundary, causal owner, `why_choice_matters`, candidates, criteria, hard constraints, `compatibility_duties`, safety/recovery, evidence bar | `recommended`, `selected`, `qualified`, `no-choice`, `revised`, `refused`, or `stopped`, including candidate/dependency state. |
| Debug | symptom, boundary, conditions, accepted behavior, full reproduction, `proof_boundary`, correction authority, assurance path | `corrected`, `diagnosed`, `unreproduced`, `needs-owner`, `blocked`, or `stopped`; diagnosis never becomes correction. |
| Refactor | pressure mechanism, preservation target/full scenario, `smallest_credible_completion_proof`, target/exclusions, assurance path, transformation authority | `analyzed`, `relieved`, `partial`, `needs-design`, `needs-owner`, `blocked`, or `stopped`, including preservation evidence. |
| Review | fixed target/version, governing records/evidence, `review_question`, `required_lenses`, `requested_coverage`, exclusions, `evidence_boundary`, read-only authority | Exact `Review Result`, coverage, and every dependency projection; `incomplete` stays incomplete. |
| Verify | falsifiable claims with `observable_property` (plus conditions, boundaries, contradictions), target/environment, `explicit_configuration`, sensitivity, evidence, `supported_scope`, assurance path | Per-claim `verified`, `failed`, `unverified`, or `stopped`, with all evidence limits. |
| Security | attacker question, assets/properties, actors/trust boundaries, attacker inputs, controls, environment, sensitivity, `counterevidence`, `read_only_authority`, `decision_boundary`, assurance path | `no-op`, `findings`, `no-high-confidence-findings`, `needs-verification`, `needs-owner`, `blocked`, or `stopped`, with coverage limits. |
| Plannotator — Reaction Review | exact target/version or latest response, requested judgment, non-authorizing meaning | Native reaction, annotations, closure, reference, and limits; feedback remains exact. |
| Plannotator — Record Gate | complete stable record or coherent Issue batch, revision/scope, declared provisional consequence | Native approval, approved-with-feedback, denial, annotation, dismissal, closure, or failure; no authority transfer. |
| Plannotator — Result Gate | exact result/Evolution Acceptance/composed closure, revision/scope, declared consequence | Exact native result-gate decision and limits; standalone conversational acceptance stays outside. |
| Plannotator — Code Review | complete fixed local diff or named remote revision, review scope | Exact code-review feedback/decision and revision reference; any later change invalidates it. |
| Plannotator — Bundled interview/facts | independent stable IDs, context revision, question/edit scope, allowed answers or edits | Every answer/edit/skip/removal/comment/verification state, native reference, and limits. |
| Plannotator — Review Learning | explicit archive scope, inventory limits, provenance, trajectory question, owning instruction file | Scoped history result and proposed reviewed diff; never automatic adoption. |

Every Plannotator branch returns the exact native envelope:

```text
Plannotator Result {
  interaction_kind, exact_target_or_scope,
  native_decision_or_closure, annotations_or_feedback,
  native_reference, fidelity_or_transport_limits, unresolved_questions
}
```

Plannotator is direct only for one of those native branches when that branch is
the current human concern. A gate, review, result, or interview owner invokes
it for supporting judgment. Every call opens at most one native session and
returns once; no call transfers authority, selects a route, or starts later
work. For all targets, an explicit causal return projects `causal-return`, a
dependency block projects `blocked`, a dependency stop/dismissal/closure
projects `stopped`, and every other state projects `invoked` while preserving
the exact inner envelope.

### References and package tree

Load the shared [Learning and Return](../../references/learning-return.md)
reference only when causal resumption or invalidated truth requires exact owner
selection and authority-preserving return. Load the terminal local
[Record Navigation](references/record-navigation.md) reference only when a
durable record must be located or resumed. Record Navigation contains no
schemas, authoring procedure, lifecycle rules, calls, route selection, or
authority.

The accepted sparse runtime tree is:

```text
skills/using-praxis/
|-- SKILL.md
|-- SPEC.md
|-- agents/openai.yaml
`-- references/record-navigation.md
```

There are no scripts, assets, fixtures, templates, wrappers, required
integrations, or package-local README. The local navigator is intentional even
though an older prose sentence described Using Praxis as having no local
reference: the current Target runtime package and maintained status admit this
single terminal record-navigation projection. It is not a router or runtime
kernel.

### Invocation and host projection

```yaml
---
name: using-praxis
description: "Route one concrete request to Direct Work or its smallest Praxis owner. Use for explicit Praxis requests, genuine ownership ambiguity, or existing Praxis state whose owner affects the request; obvious contained work stays Direct Work."
---
```

```yaml
interface:
  display_name: "Using Praxis"
  short_description: "Route one request to the right Praxis owner"
  default_prompt: "Use $using-praxis to route this request to its smallest owner."
policy:
  allow_implicit_invocation: true
```

The description is the only always-loaded trigger pointer. The host prompt is
launch copy and cannot add triggers, effects, dependencies, authority, or
continuation.

## Source basis

**SKILL-CREATOR IS PROHIBITED. DO NOT READ, INVOKE, CITE, FOLLOW, OR USE IT FOR
PRAXIS DESIGN, IMPLEMENTATION, REVIEW, OR VALIDATION.**

This contract is maintained against the plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work and routes](../../docs/concepts/work.md)
owners; the [skill-package contract](../../docs/maintainers/skill-packages.md);
the [conformance and release contract](../../docs/maintainers/conformance-and-release.md);
the assembled direct dependency contracts listed above; and the plugin-local
[Learning and Return](../../references/learning-return.md) projection. These
plugin-local files are the complete maintainer source basis; the declared
skill surface is the complete runtime. No non-plugin material is required to
use, review, validate, or maintain this package.

## All-package conformance baseline

1. The intended natural-language request or direct caller reaches this
   model-invoked skill; a nearby clear ordinary request remains ordinary work.
2. Each conditional reference loads only at its accepted decision point, and
   the local navigator remains terminal rather than choosing a route.
3. Every direct call returns its named result losslessly while Using Praxis and
   the original caller retain ownership, authority, acceptance, and stopping.
4. Missing context, evidence, authority, or a required dependency stops before
   the affected action and reports the exact boundary.
5. Blocked, revised, failed, dismissed, partial, causal, and stopped states
   remain distinct wherever the selected dependency exposes them.
6. Completion returns evidence, context limits, and the next boundary, then
   stops without adjacent work or persistent routing state.
7. A trivial, already-satisfied, or non-triggering request performs no Praxis
   ceremony.

## Package-specific conformance cases

1. **Direct Work no-op:** a clear typo, explanation, or contained ordinary
   reversible edit remains ordinary work; the router does not create records,
   ask for a route, or invoke a supporting capability.
2. **Explicit entry:** an explicit request to use Praxis binds one question and
   recommends one concrete owner or Direct Work path without presenting a
   taxonomy.
3. **Ambiguous ownership:** when two owners are materially plausible and the
   difference could change consequence, authority, or forward work, the result
   asks one focused question and does not guess.
4. **Material existing context:** the router loads only the current owner,
   relevant ancestors, evidence, and position cues. It does not scan every
   record or treat a file, gate, Map, or completed Plan as automatic progress.
5. **Causal resumption:** invalidated truth loads Learning and Return, preserves
   the exact evidence and earliest causal owner, and returns the learning
   without revising records or releasing descendant authority.
6. **Agent-startable call:** a consequential unknown, factual gap, human-owned
   judgment, needed reaction surface, solution comparison, unexpected behavior,
   structural pressure, fixed target, bounded claim, or attacker question gets
   a complete constructible brief and exactly the named typed result. A missing
   field stops before invocation.
7. **Native utility boundary:** Plannotator is called directly only for an
   explicit native annotation or scoped Review Learning concern; a gate,
   review, or result owner otherwise invokes it itself.
8. **Forward recommendation:** Formalize, Evolve, Define Issues, Deliver, or
   Coordinate Initiative is presented as one human choice and not started by
   recommendation or record approval. Setup, Commit, Prepare PR, and Write
   Docs begin only after explicit request or the accepted Delivery exception.
9. **Pair and Orient:** Pair is never recommended or inferred. Orient is
   suggested only with one bounded teaching objective and begins after human
   agreement; a direct teaching request satisfies its human entry.
10. **Safety boundary:** a request that would mutate through Direct Work but
    triggers Check Safety is routed to a standalone Plan rather than mutated.
    Externality alone does not add a safety ceremony.
11. **Authority separation:** Plan Approval, Implementation Authorization,
    effect authority, Result Acceptance, and route choice remain independent;
    no message, dependency brief, recommendation, or record approval transfers
    them.
12. **One-transfer exit:** after one direct return, human recommendation, or
    ordinary-work handoff the result states the next boundary and stops. It
    does not monitor the owner, run automatic progression, create a lifecycle
    receipt, or continue adjacent work.
