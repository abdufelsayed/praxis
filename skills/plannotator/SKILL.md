---
name: plannotator
description: "Present one exact target through Plannotator. Use when Praxis needs a native Reaction Review, Record or Result Gate, complete fixed-diff code review, scoped Review Learning, or a directly requested Plannotator utility; leave simple conversational acceptance and missing-artifact construction to their owners."
---

# Plannotator

Load [Praxis Control](../../references/control.md).

Plannotator owns one interaction surface and its transport. The caller owns
the question, meaning, interpretation, transition, and authority.

## Select one existing target

Start only for one selected native interaction with an exact target or an
explicit Review Learning archive scope:

- **Reaction Review** for annotation, comparison, a file, folder, text, HTML,
  URL, or latest assistant response;
- **Record Gate** for one complete governing record or coherent Issue batch;
- **Result Gate** for a delivered result or composed closure;
- **Code Review** for the complete fixed local diff or one named remote PR/MR;
- **Review Learning** for explicitly scoped native review history;
- **Bundled interview or facts** for a small, already-grounded surface.

Simple acceptance stays conversational when no native surface helps. A missing
artifact must be constructed and verified by its owner. Before opening a
session, state the interaction, exact target and revision or scope, requested
human judgment, and what that judgment does not authorize. Return an incomplete
target or consequence without invoking the CLI.

Load only the selected branch:

- [gates](references/gates.md) for Record or Result Gate;
- [artifacts](references/artifacts.md) for Reaction Review or bundled surfaces;
- [code review](references/code-review.md) for a fixed diff;
- [review learning](references/review-learning.md) and shared
  [evaluation guidance](../../references/evaluation.md) for Review Learning;
- [native CLI](references/native-cli.md) when compatibility, structured
  transport, recovery, or a failed interaction must be checked.

## Run one native session

Use the command specified by the selected branch. `plannotator last` gets no
commentary preamble because that could become the reviewed response. Do not
add `--require-approval` to the normal gate path: denial is a human result, not
a command failure. Use transient result files only when stdout cannot be
retained reliably, outside the durable record tree.

Keep one active browser session. Quiet foreground output normally means the
human is still reading; wait for submission, annotation, dismissal, or a stop
request. Never open a second session, refresh, terminate, or restart merely
because it is quiet. Use session or archive recovery only on explicit request
or confirmed need. Do not install hooks, wrappers, automatic interception, or
context-improvement commands.

## Preserve the reaction

Capture the exact native response before interpretation, including target,
revision, interaction, decision, annotations, native reference when reliable,
transport limits, and unresolved points.

- Approval accepts only the declared judgment. Feedback remains feedback;
  meaning-changing feedback returns to the causal owner and repeats its gate.
- Annotation or plaintext feedback is not acceptance.
- Dismissal or empty closure supplies no judgment and starts nothing.
- Command or transport failure leaves the interaction unpassed; report it and
  recommend Setup rather than substituting conversational approval.

For bundled interviews or facts, preserve every stable ID, answer or edit,
note, skipped or removed state, uncertainty, and verification choice. Review
Learning preserves its scope, inventory limits, provenance, recurring
evidence, exceptions, uncertainty, and smallest proposed instruction change;
it never adopts the change automatically.

Return the interaction and exact target, native decision or closure, complete
feedback, reliable reference, limits, and unresolved questions. Approval is
not Implementation Authorization, commit, publication, deployment, or
continuation. Stop after returning the reaction.
