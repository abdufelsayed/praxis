# Praxis

Praxis is a lean engineering framework with two operating paths. Direct work routes the immediate question straight to the relevant engineering activity. Unknown-heavy initiatives use Campaign to establish accepted truth and uncertainty, wait, then use manually invoked Evolve to deliver one gated working evolution at a time.

Invoke `using-praxis` when Praxis is requested generally, concerns overlap, or durable state exists. It resolves the governing context, current state, authority, next gate, and forbidden transition.

The canonical Campaign and Evolve state machine, gate semantics, and information-altitude contract live in [`references/control-flow.md`](references/control-flow.md).

## Principles

- Direct answers and clear local changes remain direct.
- Repository rules and the user's latest instruction override Praxis.
- Source and fresh evidence outrank saved prose.
- Assurance rises only when a concrete risk or ownership boundary warrants it.
- Native messages carry coordination; durable artifacts serve named future consumers.
- One artifact owns each kind of state; link instead of copying.
- Delegation uses bounded ownership and supervisor-owned integration.
- Verification proves a named claim and nothing broader.
- Artifact and result gates are mandatory checkpoints; Plannotator is the preferred interface when installed.
- Artifact approval judges work, while explicit user language grants mutation authority.
- Preferences belong in agent memory or standing instructions, not task-state records.

## Composition

Praxis separates concerns that may be active together:

| Layer | Purpose | Activation |
| --- | --- | --- |
| Campaign context | Vision, system model, contracts, references, and uncertainty | Explicitly created; remains until paused or done |
| Engineering activity | The immediate question being answered | Routed directly from the request or current flow state |
| Evolve strategy | Gated vertical working forms delivered one at a time | User invocation only |
| Pair mode | Literal collaboration with user-owned mutation boundaries | User invocation only |
| Orient mode | Guided understanding without added mutation authority | User invocation only |

The initiative path is:

`Campaign direction gate → WAIT → manual Evolve → map gate → authorize E1 → E1 plan gate → bounded execution → result gate → STOP`

Campaign owns vision, domain truth, system boundaries, observable contracts, and uncertainty—not file lists or task order. Evolution maps own working outcomes, learning targets, limitations, and proof—not detailed future designs. Implementation detail begins in the current evolution plan. Pair overrides autonomous mutation authority wherever active but removes no gate.

## Proportional Assurance

Praxis starts with direct ownership: the current agent implements, checks, and inspects ordinary work. Delegation is selected when the user requests agents or isolated context materially improves a bounded outcome. Independent review is selected for a named consequential risk. Task count and available agents do not escalate the workflow.

The full selection contract lives in [`references/assurance.md`](references/assurance.md).

## Agent Roles

Praxis defines six model-free roles: `scout`, `researcher`, `worker`, `reviewer`, `verifier`, and `oracle`. Engineering activities identify the question, roles constrain delegated authority, and domain skills supply expertise. The supervisor remains the default owner and owns routing, planning, integration, judgment, and delivery.

Roles use the host's configured models and native dispatch mechanism. When a named role is unavailable, its contract can be supplied to a generic agent; Praxis never pins a provider, model, or reasoning level. The role contracts and SDD eligibility map live in [`references/roles.md`](references/roles.md).

## Durable Artifacts

Conversation is the default for alignment, worker status, review findings, and reproducible checks. Existing source, Git, and owning plans or issues carry reconstructible execution state. A durable record is written only when a named future consumer needs information those surfaces cannot reconstruct.

Delegated briefs declare either message-only persistence or one exact supervisor-owned promotion path. The paths, lifetime test, dispatch contract, link vocabulary, and evidence format live in [`references/artifacts.md`](references/artifacts.md).

## Public Surface

- `using-praxis`: resolve direct work or the current Campaign-to-Evolve state and authority.
- `campaign`: discover, model, gate, and preserve initiative truth before waiting.
- `evolve`: manually gate the map and deliver one authorized evolution through plan and result gates.
- `pair`: manually pair-program while the user controls every mutation boundary.
- `orient`: manually build guided understanding without changing authority.
- `clarify`: interview the user for missing product intent.
- `design`: resolve unclear requirements, interfaces, architecture, and tradeoffs.
- `spec`: define stable observable behavior and acceptance boundaries.
- `decision`: preserve consequential choices and rationale.
- `plan`: author and gate one proportional executable plan.
- `execute`: run authorized plans through proof and their result gate.
- `issues`: represent and prioritize durable issues and serial queues.
- `handoff`: distill a session into a transfer record for another owner.
- `debug`: reproduce failures and prove root causes.
- `dispatch`: brief and supervise isolated agent work.
- `review`: review bounded work or evaluate review feedback.
- `verify`: match completion claims to current evidence.
- `tdd`: build behavior through a red-green-refactor cycle.
- `docs`: write source-grounded repository documentation.
- `worktree`: create or understand isolated workspaces.
- `commit`: stage and commit one intentional change safely.
- `pr`: create or update reviewer-focused pull requests.
- `safety`: bound destructive or irreversible operations.

Installations may expose names through a namespace such as `praxis:handoff`; the host determines invocation syntax.

## Development Evaluation

The source repository keeps a bounded model-backed artifact-judgment smoke gate plus focused Campaign/Evolve transition scenarios. They test routing, direct ownership, product immutability, persistence, premature planning or mutation, Pair overrides, result review, and the one-evolution stop. They are development infrastructure, never a production runtime.
