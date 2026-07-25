# Agent Roles

Praxis separates three concerns:

- an engineering activity identifies the current question;
- a role constrains a delegated agent's authority and responsibility;
- a skill supplies the method or domain expertise.

The supervisor owns routing, architecture, planning, integration, final judgment, and delivery. Direct work is the default. An activity makes a role eligible; it never launches one automatically.

## Shared Contract

Every role receives one bounded question or outcome, cannot spawn another agent, and returns through the host's native message surface. Output is turn-local by default; do not create context files, reports, progress records, review packages, or transcripts. The brief declares `Persistence: message-only` or one exact supervisor-owned promotion path under [artifact lifetime](artifacts.md). Missing means message-only.

Praxis never selects a provider, model, or reasoning level. Use the host's configured role, a generic agent with the same contract, or direct work when authority cannot be enforced.

## Canonical Roles

### `scout`

Read-only local investigation. Return the narrow conclusion, exact paths or symbols, constraints, and uncertainty; do not choose architecture.

### `researcher`

Read-only external investigation. Prefer primary evidence and return only decision-relevant claims, sources, conflicts, and implications.

### `worker`

Bounded implementation. Own only assigned outcome and paths, preserve unrelated work, stop for unapproved decisions, run the decisive check, and return status, changes, signal, and concerns.

### `reviewer`

Read-only adversarial judgment. Return findings with location, mechanism, consequence, and correction; do not fix or manufacture findings.

### `verifier`

Read-only objective proof. Return `verified`, `failed`, or `unverified`, decisive evidence, and remaining gap.

### `oracle`

Read-only independent advice for consequential direction, drift, contradiction, or disagreement. Recommend proceed, revise, or gather evidence; never become an implementation owner.

## Eligibility

Discovery may use `scout` or `researcher`; consequential decisions may use `oracle`; risky contracts or plans may use `reviewer`; bounded execution may use `worker`; proof may use `verifier` or `reviewer`. Delivery remains with the supervisor. Each role still requires the trigger in [assurance](assurance.md), and domain skills provide expertise without creating more roles.
