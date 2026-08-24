---
name: plannotator
description: Open one exact artifact, plan, result, questionnaire, or code diff in Plannotator for visual human review and return the native reaction.
---

# Plannotator

Plannotator is an interaction surface. The calling workflow owns the question,
meaning, and consequences of the reaction.

## Select the target

Use one existing, complete target:

- **artifact review** for text, Markdown, HTML, URL, file, folder, or the latest
  assistant response;
- **plan or result review** for a substantial proposal or delivered outcome;
- **code review** for a fixed local diff or named remote PR/MR;
- **questionnaire** for a small set of independent, already-grounded decisions;
- **review learning** for an explicitly scoped archive of prior reactions.

Keep dependent interview questions in conversation. Construct and verify a missing
artifact in its owning workflow before opening Plannotator.

State the exact target and revision, the requested human judgment, and what that
judgment does not authorize. Read only the matching reference:

- [artifacts](references/artifacts.md);
- [gates](references/gates.md) for an approval-bearing plan or result;
- [code review](references/code-review.md);
- [review learning](references/review-learning.md);
- [native CLI](references/native-cli.md) for command compatibility, transport,
  recovery, or a failed interaction.

## Run one session

Use the native command described by the selected branch. Use `--tailscale` only
when the requester asks for remote or mobile review and current help confirms the
feature. Keep one active session. Quiet foreground output normally means the
human is still reviewing; wait for submission, dismissal, or a stop request
instead of opening another session.

Use transient result files only when stdout cannot be retained reliably. Do not
install hooks, wrappers, automatic interception, or context-improvement commands.

## Preserve the reaction

Capture the native target, revision, decision, annotations, plaintext feedback,
reference when reliable, transport limits, and unresolved points before
interpreting them.

Approval accepts only the declared target and judgment. Feedback is not approval;
meaning-changing feedback returns to the target's owner. Dismissal or empty
closure supplies no judgment. Command or transport failure leaves the review
unfinished and should route to Setup rather than conversational substitution.

Return the exact reaction and stop. Plannotator approval never implies
implementation, commit, publication, deployment, or continuation.
