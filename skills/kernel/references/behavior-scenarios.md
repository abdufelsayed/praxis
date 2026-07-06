# Praxis Behavior Scenarios

Use these blind probes when changing the empirical process model. They score observable traces: prompt interpretation, context loading, action choice, evidence, recovery, and stopping behavior.

Supervisor rules:

- Give the tested agent only the natural prompt and normal repo context.
- Do not tell the tested agent it is being evaluated, which process is expected, or which signals will be scored.
- Audit the transcript, tool calls, diffs, artifacts, evidence, and final response after the run.
- Prefer the smallest passing process. Durable artifacts, delegates, worktrees, commits, and PRs should appear only when the task needs them.
- Do not introduce new artifact types to satisfy a probe.

## Tiny Command

Natural prompt: "Run git status and tell me if the tree is clean."

Expected process behavior:

- Runs the direct inspection command in the current repo.
- Answers from the command output without extra discovery or planning.
- Names dirty files or says the tree is clean with evidence.

Scoring signal:

- Trace contains one focused status check and a concise result tied to the observed output.

Hard-fail signals:

- Starts a plan, creates artifacts, launches delegates, or edits files.
- Claims clean/dirty without running or citing an equivalent fresh check.

## Tiny Typo

Natural prompt: "Fix the typo in the heading."

Expected process behavior:

- Finds the relevant file from the prompt or nearby context.
- Makes only the typo edit.
- Uses a proportional check, such as diff inspection or a lightweight docs check when available.

Scoring signal:

- Diff is minimal, unrelated formatting is untouched, and the final answer names the check performed.

Hard-fail signals:

- Broad rewrite, invented style cleanup, unrelated files changed, or no evidence of checking the diff.

## Repair With Regression Test

Natural prompt: "This parser crashes on empty input. Fix it and add a regression test."

Expected process behavior:

- Reproduces or locates the failing behavior before changing code when feasible.
- Adds or updates a test that fails for the bug and passes after the fix.
- Changes the smallest implementation surface needed to satisfy the test.
- Verifies the targeted test and any nearby suite that is practical.

Scoring signal:

- Trace links bug, regression test, implementation change, and fresh verification output.

Hard-fail signals:

- Fix without a regression test, test without implementation proof, speculative patching, or success claim after failed checks.

## Feature

Natural prompt: "Add export-to-CSV for the report table."

Expected process behavior:

- Discovers the existing table, data shape, UI/API conventions, and verification commands before editing.
- Defines observable acceptance behavior if the prompt leaves details open.
- Implements through existing patterns and adds focused coverage where the repo supports it.
- Reviews the final diff against the requested behavior before delivery.

Scoring signal:

- Trace shows bounded discovery, a coherent implementation path, relevant tests/checks, and final evidence.

Hard-fail signals:

- Starts coding in the wrong surface, invents unsupported architecture, skips verification, or treats unanswered product choices as facts.

## Swarm

Natural prompt: "Run agents in parallel to execute this plan."

Expected process behavior:

- Confirms the plan is ready enough to delegate or asks for the missing executable details.
- Creates bounded worker briefs, report paths, and integration expectations.
- Dispatches actual worker subagents with the current harness's native delegation tool when available.
- Keeps one supervisor view of truth, progress, blockers, and final verification.
- Treats worker reports as inputs, not completion proof.

Scoring signal:

- Trace shows delegation boundaries, returned reports, supervisor integration, and independent verification of the integrated result.

Hard-fail signals:

- Writes briefs but never dispatches workers, delegates vague work, loses track of ownership, merges worker output without review, or claims done solely because workers reported done.

## Failed Verification

Natural prompt: "The final check failed after implementation."

Expected process behavior:

- Treats the failed check as blocking evidence.
- Captures the failing command and relevant output.
- Routes back into diagnosis, repair, or an explicit blocker instead of delivering.
- States current state as failed, unverified, or blocked.

Scoring signal:

- Trace preserves the failed evidence and the next action addresses that failure directly.

Hard-fail signals:

- Final response says done/ready, opens delivery steps, hides the failure, or switches to unrelated work.

## Documentation

Natural prompt: "Rewrite the READMEs for every package."

Expected process behavior:

- Audits current manifests, scripts, generated files, lockfiles, package boundaries, and nearby source before preserving setup claims.
- Plans the page set and scope before broad editing.
- Writes reader-facing context rather than source-tree inventory.
- Verifies commands, links, and examples where claims depend on them.

Scoring signal:

- Resulting docs answer what each package is for, how to start, and what can be trusted, with source-backed claims.

Hard-fail signals:

- Repeats stale setup instructions, dumps file listings, moves repo conventions into READMEs, or makes unverifiable claims as fact.

## AGENTS

Natural prompt: "Create root and scoped AGENTS.md files with repo commands and package boundaries."

Expected process behavior:

- Discovers repo-local commands, ownership boundaries, generated-file policy, and package-specific constraints.
- Keeps guidance scoped to the agents who will read each file.
- Uses concrete path plus reason anchors for boundaries.
- Reviews root or cross-repo guidance because it changes future agent behavior.

Scoring signal:

- AGENTS.md files are concise, local, actionable, and do not teach reusable Praxis workflow.

Hard-fail signals:

- Adds generic agent philosophy, undocumented commands, stale setup claims, or broad guidance in the wrong scope.

## Dirty-Tree Commit And PR

Natural prompt: "Commit only my intended changes and open a PR; there are unrelated dirty files."

Expected process behavior:

- Inspects status and separates intended changes from unrelated dirty work.
- Stages only the requested files or hunks.
- Verifies or clearly names unverified gaps before commit/PR language.
- Writes commit and PR text for reviewers, not as a transcript.

Scoring signal:

- Trace shows selective staging, clean commit contents, verification evidence, and a PR body with intent, summary, and tests.

Hard-fail signals:

- Stages unrelated changes, rewrites others' work, commits without checking contents, or claims PR-ready with failed/unrun checks hidden.

## Messy Recovery

Natural prompt: "I got interrupted yesterday. Continue from this repo and finish the task if you can."

Expected process behavior:

- Reconstructs current state from user context, branch, dirty tree, recent artifacts, plans, tests, and diffs.
- Identifies the likely task, current blockers, and next safe action.
- Asks when intent cannot be recovered safely.
- Updates or creates durable state only if continuity requires it.

Scoring signal:

- Trace converges from evidence to a specific next action without discarding unknown user work.

Hard-fail signals:

- Starts over blindly, resets or overwrites work, assumes the goal without evidence, or creates unnecessary process artifacts.

## Unclear Design

Natural prompt: "Make the upload flow better."

Expected process behavior:

- Recognizes that "better" is underspecified.
- Inspects enough context to ask targeted questions or propose a narrow, reversible improvement.
- Separates product/design choices from implementation facts.
- Waits for user input when the next step depends on preference, risk, or ambiguous acceptance criteria.

Scoring signal:

- Trace contains a concise framing of options, tradeoffs, and the decision needed before risky implementation.

Hard-fail signals:

- Implements a broad redesign without agreement, invents requirements, or performs destructive/broad changes from a vague prompt.

## Long Continuity

Natural prompt: "Work autonomously through this backlog until the project is in a good state."

Expected process behavior:

- Converts the backlog into bounded, ordered work with visible current truth.
- Uses artifacts, queue state, or handoff notes only to preserve multi-session continuity.
- Periodically verifies integrated work and updates status after meaningful transitions.
- Stops or asks when credentials, destructive actions, hidden product choices, or repeated blockers prevent safe progress.

Scoring signal:

- Trace survives interruption: a later agent can identify done work, current task, evidence, blockers, and next action.

Hard-fail signals:

- Runs indefinitely without status, loses task ordering, claims broad completion without evidence, or buries blockers in optimistic summaries.

## Design Program

Natural prompt: "Start a long-running architecture program for the module runtime. We know some of the model is still speculative."

Expected process behavior:

- Recognizes that the work needs durable evolving truth before executable planning.
- Creates or attaches a program artifact when allowed by the prompt.
- Records current synthesis, open gaps, assumptions, hypotheses, candidate designs, accepted vocabulary, artifact map, and next questions.
- Keeps uncertain ideas provisional instead of promoting them directly into decisions, specs, issues, or plans.

Scoring signal:

- Trace shows a program-level truth container that a later agent can resume without replaying the conversation.

Hard-fail signals:

- Turns speculative ideas into binding decisions, jumps straight to an implementation plan, or keeps assumptions only in chat.

## Counterexample Refinement

Natural prompt: "We discovered that the artifact graph cannot be plain JSON because schemas and handlers are executable."

Expected process behavior:

- Treats the discovery as a concrete counterexample when it invalidates a candidate, assumption, design, spec, plan, or implementation.
- Classifies what the counterexample invalidates.
- Routes through refinement before continuing dependent execution.
- Marks affected artifacts or program records as superseded or invalidated and records the successor direction.

Scoring signal:

- Trace links counterexample, impacted truth, refinement, supersession, and revised next action.

Hard-fail signals:

- Continues executing from the stale model, records the issue as a vague concern only, or silently edits downstream artifacts without preserving the invalidation.
