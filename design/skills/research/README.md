# Research

> **Design document — not a runtime skill.** Accepted behavioral contract and
> target package design; runtime implementation pending.

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

Before a consequential experiment, Research invokes
[Check Safety](../check-safety/README.md) only after the exact action is covered
by an approved Plan and Implementation Authorization. Missing authority returns
a blocker before the preflight or effect.

When an authorized repository-mutating probe has a named collision,
preservation, rollback, or experiment risk, Research invokes
[Manage Worktree](../manage-worktree/README.md).
Research retains the factual claim and probe design; Manage Worktree owns the
checkout decision and lifecycle.

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
independent evidence paths, and overfitting-resistant evaluation, the current
[Feedback and Evaluation](../../references/feedback-and-evaluation.md) semantic
source informs a small Research-specific runtime projection.

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
- [Check Safety](../check-safety/README.md) — preflight one consequential
  experiment already covered by an approved Plan and Implementation
  Authorization; return `proceed`, `revise`, or `stop`; Research retains the
  factual question and action choice.
- [Manage Worktree](../manage-worktree/README.md) — decide whether a named
  repository risk needs isolation;
  decide whether an authorized repository-mutating probe needs isolation and
  return either a safe current-checkout decision, a prepared worktree, or a
  blocker; Research retains the probe and interpretation.

### Shared references

- None in the accepted target package. Feedback and Evaluation contributes a
  small inline projection. Worktree Isolation and Preservation is behavioral
  source for the accepted Manage Worktree skill rather than runtime reference
  material.

## Target runtime package

> **Status: accepted target package design; runtime implementation pending.**
> This section is not implementation authority.

### Invocation

Research is model-invoked and remains directly invocable by the human. Its
leading concept is **one bounded factual question**. Agent discoverability is
required because Research is agent-startable and other Praxis skills invoke it
for bounded factual gaps. Routine inspection remains with the active skill so
Research does not wrap ordinary work.

Use this exact `SKILL.md` frontmatter:

```yaml
---
name: research
description: "Research one bounded discoverable fact. Use for direct factual questions or evidence from code, dependencies, history, primary sources, comparisons, or empirical probes; exclude human-only judgments and integrated consequential needs or constraint uncertainty."
---
```

Omit `disable-model-invocation`. For the current Codex host, use this exact
`agents/openai.yaml`:

```yaml
interface:
  display_name: "Research"
  short_description: "Test factual claims against strong evidence"
  default_prompt: "Use $research to answer this bounded factual question."
policy:
  allow_implicit_invocation: true
```

The host metadata declares no required tool dependency. Research uses the
strongest available evidence path in the executing environment rather than
requiring one provider.

Invocation routes are:

- explicit research or verification and one factual gap needed by another
  skill enter Research;
- human-owned judgments enter Interview;
- open-ended discovery of needs and unknowns enters Discover Requirements;
  and
- implementation and ordinary task-local inspection remain with their active
  owner.

### Information hierarchy

The runtime `SKILL.md` is process-led. It owns the common evidence loop,
authority, method selection, synthesis, return, and stopping through five
steps:

1. **Bind the claim.** State the bounded factual question, relevant territory,
   freshness requirement, consequence of error, evidence sufficient for the
   consequence, and cheapest meaningful falsifier. This step is complete when
   the agent can distinguish an answered claim from an unsupported one.
2. **Choose the smallest evidence path.** Select codebase, external, empirical,
   or a justified combination and load only the conditional method references
   needed by the selected path. This step is complete when each selected path
   can materially support or falsify the claim.
3. **Test the claim in its territory.** Gather decisive evidence, test favored
   or consequential claims against disconfirmation, rebind revised questions,
   and correct false premises. This step is complete when the claim is
   supported, falsified, or honestly unresolved at the required consequence.
4. **Reconcile the answer.** Keep evidence, inference, conflict, and uncertainty
   distinct; explain conditional disagreement and qualify negative results.
   This step is complete when every material conflict or coverage limit either
   has an evidence-supported boundary or remains explicit.
5. **Return and stop.** Lead with the answer, followed by scope, decisive
   evidence, limitations, implications, and missing evidence. This step is
   complete when the caller can use the result without redoing synthesis;
   Research stops at sufficient support or honest irresolution.

Before any empirical effect, `SKILL.md` states the applicable authority and
safety boundary. It also keeps question rebinding, false-premise correction,
adjacent-finding relevance, durable-report conditions, and direct Interview,
Delegate, and Make Tangible calls at their actual decision points.

Research keeps a small Feedback and Evaluation projection inline: use distinct
evidence paths, do not treat correlated agreement as independence, add
proportionate disconfirming or perturbed evidence when iteration could overfit
one surface, and stop when repetition stops teaching. The broader current
[Feedback and Evaluation](../../references/feedback-and-evaluation.md) semantic
source does not become a Research runtime dependency.

The accepted local target references are:

| Decision point | Target reference | Load when | Keep inline when | Semantic ownership | Source material | Direct consumers | Gaps |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Non-obvious repository evidence | `references/codebase-evidence.md` | The answer requires tracing repository, dependency, runtime-wiring, test, convention, or history surfaces. | A routine task-local inspection or one obvious lookup is sufficient. | Research | [Investigating Codebases](references/investigating-codebases.md) | Research | None. |
| Consequential external evidence | `references/external-evidence.md` | Authority, version, freshness, jurisdiction, source conflict, or search coverage could change the answer. | One obvious authoritative lookup answers a low-consequence claim. | Research | [Researching External Evidence](references/researching-external-evidence.md) | Research | None. |
| Designed empirical observation | `references/empirical-probes.md` | An experiment's discrimination, fidelity, reproducibility, interpretation, or cleanup affects the claim. | An existing read-only observation needs no experimental design. | Research | [Running Empirical Probes](references/running-empirical-probes.md) | Research | None. |

Each target reference contains only its method-specific knowledge. It does not
repeat question entry, global authority, synthesis, caller return, or stopping;
does not call another reference; and does not behave like a hidden skill. The
current source files are shortened and reshaped during implementation according
to the accepted boundaries below.

`references/codebase-evidence.md` contains only:

- tracing from observable behavior through entry points, wiring, ownership,
  data and control flow, dependencies, generated surfaces, tests, conventions,
  and relevant history;
- ranking current source, configuration, installed versions, and reproduced
  behavior over stale plans or generic examples;
- using searches as navigation rather than proof; and
- testing plausible hidden paths and recording the evidence and coverage
  needed to support a codebase conclusion.

`references/external-evidence.md` contains only:

- selecting primary and authoritative sources;
- preserving version, date, jurisdiction, environment, product tier, and other
  conditions that bound the claim;
- distinguishing declared contracts, observed compatibility, and historical
  statements;
- resolving disagreements through conditions rather than source count; and
- qualifying negative searches and recording decisive source sections.

`references/empirical-probes.md` contains only:

- defining competing observations before execution;
- designing the smallest valid probe while preserving load-bearing conditions;
- recording reproducibility, tested scope, and cleanup evidence;
- interpreting positive and negative results only at their tested boundary;
  and
- repeating, perturbing, or adding an independent case proportionately when
  noise, surprise, consequence, or claim breadth warrants it.

Design rationale, research basis, history, status language, and repeated
explanations remain outside runtime context. `SPEC.md` will retain material
behavioral invariants and source traceability without becoming a dependency of
`SKILL.md`.

### Direct runtime composition

`SKILL.md` links direct calls at these decision points:

- invoke Interview when a required qualification is human-owned; resume from
  its scoped answer while retaining factual synthesis;
- invoke Delegate when an independent evidence path materially saves context,
  cost, or elapsed time after coordination overhead; resume from compact
  findings and limits; when Delegate is unavailable, run the path directly;
- invoke Make Tangible when comparison, navigation, simulation, annotation, or
  another perceptible evidence surface is required; interpret its artifact,
  reaction, and fidelity limits without transferring the factual claim;
- invoke Check Safety before one consequential experiment only after its Plan
  and Implementation Authorization exist; `revise` or `stop` prevents the
  effect; and
- invoke `manage-worktree` when an authorized
  repository-mutating probe has a named isolation risk; consume its safe
  current-checkout decision, prepared checkout state, or blocker while
  retaining the probe and interpretation.

Research does not invoke Plannotator directly. Make Tangible owns any native
presentation or reaction route. During partial plugin assembly, a missing
optional Delegate falls back to direct work. Any other required missing skill
is returned as an assembly dependency; Research does not imitate it or create a
placeholder.

### Outcomes and no-op behavior

Research returns conversational outcomes rather than a serialized schema:

- **answered** — sufficient evidence supports the bounded answer;
- **unverified** — available evidence cannot honestly establish it;
- **conflicting** — strong evidence remains in material unresolved conflict;
- **revised** — the original premise or question was false or materially
  changed;
- **blocked** — required access, environment, authority, human judgment, or
  runtime dependency is missing; or
- **stopped** — the human stopped the work or the governing question became
  invalid.

Already-decisive current evidence receives only the smallest scope and
freshness check needed before return. A trivial stable fact uses the smallest
authoritative path without ceremonial triangulation, falsification, delegation,
or a durable report. A non-discriminating probe is revised only when another
bounded design can plausibly resolve the claim; otherwise it returns
`unverified`.

Unavailable evidence may be replaced by another path only when it can test the
same claim at the required consequence. Missing authority stops before the
effect. A human stop or changed governing question returns only still-supported
evidence and limitations.

### Effects and resources

Research may ordinarily inspect repository state, read local and external
evidence, run read-only checks, and create and clean clearly disposable local
probe state within existing authority.

It does not silently change product behavior, call production, spend material
money, use sensitive data, create a durable report, commit, publish, integrate,
or perform another consequential effect. A durable report is created only when
a named future consumer needs to audit, extend, reproduce, or compare the work
and existing authority covers the write.

The package has no scripts, assets, fixtures, templates, or required tool
integration. Probes are claim-specific; there is no stable repeated operation
that earns a generic Research script. The executing environment supplies
available search, repository, browsing, and command tools.

### Canonical target tree

```text
skills/research/
|-- SKILL.md
|-- SPEC.md
|-- agents/
|   `-- openai.yaml
`-- references/
    |-- codebase-evidence.md
    |-- external-evidence.md
    `-- empirical-probes.md
```

The package contains no `README.md`, shared runtime reference, `scripts/`,
`assets/`, `examples/`, placeholder, or empty directory.

### `SPEC.md` contract and cases

`SPEC.md` preserves Research purpose, invocation boundary, inputs, evidence and
authority invariants, outcomes, side effects, direct calls, reference map,
source basis, and these representative cases:

1. explicit research triggers while ordinary task-local inspection does not;
2. codebase investigation traces one behavior end to end;
3. external evidence preserves version, freshness, and applicable conditions;
4. an empirical probe fixes competing observations before execution;
5. documentation and runtime evidence are reconciled through configuration;
6. a negative search that misses plausible hidden paths remains unverified;
7. a favored consequential claim receives a disconfirming path;
8. a revised question discards evidence that no longer applies;
9. a false premise produces a corrected return;
10. human-owned uncertainty invokes Interview;
11. correlated evidence is not treated as independent corroboration;
12. a non-discriminating probe changes method or returns uncertainty;
13. missing authority prevents a consequential effect;
14. a risky repository-mutating probe invokes Manage Worktree;
15. Delegate returns evidence without taking synthesis ownership;
16. Make Tangible returns a surface without taking claim ownership;
17. a trivial stable fact performs no unnecessary ceremony;
18. a durable report requires a named future consumer; and
19. a missing runtime dependency remains explicit during partial assembly.

### Source traceability and observable checks

The main `SKILL.md` behavior derives from this design's evidence loop, quality,
return, authority, composition, and completion sections. Each target reference
derives from the corresponding current semantic source named in the reference
map. The Feedback and Evaluation source contributes only the accepted inline
projection. Worktree Isolation and Preservation contributes to the accepted
Manage Worktree skill, not this runtime package.

Package validation must show:

- the accepted metadata triggers intended factual questions without swallowing
  routine work;
- each local reference loads only under its exact condition;
- no reference hides entry, authority, skill calls, completion, or stopping;
- every material `SPEC.md` invariant has executable instruction;
- incomplete, revised, conflicting, blocked, and stopped outcomes remain
  honest;
- consequential effects stop before missing authority;
- all final links and required resources resolve before release;
- structure validation finds no placeholder or extra package surface; and
- fresh-context cases exercise invocation, disclosure, synthesis, no-op
  behavior, composition, and effect boundaries.

### Package state

Research has no unresolved package-design decision. Runtime implementation
still requires separate authority. `manage-worktree` is an accepted direct
assembly dependency: its absence does not authorize a placeholder or expand a
Research implementation slice, and Praxis release waits until every required
direct target resolves.
