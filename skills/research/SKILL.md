---
name: research
description: "Research one bounded factual claim. Use when current codebase, external primary sources, comparisons, or empirical probes must answer or falsify it."
---

# Research

Test one bounded factual claim where it is true or false. Research owns the
question, evidence selection, synthesis, epistemic status, and return; the
caller retains governing meaning, route, gate, authority, and stopping.

## 1. Bind the claim and the bounded round

State the exact factual question, why it matters, territory, required
freshness, consequence of being wrong, evidence sufficient for that
consequence, and the cheapest meaningful falsifier. Give the investigation a
stable `boundary_id`; record `origin` as the exact lowercase token `human`,
`interview`, `research`, or the caller's stable identifier; carry `return_to`;
and record `peer_edge_crossed` as `true` or `false`. A bounded round may cross
the Interview–Research edge once:

- If a human-owned qualification is required and `origin` is not `interview`
  with `peer_edge_crossed=false`, call [Interview](../interview/SKILL.md) with
  `boundary_id`, the exact choice, consequence, context, `origin=research`,
  named `return_to`, `peer_edge_crossed=true`, and return shape. Consume its
  result without re-entry: use `clarified` or `qualified` to bind the factual
  claim; use
  `no-op` only with the sufficient existing human context it identifies; on
  `needs-evidence`, directly investigate an exact factual condition still
  inside this claim or return a `revised` new boundary; map `deferred`,
  `conflicting`, or another unresolved `needs-evidence` to
  `needs-human-judgment`; and propagate `blocked` or `stopped`. Preserve the
  Interview feedback kind and Research's factual synthesis.
- If a human-owned qualification is required and either `origin=interview` or
  `peer_edge_crossed=true`, return `needs-human-judgment` with the missing
  qualification instead of calling Interview back. The outer owner may start a
  new boundary; this round never re-enters its peer.
- An Interview-origin factual claim that needs no further human qualification
  continues through the normal evidence path. The guard suppresses only a
  reciprocal Interview call; it never suppresses factual investigation.
- If the request is a preference, route choice, integrated requirement, or
  other human-owned or governing judgment, return `no-op`/`needs-human-judgment`
  to the proper owner rather than manufacturing a fact.

If current evidence already answers a trivial stable fact, perform only the
smallest scope and freshness check needed and return it. This step is complete
when the claim, territory, falsifier, consequence, and bounded peer state are
explicit, or a precise route/no-op/blocker return is made.

## 2. Choose the smallest evidence path

Choose codebase, external, empirical, or a justified combination. Load only
the method reference for the selected branch:

- Load [`codebase-evidence.md`](references/codebase-evidence.md) when the
  answer requires tracing repository or dependency behavior, runtime wiring,
  generated surfaces, tests, conventions, or history.
- Load [`external-evidence.md`](references/external-evidence.md) when source
  authority, version, freshness, jurisdiction, product tier, conflict, or
  search coverage could change the answer.
- Load [`empirical-probes.md`](references/empirical-probes.md) when an actual
  environment observation needs explicit discrimination, fidelity,
  reproducibility, interpretation, or cleanup.

Each reference is a terminal method guide. It does not choose entry, invoke a
skill, grant authority, define completion, or point to another reference.
Keep a method inline when one obvious, low-consequence lookup or read-only
observation already answers the claim. This step is complete when every
selected path can materially support or falsify the claim and no ceremonial
path has been added.

## 3. Test the claim in its territory

Gather decisive evidence from the actual territory. Current source,
configuration, installed versions, generated interfaces, reproduced behavior,
and primary documentation outrank stale plans, comments, generic examples,
and source count. Use searches as navigation, not proof; inspect plausible
hidden paths before a negative conclusion.

For a consequential or caller-favored claim, name what would make it false
and run the cheapest decisive disconfirming, perturbed, or independent path.
Do not treat repeated secondary claims or correlated delegate agreement as
independent corroboration. Match evidence diversity to claim breadth and stop
repeating when another attempt will not teach.

Use direct supporting calls only at their decision point:

- Invoke [Delegate](../delegate/SKILL.md) for one independent evidence path
  only when a positive context, cost, elapsed-time, or independence benefit
  survives briefing and integration. Give the named benefit and Researcher
  role; exact outcome and claim; accepted truth and consequence; scope and
  exclusions; authority, tools, and safety boundary; required evidence behavior
  and proof; authoritative sources; return/escalation conditions; and result
  shape. Consume its compact answer, pointers, conflicts, and limitations;
  Research keeps synthesis and stopping. On `delegated`, integrate the evidence
  before selecting the Research outcome. On `partial`, preserve valid evidence
  and gaps and return `unverified` or `conflicting` unless independent evidence
  still satisfies the claim. On `no-op`, an unavailable optional target, or a
  delegation-only `blocked`, run the unchanged path directly. Map an
  evidence/authority `blocked` or human `stopped` to the same Research outcome
  without inventing corroboration.
- Invoke [Make Tangible](../make-tangible/SKILL.md) when evidence exists but a
  comparison, navigation surface, simulation, or annotation is needed for a
  human or caller to understand it. Pass the exact question, audience and
  starting point, evidence and accepted truth, primary judgment, required
  medium and fidelity, requested reaction, and current authority and artifact
  lifetime. On `no-op`, use its direct explanation in the ordinary evidence
  path. On `constructed` or `revised`, consume the exact artifact/version,
  reaction, conclusions, and fidelity limits; propagate `blocked` or `stopped`.
  Research keeps the factual claim. A reaction never becomes evidence or
  authority by itself.
- For an authorized repository-mutating probe with a named collision,
  preservation, rollback, or experiment risk, invoke
  [Manage Worktree](../manage-worktree/SKILL.md) with `caller=Research`, the
  intended probe and question, exact base commit, destination/location/branch
  relationship, mutation surfaces, current authority, expected lifetime or
  disposable intent, and shared-resource and rollback concerns. Consume only
  `current checkout safe`, `worktree ready`, `handoff ready`, `blocked`, or
  `stopped` plus identity and limits. Map `blocked` and `stopped` to the same
  Research outcomes with the checkout identity/limits preserved and perform no
  probe. Research retains probe design and interpretation.
- Before any consequential experiment, state-changing external call,
  protected-data or secret access, permission change, or other material effect,
  require an approved Plan and current exact Implementation Authorization.
  Then invoke [Check Safety](../check-safety/SKILL.md) for that one action and
  pass the exact target and environment, intended effect, blast radius and
  plausible loss, recovery and irreversibility, Plan coverage, exact
  Implementation Authorization and any external authority, and current
  evidence. `proceed` permits only that already-authorized action and state;
  map `revise` to Research `revised` and `stop` to Research `blocked`, preserve
  the exact `safety_result` and causal owner, and perform no effect. Missing
  boundaries return `blocked` before Check Safety. Read-only inspection and
  clearly disposable local probes remain inside ordinary authority.

Do not use Plannotator directly; Make Tangible owns any native reaction
surface. Do not silently replace a missing required dependency with a copied
procedure or placeholder. This step is complete when the claim is supported,
falsified, or honestly unresolved at the required consequence, with the
effect and authority boundary preserved.

## 4. Rebind and synthesize

Keep direct evidence, inference, conflict, and unresolved uncertainty
distinct. If evidence changes the claim, territory, freshness, conditions, or
consequence, explicitly rebind `boundary_id` and carry forward only evidence
that remains in scope. The earlier answer is scoped evidence, not authority
over the revised question.

If the premise is false, say so directly, identify the affected assumption,
and return the corrected question or owner rather than forcing an answer in
the original frame. When strong evidence conflicts, test version,
configuration, environment, terminology, semantics, or authority as the
conditional boundary; if the conflict remains, preserve both observations.

Qualify a negative result with the exact surfaces, terms, versions, sections,
or runtime paths inspected and why they should have exposed the behavior.
State plausible hidden paths not inspected. A missing text match is not proof
of absence when wrappers, generated code, middleware, registration, or
defaults could hide the behavior.

When an Interview, Delegate, or Make Tangible return changes interpretation,
retain its feedback kind and evaluator context. Return material changed truth
to the exact causal owner; do not update governing records or choose the next
route here. This step is complete when every material conflict, rebind, and
coverage limit has a supported boundary or remains explicit.

## 5. Return and stop at sufficient evidence

Return the smallest result from which the caller can act honestly:

```text
Research Result {
  outcome: answered | unverified | conflicting | revised | blocked | stopped,
  boundary_id,
  bounded_answer_or_observation,
  decisive_evidence_and_pointers,
  source_version_freshness_environment_scope,
  inference_conflicts_and_limitations,
  implications_for_caller,
  unresolved_questions_or_missing_authority,
  safety_result?,
  recommendation?
}
```

`answered` means evidence supports the bounded claim; `unverified` means the
available evidence cannot establish it; `conflicting` preserves material
unresolved strong evidence; `revised` means the premise or question changed;
`blocked` names missing access, dependency, authority, environment, safety, or
usable evidence; and `stopped` preserves still-valid evidence after a human
stop or invalid question. Recommend only when evidence supports it; otherwise
name the missing evidence or human judgment.

The Step 1 routing labels `no-op` and `needs-human-judgment` are short
circuits, not additional investigation outcomes: they say that the input is
already sufficient or belongs to Interview/another owner, and carry no claim
of factual support.

Create a durable report only when a named future consumer needs to audit,
extend, reproduce, or compare the finding and existing authority covers the
write. Keep search exhaust, discarded paths, raw logs, and probe output
transient unless that same consumer needs the exact bytes. Return evidence and
limitations, not a research diary. Stop after the result; do not implement,
accept, commit, publish, deploy, integrate, or continue the caller.
