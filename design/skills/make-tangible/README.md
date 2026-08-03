# Make Tangible

> **Design document — not a runtime skill.** Accepted behavioral contract and target package design; runtime implementation pending.

## What it does

Make Tangible turns a question that is difficult to judge in words into the
smallest useful native artifact or artifact set. It may be visual, runnable,
audible, measurable, interactive, or inspectable: an interactive HTML page,
diagram, multi-file prototype, repository-native component, CLI or TUI,
simulation, experiment harness, benchmark, dataset, generated media, annotated
diff, editor, explainer, report, or another form suited to the judgment.

Its leading idea is **make the judgment perceptible**. Use it when the human
would otherwise need to imagine behavior, compare several possibilities
sequentially, reconstruct a system mentally, manipulate values through prose,
or remember too much information at once. A prototype is one possible surface,
not the identity of the skill.

Every path follows the skill-local
[Artifact Contract and Lifetime](references/artifact-lifetime.md). That
reference defines the caller brief, visible judgment frame, provenance,
fidelity, intended-medium verification, judged versions, reaction export,
native return, storage, and retention shared by all artifacts. This guide owns
the Make Tangible collaboration and pattern choice rather than repeating that
common contract inside every path.

The skill that calls Make Tangible still owns the underlying question.
Requirements Discovery may need a reaction to an unknown, Plan may need a
volatile implementation choice made visible, Review may need an annotated risk
map, and Orient may need a navigable system explanation. Make Tangible owns the
surface's construction, revision, and reaction capture, then returns the result.
The caller owns the outer collaboration and interprets what the reaction means.

When [Plannotator](../plannotator/README.md) can carry the artifact faithfully,
invoke its Reaction Review to collect precise annotation. Make Tangible still
owns the artifact's primary judgment, form, fidelity, construction, and
intended-medium verification; Plannotator owns only presentation compatibility
and the review interaction.
Use the native medium directly when Plannotator would lose essential behavior,
and never redesign an artifact merely to force it through the annotation UI.

## When to reach for it

Use Make Tangible when one or more of these would materially improve judgment:

- a possibility space needs to expose missing vocabulary, criteria, or
  promising directions;
- alternatives need to be compared side by side;
- behavior, motion, flow, or feasibility needs to be experienced;
- spatial, structural, or causal relationships need to be navigated;
- latent human knowledge needs to be elicited through concrete reactions;
- the human needs to tune, classify, arrange, or edit difficult values;
- source, diffs, risks, or findings need precise annotation;
- evidence needs to reveal state, change, patterns, or anomalies; or
- a result needs to be understood, demonstrated, taught, communicated, or
  proved.

Stay in conversation or plain prose when the question is already easy to
understand and answer. Rich output has to reduce judgment cost; generating HTML
for a short straightforward explanation is unnecessary work.

## How the collaboration works

The caller provides the question, audience, relevant evidence, and judgment it
needs. Make Tangible states that judgment plainly, chooses the lowest fidelity
that can answer it honestly, and builds only the behavior and context required
for the reaction. Before collecting feedback, it states which judgments that
fidelity can support. A simulated checkout can validate flow and layout without
claiming to validate real latency or failure behavior.

The artifact labels what is sourced fact, inference, proposal, simulation, or
placeholder content. Consequential factual claims remain traceable to source.
Visual polish cannot make invented or mocked information appear authoritative.

When the unresolved judgment concerns the shape of the solution, Make Tangible
first presents a few genuinely distinct directions. Once the human chooses,
combines, rejects, or reframes them, the work converges on that direction. It
does not manufacture alternatives when the question is already local and well
understood.

Alternatives should have comparable fidelity along the dimensions being
judged. If one must be more polished, realistic, complete, or interactive than
another, expose that difference and ask only for conclusions the comparison can
support.

The human then reacts to something concrete. Make Tangible revises locally
until the artifact expresses the reaction clearly enough to resolve the
original question. Each iteration foregrounds the meaningful diff from the
version the human judged, carries forward unaffected reactions, and reopens
only changed or invalidated judgments.

If the artifact is interactive, it exports the smallest useful reaction:
selections, rejected parts, mixed choices, annotations, edited values,
unresolved points, or another inspectable result. It binds that feedback to the
exact artifact version rather than leaving browser state as the only record or
reducing a compositional reaction to one winner.

Before presentation, exercise the surface through its intended medium and
verify the behavior required for its declared judgment. Return the exact
artifact version, supported judgment, captured reaction, decisive evidence,
fidelity limits, implications, and unresolved points through one native
message. The calling loop interprets that return.

## Artifact patterns

Patterns explain how to make different kinds of judgments easy. They classify
the primary human judgment rather than artifact type, medium, file shape,
technology, or Praxis phase. They are not fixed layouts, output categories, or
reusable HTML skeletons. The set is open:
add a pattern only when it serves a distinct primary human judgment and needs
meaningfully different fidelity, interaction, reaction export, verification,
or failure-mode guidance.

Every artifact names one primary judgment and selects the pattern that serves
it. Supporting patterns may be composed only where they materially improve
that judgment or preserve the resulting reaction. The primary pattern governs
fidelity, structure, and verification. A recurring use case becomes a
composition recipe rather than another pattern when existing patterns already
cover its judgment.

Any pattern may use any native form capable of supporting its judgment, and
one artifact set may contain several forms. A multi-file prototype can serve
Explore and Discover, Compare and Choose, Experience or Simulate, or
Demonstrate and Prove depending on why it exists. Choose the pattern from the
judgment first, then choose form and fidelity from what must be inspected,
experienced, measured, or proved.

### [Explore and discover](references/explore-and-discover.md)

Expose a purposeful possibility space so the human can discover vocabulary,
criteria, preferences, blind spots, and promising directions. Preserve the
reactions and newly discovered judgment criteria without forcing premature
ranking, selection, or convergence.

### [Compare and choose](references/compare-and-choose.md)

Place materially different alternatives together, expose the tradeoff each
makes, keep consequential fidelity comparable, and make selections, rejected
parts, mixed reactions, ties, uncertainty, and reframing easy to express.
Useful examples include design directions, solution shapes, scope options, and
prioritization. When presentation differences cannot be controlled, label them
and narrow the question accordingly.

### [Understand and navigate](references/understand-and-navigate.md)

Build a mental model of a dense system or topic through diagrams, progressive
disclosure, annotated source, glossaries, call paths, proposed file-tree diffs,
ownership views, key type/interface sketches, and navigable detail.
The surface should let the reader move between overview and evidence without
holding the whole explanation in memory.

### [Experience or simulate](references/experience-or-simulate.md)

Make behavior perceptible through a clickable flow, animation, state
simulation, bounded experiment, or feasibility demonstration. Implement only
the parts required for an honest reaction and label everything simulated or
omitted.

### [Elicit and articulate](references/elicit-and-articulate.md)

Help the human express latent requirements, preferences, constraints, and
corrections through guided questions and concrete reactions. Preserve the
resulting meaning in a form the caller can interpret without silently turning
artifact interaction into accepted governing truth.

### [Manipulate and export](references/manipulate-and-export.md)

Create a purpose-built interface for tuning, classifying, arranging, or editing
information that is painful to express in a text box. Validate important
constraints and export the final change explicitly.

### [Inspect and annotate](references/inspect-and-annotate.md)

Arrange exact evidence for scrutiny: annotated diffs, severity maps, source
links, jump navigation, risk groupings, and relationships. This pattern helps a
human understand or comment on evidence; the owning Review, governing record,
or result owner still owns its judgment. Plannotator presents and returns the
interaction but never becomes that owner.

### [Observe and assess](references/observe-and-assess.md)

Make current or historical evidence inspectable so the human can recognize
state, change, patterns, and anomalies. Expose freshness, scope, provenance,
missing evidence, and uncertainty, and distinguish observations from causal
interpretations.

### [Teaching surface](references/teaching-surface.md)

Construct and verify a diagram, interactive explainer, demonstration, or quiz
surface from the caller's learning objective, settled model, evidence, and
conceptual checks. The caller owns teaching and interpretation; this pattern
owns representation, interaction mechanics, fidelity, and return.

### [Communicate and align](references/communicate-and-align.md)

Package context, rationale, demonstrations, tradeoffs, and requested decisions
for a particular audience. Make informed response and alignment easier without
hiding uncertainty, limitations, disagreement, or the evidence that would
change the recommendation.

### [Demonstrate and prove](references/demonstrate-and-prove.md)

Connect explicit claims to inspectable evidence, limitations, and unresolved
failures. Lead with the result and the proof its audience needs, but never let
presentation quality strengthen a claim beyond the underlying evidence.

Each pattern's skill-local reference explains suitable
situations, minimum useful fidelity, what must be real, what may be simulated,
useful structures and interactions, export behavior, examples, and common
failure modes. Load only the reference for the selected primary pattern and any
supporting pattern whose detailed guidance materially affects the surface.

## Accepted visual substrate

When an HTML, SVG, diagram, report, proposal, or change explainer benefits from
stable semantic styling, load [Visual System](references/visual-system.md) and
use the accepted
[`praxis-visual-system.css`](assets/praxis-visual-system.css) asset. The asset
provides shared tokens and composable primitives so agents do not invent an
unrelated visual language for every artifact. It is not a page template and
does not choose information architecture, interaction flow, fidelity, or the
primary judgment.

The artifact's pattern and bounded question still determine its structure.
Repository-native product styling outranks the substrate when matching the
real product is consequential to the judgment. For exploratory and
non-authoritative prototypes, the substrate makes the surface coherent without
turning its styling into accepted product design.

Use the smallest artifact that makes the primary judgment possible. Add
interaction only when the human must explore state, experience behavior,
express a reaction, or export a composed result. Static prose, tables,
diagrams, and images are often correct.

Choose the medium from the required judgment and fidelity: prose, table,
diagram, image, audio, self-contained HTML, executable harness, dataset,
generated media, CLI or TUI, multi-file application, or a code-backed
prototype. Prefer a self-contained artifact when it can preserve the judgment
faithfully. Use a repository-native prototype when real dependencies, styling,
data, accessibility behavior, or integration boundaries materially affect the
judgment. Prototype code becomes product code only through ordinary Delivery
authority.

## It is working when

- The artifact names one primary human judgment.
- Supporting patterns improve that judgment rather than competing with it.
- Its medium and fidelity make that judgment easier without building unrelated
  product behavior.
- Interaction exists only where static presentation cannot support the needed
  experience, reaction, or export.
- The surface declares which judgments its real and simulated behavior can
  support.
- Relevant facts are traceable and visibly distinct from inference, proposal,
  simulation, and placeholder content.
- Shape uncertainty receives meaningful contrast before local refinement;
  already-bounded questions do not receive ceremonial alternatives.
- Compared alternatives have comparable consequential fidelity, or their
  differences visibly limit the conclusion.
- Every section and interaction helps answer the declared question.
- Human reaction can be captured and exported without relying on hidden
  interface state.
- Mixed choices and annotations survive export instead of collapsing into one
  selected candidate.
- Later iterations foreground their diff, preserve unaffected reactions, and
  reopen invalidated judgments.
- The reaction loop ends with a clear result, implications, and unresolved
  uncertainty returned to the caller.
- The artifact is retained only when a named later activity needs its exact
  behavior, evidence, or reaction.
- A judged version is never overwritten, and a retained artifact never gains a
  structured-record envelope or lifecycle ledger.

## Authority and learning

Make Tangible does not own Requirements, Evolutions, Issues, Implementation
Plans, Reviews, or their gates. Approval or reaction confirms only that its
bounded question has been expressed or answered.

The caller interprets the result, updates its governing record, foregrounds
what changed, and passes its normal Plannotator gate when required. If the
reaction changes an earlier accepted premise, learning returns to that exact
causal owner rather than being absorbed into the nearest editable artifact.

Read-only explanations and disposable local artifacts may proceed inside the
caller's current authority. Product mutations, external effects, and
consequential experiments still require their ordinary explicit authority.

## Where it fits

Make Tangible is an agent-startable supporting skill available to every Praxis
owner. Research can use it to explain findings; Interview can use a custom
editor to help the human express an unknown known; Evolve can use it for a
visual Map; Plan can use it to expose volatile decisions; Review can use it to
make evidence inspectable; Delivery can use it for result demonstrations; and
Orient can use it for constructed teaching surfaces. Teaching progression,
conceptual questions, and comprehension interpretation remain with Orient.

Those callers invoke Make Tangible with a bounded brief. They do not copy its
procedure or read its internal pattern references, and Make Tangible does not
inherit their ownership, gate, or authority.

The [Plannotator](../plannotator/README.md) skill likewise does not copy Make
Tangible's patterns. It receives the verified target and declared judgment,
presents it when faithful, and returns the human reaction to the caller.

Visual explainers, navigable reports, design-system demonstrations, SVG
diagrams, PR explainers, and Review Learning dashboards remain Make Tangible
work when they are the smallest useful judgment surface. The accepted
visual-system reference and CSS asset preserve shared semantic styling,
host-theme behavior, accessible SVG and Mermaid rendering, and reusable plan,
PR, and report primitives under Make Tangible. The pattern designs preserve how
those primitives serve different judgments without imposing a rigid template.

## Research basis

Thariq Shihipar's
[The unreasonable effectiveness of HTML](https://claude.com/blog/using-claude-code-the-unreasonable-effectiveness-of-html)
argues that rich, navigable, and interactive artifacts can keep humans engaged
with increasingly complex agent output. Its
[example gallery](https://thariqs.github.io/html-effectiveness/) demonstrates
comparison pages, implementation plans, annotated code reviews, system maps,
prototypes, reports, explainers, and custom editors.

The companion
[Know your unknowns gallery](https://thariqs.github.io/html-effectiveness/unknowns/)
shows how tangible surfaces can support blind-spot discovery, teaching,
brainstorming, interviews, references, implementation notes, pitches, and
quizzes before, during, and after implementation.

The underlying
[HTML Effectiveness repository](https://github.com/ThariqS/html-effectiveness)
is a composition-example corpus rather than a Praxis taxonomy. Its artifacts
frequently combine several judgments: the
[design-directions surface](https://github.com/ThariqS/html-effectiveness/blob/main/unknowns/03-design-directions.html)
explores, compares, elicits reactions, and exports a reply; the
[toolbar mock](https://github.com/ThariqS/html-effectiveness/blob/main/unknowns/04-toolbar-mock.html)
combines simulation with contextual questions; the
[interview](https://github.com/ThariqS/html-effectiveness/blob/main/unknowns/06-interview.html)
turns consequential answers into an inspectable follow-up; the
[reference port](https://github.com/ThariqS/html-effectiveness/blob/main/unknowns/07-reference-port.html)
combines navigation, annotation, elicitation, and proof; and the
[change quiz](https://github.com/ThariqS/html-effectiveness/blob/main/unknowns/11-change-quiz.html)
teaches and checks understanding. Praxis uses these as worked compositions
rather than creating one pattern per page.

Particularly useful examples include the
[annotated pull-request review](https://thariqs.github.io/html-effectiveness/03-code-review-pr.html),
[visual implementation plan](https://thariqs.github.io/html-effectiveness/16-implementation-plan.html),
[ticket-triage editor](https://thariqs.github.io/html-effectiveness/18-editor-triage-board.html),
and
[feature-flag editor](https://thariqs.github.io/html-effectiveness/19-editor-feature-flags.html).
Praxis treats HTML as one unusually flexible carrier and generalizes the deeper
pattern: make consequential judgment concrete through the native form that
best preserves it. No pattern implies HTML, a visual interface, or one file.
For non-trivial comparison, feedback, and iterative evaluation design, use the
shared
[Feedback and Evaluation](../../references/feedback-and-evaluation.md) reference.

## Direct dependencies

### Skills

- [Plannotator](../plannotator/README.md) — present an already-constructed
  faithful target when its native surface preserves the intended judgment;
  return reaction, annotations, decision, and fidelity limits; Make Tangible
  retains construction, verification, and artifact ownership.
- [Manage Worktree](../manage-worktree/README.md) — decide whether a named
  repository risk needs isolation;
  invoke it only for a named repository-native prototype collision or
  preservation risk. It returns a safe current checkout, a prepared isolated
  worktree, or a blocker; Make Tangible retains artifact construction and
  evaluation.

### Shared references

- [Feedback and Evaluation](../../references/feedback-and-evaluation.md) —
  design fair comparisons and faithful iterative reaction.

## Target runtime package

> **Status: accepted target package design; runtime implementation pending.**
> This section is not implementation authority.

### Invocation and host projection

Make Tangible is model-invoked because any Praxis owner may need a perceptible
surface when words impose material judgment cost.

```yaml
---
name: make-tangible
description: "Make one caller-owned judgment tangible. Use when an artifact, prototype, visualization, simulation, comparison, or other perceptible surface would materially improve that judgment."
---
```

```yaml
interface:
  display_name: "Make Tangible"
  short_description: "Turn a difficult judgment into a useful artifact"
  default_prompt: "Use $make-tangible to create the smallest faithful surface for this judgment."
policy:
  allow_implicit_invocation: true
```

### Information hierarchy and references

`SKILL.md` keeps caller brief, primary judgment, pattern selection, medium and
fidelity choice, sourced-versus-simulated labeling, intended-medium
verification, judged-version identity, reaction capture, native return,
authority, and stopping inline. Construction completes only when the declared
judgment is easier and the artifact's supported conclusions and limitations are
visible.

| Decision point | Target reference | Load when | Keep inline when | Semantic ownership | Source material | Direct consumers | Gaps |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Artifact persistence or revision | `references/artifact-lifecycle.md` | An artifact is retained, revised after judgment, presented across a boundary, or removed. | A disposable one-turn artifact is returned and discarded. | Make Tangible | [Artifact Contract and Lifetime](references/artifact-lifetime.md) | Make Tangible | None. |
| Possibility exploration | `references/explore-and-discover.md` | The primary pattern is Explore and Discover. | The possibility space is already bounded. | Make Tangible | Same-named semantic source | Make Tangible | None. |
| Side-by-side judgment | `references/compare-and-choose.md` | The primary pattern is Compare and Choose. | One candidate only needs explanation. | Make Tangible | Same-named semantic source | Make Tangible | None. |
| Structural comprehension | `references/understand-and-navigate.md` | The primary pattern is Understand and Navigate. | A short linear explanation is enough. | Make Tangible | Same-named semantic source | Make Tangible | None. |
| Behavioral experience | `references/experience-or-simulate.md` | The primary pattern is Experience or Simulate. | Static evidence supports the judgment. | Make Tangible | Same-named semantic source | Make Tangible | None. |
| Tacit expression | `references/elicit-and-articulate.md` | The primary pattern is Elicit and Articulate. | Ordinary Interview can express the judgment. | Make Tangible | Same-named semantic source | Make Tangible | None. |
| Structured manipulation | `references/manipulate-and-export.md` | The primary pattern is Manipulate and Export. | No direct manipulation or export is needed. | Make Tangible | Same-named semantic source | Make Tangible | None. |
| Precise annotation | `references/inspect-and-annotate.md` | The primary pattern is Inspect and Annotate. | General reaction is sufficient. | Make Tangible | Same-named semantic source | Make Tangible | None. |
| Evidence assessment | `references/observe-and-assess.md` | The primary pattern is Observe and Assess. | A direct factual return is sufficient. | Make Tangible | Same-named semantic source | Make Tangible | None. |
| Constructed teaching | `references/teaching-surface.md` | The primary pattern is Teaching Surface. | Orient can teach without a constructed surface. | Make Tangible | Same-named semantic source | Make Tangible | None. |
| Shared communication | `references/communicate-and-align.md` | The primary pattern is Communicate and Align. | Conversation already carries the model. | Make Tangible | Same-named semantic source | Make Tangible | None. |
| Demonstration or proof | `references/demonstrate-and-prove.md` | The primary pattern is Demonstrate and Prove. | Existing evidence is already judgeable. | Make Tangible | Same-named semantic source | Make Tangible | None. |
| Visual substrate | `references/visual-system.md` | HTML, CSS, SVG, Mermaid, report, proposal, or change-explainer styling materially helps. | The artifact is nonvisual or needs no shared primitives. | Make Tangible | [Visual System](references/visual-system.md) | Make Tangible | None. |
| Non-trivial feedback design | `../../references/evaluation.md` | Fair comparison, repeated reaction, evaluator bias, or conflicting signals affects interpretation. | One bounded reaction needs no richer evaluation. | Cross-skill | [Feedback and Evaluation](../../references/feedback-and-evaluation.md) | Make Tangible | None. |

The compact must-have artifact contract stays inline; the lifecycle reference
contains only persistence, revision, retention, and removal detail. Pattern
references never call one another. Plannotator and Manage Worktree calls are
accepted. Effects range from disposable local artifacts to authorized
repository-native prototypes; product or external mutation keeps its normal
authority.

The sole runtime asset is `assets/praxis-visual-system.css`, used as a source of
semantic primitives to inline into self-contained artifacts. There are no
scripts, fixtures, templates, or required integrations. Target files are the
required three files, the thirteen named references, and that CSS asset.

`SPEC.md` adds cases for prose no-op, every primary pattern, multi-pattern
selection with one primary judgment, fidelity mismatch, sourced versus
simulated content, comparable alternatives, native-medium verification,
Plannotator-compatible and incompatible surfaces, judged-version revision,
reaction export, disposable versus retained lifetime, Manage Worktree risk,
and unsupported conclusion. No package decision remains unresolved.
