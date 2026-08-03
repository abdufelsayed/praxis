# Research

> **Design document — not a runtime skill.** Accepted behavioral contract; `SKILL.md` implementation pending.

## What it does

Research answers one bounded factual question by testing a claim against the
strongest evidence available in the actual territory. It replaces link
collection and confident synthesis with current source, primary evidence,
proportionate probes, explicit uncertainty, and a compact answer another agent
can use.

Its leading idea is **test the claim where it is true or false**. A library's
general documentation may matter less than the installed version and local
adapter. Several articles repeating one assertion remain weaker than an
authoritative standard and a runtime probe.

## When to reach for it

Use Research when progress depends on a discoverable fact:

- how current code or a dependency behaves;
- what repository history or an earlier implementation establishes;
- what an API, standard, law, paper, or authoritative document says;
- whether an assumption is feasible in the actual environment;
- how materially different external approaches compare; or
- whether evidence supports a claim that another Praxis owner must use.

Invoke [Interview](../interview/README.md) for intent, preference, priority,
tolerance, or judgment that only the human can provide. Invoke
[Make Tangible](../make-tangible/README.md) when the evidence is available but
comparison, navigation, simulation, or annotation is needed to understand it.
Research retains the factual question and interpretation of each return.

## The evidence loop

Research begins by stating the factual question, why it matters, the relevant
territory, required freshness, consequence of being wrong, and what evidence
would be sufficient.

It then chooses the smallest useful evidence path. Current repository source,
installed versions, runtime behavior, and primary documentation closest to the
territory take priority. Consequential claims or conflicting sources justify
triangulation; trivial stable facts do not need ceremonial corroboration.

For a consequential claim—or one the caller already favors—Research names what
would make the answer false and tests the cheapest decisive disconfirming path.
Confirming that an auth library advertises passkeys is insufficient when the
installed version, required recovery semantics, or actual browser target could
invalidate the decision.

Research tests the claim rather than accumulating URLs. It updates its search
when evidence changes the question and reports adjacent findings only when they
invalidate the premise, materially change the answer, or reveal a consequential
blind spot.

When human or caller feedback changes the claim, territory, or consequence,
Research explicitly rebinds the question. It carries forward only evidence that
still applies and investigates the smallest missing surface; the earlier answer
remains scoped evidence rather than authority over the revised question.

When the premise is false, Research says so directly. It identifies the
evidence, the owning assumption affected, and a corrected question or return
path instead of forcing an answer inside the original framing.

## Three evidence methods

The runtime skill may select or combine three conditional methods:

### Codebase, dependency, and history investigation

Inspect current source, configuration, dependency versions, generated
interfaces, tests, runtime wiring, and relevant version-control history.
Current behavior outranks stale plans, comments, and generic upstream
documentation.

When the factual question concerns repeated syntax or repository structure,
Research uses the narrowest available repository inspection method. Its
matches are scoped source evidence rather than proof of symbol identity,
runtime behavior, or architectural ownership.

Load
[Investigating Codebases](references/investigating-codebases.md)
when this method needs richer tracing, ownership, history, convention, or
negative-search guidance.

### External primary-source and literature research

Prefer official documentation, standards, statutes, research papers, original
datasets, and first-party technical reports. Record freshness and scope, and
use secondary sources to discover or challenge primary evidence rather than
letting repetition masquerade as corroboration.

Load
[Researching External Evidence](references/researching-external-evidence.md)
when authority, version, freshness, conflicting sources, or search coverage is
consequential.

### Runtime and empirical probing

Run the smallest disposable probe capable of distinguishing competing claims.
Record the relevant environment and interpretation so another agent can rerun
it. Match evidence diversity to the breadth of the claim. A single exact
reproduction may support a narrow behavior claim; a broader empirical
conclusion needs a proportionate independent or perturbed case capable of
exposing overfitting. Read-only checks and disposable local harnesses are
normal; consequential experiments retain their explicit authority boundary.

Load
[Running Empirical Probes](references/running-empirical-probes.md)
when the experiment needs explicit discrimination, fidelity, reproducibility,
or qualified negative-result guidance.

The common question, synthesis, authority, return, and stopping rules remain in
the main skill. The references deepen selected methods and are not separate
public skills.

## Evidence quality and reproducibility

Research visibly separates:

- direct evidence;
- inference from evidence;
- conflicting evidence; and
- unresolved uncertainty.

Every consequential finding is traceable enough for another agent to inspect or
rerun it: a source path and revision, installed version, authoritative URL and
relevant section, or probe and environment. The amount of provenance remains
proportionate to the consequence.

A negative result states the surface inspected and why the method should have
exposed the behavior if it existed. A missing text match does not prove missing
behavior when wrappers, generated code, middleware, or framework conventions
remain outside the search.

When strong evidence conflicts, Research investigates whether version,
environment, configuration, semantics, or another condition explains the
difference. It returns the conditional boundary when found. If the smallest
useful probe cannot resolve the conflict, both observations and the uncertainty
remain visible.

## What it returns

Research leads with the bounded answer, followed by:

- decisive evidence;
- source, version, environment, and freshness scope;
- conflicts, limitations, and unresolved uncertainty;
- implications for the caller's question; and
- a recommended next step when the evidence supports one, otherwise the missing
  evidence or human judgment that prevents an honest recommendation.

Return `unverified` or explicit conflicting evidence when the bounded
investigation cannot support an answer. Never let confident wording substitute
for epistemic status.

It does not dump the search process or preserve a research diary by default.
Create a durable research report only when a named future consumer needs to
audit, extend, reproduce, or compare the work.

## It is working when

- The question and stopping condition are explicit and bounded.
- Evidence comes from the actual territory and strongest available sources.
- Consequential or favored claims receive a cheap decisive falsification path.
- Repeated secondary claims are not mistaken for independent corroboration.
- Negative findings expose search coverage and material blind spots.
- Adjacent findings appear only when they change the answer or premise.
- False premises are corrected rather than accommodated.
- Revised questions retain only evidence that remains in scope.
- Conflicting strong evidence is resolved through its conditions or returned
  honestly as conflict.
- Evidence diversity is proportionate to the breadth of the empirical claim.
- Evidence, inference, conflict, and uncertainty remain distinguishable.
- Consequential findings are reproducible.
- The return answers the caller's question without making it redo the
  synthesis.
- Research stops at sufficient evidence or honest irresolution rather than
  artificial certainty.

## Authority, delegation, and composition

Research may inspect and run proportionate read-only checks or disposable local
probes. Product changes, data mutation, production calls, costly external
actions, and consequential experiments still require their ordinary explicit
authority.

Research defines the investigation method, not the executor. The caller may run
it directly or invoke [Delegate](../delegate/README.md) when isolating searches
and source material would preserve supervisor context, a cheaper capable
Researcher would reduce total cost, or independent evidence paths would reduce
elapsed time after briefing and synthesis are counted.

The delegated Research brief fixes the bounded factual question, source
expectations, evidence standard, scope, exclusions, and return shape. The
Researcher returns the answer first with exact evidence pointers, conflict,
limitations, and unresolved uncertainty. Raw searches, discarded paths, and
source exhaust remain isolated. The caller still interprets the finding and
owns every governing update or human interaction.

Research may invoke [Make Tangible](../make-tangible/README.md) to render
comparisons, system paths, source relationships, or annotated evidence.
Research still owns the factual claim; Make Tangible owns only the reaction
surface. When human reaction to that surface can change the research
interpretation, Make Tangible chooses a faithful
[Plannotator](../plannotator/README.md) Reaction Review or the artifact's
native medium and returns the scoped reaction and fidelity limits. Research
then interprets what the reaction changes in the factual answer.

## Where it fits

Research is an agent-startable supporting skill available to every Praxis owner.
Requirements Discovery uses it to expose relevant reality, Formalization uses
it to verify facts required for honest Evolutions and Issues, and Delivery uses
it when implementation evidence reveals a bounded factual question.

Its return may change a Requirement, Evolution, Issue, or Plan, but Research
does not update governing truth or choose the next route by itself. The caller
interprets the finding and returns material learning to the exact causal owner.

## Research basis

Thariq Shihipar's
[A Field Guide to Fable: Finding your unknowns](https://claude.com/blog/a-field-guide-to-claude-fable-finding-your-unknowns)
treats source and external research as one instrument for discovering unknowns,
not a universal preliminary phase.

Anthropic's
[Effective context engineering for AI agents](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents)
supports high-signal context, progressive disclosure, and tools that return
useful evidence without unnecessary context. HumanLayer's
[Advanced Context Engineering](https://github.com/humanlayer/advanced-context-engineering-for-coding-agents/blob/main/ace-fca.md)
supplies the repository-research emphasis that Praxis applies proportionately
inside a bounded supporting skill. For repeated empirical iteration,
independent evidence paths, and overfitting-resistant evaluation, use the shared
[Feedback and Evaluation](../../references/feedback-and-evaluation.md) reference.

## Direct dependencies

### Skills

- [Interview](../interview/README.md) — obtain one human-owned fact or
  qualification needed by the research question; return the scoped answer;
  Research retains evidence synthesis.
- [Make Tangible](../make-tangible/README.md) — construct and verify a
  comparison, evidence map, probe, or source surface; return reaction and
  fidelity limits; Research retains the factual claim.
- [Delegate](../delegate/README.md) — run a bounded independent evidence path;
  return compact findings and limits; Research retains question, synthesis,
  and stopping.

### Shared references

- [Feedback and Evaluation](../../references/feedback-and-evaluation.md) —
  govern competing evidence paths, repeated probes, conflicts, and stopping.
- [Worktree Isolation and Preservation](../../references/worktree-isolation-and-preservation.md)
  — manage isolation only for a disposable repository experiment requiring
  local source mutation.
