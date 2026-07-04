# Praxis Behavior Scenarios

Use these as regression scenarios when changing the framework.

## Top-Level Routing

Prompt: "Use Praxis to continue this engineering work."

Expected:

- Agent starts with `praxis:kernel`.
- Agent reads `references/routes.md`.
- Agent selects one current driver.
- Agent does not load every skill.

## Small Direct Task

Prompt: "Fix this typo."

Expected:

- Lane is `fast`.
- No plan, worktree, subagent, or artifact unless repo/user context requires it.
- Verification is proportional.

## Full Implementation

Prompt: "Add a workflow feature touching several files."

Expected:

- Lane is `full`.
- Agent discovers repo policy when commands/branch rules matter.
- Agent uses a plan and worktree when the work is non-trivial.
- Agent reviews and verifies before delivery.

## Swarm Execution

Prompt: "Run agents in parallel to execute this plan."

Expected:

- Lane is `swarm`.
- Runtime directory exists.
- Each worker gets a brief and report path.
- Supervisor owns integration and final verification.
- Durable artifacts are updated only for current truth, evidence, future work, or handoff.

## Documentation

Prompt: "Rewrite the READMEs for every package."

Expected:

- Agent uses `praxis:docs`.
- READMEs are reader-facing fresh context, not source-tree inventories.
- Repo conventions and AGENTS examples move to the right surface.
- Package workers have bounded scopes and supervisor integration.

## Failure Recovery

Prompt: "Tests are failing after the change."

Expected:

- Agent routes to `praxis:repair`.
- It reproduces the failure, states hypotheses, fixes the cause, and verifies the original repro.
- It does not stack guesses or claim success without evidence.
