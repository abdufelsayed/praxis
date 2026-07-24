# Praxis

Praxis is a lean engineering framework for capable coding agents: one loop with optional stations — EXPLORE → DECIDE → CONTRACT → PLAN → EXECUTE → PROVE → DELIVER — where each station's skill loads only when its activity is present. Enter at the first station whose question you cannot already answer and exit when the requested result is proven.

Invoke `using-praxis` when Praxis is requested generally, activities overlap, or durable Praxis state exists; it routes on state first, then activity.

Praxis defines the boundary, durable state, evidence, and stop condition for consequential work. It does not prescribe a universal lifecycle, replace repository judgment, or explain how to be an engineer step by step.

## Principles

- Direct answers and clear local changes remain direct.
- Repository rules and the user's latest instruction override Praxis.
- Source and fresh evidence outrank saved prose.
- Assurance rises only when a concrete risk or ownership boundary warrants it.
- Native messages carry coordination; durable artifacts serve named future consumers.
- One artifact owns each kind of state; link instead of copying.
- Delegation uses bounded ownership and supervisor-owned integration.
- Verification proves a named claim and nothing broader.
- Human gates — plan acceptance, PR review — are mandatory checkpoints with an optional tool.
- Preferences belong in agent memory or standing instructions, not task-state records.

## Proportional Assurance

Praxis starts with direct ownership: the current agent implements, checks, and inspects ordinary work. Delegation is selected when the user requests agents or isolated context materially improves a bounded outcome. Independent review is selected for a named consequential risk. Task count and available agents do not escalate the workflow.

The full selection contract lives in [`references/assurance.md`](references/assurance.md).

## Agent Roles

Praxis defines six model-free roles: `scout`, `researcher`, `worker`, `reviewer`, `verifier`, and `oracle`. SDD stations identify the current engineering question, roles constrain delegated authority, and domain skills supply expertise. The supervisor remains the default owner and owns routing, planning, integration, final judgment, and delivery.

Roles use the host's configured models and native dispatch mechanism. When a named role is unavailable, its contract can be supplied to a generic agent; Praxis never pins a provider, model, or reasoning level. The role contracts and SDD eligibility map live in [`references/roles.md`](references/roles.md).

## Durable Artifacts

Conversation is the default for alignment, worker status, review findings, and reproducible checks. Existing source, Git, and owning plans or issues carry reconstructible execution state. A durable record is written only when a named future consumer needs information those surfaces cannot reconstruct.

Delegated briefs declare either message-only persistence or one exact supervisor-owned promotion path. The paths, lifetime test, dispatch contract, link vocabulary, and evidence format live in [`references/artifacts.md`](references/artifacts.md).

## Skills

- `using-praxis`: route on durable state, then activity, to one current skill.
- `clarify`: interview the user for missing product intent.
- `pair`: pair-program continuously while the user controls every mutation boundary.
- `evolve`: grow broad visions through the smallest complete working forms.
- `design`: resolve unclear requirements, interfaces, architecture, and tradeoffs.
- `spec`: define stable observable behavior and acceptance boundaries.
- `decision`: preserve consequential choices and rationale.
- `plan`: author executable plans and gate their acceptance.
- `execute`: run accepted plans to verified results.
- `issues`: represent and prioritize durable issues and serial queues.
- `campaign`: keep long-running initiatives' direction and uncertainty durable.
- `handoff`: distill a session into a transfer record for another owner.
- `debug`: reproduce failures and prove root causes.
- `dispatch`: brief and supervise isolated agent work.
- `review`: review bounded work or evaluate review feedback.
- `verify`: match completion claims to current evidence.
- `tdd`: build behavior through a red-green-refactor cycle.
- `docs`: write source-grounded product and repository documentation.
- `worktree`: create or understand isolated workspaces.
- `commit`: stage and commit one intentional change safely.
- `pr`: create or update reviewer-focused pull requests.
- `safety`: bound destructive or irreversible operations.

Installations may expose names through a namespace such as `praxis:handoff`; the host determines invocation syntax.

## Development Evaluation

The source repository's model-backed smoke gate evaluates the costly persistence boundary during development: four ephemeral requests are paired with equivalent requests from named future consumers. It checks routing, direct ownership, product immutability, and whether exactly the right durable artifact was written. The eight scenarios are not a Praxis runtime component, and production work never routes through them.
