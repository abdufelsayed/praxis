---
name: plannotator
description: "Present one exact target through Plannotator. Use when Praxis needs a native Reaction Review, Record or Result Gate, complete fixed-diff code review, scoped Review Learning, or a directly requested Plannotator utility; leave simple conversational acceptance and missing-artifact construction to their owners."
---

# Plannotator

Present one exact target through the native Plannotator CLI and return the
human's reaction to the owner. Plannotator owns the interaction surface and
transport; the caller owns the question, governing meaning, authority,
interpretation, transition, and stopping.

## 1. Establish the interaction

Start only when the caller or human has selected a Plannotator-native concern
and either an exact target already exists or the selected Review Learning
interaction has an explicit archive scope. Choose exactly one interaction:

- **Reaction Review** for annotation, comparison, a file or folder, text,
  HTML, a URL, or the latest assistant response;
- **Record Gate** for one complete governing record or coherent Issue batch;
- **Result Gate** for a delivered result, Evolution Acceptance, or composed
  Project or Initiative closure that needs a native gate;
- **Code Review** for the complete fixed local diff or one named remote pull or
  merge request;
- **Review Learning** for a human-requested or owner-justified scoped analysis
  of native review history; or
- **Bundled interview or facts** for the small independent question or
  observable-behavior surface the caller already grounded.

Simple standalone Result Acceptance stays conversational when no native
surface is useful. A missing artifact, visual explainer, or report must be
constructed and verified by its owner before Plannotator is called. Do not
create a target, choose a route, or open a substitute surface here. The entry
criterion is met only when the interaction kind, exact target or archive
scope, and caller are unambiguous.

Before opening a gate or review, state in the caller's conversation:

1. the interaction kind;
2. the exact target, revision, or explicit archive scope;
3. the human judgment being requested; and
4. what that judgment does not authorize.

For a governing gate, the target must be a complete stable revision or a
bounded coherent collection. A mutable URL supports exploratory reaction only.
For a code review, confirm the complete intended diff and the named remote
revision when applicable. If the target, scope, or consequence is incomplete,
return the missing boundary and stop before invoking the CLI.

## 2. Load only the selected path

Keep selection, ownership, session control, transport, interpretation, and
return inline. Load only the reference for the branch being run:

- Load [`gates.md`](references/gates.md) for a Record or Result Gate.
- Load [`artifacts.md`](references/artifacts.md) for an artifact, comparison,
  URL, latest response, bundled interview, or facts surface.
- Load [`code-review.md`](references/code-review.md) for a local or remote
  fixed-diff review.
- Load [`review-learning.md`](references/review-learning.md) and the shared
  [`evaluation.md`](../../references/evaluation.md) for Review Learning.
- Load [`native-cli.md`](references/native-cli.md) when command compatibility,
  structured transport, archive recovery, or a failed interaction must be
  checked. A characterized normal command needs no reload.

The loaded reference supplies branch-specific command and evidence rules. It
does not choose entry, grant authority, call another skill, decide the
meaning of feedback, or continue the caller's work. Do not follow reference
chains.

## 3. Open one native session

Use the native command that matches the selected kind:

```text
# Reaction Review
plannotator annotate <file-or-folder-or-url>
plannotator last

# Record or Result Gate
plannotator annotate <stable-record-or-folder> --gate --json

# Code Review
plannotator review --git
plannotator review <PR-or-MR-URL>

# Optional bundled surfaces
plannotator setup-goal interview <bundle.json-or-> --json
plannotator setup-goal facts <bundle.json-or-> --json
```

Run `plannotator last` without a commentary preamble because the preamble can
become the response being reviewed. Do not add `--require-approval` to the
normal gate path: denial is a useful human result, not a command failure.
Use transient result-file transport only when the host cannot retain stdout
reliably. Keep temporary JSON outside the durable record tree.

Keep one active browser session. A quiet foreground process normally means the
human is still reading; wait for submission, annotation, dismissal, or a
request to stop. Never open a second session, refresh, terminate, or restart
because output is quiet. Use native `sessions` or `archive` recovery only on
explicit human request or confirmed recovery need. Do not use hooks, wrappers,
host plugins, automatic plan interception, or automatic context-improvement
commands.

This step completes only when exactly one native session has ended with a
captured structured result, captured feedback, dismissal, closure, or an
explicit tool failure, while the target and active-session identity remain
known.

## 4. Interpret without manufacturing authority

Capture the exact native response before interpreting it. Preserve the target
or revision, interaction kind, decision, annotations or feedback, native
reference when reliable, fidelity or transport limits, and unresolved points.

- `approved` without feedback accepts only the declared provisional judgment.
- `approved` with feedback carries notes as non-blocking by default. If a note
  changes governing meaning, report that conflict to the causal owner and
  repeat its gate; do not silently revise or silently ignore it.
- `annotated` or plaintext feedback is a reaction for the owner to address,
  not acceptance and not a transport failure.
- `dismissed`, an empty closed session, or equivalent closure supplies no
  judgment and starts no continuation.
- A command or transport failure leaves the interaction unpassed. Report the
  exact failure and affected judgment, recommend checking Setup, and stop;
  never substitute a conversational approval.

For bundled interview results, retain every question ID, selected or custom
answer, note, skipped state, and uncertainty. A skipped required or
consequential question without useful context returns to the caller's
adaptive Interview procedure. For bundled facts, retain every stable ID,
edited text, comment, accepted or removed state, and verification choice; a
non-removed fact cannot be blank. These temporary results update the owning
working meaning and create no Fact or Goal record.

Review Learning must retain its explicit scope, inventory limits, native
provenance, recurring evidence, trajectories, exceptions, uncertainty, and
the smallest proposed instruction change. It proposes a reviewed diff; it
never adopts instructions or injects context automatically.

## 5. Return and stop

Return a compact message to the caller containing:

```text
Plannotator Result {
  interaction_kind,
  exact_target_or_scope,
  native_decision_or_closure,
  annotations_or_feedback,
  native_reference,
  fidelity_or_transport_limits,
  unresolved_questions,
}
```

State explicitly that the caller retains interpretation, governing records,
revision causality, authority, forward choice, result acceptance, and
stopping. Approval is never Implementation Authorization, commit authority,
publication, deployment, cleanup, another Plan or Evolution, or any other
next activity. Return to the narrowest causal owner when feedback changes
meaning; otherwise return the supported reaction and one recommendation when
evidence warrants it. If no honest recommendation is supported, return the
missing evidence or human judgment instead.

The completion criterion is exhaustive: the return identifies the exact
interaction and version or scope, preserves every material human signal and
limitation, distinguishes approval, feedback, dismissal, closure, and tool
failure, makes no authority claim, and performs no adjacent work. Stop after
the return.
