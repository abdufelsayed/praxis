# Research — Maintainer Contract

This is the acceptance contract for the shipping
[Research owner](SKILL.md). It is not runtime
context, and the owner must not link to or depend on it.


## Purpose

Research answers one bounded discoverable factual question by testing a claim
against the strongest evidence available in the actual territory. It selects
the smallest useful codebase, external, or empirical path; makes
disconfirmation and uncertainty visible; and returns a compact evidence-backed
finding that another Praxis owner can use. Research retains the question and
synthesis, while the caller retains governing meaning, route, gates,
authority, acceptance, and stopping.

## Invocation, inputs, and exclusions

Research is internally reachable because every Praxis owner may encounter a bounded
factual gap and because other skills may call it directly. A direct human
request may start it when the same factual boundary is present. Routine
task-local inspection remains with the active owner when one obvious lookup or
read-only check answers the question.

The caller supplies, or makes discoverable:

- one factual claim and why it changes the next judgment;
- territory, source expectations, required freshness, and consequence of error;
- evidence sufficient for that consequence and the cheapest meaningful
  falsifier;
- current configuration, version, environment, or target conditions when
  relevant; and
- `boundary_id`, origin, return owner, and peer-edge state for an Interview
  call.

Research excludes human-only intent or preference, integrated Requirements or
route judgment, product implementation, governing-record updates, acceptance,
open-ended source collection, universal quality scores, and automatic
progression. It does not treat source count, confidence language, a visual
reaction, or a delegate return as authority or proof by itself.

## Behavioral entry and bounded cycle

Research owns this sequence:

1. Bind the exact claim, territory, consequence, evidence bar, falsifier, and
   bounded peer state.
2. Select the smallest evidence method and load only its conditional local
   reference.
3. Test the claim in its territory, including a proportionate disconfirming
   path and any authorized supporting call or effect.
4. Rebind changed questions, correct false premises, reconcile evidence and
   conflict, and qualify coverage.
5. Return the bounded answer or honest status with evidence and stop.

Interview and Research are one strongly connected runtime component, but the
edge is bounded. Every call carries `boundary_id`, `return_to`, the lowercase
`origin` token `human`, `interview`, `research`, or the outer caller's stable
identifier, and boolean `peer_edge_crossed`. A round crosses the
Interview–Research edge at most once.
Research may call Interview for a human-owned qualification when `origin` is
not `interview` and `peer_edge_crossed=false`. When a human qualification is
required in an `origin=interview` or already-crossed round, Research returns
`needs-human-judgment` rather than calling Interview back. An Interview-origin
factual claim needing no further human qualification continues through the
normal evidence path; the guard suppresses reciprocal peer invocation, not
investigation. A callee never silently re-enters its peer, starts a second
investigation, or chooses the caller's next route.

Research consumes every Interview return explicitly: `clarified` and
`qualified` bind the factual claim; `no-op` uses sufficient existing human
context; a factual `needs-evidence` still inside the current claim is
investigated directly, while a new boundary returns `revised`; `deferred`,
`conflicting`, and unresolved `needs-evidence` return
`needs-human-judgment`; and `blocked`/`stopped` propagate. The original feedback
kind remains visible and none permits reciprocal re-entry.

## Invariants

1. Every investigation has one bounded factual claim, territory, consequence,
   evidence bar, falsifier, and `boundary_id`, or returns an explicit blocker.
2. Current source, configuration, installed versions, generated surfaces,
   reproduced behavior, and primary sources outrank stale plans, comments,
   generic examples, and source count.
3. Codebase searches are navigation evidence; a negative result accounts for
   materially plausible hidden paths or states why the method should have
   exposed them.
4. External evidence preserves authority, version, date, jurisdiction,
   environment, product tier, and other conditions that bound the claim.
5. Empirical probes define competing observations before execution and
   preserve load-bearing conditions, reproducibility, cleanup, and tested
   scope.
6. Consequential or caller-favored claims receive a cheapest meaningful
   disconfirming, perturbed, or independent path proportionate to consequence
   and breadth. Correlated agreement is not independent corroboration.
7. Evidence, inference, conflict, and unresolved uncertainty remain distinct;
   a conditional boundary is preferred to source voting.
8. A changed claim, territory, condition, freshness, or consequence rebinds
   the question and carries forward only still-applicable evidence.
9. A false premise is returned as false with its affected assumption and a
   corrected question or owner; Research never forces an answer inside it.
10. Interview is called only for a human-owned qualification; every Interview
    outcome maps to evidence use, a new boundary, human judgment, or a
    propagated stop/blocker. Research retains factual synthesis and the bounded
    peer guard prevents a reciprocal call for the same boundary.
11. Delegate is used only for a bounded independent evidence path with a
    positive context, cost, elapsed-time, or independence benefit; its return
    is evidence and never synthesis ownership.
12. Make Tangible is used only when a faithful evidence surface materially
    improves comparison, navigation, simulation, or reaction; its artifact or
    reaction never becomes the factual claim by itself.
13. Repository-mutating probes with a named checkout risk use Manage Worktree;
    Research retains probe design and interpretation and does not infer
    external isolation from a worktree.
14. A consequential experiment, state-changing external call, protected-data
    or secret access, permission change, or other material effect requires
    approved Plan coverage and current exact Implementation Authorization
    before Check Safety. `revise` or `stop` prevents the effect; missing
    boundaries stop before preflight. Read-only public evidence remains
    ordinary.
15. A missing direct target is an assembly dependency. Research does not make a
    placeholder, copy a callee's procedure, or widen the implementation slice.
16. A trivial stable fact uses the smallest authoritative path and no
    ceremonial triangulation, falsification, delegation, or durable report.
17. A durable report exists only for a named future consumer that needs to
    audit, extend, reproduce, or compare the work and whose write is covered by
    current authority.
18. Completion returns enough evidence and limitations for the caller to use
    the finding without redoing synthesis; it does not update governing truth,
    choose a route, or continue adjacent work.
19. Search exhaust, raw logs, discarded paths, and coordination narration are
    transient unless the named consumer needs their exact bytes.

## Outcomes and observable return

Research exposes these bounded outcomes:

- `answered` — sufficient evidence supports the bounded claim;
- `unverified` — available evidence cannot honestly establish it;
- `conflicting` — strong evidence remains in material unresolved conflict;
- `revised` — the premise or question materially changed;
- `blocked` — required access, environment, authority, safety, dependency, or
  evidence is missing; or
- `stopped` — the human stopped or the governing question became invalid.

`no-op` and `needs-human-judgment` are non-investigating routing returns when
the input is already clear or belongs to Interview/another owner; they do not
claim a factual answer. A missing Plan or exact Implementation Authorization
for a consequential effect is `blocked`/`revised` before Check Safety and
before the effect.

The semantic result is:

```text
Research Result {
  outcome,
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

The return leads with the bounded answer or observation. It names exact source
paths and revisions, authoritative sections, installed versions, probe
commands and environment, or native artifact references in proportion to
consequence. It names what remains valid, what changed, and any missing
evidence or human judgment. A recommendation appears only when evidence
supports one.

## Effects, authority, persistence, and lifetime

Research may inspect repository state, read local or public external evidence,
run read-only checks, and create and clean clearly disposable local probe state
inside existing authority. A read-only public fetch is ordinary evidence
gathering; networking or externality alone does not make it consequential.
Research does not silently change product behavior, affect production, spend
material money, use protected or sensitive data, create external state,
commit, publish, integrate, or deploy.

Every effect is classified at its actual boundary. Product mutation,
protected-data or secret access, production-affecting or state-changing
external calls, permission changes, costly services, destructive cleanup, and
consequential experiments require the ordinary exact Plan, Implementation
Authorization, and Check Safety sequence.
Manage Worktree separates checkout state only and never supplies that
authority. A material state change invalidates prior evidence and requires a
fresh bounded investigation.

Returns are conversational by default. Promote only the interpreted finding,
decisive evidence pointer, limitation, and causal implication a named future
owner needs into that owner's record. Research creates no generic report,
research diary, trajectory, evidence index, or learning ledger.

## Composition and direct calls

Direct calls carry the callee's required brief and preserve its exact return:
 one complete brief, lossless returns, no authority transfer, and no
re-entry across the Research–Interview edge. Each callee's own contract owns
its intake fields; the round identity (`boundary_id`, `origin`, `return_to`,
`peer_edge_crossed`) remains explicit for that edge. This package's caller
policies are:

| Direct target | Caller policy |
| --- | --- |
| [Interview](../interview/SPEC.md) | Use only for one human-owned qualification when the peer guard permits one crossing. `clarified`/`qualified` bind the claim; `no-op` uses sufficient context; `needs-evidence` stays in the claim or creates `revised`; `deferred`/`conflicting`/unresolved `needs-evidence` map to `needs-human-judgment`; `blocked`/`stopped` propagate. No reciprocal call occurs for the same boundary. |
| [Delegate](../delegate/SPEC.md) | Use only when an independent evidence path has a positive benefit. `delegated` integrates before selecting an outcome; `partial` preserves evidence/gaps; `no-op`/unavailable/delegation-only `blocked` runs the direct path; evidence/authority `blocked` and human `stopped` map to the same Research outcome. |
| [Make Tangible](../make-tangible/SPEC.md) | Use when a faithful comparison, navigation model, simulation, or annotation is needed. `no-op` uses direct explanation; `constructed`/`revised` preserves artifact, reaction, conclusions, and fidelity limits; `blocked`/`stopped` propagate. A reaction is never factual proof by itself. |
| [Check Safety](../check-safety/SPEC.md) | Use only for a Plan-covered, exactly authorized material effect. `proceed` permits only that action; `revise` maps to `revised`, `stop` to `blocked`, and missing boundaries block before the call with `safety_result` preserved. |
| [Manage Worktree](../manage-worktree/SPEC.md) | Use for an authorized repository-mutating probe with named checkout risk. Checkout-ready results supply identity/evidence; `blocked`/`stopped` map to the same Research outcome with state preserved and no probe. |

Research does not call Plannotator directly. Make Tangible owns any native
reaction path. A direct callee returns to Research and cannot advance its
workflow, create authority, update governing truth, or invoke Research again
for the same bounded edge.

## Runtime references and package tree

The executable `SKILL.md` loads only these terminal local references at the
decision points named in its Step 2:

| Reference | Load condition | Ownership |
| --- | --- | --- |
| [`codebase-evidence.md`](references/codebase-evidence.md) | Non-obvious repository, dependency, runtime-wiring, generated-surface, test, convention, or history tracing. | Research |
| [`external-evidence.md`](references/external-evidence.md) | Consequential authority, version, freshness, jurisdiction, product tier, conflict, or search coverage. | Research |
| [`empirical-probes.md`](references/empirical-probes.md) | Designed runtime observation requiring discrimination, fidelity, reproducibility, interpretation, or cleanup. | Research |

Each reference contains only its method-specific rules and no reference chain,
entry, skill call, authority grant, caller route, global completion, or stop
contract. Direct-call brief and exact-return rules remain inline when composing
a direct call. [Praxis Control](../../references/control.md) is the
branch-common shared runtime reference loaded at entry. The package has no
other shared runtime reference, scripts, assets, fixtures, templates, wrapper,
hook, or required tool integration.

The exact sparse tree is:

```text
skills/research/
├── SKILL.md
├── SPEC.md
├── agents/
│   └── openai.yaml
└── references/
    ├── codebase-evidence.md
    ├── external-evidence.md
    └── empirical-probes.md
```

## Invocation and host projection

The package is internally reachable with this exact frontmatter:

```yaml
---
name: research
description: "Research one bounded factual claim. Use when current codebase, external primary sources, comparisons, or empirical probes must answer or falsify it."
---
```

Its host projection is:

```yaml
interface:
  display_name: "Research"
  short_description: "Test factual claims against strong evidence"
  default_prompt: "Use $research to answer this bounded factual question."
policy:
  allow_implicit_invocation: false
```

Host presentation adds no tool dependency, authority, effect, route, or
continuation. Description, host prompt, and body agree on bounded factual
triggers; the body owns routing non-factual inputs.

## Package-specific conformance cases

1. Explicit research and a factual gap reach Research; ordinary task-local
   inspection remains with its owner.
2. A one-path codebase investigation traces observable behavior through
   entry, wiring, ownership, versions, and tests to a bounded conclusion.
3. External research preserves primary authority, version, freshness, date,
   jurisdiction, and applicable conditions.
4. An empirical probe defines competing observations before execution and
   records environment, reproducibility, tested scope, and cleanup.
5. Documentation and runtime evidence are reconciled through installed
   configuration and version rather than source voting.
6. A negative search that misses plausible wrappers, generated paths,
   middleware, or defaults remains qualified or `unverified`.
7. A consequential or favored claim receives a disconfirming path capable of
   exposing its preferred answer's failure.
8. A changed claim rebinds the boundary and discards evidence outside the new
   scope; the old answer remains scoped evidence only.
9. A false premise yields `revised` with the affected assumption and corrected
   question instead of a forced answer.
10. A human-owned qualification invokes Interview and Research retains claim
    synthesis; an Interview-origin call does not recursively invoke Interview.
11. Correlated sources or delegate agreement are not independent corroboration.
12. A non-discriminating probe changes method when a bounded alternative may
    resolve the claim, otherwise returns `unverified`.
13. Missing Plan coverage or exact Implementation Authorization prevents a
    consequential effect before Check Safety; `revise`/`stop` prevents it.
14. An authorized repository-mutating probe with named checkout risk invokes
    Manage Worktree; a worktree result does not authorize the probe.
15. Delegate returns compact evidence without taking synthesis, authority, or
    stopping ownership; unavailable optional Delegate falls back directly.
16. Make Tangible returns an exact reaction surface without taking factual
    claim ownership or turning reaction into proof.
17. A trivial stable fact performs only a minimal authoritative scope and no
    ceremonial triangulation, delegation, falsification, or report.
18. A durable report requires a named future consumer and covered write;
    otherwise search exhaust and raw probe output remain transient.
19. A missing required runtime dependency remains an explicit assembly gap;
    Research does not create a placeholder or copied procedure.
20. Every result names evidence, scope, epistemic status, limitations,
    implication, and missing judgment when applicable, then stops without
    updating records or continuing the caller.

## Source basis


This contract is maintained against the plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work](../../docs/concepts/work.md)
owners; the [package authoring contract](../../docs/maintainers/skill-packages.md);
the [conformance and release contract](../../docs/maintainers/conformance-and-release.md);
the direct sibling
contracts for [Interview](../interview/SPEC.md),
[Delegate](../delegate/SPEC.md), [Make Tangible](../make-tangible/SPEC.md),
[Check Safety](../check-safety/SPEC.md), and
[Manage Worktree](../manage-worktree/SPEC.md); and the plugin-local runtime
references in this package. These plugin-local files are the complete
maintainer source basis; the declared skill surface and package runtime
references are the complete runtime. No
non-plugin material is required to use, review,
validate, or maintain this package.
