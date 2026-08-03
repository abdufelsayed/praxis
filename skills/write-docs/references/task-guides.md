# Task Guidance

Load this reference when the primary reader job is learning or completing an
activity through a tutorial, setup guide, or how-to guide. It supplements the
common Write Docs procedure; it does not choose the reader, grant edit
authority, publish the guide, or continue into another form.

## Choose the task form

Select one form from reader intent:

- A **tutorial** teaches one coherent representative outcome and leaves the
  reader with working behavior and a usable model of the path.
- A **setup guide** establishes one verified ready state from a declared
  starting state and shows what changed and whether it is safe to repeat.
- A **how-to guide** gives an already-oriented reader the shortest complete
  path to one specific result without reteaching the surrounding system.

The feature or implementation area does not determine the form. Name the
reader, assumed knowledge, supported environment and version, prerequisites,
access, required authority, consequential existing state, observable outcome,
and what remains outside the path before writing its first step.

## Lead one complete path

Begin from the real starting state rather than an imaginary pristine install.
Inspect existing configuration or state before an action whose effect depends
on it. Give the smallest representative sequence that honestly reaches the
promised outcome, in the order the reader must act and encounter decisions.
Explain why a tutorial step matters only when that understanding helps the
reader transfer the model; a how-to begins at the action; a setup guide
distinguishes installation, configuration, initialization, migration, and
activation when their effects differ.

Introduce a branch immediately before it changes the reader's action, state,
or result. Keep each branch internally coherent and rejoin only when states
are materially equivalent. Use separate linked guides for materially different
platforms, providers, versions, or workflows instead of interleaving every
variation at every step.

## Prove and recover each transition

After every consequential step, provide the smallest observable checkpoint
that distinguishes the expected state from plausible failure. Say what the
reader should notice: a command result, interface state, response, file shape,
generated value, or visible behavior. Verify the complete sequence, not merely
each command in isolation.

Give immediate recovery for common local mistakes when it keeps the reader on
the same task. Send rare, destructive, urgent, or operationally complex
failure handling to the owning Operations surface and name the condition that
requires it.

Describe replay honestly. State whether a step creates, merges, replaces,
migrates, resets, or destroys state; whether it is safe to repeat; and the safe
resume point after partial completion. Do not imply idempotence when prior
execution, external state, or existing configuration changes the effect.

## Keep lookup details in their owner

Own the sequence and representative options needed for this path. Keep
exhaustive signatures, defaults, fields, constraints, compatibility, and error
catalogs in the stable contract surface that owns them. Verify every command,
flag, field, and representative value used here against that source. Do not
copy an exhaustive interface catalog into a task guide merely to make it
self-contained.

## Verify the task result

Confirm all of the following before returning the guide:

- the selected tutorial, setup, or how-to form matches the reader's intent;
- the declared starting state can enter the first step;
- one complete primary path reaches the promised observable outcome;
- each branch begins at a real decision and rejoins only at an equivalent
  state;
- checkpoints distinguish success, partial completion, and plausible failure;
- resume, replay, and recovery claims match the actual effects; and
- deeper contract or operational details are owned by the surface this guide
  promises to use.

Return the verified task surface and any material gap to Write Docs. This
reference never executes the documented task or silently adds authority.
