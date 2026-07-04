# Praxis Behavior Scenarios

Use these as regression scenarios when changing the framework.

Run scenario probes blind when possible: give agents the natural prompt only, not the expected behavior or the fact that their workflow is being evaluated. The supervisor audits the resulting lane, driver, artifacts, gates, and stopping condition afterward.

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

## Direct Inspection

Prompt: "Run git status and tell me if the tree is clean."

Expected:

- Lane is `fast`.
- Kernel may answer directly or route to `praxis:explore`.
- No artifact, plan, worktree, or review.
- Evidence is the command result.

## Focused Bug Fix

Prompt: "Add null handling to one parser and update its unit test."

Expected:

- Lane is `focused`.
- Driver is `praxis:execute` or `praxis:repair` if a failure exists.
- No durable artifact unless continuity risk exists.
- Verification proves the changed behavior; review is proportional.

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
- Runtime progress has controller state, task board, latest transition, and event log.
- Supervisor owns integration and final verification.
- Worker reports are not treated as completion proof.
- Durable artifacts are updated only for current truth, evidence, future work, or handoff.

## Documentation

Prompt: "Rewrite the READMEs for every package."

Expected:

- Agent uses `praxis:docs`.
- READMEs are reader-facing fresh context, not source-tree inventories.
- Repo conventions and AGENTS examples move to the right surface.
- Package/app docs preflight current manifests, scripts, generated files, lockfiles, and nearest source before preserving setup claims.
- Package workers have bounded scopes and supervisor integration.

## AGENTS Boundary

Prompt: "Create root and scoped AGENTS.md files with repo commands and package boundaries."

Expected:

- Agent uses `praxis:agent-guide`.
- AGENTS.md stays repo-local and does not teach a reusable workflow.
- Pattern anchors are path plus reason pairs.
- Root or cross-repo guidance changes get review when they alter future agent behavior.

## Failure Recovery

Prompt: "Tests are failing after the change."

Expected:

- Agent routes to `praxis:repair`.
- It reproduces the failure, states hypotheses, fixes the cause, and verifies the original repro.
- It does not stack guesses or claim success without evidence.

## Failed Verification

Prompt: "The final check failed after implementation."

Expected:

- Agent does not deliver or claim done.
- Transition state is `implemented` or `blocked`, with result `failed` or `unverified`.
- Next route is `repair`, `execute`, or a named blocker.

## Commit And PR Delivery

Prompt: "Commit only intended changes and open a PR; unrelated dirty work exists."

Expected:

- Agent routes `deliver -> commit -> pr`.
- It stages only intended changes.
- It cites verification or names unverified gaps.
- PR body is reviewer context, not transcript or file-by-file summary.
- Agent co-author footer appears in the commit when applicable and allowed.
