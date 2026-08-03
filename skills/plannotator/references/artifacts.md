# Present artifacts and bundled surfaces

Load this reference for Reaction Review of a concrete target, comparison,
URL, artifact set, latest response, or temporary bundled question surface.
Plannotator owns only presentation compatibility, the native annotation
session, and the returned reaction. The caller owns why the target exists,
its governing question, fidelity, and interpretation.

## Preserve the target's judgment

Use Plannotator when it preserves the judgment the target was built to enable:
Markdown or text records, self-contained HTML, stable captured pages, bounded
document folders, and URLs for exploratory reaction are suitable. A mutable
URL cannot carry governing approval by name; capture a stable revision before
gating it.

Use the native medium instead when the annotation surface would lose essential
behavior from a live application, terminal or TUI, video, audio, image,
external device, latency-sensitive interaction, or another medium. Return
that native reaction normally. Do not redesign a target merely to force it
through Plannotator. A rich HTML carrier is optional, not a default.

Several files may be one reaction target only when the collection is bounded,
coherent, and its included and excluded material is explicit. The caller
decides the underlying question; Plannotator never creates a new artifact,
record, route, or authority boundary.

## Comparison

Before presenting alternatives, state the decision the human is making. Keep
consequential fidelity comparable and expose differences in polish,
completeness, realism, interactivity, or implementation depth. Label sourced
fact, inference, proposal, simulation, and placeholder content. Preserve
selection, rejection, tie, neither, mixed reaction, uncertainty, annotations,
and rationale when the surface supports them.

Ordering, verbosity, polish, framing, latency, and hidden simulation can bias
a reaction. Control an obvious bias when practical; otherwise disclose it and
narrow the conclusion to what the surface supports. An artificial alternative
is not evidence. If a comparison or accepted diff baseline is unavailable or
unreliable, present the complete target instead of inventing contrast.

## Latest response

Use:

```text
plannotator last
```

This is always conversational Reaction Review. Do not emit a preamble before
the command because it may become the message being reviewed. Its approval
does not accept a governing record or delivered result. Move durable meaning
to the record that owns it and select the appropriate gate separately.

## Bundled interview

Use the native interview UI only for a small set of independent,
already-grounded questions whose combined presentation reduces effort:

```text
plannotator setup-goal interview <bundle.json-or-> --json
```

The transport may use this shape:

```json
{
  "stage": "interview",
  "title": "Short title",
  "goalSlug": "temporary-interaction-slug",
  "questions": [
    {
      "id": "scope",
      "prompt": "What should be in scope?",
      "description": "Optional clarification.",
      "answerMode": "single-custom",
      "recommendedAnswer": "Supported recommendation",
      "recommendedOptionIds": ["ui"],
      "options": [
        {"id": "ui", "label": "UI", "description": "Optional detail."}
      ],
      "required": true
    }
  ]
}
```

Supported answer modes are `text`, `single`, `multi`, `custom`,
`single-custom`, and `multi-custom`. Keep IDs stable across a resumed or
revised interaction. Recommendations belong to the caller; Plannotator only
transports them. The returned answers preserve question ID, selected options,
custom answer, note, skipped state, completion, and uncertainty. A skipped
required or consequential question with no useful note returns to the adaptive
caller for the smallest necessary follow-up. Selected options or answer text
make an answer completed even when a submitted completion flag is false; an
answer remains skipped only when it has no completed answer. A goal slug is a
temporary transport label, not a Praxis Goal, record, directory, or lifecycle.

Capture the complete returned shape before interpreting it:

```json
{
  "stage": "interview",
  "title": "Short title",
  "goalSlug": "temporary-interaction-slug",
  "answers": [
    {
      "questionId": "scope",
      "selectedOptionIds": ["ui"],
      "customAnswer": "Optional custom text.",
      "note": "Optional note or request for context.",
      "answer": "The composed human-readable answer.",
      "completed": true,
      "skipped": false
    }
  ]
}
```

`note` and `skipped` may be absent. Preserve questions, uncertainty, or requests
for context inside an answer until the adaptive caller addresses them.

## Bundled observable behaviors

Use the native facts UI only as Reaction Review for observable behaviors or
acceptance criteria:

```text
plannotator setup-goal facts <bundle.json-or-> --json
```

The transport accepts this complete shape:

```json
{
  "stage": "facts",
  "title": "Short title",
  "goalSlug": "temporary-interaction-slug",
  "facts": [
    {
      "id": "fact-1",
      "text": "One observable behavior.",
      "accepted": false,
      "removed": false,
      "comment": "Optional comment.",
      "recommendedAutomatedVerification": true,
      "automatedVerification": true,
      "previousText": "Earlier wording"
    }
  ],
  "showAccepted": false
}
```

Capture the complete result:

```json
{
  "stage": "facts",
  "title": "Short title",
  "goalSlug": "temporary-interaction-slug",
  "facts": [
    {
      "id": "fact-1",
      "text": "The final edited text.",
      "accepted": true,
      "removed": false,
      "comment": "Optional reviewer comment.",
      "automatedVerification": true,
      "recommendedAutomatedVerification": true
    }
  ],
  "factsMarkdown": "# Facts\n\n- The final edited text."
}
```

`showAccepted` controls display only. The returned item keeps its stable ID,
final text, comment, accepted or removed state, recommended verification, and
selected verification. `factsMarkdown` is a convenience projection, not a
second source of truth. A non-removed item cannot be blank; require an edit or
explicit removal. Preserve the input order, and allow a submitted edit to clear
an earlier comment rather than reconstructing it. Edits and removals update the
owning working meaning. They create no Fact record, fact sheet, Goal workflow,
or substitute gate.

Temporary interview and facts JSON stays outside the durable record tree. Seed
a resumed bundle from the prior input and result so IDs, accepted choices, and
recommended and selected verification choices survive. Discard it once no
unfinished interaction needs recovery.

## Return

Return the exact target or version, supported reaction, annotations, fidelity
limits, implications, unresolved points, and any reliable native reference.
The caller decides whether governing meaning changed, whether a gate repeats,
and what to persist. The interaction supplies evidence; it never supplies
authority or continuation.
