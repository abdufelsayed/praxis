# Praxis

Praxis is a set of engineering techniques for coding agents. Public skill names describe the activity they guide, and each skill should be loaded only when that activity is present.

Use `using-praxis` when the route is unclear or the user asks to use Praxis generally. Invoke a narrower skill directly when the task already names the activity. The host determines the exact invocation syntax.

## Principles

- Direct answers and tiny changes need no plan, state file, worktree, review, or subagent by default.
- A skill should explain concrete choices and failure cases without forcing every task through the same sequence.
- Repository rules and the user's latest instruction override Praxis.
- Source and fresh evidence outrank saved notes.
- Preserved context is optional and uses one living record only when work must survive.
- Durable artifacts belong to the skill that owns their meaning; no artifact is required merely because another workflow exists.
- Delegation uses the host's dispatch mechanism and gives each worker a bounded responsibility.
- Verification proves a named claim and does not certify unrelated behavior.

## Skills

- `using-praxis`: choose a relevant technique without constructing a lifecycle.
- `design`: resolve requirements, interfaces, architecture, and tradeoffs.
- `spec`: define durable observable behavior and acceptance boundaries.
- `record-decision`: preserve consequential choices and their rationale.
- `plan`: create executable implementation handoffs.
- `execute-plan`: carry out accepted plans one checked task at a time.
- `manage-issues`: create, split, triage, and update durable work items.
- `run-queue`: process several ready items serially.
- `coordinate-program`: maintain direction across long-running workstreams.
- `preserve-context`: keep one optional recovery record.
- `handoff`: transfer active work to another owner with current evidence.
- `debug`: reproduce failures and prove root causes.
- `dispatch-subagents`: brief and supervise isolated agent work.
- `review`: perform adversarial read-only review.
- `address-review`: evaluate feedback before editing.
- `verify`: match claims to current evidence.
- `docs`: write source-grounded product and repository docs.
- `worktree`: create or understand isolated workspaces.
- `commit`: stage and commit one intentional change safely.
- `pr`: create or update reviewer-focused pull requests.
- `safety`: bound destructive or irreversible operations.
