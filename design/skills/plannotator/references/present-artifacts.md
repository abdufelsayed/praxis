# Present Artifacts

> **Status: accepted semantic source; target runtime projection: `references/artifacts.md`.**

Read this reference when a concrete artifact, artifact set, URL, comparison, or
bundled question surface will be presented through Plannotator.

## Preserve ownership

Make Tangible owns why the artifact exists, its primary judgment, form,
fidelity, construction, intended-medium verification, and useful reaction
export. Plannotator owns only presentation compatibility, the annotation
session, and returning the human reaction.

Do not duplicate Make Tangible's artifact patterns, visual design guidance, or
construction procedure here. The caller still owns the underlying question
and interprets the reaction.

When a visual explainer, comparison, dashboard, PR explainer, design-system
demonstration, SVG diagram, or Review Learning report does not yet exist, the
caller invokes [Make Tangible](../../make-tangible/README.md) before invoking
Plannotator. This reference only presents the supplied verified target and
returns reaction. Make Tangible's accepted pattern designs, visual-system
contract, and CSS asset preserve the construction behavior; Plannotator does
not duplicate it.

## Choose a faithful surface

Use Plannotator when it preserves the judgment the artifact was built to
support. Suitable targets include Markdown and text records, self-contained
HTML, stable captured pages, coherent document folders, and URLs used for
exploratory reaction.

Use the native medium when Plannotator would lose essential behavior from a
live application, terminal or TUI, video, audio, image, external device,
latency-sensitive interaction, or another form. Return that native reaction to
the caller normally. Do not redesign an artifact merely to force it through
the annotation UI.

Rich HTML is one useful carrier, not the default. Plain prose, a diagram, a
small prototype, or another native form is correct when it lowers judgment
cost more effectively.

## Stable and mutable targets

A mutable URL may support Reaction Review:

```text
plannotator annotate <url>
```

It cannot carry a governing approval by name because its content may change.
When its exact content must be gated, capture a stable local snapshot or
translate accepted meaning into the governing record and gate that revision.

Several files may be presented as a folder for one coherent reaction. Keep the
folder bounded, name what belongs to the judgment, and exclude unrelated
material.

## Present comparisons honestly

When comparing alternatives, state the judgment being requested and keep
consequential fidelity comparable. If one candidate is more polished,
complete, realistic, interactive, or detailed, expose that difference and
narrow the conclusion accordingly.

Make selection, rejection, ties, neither, mixed reaction, uncertainty,
annotation, and reframing possible when the surface supports them. The useful
result is the reaction and its rationale, not merely the selected candidate.

Ordering, verbosity, polish, framing, and hidden simulation can bias a
comparison. Control an obvious bias or limit the conclusion to what the
presented surface can establish.

## Annotate the latest response

Use:

```text
plannotator last
```

This is always conversational Reaction Review. Do not emit a preamble before
the command because it may become the message Plannotator targets. Approval in
this surface does not accept a governing record or delivered result. Move any
durable conclusion into its owning record and use the appropriate gate.

## Optional bundled interview surface

Use the native interview UI only for a small group of independent,
well-grounded questions whose combined presentation reduces user effort:

```text
plannotator setup-goal interview <bundle.json-or-> --json
```

Questions whose answers determine later questions remain in Praxis's adaptive,
one-at-a-time Interview loop with recommendations. The transport creates no
Goal workflow, record tree, or planning lifecycle.

## Optional observable-behavior surface

Use the native facts UI only as Reaction Review for a list of observable
behaviors or acceptance criteria:

```text
plannotator setup-goal facts <bundle.json-or-> --json
```

It creates no `Fact` record and never substitutes for the complete owning
record's gate.

The JSON input and output for both bundled surfaces are temporary transport.
Keep them outside the durable record tree, apply useful responses to the
owning loop, and retain them only while an unfinished interaction genuinely
needs to resume.

## Return the reaction

Return the exact target or version, supported judgment, captured reaction,
fidelity limits, implications, and unresolved points. The caller decides what
governing meaning changes and which gate, if any, must repeat.
