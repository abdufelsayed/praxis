# Task Guidance

> **Status: accepted semantic source; target runtime projection: `references/task-guides.md`.**

> Load this reference when the primary reader job is learning or completing an
> activity through a tutorial, setup guide, or how-to guide.

## Choose the task form from reader intent

Task Guidance serves three related reader needs:

- **Tutorial:** teach through one coherent representative outcome. The reader
  should finish with working behavior and a usable mental model of the path.
- **Setup guide:** establish one verified ready state from a declared starting
  state. The reader should know what changed and whether setup can be safely
  resumed or repeated.
- **How-to guide:** give an already-oriented reader the shortest complete path
  to one specific result without reteaching the surrounding system.

Select the form from the reader's goal and starting knowledge rather than the
feature being documented. Keep one primary form per document. Link a separate
Understanding or Contract Reference surface when the task would otherwise
become an architecture lesson or exhaustive lookup catalog.

## Fix the starting state and outcome

Before writing the sequence, establish:

- the intended reader and assumed knowledge;
- the supported environment and version;
- prerequisites, access, and required authority;
- consequential existing state;
- the observable result that completes the task; and
- what remains deliberately outside this path.

Do not begin from an imaginary pristine environment when real readers are
likely to have partial configuration, earlier versions, or local state. Check
existing state before a step whose effect depends on it.

## Lead with one complete primary path

Give the smallest representative path that honestly reaches the promised
outcome. Preserve the order in which the reader must act and encounter
decisions. Include only the commands, options, and explanation needed to keep
that path correct and understandable.

For a tutorial, use one realistic coherent example and explain why a step
matters when that understanding helps the reader transfer the model. Avoid
turning the journey into a survey of every feature.

For a setup guide, establish the usable ready state and show how to recognize
it. Distinguish installation from configuration, initialization, migration,
and activation when those have different effects.

For a how-to guide, begin at the action and assume the declared knowledge.
Avoid generic introductions or conceptual material that does not change the
reader's choices.

## Branch only where the path changes

Introduce a choice immediately before it changes the reader's actions, state,
or result. Keep each branch internally coherent, with enough context that the
reader does not have to merge alternating instructions mentally.

Rejoin branches only after their states are materially equivalent. When
platforms, providers, versions, or workflows require substantially different
sequences, use separate linked guides and keep shared prerequisites and outcome
semantics in one owning surface.

Do not interleave every supported variation at every step. One reader should
be able to follow one path without repeatedly filtering instructions meant for
someone else.

## Prove meaningful state transitions

After a consequential step, show the smallest observable checkpoint capable of
proving the expected state. A checkpoint may be a command result, interface
state, request response, file shape, generated value, or visible behavior.
Explain what the reader should notice rather than pasting unexplained output.

Verify the complete journey from the declared starting state. Individually
valid commands do not prove the guide when their combined sequence cannot
produce the promised outcome.

Give immediate recovery for common local mistakes when it keeps the reader on
the same task. Move rare, destructive, urgent, or operationally complex failure
handling to an Operations guide and state the exact condition that should send
the reader there.

## Make replay behavior honest

Prefer safely repeatable steps when the product supports them. Otherwise state
whether a step creates, merges, replaces, migrates, resets, or destroys state.
Name the safe resume point after partial completion and any prerequisite for
retrying.

Never imply that rerunning the guide is safe when its effect depends on prior
execution, external state, or an existing configuration. Destructive or
irreversible effects retain the common Write Docs safety and authority rules.

## Keep exhaustive interface facts in Contract Reference

Task Guidance owns the sequence and the representative choices needed to
complete it. Include only the flags, fields, configuration, endpoints, and
syntax used by that coherent path.

Link the owning Contract Reference for complete signatures, defaults,
compatibility, constraints, variants, and error catalogs. Verify every
representative value against that authoritative contract. Do not copy an
exhaustive interface catalog into a task guide merely to make the page
self-contained.

## Verify the form-specific result

In addition to Write Docs' common reader-journey verification, check that:

- the selected tutorial, setup, or how-to form matches the reader's intent;
- the declared starting state can actually enter the first step;
- one complete primary path reaches the promised observable outcome;
- branches begin at real decisions and rejoin only at equivalent states;
- checkpoints can distinguish success from plausible failure;
- resume, replay, and recovery claims match the actual effects; and
- linked Contract Reference and Operations surfaces own the deeper details
  they promise.

Return the verified guide and any material gap to Write Docs. This reference
does not own the documentation request, broaden mutation authority, publish the
result, or continue into another documentation form.
