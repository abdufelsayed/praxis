# Praxis Premise

> **Status: accepted core premise.**

Praxis is a control system for human collaboration with coding agents.

Its premise is:

> **Turn uncertainty into shared understanding, shared understanding into
> bounded authority, and bounded authority into small, reviewable working
> results.**

Praxis is a **lights-on, unknown-driven development system with bounded
autonomous execution**.

Praxis is also a **human-steered In-Context Reinforcement Learning harness for
software engineering**. A fixed model uses relevant current context to choose
a bounded inquiry, proposal, or action; observes environmental evidence and
human reaction; retains the learning that should affect later judgment; and
conditions its next attempt on that improved context. The model learns during
the work without changing its weights.

Praxis does not reduce reinforcement to one score. Tests, runtime behavior,
tool results, review findings, human preferences, accepted constraints, and
artifact reactions provide different kinds of feedback that may conflict.
Human judgment interprets consequential conflicts, while authority remains
separate: favorable feedback can improve a recommendation but can never grant
the next activity or mutation by itself.

Coding agents are fast at research, implementation, iteration, and mechanical
verification. They are less reliable at recognizing a user's unstated intent,
discovering every important unknown in advance, and preserving maintainable
design across long autonomous implementations. Passing tests cannot fully
measure whether a change leaves the system understandable and easy to evolve.

Praxis rejects lights-off software factories as the operating model for the
current generation of coding agents. The human owns consequential product
intent, system and program judgment, approval, and acceptance. The agent gets
real autonomy for research actions inside the current inquiry and for
implementation inside an accepted boundary. It returns material interpretation
to the human and does not inherit judgment authority merely because it can
generate, test, or review code.

## Design commitments

### Discover before inventing

When intent, behavior, domain knowledge, or system boundaries are unclear, the
agent investigates instead of turning assumptions into implementation.
Research, interviews, references, prototypes, and visual models are selected
when they expose a material unknown.

Finding the important unknowns is often harder than writing the resulting code.
Praxis therefore treats unknown discovery as central engineering work rather
than a preliminary formality.

Discovery is a recursive human-agent loop. The agent does not disappear into a
large research campaign and return only with a finished model. It brings
material evidence back while meaning is still being formed so the human can
correct assumptions, expose unknown knowns, compare alternatives, and redirect
the next inquiry.

Repeated attempts are useful only when feedback can change later behavior.
Praxis therefore selects proportionate exploration—research, contrasting
references, interviews, competing proposals, prototypes, experiments, or
independent agents—when another attempt could expose a material unknown. It
converges once current evidence and human judgment make further exploration
unlikely to change the owning question.

### Keep context lean and discoverable

Current models should receive the smallest sufficient instruction surface,
progressively disclosed project truth, and rich references selected for the
current judgment. Praxis does not accumulate repetitive reminders because an
older model once needed them.

Stable invariants should become source, tests, schemas, linters, or other
mechanical constraints when practical. Instructions should explain intent and
route the agent to authoritative context while leaving routine reasoning to the
model.

Subagents are another context boundary, not a substitute for understanding.
The main agent may isolate noisy exploration, bounded implementation, or
independent assurance in fresh contexts and receive compact evidence back. It
still owns the human relationship, system map, governing truth, authority,
integration, and final judgment. Delegation may improve context quality, total
cost, or elapsed time; it need not improve all three.

### Align at the right altitude

Product intent, system responsibilities, observable contracts, and progressive
working outcomes are settled before detailed implementation when they are
consequential. Incidental file layout and routine coding choices remain inside
the later Implementation Plan and autonomous execution boundary.

### Use proportional structure

Praxis is not one mandatory lifecycle. Clear work may execute directly, one
already-clear outcome may use a standalone Plan, detailed specification may
use standalone Issues, one coherent Project Outcome may use one or more Issues
and sequential Implementation Plans, and only deliberately agile work with at
least two meaningful working forms uses Evolve. A Project becomes durable only
for a future consumer; an Initiative exists only when one strategic objective
needs multiple Projects.

Project and Evolution boundaries are collaborative judgments, not mechanical
classifications. The human and agent derive them from the actual Requirements,
territory, complexity, uncertainty, and preferred solution. A whole
application may be one Project whose Evolutions are features; a systems
Project may evolve one capability through several substantial engineering
forms.

### Prefer coherent advances over arbitrary decomposition

Evolutionary delivery produces coherent working forms that can be integrated,
exercised, reviewed, proved, and learned from. Feature, subsystem, migration,
quality, and technical-refinement boundaries may all be Evolutions when they
form meaningful advances in the current Project; none qualifies merely because
of its label. Evolutions structure how Project Requirements are progressively
satisfied and judged; external lifecycle and audience decisions are separate.

### Preserve changeability under known pressure

A working result must remain proportionately changeable under the direction and
uncertainty the Project already has evidence for. Requirements Discovery makes
that pressure visible, Formalization incorporates its consequences into the
chosen solution and specifications, and Delivery proves the result against the
inherited behavior materially exposed by the change.

When newly accepted work reveals that the inherited structure no longer fits
the expanded Requirements, Delivery repairs that pressure point as part of the
current work and invokes Refactor when reconstruction, seam choice, or
preservation proof needs a substantial dedicated procedure. It does not keep
layering behavior onto a failing structure or defer the necessary repair to an
unspecified cleanup pass. This is responsive design from present evidence, not
speculative architecture for requirements nobody has established.

### Separate judgment from authority

Agreement, record approval, mutation authority, result acceptance, commit,
deployment, Project closure, and Initiative closure are different acts. No
approval silently expands into adjacent authority.

### Keep the human able to understand

Visual models and explainers from Make Tangible, precise Plannotator reaction
and review surfaces, adversarial Review, and human-selected Orient reduce the
cost of human judgment. Automation and independent review provide evidence;
they do not replace the human where product or maintainability judgment is
required.

Human participation includes interpretation and steering inside discovery,
proposal, and result loops. Formal approval is only one kind of participation;
it provisionally accepts a named truth or closes a result. Forward owner or
route transitions and mutation authority remain separate conversational human
choices.

### Stop deliberately

Direct Work ends after proportionate verification and reporting. One planned
delivery or one Evolution ends after its actual result is judged and accepted.
Stopping returns initiative and authority to the human instead of allowing an
agent to continue through a roadmap by momentum.

## Intellectual sources

Praxis combines several compatible lines of thought:

- [Advanced Context Engineering for Coding Agents](https://github.com/humanlayer/advanced-context-engineering-for-coding-agents/blob/main/ace-fca.md)
  treats context control, research, planning, implementation, subagent
  isolation, and high-leverage human review as parts of one adaptable
  engineering practice.
- [Why Software Factories Fail](https://github.com/humanlayer/advanced-context-engineering-for-coding-agents/blob/main/wsff.md)
  argues for human involvement around product requirements, system
  architecture, program design, vertical slices, and code review.
- HumanLayer's later
  [Benchmarking Opus 5 on SlopCodeBench](https://github.com/humanlayer/advanced-context-engineering-for-coding-agents/blob/main/benchmarking-opus-5-on-slop-code-bench.md)
  and the [SlopCodeBench paper](https://arxiv.org/abs/2603.24755) examine
  whether agents preserve inherited behavior and changeability across
  successive requirements. They motivate judging maintainability through
  concrete future change pressure rather than treating passing tests or static
  metrics as a complete oracle.
- HumanLayer's [authored visual corpus](https://github.com/humanlayer/advanced-context-engineering-for-coding-agents/tree/main/images)
  demonstrates how workflow, architecture, leverage, handoffs, and benchmark
  trajectories can become inspectable rather than remaining buried in prose.
- [A Field Guide to Fable: Finding Your Unknowns](https://claude.com/blog/a-field-guide-to-claude-fable-finding-your-unknowns)
  treats research, blind-spot passes, interviews, prototypes, references,
  implementation notes, and explainers as ways to expose unknowns throughout
  the work.
- [The new rules of context engineering](https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models)
  favor model judgment, well-designed interfaces, progressive disclosure, and
  rich references over large repeated rule sets.
- [Algorithm Distillation](https://arxiv.org/abs/2210.14215) and
  [Reward Is Enough: LLMs Are In-Context Reinforcement
  Learners](https://arxiv.org/abs/2506.06303) describe fixed-parameter policies
  improving from interaction histories and feedback at inference time. Praxis
  projects that mechanism into a human-steered engineering harness with
  multidimensional evidence, curated external memory, causal backtracking, and
  separate authority.
- [Reflexion](https://arxiv.org/abs/2303.11366) and
  [Agentic Context Engineering](https://arxiv.org/abs/2510.04618) show adjacent
  ways to turn execution feedback into retained verbal or contextual learning
  without weight updates. Praxis uses them as mechanism references rather than
  as complete workflow authorities.
- Nathan Lambert's [RLHF Book](https://rlhfbook.com/) explains why human
  preferences are contextual and comparative, why feedback interfaces and
  current-distribution examples matter, how process and outcome supervision
  differ, and how optimizing a proxy can degrade the intended result. Praxis
  transfers that evaluation discipline without training reward models,
  updating weights, or collapsing human engineering judgment into a scalar.
- [The unreasonable effectiveness of HTML](https://claude.com/blog/using-claude-code-the-unreasonable-effectiveness-of-html)
  and its [example gallery](https://thariqs.github.io/html-effectiveness/)
  show how purpose-built reaction surfaces can make consequential human
  judgment easier without making HTML a mandatory format.
- Operational warnings such as
  [Mario Zechner's “Building pi in a world of slop”](https://www.youtube.com/watch?v=RjfbvDXpFls),
  [reporting on Amazon outages involving coding-agent
  mishaps](https://www.ft.com/content/00c282de-ed14-4acd-a948-bc8d6bdb339d),
  and [Faros AI's telemetry](https://www.faros.ai/research/ai-acceleration-whiplash)
  show why generation throughput must be judged alongside review burden,
  rework, incidents, and operational blast radius.

These sources sit inside a wider disagreement about lights-off factories,
harness engineering, human review, benchmarks, and maintainability. Praxis
takes a lights-on position in that disagreement. The
[industry research map](../evidence/landscape.md) explains that argument, while
the [source index](../evidence/sources.md) records evidence type, review
depth, and important caveats.

The sources motivate and pressure-test Praxis. The accepted Praxis model in
this directory defines its actual behavior.
