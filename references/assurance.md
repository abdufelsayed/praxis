# Assurance

Use the lightest assurance that can expose a meaningful error in the current work. Task count, plan length, and available agents do not raise assurance by themselves.

## Direct

The current agent owns implementation, focused checks, diff inspection, and the result. This is the default for clear work, including ordinary tasks inside an accepted plan.

Completion: the requested behavior exists, its decisive check has the expected signal, and the inspected diff contains only intended work.

## Delegated

Delegate when the user requests agents, parallel read-only questions are genuinely independent, or isolated context gives one bounded outcome a clear advantage. Select the narrow role from [agent roles](roles.md): `scout` for local evidence, `researcher` for external evidence, or `worker` for mutation. Give it one outcome and keep integration with the supervisor.

Delegation does not imply independent review. The supervisor inspects the returned work and chooses the next assurance level from the actual risk.

Completion: the supervisor has inspected the worker's changes or cited evidence, resolved its concerns, and verified the integrated result.

## Independent

Add a fresh `reviewer` when a named risk benefits from adversarial judgment: security, destructive data behavior, concurrency, migration, public compatibility, subtle cross-component integration, or an explicit user requirement. Use `verifier` when fresh isolated execution materially strengthens objective proof. One role handles the whole named question; add another only for a distinct question requiring different evidence or expertise.

Completion: every blocking finding is corrected and checked, or surfaced as an unresolved blocker.

Use `oracle` outside the assurance ladder when a consequential decision, context drift, or unresolved disagreement needs independent advice. It recommends; the supervisor still decides.

## Communication

Use native messages for briefs, status, findings, and decisions. Return only information that changes the supervisor's next action: status, changed paths or commits, the decisive check and signal, and unresolved concerns. Diffs, Git history, and command output carry reconstructible detail.

Use the host's wait or monitoring primitive for running work. At a coherent boundary, continue a degraded session from current source, Git, and the owning plan. A handoff is reserved for a user-requested transfer.
