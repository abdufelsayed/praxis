---
name: make-tangible
description: "Make one caller-owned judgment tangible. Use when an artifact, prototype, visualization, simulation, comparison, or other perceptible surface would materially improve that judgment."
---

# Make Tangible

Turn a caller-owned question into the smallest native surface that makes its
judgment perceptible. The surface may be prose, a table, diagram, image,
audio, HTML, executable probe, dataset, CLI/TUI, or repository-native
prototype. Make Tangible owns construction, revision, intended-medium
verification, and reaction capture. The caller keeps the question, governing
meaning, gate, authority, interpretation, acceptance, and stopping.

## 1. Bind the judgment

Accept a bounded brief from the caller: the question, intended audience and
starting point, evidence or accepted truth, primary judgment, consequential
fidelity needs, reaction to capture, and authority or lifetime constraints.
Name the judgment in one sentence before choosing a form. A request for “a
prototype” or “an HTML page” is not a sufficient brief when the actual
decision is unknown.

If words, a short example, or a simple table already makes the judgment easy,
return a `no-op` recommendation with the direct explanation and stop. Rich
output earns its cost only when it reduces material judgment effort.

Treat conversation, native interaction, artifacts, and reactions as transient
by default. Retain exact bytes only when a named future consumer needs their
behavior, evidence, comparison, or reaction; without that declaration, keep
the result message-first and do not silently create durable storage.

For the selected surface, classify effects before construction. Read-only
explanation and a disposable local artifact may proceed inside the caller's
current authority. Product mutation, external effects, data or secret access,
service or container changes, and consequential experiments keep their normal
owner and require exact current authority and their ordinary safety boundary.
If that boundary is absent, return `blocked`; a visual reaction or Plannotator
result never supplies it.

This step is complete when the caller, question, audience, evidence, primary
judgment, reaction, lifetime, and required effect boundary are explicit, or the
no-op is returned.

## 2. Choose the primary pattern and fidelity

Choose exactly one primary judgment pattern. Supporting patterns may be added
only when they materially improve that judgment; they never compete for
ownership. Load the primary pattern reference and only a supporting reference
whose detailed guidance materially changes the surface:

- Load [`explore-and-discover.md`](references/explore-and-discover.md) when
  the human needs vocabulary, criteria, blind-spot discovery, or meaningful
  directions rather than a winner.
- Load [`compare-and-choose.md`](references/compare-and-choose.md) when
  credible alternatives and consequential criteria are already understood.
- Load [`understand-and-navigate.md`](references/understand-and-navigate.md)
  when relationships, ownership, paths, states, or evidence need a navigable
  mental model.
- Load [`experience-or-simulate.md`](references/experience-or-simulate.md)
  when behavior, timing, interaction, or feasibility must be experienced.
- Load [`elicit-and-articulate.md`](references/elicit-and-articulate.md) when
  concrete context is needed for latent human requirements, preferences, or
  corrections.
- Load [`manipulate-and-export.md`](references/manipulate-and-export.md) when
  structured values must be tuned, arranged, classified, or edited and then
  exported.
- Load [`inspect-and-annotate.md`](references/inspect-and-annotate.md) when
  reactions must stay attached to exact source, diff, trace, screenshot, or
  other evidence.
- Load [`observe-and-assess.md`](references/observe-and-assess.md) when the
  shape, change, trend, cluster, or anomaly in measured evidence is the
  judgment.
- Load [`teaching-surface.md`](references/teaching-surface.md) when a caller
  supplies one settled model and bounded learning objective.
- Load [`communicate-and-align.md`](references/communicate-and-align.md) when
  a named audience needs an informed response to a decision, proposal, result,
  or status.
- Load [`demonstrate-and-prove.md`](references/demonstrate-and-prove.md) when
  explicit claims must be connected to inspectable evidence and limitations.

When the unresolved judgment concerns solution shape, present a few genuinely
distinct directions before converging on the human's choice, combination,
rejection, or reframing. When the question is already local and bounded, build
one surface; do not manufacture ceremonial alternatives.

Choose the lowest fidelity that can answer the named judgment honestly. Make
the judged dimension real enough; simulate surrounding mechanics only when
they cannot affect the conclusion. Alternatives have comparable consequential
fidelity, or the difference and narrower conclusion are visible. Set the
medium from the judgment, not from a default preference for HTML. This step
is complete when one primary pattern, any justified supporting patterns,
medium, fidelity, supported conclusions, and limits are named.

## 3. Build a truthful surface

Construct only the behavior, context, states, controls, and evidence needed
for the declared judgment. Label sourced fact, inference, proposal,
simulation, and placeholder content at the point where the distinction affects
interpretation; trace consequential facts to their source. Keep proposed or
simulated behavior from looking like established product behavior.

For HTML, SVG, Mermaid, reports, proposals, or change explainers, load
[`visual-system.md`](references/visual-system.md) when shared semantic styling
materially helps, and use the bundled
[`praxis-visual-system.css`](assets/praxis-visual-system.css) as inline source.
It is a substrate, not a template. Repository-native product styling outranks
it when product styling is itself being judged. A self-contained HTML surface
must inline the rules it uses and may opt into the host theme with
`<meta name="plannotator-theme" content="host">`.

When the proposed repository-native prototype could collide with active work,
lose rollback state, or otherwise has a named checkout risk, invoke
[Manage Worktree](../manage-worktree/SKILL.md) with that concrete risk. Give it
the complete current brief; `current
checkout safe`, `worktree ready`, or `handoff ready` selects the reported
checkout and limits;
`blocked` or `stopped` preserves every reported checkout and artifact state
and returns Make Tangible `blocked` or `stopped` without construction or
cleanup. Manage Worktree never grants authority or owns construction. Missing
risk is not a reason to create a worktree.

This step is complete when the artifact exists in the chosen medium, every
required state and claim is represented, provenance and fidelity limits are
visible, and no unrelated product behavior or authority was introduced.

## 4. Exercise the intended medium

Before asking for reaction, use the surface through the medium the audience
will use. Check readability, navigation, source links, responsive light and
dark presentation, keyboard/focus and reduced-motion behavior when relevant,
the declared states and controls, provenance labels, and the exact reaction or
export path. For diagrams, verify labels and text alternatives. For measured
or proof surfaces, reconcile displayed values with underlying evidence. A
generated file, screenshot, or polished appearance is not verification.

If the artifact cannot support its declared judgment in the intended medium,
revise it when one honest bounded change can satisfy the claim. Otherwise
preserve current artifact and checkout state and return `blocked` with the
failed verification, unsupported conclusion, missing change, and fidelity
limit; do not ask the caller to infer missing behavior or return `constructed`.
This step is complete only when every declared judgment path has been exercised
and the evidence and fidelity limits still match the surface.

## 5. Present one judged version

State the question, audience, primary judgment, supported conclusions, limits,
and requested reaction. When the verified target is faithful to a Plannotator
surface and a native Reaction Review materially improves the judgment, invoke
[Plannotator](../plannotator/SKILL.md) for exactly that interaction. Use another
Plannotator-native interaction only when the caller already selected it. Give
Plannotator the exact target or version, requested judgment, and what the
reaction does not authorize. It owns presentation and transport only; Make
Tangible does not choose a Record Gate or Result Gate for the caller.

When Plannotator would lose essential behavior, use the native medium directly
and capture the reaction there. Do not redesign a faithful artifact merely to
fit the annotation UI. No native surface is required for an ordinary
conversation that already preserves the reaction.

Consume the native result under
these call rules; Plannotator's own contract
owns its return shape. A captured review result may proceed to revision or
return; dismissal or empty closure returns Make Tangible `stopped` with the
exact target and current state, no inferred reaction, and no acceptance; tool
or transport failure returns `blocked` with the exact target, failure, and
transport limit. Do not synthesize a reaction, revision, approval, or
substitute interaction; a native path may continue only when it was already
independently selected and remains faithful, not as an invented fallback after
failure.

This step is complete when exactly one artifact version has been presented
through its faithful medium and a human response is captured; dismissal,
closure, failure, or human stop returns through its explicit branch instead.

## 6. Revise without erasing judgment

Bind every reaction to the exact visible version, state, conditions, and
question. Preserve mixed choices, rejected parts, annotations, edited values,
qualifications, deferred and unresolved points; never collapse a compositional
reaction into one winner. Foreground the meaningful diff from the judged
version on each revision and carry forward only unaffected reactions. A
material change creates a new visible version; never overwrite a judged
version.

When the artifact is retained, revised after judgment, presented across a
context boundary, or removed, load
[`artifact-lifecycle.md`](references/artifact-lifecycle.md) and apply its
version, storage, retention, and removal rules. A disposable one-turn return
does not need that reference. Use [`evaluation.md`](../../references/evaluation.md)
only when fair comparison, repeated reaction, evaluator bias, or conflicting
signals materially affects interpretation; it is a shared reference and is
loaded directly, not through another reference.

Continue local revision only while the original judgment, authority, and
question remain intact. If reaction changes an accepted premise or governing
meaning, return that learning to the causal owner instead of absorbing it into
the artifact.

After every material revision, re-enter intended-medium verification in Step 4,
present that new version through the faithful Step 5 path, and capture a new
reaction before calling it `revised`. Repeat only while the original boundary
remains valid and another bounded attempt can change the judgment. Stop when
the judgment is resolved, no useful bounded attempt remains, or the human
stops; never return an unjudged revision as complete. This step is complete
when the current judged version, reaction, and any changed or invalidated
judgments are explicit.

## 7. Return and stop

Return one native message to the caller:

```text
Make Tangible Result {
  outcome: no-op | constructed | revised | blocked | stopped,
  artifact_path_and_version?,
  primary_judgment,
  medium_and_fidelity,
  supported_conclusions,
  human_reaction?,
  decisive_evidence,
  implications,
  fidelity_or_transport_limits,
  unresolved_points,
  retention_state? {  # include only when lifecycle handling ran; otherwise
                      # the return is transient or disposable
    disposition,
    named_consumer?,
    owner_and_path?,
    exact_version?,
    reaction_export?,
    preservation_or_removal_evidence,
  },
}
```

When applicable, identify the exact artifact and judged version and every
material reaction and qualification. Always identify evidence, supported
conclusion, fidelity or transport limit, implication for the owning question,
and unresolved point. State that the caller retains interpretation, governing
records, gates, authority, route, acceptance, and stopping. Do not create a
record envelope, lifecycle ledger, learning diary, or adjacent work. When
lifecycle handling ran, include its
named consumer, owner and exact path/version, reaction export, disposition, and
verified preservation or removal; otherwise mark the return transient or
disposable. Stop after the return.
