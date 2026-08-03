# Delegate

> **Design document — not a runtime skill.** Accepted behavioral contract and target package design; runtime implementation pending.

Delegate coordinates bounded subagent work while the supervisor retains the
human relationship, governing context, judgment, authority, integration, and
final claims. It is primarily a context-routing capability, may reduce monetary
cost, and may reduce elapsed time when independent work exists. It is not a
mandatory worker pipeline, a general instruction to fan work out, or a transfer
of ownership.

## Decide which benefit justifies delegation

Evaluate three benefits separately:

- **Supervisor-context quality:** isolate searches, file reads, logs, test
  output, and discarded paths that would crowd the context needed for
  synthesis and judgment.
- **Total cost:** route bounded work to the cheapest capable model when the
  expected savings survive briefing, correction, integration, and assurance.
- **Elapsed time:** run genuinely independent investigations or mutations
  concurrently when coordination and integration remain cheaper than the time
  saved.

A meaningful improvement in one may justify delegation even when the other two
do not improve. State the actual reason briefly. Do not delegate merely because
a subagent exists, a role name matches, or the supervisor wants to avoid
understanding the work.

Keep quick targeted changes, work requiring frequent human back-and-forth, and
reasoning whose phases depend heavily on the same live context in the main
conversation unless another benefit clearly outweighs the handoff.

## Keep supervision and authority with the main agent

The supervisor owns:

- the human's intent and current Praxis owner;
- accepted Requirements, Evolutions, Issues, Plans, and consequential design
  context;
- decomposition, priorities, architecture, interfaces, and authority;
- integration and interpretation of delegated results;
- human-facing recommendations, gates, and completion claims; and
- the decision to correct, backtrack, escalate, or stop.

A delegate owns only the bounded investigation, implementation, review, or
verification named in its brief. Its message may carry evidence and learning
but never selects work, changes governing truth, accepts a result, or grants
authority.

## Start from fresh isolated context

Use a fresh isolated context and an intentional brief by default. This keeps
the delegate's searches, tool results, and abandoned reasoning outside the
supervisor's context and avoids copying stale or rejected discussion into new
work.

Use a bounded fork only when essential conversational context cannot be
transferred faithfully without losing meaning or spending more effort than the
fork saves. A fork remains a context-cost tradeoff, not a shortcut for writing
a proper task boundary.

Delegation is one level deep by default. A delegate performs its assigned work
itself. If meaningful further decomposition would help, it returns the proposed
split and benefit to the supervisor. Only an explicitly designed exception may
allow nested delegation.

## Write one bounded brief

Push the context that governs judgment and authority:

```text
Delegation Brief
- Outcome
- Accepted Truth and Consequential Context
- Scope and Exclusions
- Authority, Tools, and Safety Boundaries
- Required Behavior or Claims
- Required Proof
- Authoritative Sources and Starting Pointers
- Return and Escalation Conditions
- Requested Result Shape
```

Name authoritative or easily missed sources explicitly. Let the delegate pull
ordinary implementation context, local conventions, dependencies, and
supporting details from the repository as needed. Do not copy an entire Project
bundle, parent transcript, skill philosophy, or downstream workflow into the
brief.

The brief must be sufficient for the delegate to distinguish a local choice
from a consequential unknown. It must also say when the delegate should return
rather than infer.

## Choose the cheapest capable role and model

Choose from the actual work rather than treating role names as stages:

- **Scout** traces current source, ownership, history, and behavior.
- **Researcher** investigates a bounded factual question and synthesizes
  evidence.
- **Worker** produces a bounded implementation or transformation.
- **Reviewer** adversarially examines a fixed target against governing truth.
- **Verifier** tests exact claims with current disconfirming evidence.
- **Oracle** advises on consequential direction, context drift, contradiction,
  or unresolved disagreement.

After choosing a role, read only its richer path in the
[Delegate role reference](references/roles.md). The reference defines stable
responsibility, authority, evidence, and return semantics for all six roles;
runtime profiles separately implement models, tools, permissions, and context
isolation for each supported harness.

Use the cheapest model whose expected quality is sufficient. Escalate when
ambiguity, architectural judgment, blast radius, weak verification, repeated
failure, or likely correction cost makes that route unreliable. A role suggests
a useful starting profile; uncertainty, consequence, and proof determine the
actual model.

Oracle is the supervisor-grade exception, not a routine reviewer or another
stage in Delivery.

## Delegate gray-box implementation only behind an understood boundary

The supervisor may delegate implementation internals when it understands and
retains ownership of:

- the boundary and responsible component;
- observable behavior and failure semantics;
- interfaces and invariants;
- side effects and external dependencies;
- compatibility and exclusions; and
- the proof needed to judge the result.

This is a gray box, not a black box: the supervisor need not retain every
internal line in active context, but it must understand the shape and behavior
well enough to integrate and judge the result.

If implementation exposes a missing or unstable consequential decision, the
delegate investigates only far enough to return the evidence, impact, and
recommended next step. It does not silently settle the decision or expand the
approved Plan.

When a delegated return invalidates governing truth or the active Plan, the
supervisor makes affected authority non-active and signals every affected
mutating delegate to stop at the earliest safe point and make its current state
safe. Each returns its partial state and evidence; the supervisor does not
integrate or perform discretionary cleanup by implication. Truly independent
read-only delegates may continue only when their question does not depend on
the invalidated premise.

## Preserve exact permissions and safety boundaries

Give the delegate only the repository scope, tools, permissions, secrets, and
mutation authority required for its task. Delegation never amplifies or
implicitly transfers the supervisor's broader access.

A fresh isolated context isolates instructions and working narration, not the
filesystem. Before concurrent mutation, inspect whether files, indexes,
generated state, processes, or other resources are shared. Use one active
mutating owner when they may overlap; use separately inspected checkouts when
genuine isolation is needed. Read-only delegates may inspect concurrently only
when they cannot alter shared state. Integrate and verify through the
supervisor's normal authority.

Supervised delegation may project a bounded subset of the supervisor's active
Plan authority to a Worker while the supervisor retains ownership and
integration. The human instruction remains the source; the brief describes the
subset but is not an independent grant. A peer handoff, context-reset handoff,
or returned message carries state and evidence only and never transfers
authority to another main agent.

Destructive, irreversible, production, data-affecting, permission-changing,
secret-handling, cross-project, or external actions require the same explicit
authority and Safety checks they would require in the main thread. A delegate
without that authority returns before the action.

## Run quietly and communicate by exception

The delegate works quietly and normally returns one compact result. It sends an
intermediate message only for:

- a material blocker or missing input;
- a conflict with governing truth or scope;
- a safety or authority concern;
- a supervisor decision that is genuinely required; or
- evidence that should cancel or redirect other work.

Routine status, search narration, successful command logs, and heartbeat
updates remain outside the human-facing conversation.

Use parallel delegates only when their objectives, evidence paths, or mutation
ownership are genuinely independent and the elapsed-time benefit exceeds
coordination and integration cost. Keep dependent reasoning and overlapping
implementation sequential. Delegate remains fully useful with one subagent.

## Return intentional compaction

Return the smallest result from which the supervisor can act honestly. A useful
return covers these meanings:

```text
Delegated Result
- Result
- Exact Evidence and Source Pointers
- Material Findings or Changes
- Verification Performed
- Limitations and Confidence
- Unresolved Questions or Deviations
- Recommended Next Step
```

This is settled semantic content guidance, not a fixed serialized envelope.
Native supervisor messages need no common machine-readable shape. A concrete
harness adapter may encode these meanings when integration requires it without
changing their ownership, authority, or stopping semantics.

Keep raw searches, logs, discarded paths, and working narration isolated unless
they materially affect confidence or the supervisor requests them. Evidence
pointers must be precise enough for targeted reinspection.

A completion report is evidence, not proof. The supervisor inspects the
integrated result, governing boundary, material diff or findings, and decisive
evidence closely enough to make the next claim honestly. It does not replay the
delegate's entire investigation unless risk, inconsistency, or missing evidence
requires it.

## Correct, restart, or return

Resume the same delegate when the objective and governing truth remain valid
and correction is local. Start a fresh delegate, escalate the model, or return
the work to the supervisor when:

- the brief changes materially;
- repeated failure has polluted the delegate's context;
- independent judgment is required;
- the delegate misunderstood the governing problem; or
- correction and integration now cost more than direct supervision.

When authority, Requirements, Formalization, or the Plan is wrong, return the
learning to the exact causal owner. Do not use a new delegate to absorb a
governing mistake lower in the tree.

## Persist truth, not subagent exhaust

Delegation is message-first and transient by default. Preserve a durable result
only when a named future consumer needs it, and promote that result into the
record owned by the relevant Praxis loop.

Subagent transcripts, raw logs, status files, and coordination records are not
durable Project truth merely because the harness stores them.

## Complete and stop

Delegate completes when the bounded result and evidence have returned to the
supervisor, or when an honest blocker or boundary conflict has been reported.
The supervisor owns interpretation and the next action. Delegation itself
authorizes no correction, gate, next Plan, commit, push, merge, deployment, or
external effect.

## Research basis

Anthropic's
[context-engineering guidance](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents)
describes subagents as isolated contexts that may explore extensively and
return distilled summaries. Its
[multi-agent research report](https://www.anthropic.com/engineering/multi-agent-research-system)
shows both the value of independent evidence paths and the coordination
failures caused by vague boundaries and excessive fan-out.

HumanLayer's
[Advanced Context Engineering](https://github.com/humanlayer/advanced-context-engineering-for-coding-agents/blob/main/ace-fca.md)
frames subagents as context control and places human attention at high-leverage
research, planning, and judgment boundaries. Matt Pocock's
[AI Coding for Real Engineers workshop](https://www.youtube.com/watch?v=-QFHIoCo-Ko)
adds fresh-context review, deep-module gray boxes, cheaper implementers, and
stronger reviewers as useful patterns rather than universal stages.

Claude Code's
[subagent guidance](https://code.claude.com/docs/en/sub-agents) distinguishes
self-contained, verbose work from work requiring shared conversational
context, while OpenAI's
[model guidance](https://developers.openai.com/api/docs/guides/latest-model)
supports cost-sensitive routing and parallelism only when work divides cleanly
into independent workstreams.

## Direct dependencies

### Skills

- [Manage Worktree](../manage-worktree/README.md) — decide whether a named
  repository risk needs isolation;
  invoke it only for a named subagent collision or preservation risk. It
  returns a safe current checkout, a prepared isolated worktree, or a blocker;
  Delegate retains task division, supervision, and synthesis.

### Shared references

- [Feedback and Evaluation](../../references/feedback-and-evaluation.md) —
  design independent evidence paths and synthesize conflicting returns.

## Target runtime package

> **Status: accepted target package design; runtime implementation pending.**
> This section is not implementation authority.

### Invocation and host projection

Delegate is model-invoked because any skill may need bounded independent work
when the net context, cost, elapsed-time, or evidence benefit is positive.

```yaml
---
name: delegate
description: "Delegate one bounded question or outcome. Use when isolated context, independent evidence, parallel work, or a cheaper capable agent provides net benefit."
---
```

```yaml
interface:
  display_name: "Delegate"
  short_description: "Assign bounded work without transferring ownership"
  default_prompt: "Use $delegate to assign this bounded work under the stated authority."
policy:
  allow_implicit_invocation: true
```

### Information hierarchy and references

`SKILL.md` keeps benefit selection, supervision, fresh context, bounded brief,
role selection, gray-box limit, authority projection, quiet execution,
intentional compaction, correction or restart, persistence, return, and stopping
inline. Delegation completes when the supervisor has a usable bounded result or
an honest blocker—not when a worker merely reports completion.

| Decision point | Target reference | Load when | Keep inline when | Semantic ownership | Source material | Direct consumers | Gaps |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Role and model path | `references/roles.md` | The bounded work needs a Worker, Researcher, Reviewer, Verifier, Scout, or Oracle role decision. | The host exposes one obvious capable executor. | Delegate | [Delegate Role Paths](references/roles.md) | Delegate | None. |
| Independent evaluation | `../../references/evaluation.md` | Several delegates must pursue distinct evidence paths or their returns conflict. | One delegate performs one contained function. | Cross-skill | [Feedback and Evaluation](../../references/feedback-and-evaluation.md) | Delegate | None. |

The Manage Worktree call is accepted. Delegated effects cannot exceed the
caller's projected authority; integration and human interaction remain with the
supervisor. Host-native delegation tools are used when available, with direct
work as the honest fallback where the task remains feasible. No script, asset,
fixture, template, or required integration is packaged. Target files add only
`references/roles.md` to the required package files.

`SPEC.md` adds cases for negative net benefit, context isolation, independent
review, parallel but coupled work, cheapest capable role, gray-box boundary,
read-only versus mutating authority, worker overreach, exception reporting,
compact return, contradictory delegates, restart versus correction, Worktree
isolation, and supervisor-owned acceptance. No package decision remains
unresolved.
