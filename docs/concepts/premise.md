# Praxis premise

Praxis is a control system for human collaboration with coding agents.

Its premise is:

> **Turn uncertainty into shared understanding, shared understanding into
> bounded authority, and bounded authority into small, reviewable working
> results.**

Praxis is a lights-on, unknown-driven development system with bounded
autonomous execution. It is also a human-steered in-context reinforcement
learning harness for software engineering: a fixed model uses relevant current
context to choose a bounded inquiry, proposal, or action; observes environmental
evidence and human reaction; retains learning that should affect later
judgment; and conditions its next attempt on that improved context. The model
learns during the work without changing its weights.

Praxis does not reduce reinforcement to one score. Tests, runtime behavior,
tool results, review findings, human preferences, accepted constraints, and
artifact reactions provide different kinds of feedback and may conflict.
Human judgment interprets consequential conflicts. Authority remains separate:
favorable feedback can improve a recommendation but can never grant the next
activity or mutation by itself.

Coding agents are fast at research, implementation, iteration, and mechanical
verification. They are less reliable at recognizing unstated intent,
discovering every important unknown in advance, and preserving maintainable
design across long autonomous implementations. Passing tests cannot fully
measure whether a change leaves the system understandable and easy to evolve.

Praxis therefore keeps the person directing the work responsible for
consequential product intent, system and program judgment, approval, and
acceptance. The agent gets real autonomy for research inside the current
inquiry and implementation inside an accepted boundary. It returns material
interpretation to that person and does not inherit judgment authority merely
because it can generate, test, or review code.

## Durable commitments

### Discover before inventing

When intent, behavior, domain knowledge, or system boundaries are unclear, the
agent investigates instead of turning assumptions into implementation.
Research, interviews, references, prototypes, and visual models are selected
when they expose a material unknown.

Finding important unknowns is often harder than writing the resulting code.
Praxis treats unknown discovery as central engineering work rather than a
preliminary formality.

Discovery is a recursive human-agent loop. The agent does not disappear into a
large research campaign and return only with a finished model. It brings
material evidence back while meaning is still being formed so the person
directing the work can correct assumptions, expose unknown knowns, compare
alternatives, and redirect the next inquiry.

Repeated attempts are useful only when feedback can change later behavior.
Praxis selects proportionate exploration—research, contrasting references,
interviews, competing proposals, prototypes, experiments, or independent
agents—when another attempt could expose a material unknown. It converges once
current evidence and human judgment make further exploration unlikely to
change the owning question.

### Keep context lean and discoverable

Current models should receive the smallest sufficient instruction surface,
progressively disclosed project truth, and rich references selected for the
current judgment. Praxis does not accumulate repetitive reminders because an
older model once needed them.

Stable invariants should become source, tests, schemas, linters, or other
mechanical constraints when practical. Instructions explain intent and route
the agent to authoritative context while leaving routine reasoning to the
model.

Subagents are another context boundary, not a substitute for understanding.
The main agent may isolate noisy exploration, bounded implementation, or
independent assurance in fresh contexts and receive compact evidence back. It
still owns the working relationship, system map, governing truth, authority,
integration, and final judgment. Delegation may improve context quality, total
cost, or elapsed time; it need not improve all three.

### Align at the right altitude

Product intent, system responsibilities, observable contracts, and progressive
working outcomes are settled before detailed implementation when they are
consequential. Incidental file layout and routine coding choices remain inside
the later authorized implementation boundary.

### Use proportional structure

Praxis is not one mandatory lifecycle. Clear work may execute directly or enter
bounded Delivery without a Plan when target, exclusions, risk, authority, and
proof are already settled. A Plan is used when the proposal needs judgment;
detailed specification may use standalone Issues; one coherent Project Outcome
may use Issues and sequential Delivery; and deliberately progressive work with
at least two meaningful working forms may use Evolve.

A Project becomes durable only for a future consumer. An Initiative exists only
when one strategic objective needs multiple independently governed Projects.
Project and Evolution boundaries are collaborative judgments derived from the
actual Requirements, territory, complexity, uncertainty, and preferred
solution—not mechanical classifications. A whole application may be one
Project whose Evolutions are features; a systems Project may evolve one
capability through several substantial engineering forms.

### Prefer coherent advances over arbitrary decomposition

Evolutionary delivery produces coherent working forms that can be integrated,
exercised, reviewed, proved, and learned from. Feature, subsystem, migration,
quality, and technical-refinement boundaries may all be Evolutions when they
form meaningful advances in the current Project; none qualifies merely because
of its label.

Evolutions structure how Project Requirements are progressively satisfied and
judged. External lifecycle and audience decisions are separate.

### Preserve changeability under known pressure

A working result must remain proportionately changeable under the direction and
uncertainty the Project already has evidence for. Requirements Discovery makes
that pressure visible, Formalization incorporates its consequences into the
chosen solution and specifications, and Delivery proves the result against
the inherited behavior materially exposed by the change.

When newly accepted work reveals that inherited structure no longer fits the
expanded Requirements, Delivery repairs that pressure point as part of current
work and invokes Refactor when reconstruction, seam choice, or preservation
proof needs a substantial dedicated procedure. It does not keep layering
behavior onto a failing structure or defer necessary repair to an unspecified
cleanup pass. This is responsive design from present evidence, not speculative
architecture for requirements nobody has established.

### Separate judgment from authority

Agreement, record approval, mutation authority, result acceptance, commit,
deployment, Project closure, and Initiative closure are different acts. No
approval silently expands into adjacent authority.

### Keep the decision-maker able to understand

Visual models and explainers, precise native reaction and review surfaces,
adversarial review, and human-selected orientation reduce the cost of human
judgment. Automation and independent review provide evidence; they do not
replace the decision-maker where product or maintainability judgment is
required.

Human participation includes interpretation and steering inside discovery,
proposal, and result loops. Formal approval is one kind of participation: it
provisionally accepts a named truth or closes a result. Forward owner or route
transitions and mutation authority remain separate conversational human
choices.

### Stop deliberately

Direct Work ends after proportionate verification and reporting. One planned
delivery or one Evolution ends after its actual result is judged and accepted.
Stopping returns initiative and authority to the person directing the work
instead of allowing an agent to continue through a roadmap by momentum.

## Evidence and influences

Praxis combines practitioner methods, company operating reports, benchmarks,
research on inference-time adaptation, and established product and software
design ideas. Their claims have different strengths and limitations. The
curated [evidence and influences](../reference/evidence.md) page records the
sources that most directly shaped Praxis, their contribution, and what they do
not establish.

Those sources explain and pressure-test this premise. They are not runtime
dependencies or workflow authorities; the maintained Praxis contracts define
actual behavior.

## Reading the model

[System](system.md) explains ownership and composition. [Control](control.md)
defines entry, approval, authority, learning, and stopping. [Records and
context](context.md) defines persistence and progressive loading. [Work and
routes](work.md) defines the proportional forms that these commitments govern.
