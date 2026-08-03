# Setup and Native Commands

> **Status: accepted semantic source; target runtime projection: `references/native-cli.md`.**

Read this reference when checking Plannotator compatibility, diagnosing a
failed interaction, or implementing the Praxis-owned Plannotator skill.
Repository setup itself remains owned by the Setup skill.

## Native surface for selected interactions

Plannotator is Praxis's external CLI for selected native interactions. Check
the required behavior directly; a version string is diagnostic evidence, not
a compatibility gate. A simple standalone conversational Result Acceptance
does not require this CLI.

Verify without opening a browser review:

```text
plannotator --version
plannotator --help
plannotator annotate --help
plannotator review --help
plannotator last --help
plannotator sessions --help
plannotator archive --help
plannotator setup-goal --help
plannotator setup-goal interview --help
plannotator setup-goal facts --help
```

The required surface includes:

- file, folder, HTML, text, and URL annotation;
- `--gate` and `--json`;
- local Git and remote PR or MR review;
- latest-message annotation;
- native sessions and archive history; and
- the optional `setup-goal interview` and `setup-goal facts` UI primitives.

Feature-detect required behavior rather than rejecting a compatible newer
version by version number alone.

## Direct command map

```text
# Reaction Review
plannotator annotate <file-or-folder-or-url>
plannotator last

# Stable record or coherent folder gate
plannotator annotate <record-or-folder> --gate --json

# Human code review
plannotator review --git
plannotator review <PR-or-MR-URL>

# Optional bundled reaction surfaces
plannotator setup-goal interview <bundle.json-or-> --json
plannotator setup-goal facts <bundle.json-or-> --json

# Native history and recovery
plannotator sessions
plannotator archive
```

Praxis invokes these commands directly. Add no wrapper around them.

## Decision transport

Normal gates omit `--require-approval`. A denial is a valid loop result and
must not be converted into an execution failure.

Structured stdout is the ordinary decision transport. Use `--result-file`
only when the host cannot retain stdout reliably. Keep that output transient
and never turn it into a Praxis record or artifact.

Interpret:

- `approved` as only the declared provisional judgment;
- `approved` with `feedback` as non-blocking guidance by default, while
  returning any meaning-changing note to the owner for revision and another
  gate;
- `annotated` with `feedback`, or plaintext annotation feedback, as a message
  the owning loop must address;
- dismissal or closure as no judgment and no continuation; and
- CLI failure as an unpassed interaction.

Do not infer a requested revision from the mere presence of notes on an
approved result. Do not infer approval from empty output except where the
selected native command explicitly defines that output as approval. Preserve
the returned decision and feedback exactly long enough for the owner to
interpret them; do not normalize away distinctions the owner needs.

## Bundled interview transport

The optional interview command consumes this shape:

```json
{
  "stage": "interview",
  "title": "Short human-readable title",
  "goalSlug": "temporary-interaction-slug",
  "questions": [
    {
      "id": "scope",
      "prompt": "What should be in scope?",
      "description": "Optional clarification.",
      "answerMode": "multi-custom",
      "recommendedAnswer": "The caller's supported recommendation.",
      "recommendedOptionIds": ["ui", "server"],
      "options": [
        { "id": "ui", "label": "UI", "description": "Optional detail." },
        { "id": "server", "label": "Server" }
      ],
      "required": true
    }
  ]
}
```

Supported `answerMode` values are `text`, `single`, `multi`, `custom`,
`single-custom`, and `multi-custom`. IDs remain stable across a resumed or
revised interaction. Recommendations belong to Interview or the calling owner;
Plannotator merely transports them.

The returned interview shape is:

```json
{
  "stage": "interview",
  "title": "Short human-readable title",
  "goalSlug": "temporary-interaction-slug",
  "answers": [
    {
      "questionId": "scope",
      "selectedOptionIds": ["ui"],
      "customAnswer": "Optional custom text.",
      "note": "Optional note or request for context.",
      "answer": "The composed human-readable answer.",
      "completed": true
    }
  ]
}
```

`note` and `skipped` may be absent. Selected options or answer text make an
answer completed even when a submitted transport flag was false. A skipped
answer remains skipped only when it has no completed answer.

Capture the exact submitted result before interpreting it. For every returned
answer, preserve its question ID, selected or custom answer, notes, skipped
state, and any uncertainty. A note on a skipped question is intentional
feedback. A skipped required or consequential question without a note returns
to Interview for the smallest necessary follow-up. Questions, uncertainty, or
requests for context inside an answer must be addressed before the caller
treats that answer as settled.

`title` and `goalSlug` are optional transport labels. A `goalSlug` does not
create a Praxis Goal, record, directory, or lifecycle. When a caller supplies
one, generate it only for the temporary interaction. Keep the input and
returned JSON outside the durable record tree and discard them when no
unfinished interaction needs recovery. The command may read a temporary JSON
file or `-` for standard input; choose whichever preserves reliable capture in
the current host.

## Bundled facts transport

The optional facts command consumes this shape:

```json
{
  "stage": "facts",
  "title": "Short human-readable title",
  "goalSlug": "temporary-interaction-slug",
  "facts": [
    {
      "id": "fact-1",
      "text": "One observable behavior or acceptance criterion.",
      "accepted": false,
      "removed": false,
      "comment": "Optional reviewer comment.",
      "recommendedAutomatedVerification": true,
      "automatedVerification": true,
      "previousText": "Optional text from the preceding revision."
    }
  ],
  "showAccepted": false
}
```

`showAccepted` controls whether previously accepted items appear for another
review. It does not remove them from the result. Recommended automated
verification is the default selected state when the caller did not provide a
separate selection.

The returned facts shape is:

```json
{
  "stage": "facts",
  "title": "Short human-readable title",
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

Capture the exact returned result. Preserve each item's stable ID, final text,
comment when present, accepted or removed state, recommended automated
verification, and selected automated verification. Apply edits and removals
to the calling owner's working meaning; do not create a Fact record or a
parallel fact sheet. `factsMarkdown` is a native convenience projection, not a
Praxis record and not a second source of truth.

The returned facts remain in the input bundle's order. A submitted edit may
clear an earlier comment. A non-removed fact cannot have blank text; require an
edit or explicit removal rather than silently dropping it.

When revising an unfinished facts interaction, seed the next bundle from the
previous input and result so accepted items and verification choices are not
reconstructed from memory. Dismissal returns no facts judgment. The complete
Requirements or Issue record still needs its ordinary owner gate.

## Transport conformance

The runtime package is conformant only when its checks prove that:

- every supported interview answer mode is accepted and returned intact;
- question and fact IDs survive edits and resumed interactions;
- notes, skips, edits, removals, and verification selections are not lost;
- dismissal stops without manufacturing a judgment;
- quiet browser sessions are left running; and
- temporary transport never becomes a Praxis record or artifact.

## Session lifecycle

Once a browser session opens, wait for the human to submit, dismiss, or ask to
stop. A quiet foreground command usually means the human is still reading.
Never open a second copy, refresh, terminate, or restart it merely because no
new output appears.

Use `sessions` or `archive` to reopen a native session only for explicit human
request or confirmed recovery. Do not infer approval from session presence or
history.

Do not emit a commentary preamble before `plannotator last`; the preamble may
become the message it targets.

## No harness automation

Praxis installs only the CLI and drives it explicitly. It does not use:

- Codex Stop hooks;
- Claude Code plugins;
- OpenCode plugins;
- Pi extensions;
- `--hook`;
- automatic plan interception; or
- `plannotator improve-context`.

Those paths can duplicate explicit Praxis interactions or inject learned
instructions without reviewed adoption.

If an existing integration can duplicate Praxis-owned gates, Setup identifies
it and recommends disabling it rather than silently changing configuration.

## Failure boundary

If Plannotator is unavailable for a selected interaction, notify the human
with the exact failure and affected judgment, and recommend checking the
installation or invoking Setup to repair it. Stop at the interaction and wait
for the human's choice. No substitute surface counts as a Record Gate, Result
Gate, or Plan-governed human code review.
