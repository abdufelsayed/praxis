# Design Solution

> **Design document — not a runtime skill.** Accepted behavioral contract; `SKILL.md` implementation pending.

## What it does

Design Solution makes a consequential solution choice understandable enough
for honest human judgment. It explores materially different ways to satisfy
accepted Requirements, compares them against the same relevant criteria, and
returns the chosen shape and its consequences to the record that owns them.

Its leading idea is **make the consequential shape judgeable**. It does not own
general discovery, formal specifications, implementation planning, or a
standalone design phase. Formalization commonly calls it while defining an
Evolution or Issue, but Delivery may also call it when a Plan exposes a
specification-preserving architectural choice.

## When to reach for it

Use Design Solution when several plausible approaches could preserve the
accepted Requirements but differ materially in:

- observable behavior or failure semantics;
- a system, security, or trust boundary;
- component or data ownership;
- an interface or integration contract;
- operational or migration risk;
- reversibility; or
- the cost and locality of future changes.

Do not invoke it for every implementation choice. If the specification remains
unchanged and the choice is reversible, contained, and naturally judged while
planning the implementation, keep it in the Plan. If investigation reveals
only one serious shape, explain that result and return without inventing
alternatives.

## Begin with the owner

Start from accepted Requirements, current system evidence, and one exact open
choice. Before comparing solutions, ask which earliest governing record
would change if a candidate were accepted.

- A changed human need, constraint, tolerance, or preference belongs to
  Requirements Discovery.
- Changed high-level working behavior belongs to the Evolution.
- Changed detailed behavior, interface, failure, exclusion, or required proof
  belongs to the Issue.
- A technical choice that preserves those specifications may belong to the
  Implementation Plan.

This ownership test prevents a local design discussion from quietly rewriting
upstream truth. If the question was misclassified, return the learning to its
causal owner and let that owner revise and re-gate the affected meaning.

## Compare serious alternatives

Derive the comparison criteria from the accepted Requirements and actual
system constraints. Generic architecture qualities may suggest questions, but
they do not outrank what this Project needs.

Separate hard Requirements and safety boundaries from negotiable tradeoffs. A
candidate that violates tenant isolation, accepted behavior, or another
governing constraint is invalid; it does not remain in contention because it
wins more convenience columns. Design Solution does not compute a weighted
quality score.

Generate the smallest set that exposes the real choice, usually two or three
materially different alternatives and the current approach when it remains
viable. A candidate is distinct when it changes a meaningful boundary,
contract, owner, failure mode, or tradeoff. Naming several cosmetic variants
of the same architecture does not improve judgment.

Identify consequential assumptions shared by all candidates and test them
separately. Several designs that depend on the same unverified session-store
behavior provide one assumption path, not several independent reasons for
confidence.

Compare every candidate against the same relevant criteria:

- the observable behavior it preserves or changes;
- system and trust boundaries;
- ownership and responsibility;
- interfaces and invariants;
- failure modes and recovery;
- migration and operational consequences;
- reversibility and response to known change pressure;
- evidence supporting its feasibility; and
- uncertainty that could still change the judgment.

Expose each candidate's evidence maturity and uncertainty. The current design
may be battle-tested while an alternative is still a diagram; that difference
matters, but accumulated familiarity is not proof that the alternative is
worse. When unequal evidence could determine the choice, use the smallest
probe capable of testing the disputed property.

Recommend one when the evidence supports it. Explain why it fits and what the
human gives up by choosing differently. If no recommendation is honest, say
which unresolved tradeoff prevents one.

A good shape supports the direction and volatility the Project has actual
evidence for. Reject a design that already makes accepted next changes
predictably scattered, unsafe, or expensive, but do not add indirection for
imagined requirements. When an important seam remains uncertain, test that one
pressure with a bounded diagram, disposable extension, adversarial review, or
other probe instead of speculating.

## Use bounded supporting probes

Design Solution may invoke other skills to distinguish the candidates:

- [Research](../research/README.md) checks a factual claim about the codebase,
  dependency, runtime, or domain.
- [Make Tangible](../make-tangible/README.md) creates a diagram, comparison,
  simulation, or other surface
  when the difference is difficult to judge in prose.
- [Interview](../interview/README.md) helps the human express a preference,
  tolerance, or priority that evidence cannot determine.
- Make Tangible may select
  [Plannotator](../plannotator/README.md) to present a stable verified
  comparison. Design Solution receives the reaction from Make Tangible and does
  not invoke Plannotator itself.

Use only the probes capable of changing the comparison. If a probe reveals a
missing Requirement, return to Requirements Discovery rather than silently
turning a technical assumption into accepted product truth.

When feedback combines candidates or materially revises one, treat the result
as a new candidate. Foreground what changed, preserve unaffected evidence, and
re-evaluate only the affected criteria, interfaces, invariants, and shared
assumptions. The hybrid does not automatically inherit its parents'
conclusions.

## Select and compose the useful reasoning paths

Design questions do not divide cleanly into exclusive categories. Select the
few paths whose distinct reasoning can change the current judgment, and
compose them around the same bounded choice. An offline synchronization design,
for example, may need domain, workflow, system, contract, and transition
reasoning without becoming five separate design exercises.

### Domain Modeling

Use the Domain Modeling path when the solution depends on concepts,
relationships, invariants, or language that are fuzzy, overloaded, or
contradictory. Test the proposed model with concrete scenarios and current
behavior. Clarify only enough of the domain to distinguish the solution shapes
and state the invariants later formalization must preserve.

Load
[Domain Modeling](references/domain-modeling.md)
for concept boundaries, relationships, state transitions, invariants,
language, scenario testing, and conflicts between a claimed model and existing
behavior.

### Interaction and Workflow Design

Use the Interaction and Workflow Design path when alternatives differ in actor
sequence, states, feedback, handoffs, interruption, failure, or recovery. This
includes user interfaces, command-line flows, operational procedures, approval
systems, background workflows, and human-agent interaction.

Load the
[Interaction and Workflow Design](references/interaction-and-workflow-design.md)
reference when the experience or coordination across steps determines whether
the solution is acceptable. Invoke Make Tangible separately when the workflow
needs to be simulated or rendered for human reaction.

### System and Codebase Design

Use the System and Codebase Design path when the meaningful choice concerns
component boundaries, responsibility placement, dependencies, runtime
topology, failure isolation, seams, locality, testability, or integration with
the current system. Compare candidates against real source and runtime evidence
rather than an ideal architecture detached from the territory.

Load
[System and Codebase Design](references/system-and-codebase-design.md)
for responsibility, information hiding, interface pressure, dependency
direction, runtime placement, change locality, integration seams, proof
boundaries, and current-source evidence.

### Contract and Integration Design

Use the Contract and Integration Design path when alternatives differ in how
independent components, services, clients, or organizations communicate.

Load
[Contract and Integration Design](references/contract-and-integration-design.md)
for APIs, events, protocols, schemas, compatibility, ordering, idempotency,
error semantics, and integration responsibility. The path reasons about the
contract shape; the owning Issue records the accepted detailed contract.

### Transition and Operational Design

Use the Transition and Operational Design path when alternatives differ in how
an existing system moves safely between states.

Load
[Transition and Operational Design](references/transition-and-operational-design.md)
for coexistence, rollout, cutover, reversibility, recovery, validation,
operational visibility, and failure containment. The path defines the safe
transition shape; Evolve may use that accepted shape when designing
progressive Project advances.

These paths are an open but disciplined set. Add another only when concrete
scenarios reveal a distinct reusable procedure and evaluation criteria that
the existing paths cannot express cleanly.

## Human judgment and local choices

Bring the choice to the human when it changes governing behavior, a major
boundary or owner, an external dependency, meaningful cost or risk, or a
hard-to-reverse commitment. Present the serious alternatives, evidence,
consequences, and recommendation in the smallest form that supports judgment.

A reversible technical choice that preserves accepted specifications may be
recommended and handled locally inside approved Plan authority. This keeps
human control around consequential meaning without turning routine design work
into repeated permission requests.

When the human selects a valid non-recommended candidate, preserve the local
rationale and concrete consequences, then continue from that choice. Reopen it
only when the human misunderstood a material consequence or new evidence
reveals a governing constraint violation. One choice does not become a global
preference.

## Stop before implementation planning

Describe the architecture, ownership, interfaces, invariants, and
consequential behavior required to judge the solution. Stop before listing
files to edit, commands to run, execution order, migration steps, checks, or
bounded mutation authority; those details belong to the Implementation Plan.

Design Solution is complete when the serious alternatives are sufficiently
distinguished for honest judgment or when investigation shows that no
consequential choice exists.

## Return fresh design context

Return:

- the accepted shape;
- the essential rationale;
- the governing consequences;
- unresolved uncertainty; and
- the earliest owner affected by the result.

The caller incorporates that meaning into the owning Evolution, Issue, or Plan
and presents it through that record's normal Plannotator gate. Design
Solution creates no standalone Decision file or separate gate.

Keep detailed comparison evidence or a tangible artifact only when a named
later consumer needs it. The useful durable result is coherent design context,
not a transcript or ledger of alternatives accepted and rejected.

## It is working when

- The question is consequential enough to justify solution comparison.
- Criteria come from accepted Requirements and current system evidence.
- Hard constraints invalidate candidates rather than becoming weighted
  tradeoffs.
- Alternatives differ in meaningful shape rather than wording.
- Shared consequential assumptions are tested independently.
- Each candidate is judged against the same relevant criteria.
- Evidence maturity is visible and unequal familiarity does not masquerade as
  quality.
- Known change pressure is tested without designing for unsupported futures.
- Hybrid or revised candidates are re-evaluated only where their meaning
  changed.
- Research, Interview, and Make Tangible close only discriminating gaps.
- Human judgment is concentrated on consequential commitments.
- A valid non-recommended choice remains local and is respected.
- The result changes the correct governing record.
- Design detail stops before implementation planning.
- The return explains the chosen shape and its consequences without preserving
  the interview as documentation.

## Skill structure

The trigger, ownership test, comparison method, path selection, recommendation,
human-judgment boundary, return, and stopping behavior belong in `SKILL.md`.
Design Solution invokes [Research](../research/README.md),
[Interview](../interview/README.md), and
[Make Tangible](../make-tangible/README.md) only for the bounded questions each
owns, then returns their meaning to the calling Evolution, Issue, or Plan.
Domain Modeling, Interaction and Workflow Design, System and Codebase Design,
Contract and Integration Design, and Transition and Operational Design are
conditional references loaded only when their reasoning can change the
judgment. They may compose, but none owns routing, governing truth, gates,
authority, or completion.

## Research basis

HumanLayer's
[Turning the lights back on](https://github.com/humanlayer/advanced-context-engineering-for-coding-agents/blob/main/wsff.md#turning-the-lights-back-on)
argues that consequential work needs product review, system architecture, and
program design before large implementations make wrong assumptions expensive.
Praxis retains that judgment while keeping the amount of design proportional
to the actual choice.

Thariq Shihipar's
[A Field Guide to Fable: Finding your unknowns](https://claude.com/blog/a-field-guide-to-claude-fable-finding-your-unknowns)
supplies the recursive use of Research, Interviews, References, and prototypes
when planning alone cannot reveal the unknown. His
[HTML effectiveness gallery](https://thariqs.github.io/html-effectiveness/)
shows how comparisons and navigable artifacts can make complex choices easier
to judge.

John Ousterhout's
[A Philosophy of Software Design](https://web.stanford.edu/~ouster/cgi-bin/aposd.php)
and Martin Fowler's
[Refactoring](https://martinfowler.com/books/refactoring.html)
provide established vocabulary for complexity, module boundaries, and
changeability. Praxis uses those ideas as possible comparison lenses rather
than universal rules that override accepted Requirements. For non-trivial
comparison fidelity or human reaction, invoke Make Tangible; it owns the
evaluation surface and any shared feedback mechanics.

## Direct dependencies

### Skills

- [Research](../research/README.md) — resolve one factual premise; return
  evidence and limitations; Design Solution retains comparison and synthesis.
- [Interview](../interview/README.md) — resolve one human-owned tradeoff;
  return the scoped judgment; Design Solution retains solution reasoning.
- [Make Tangible](../make-tangible/README.md) — construct and verify a design
  comparison or model; return reaction and fidelity limits; Design Solution
  retains the consequential choice.

### Shared references

- None.
