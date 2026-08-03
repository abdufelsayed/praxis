# Interview

> **Design document — not a runtime skill.** Accepted behavioral contract; `SKILL.md` implementation pending.

## What it does

Interview resolves human-owned uncertainty: intent, preference, priority,
tolerance, or judgment that source evidence cannot determine. It asks adaptive
dependent questions one concrete scenario at a time, recommends a direction
when evidence supports one, and changes its inquiry after every answer. A small
set of independent, already-grounded questions may instead use
[Plannotator](../plannotator/README.md)'s bundled interview surface.

Its leading idea is **follow the answer that changes the work**. Interview is
not a questionnaire and the Unknowns Map is not its task list. It keeps a live
model of what remains unclear, asks about the most consequential human judgment,
and discards questions that stop mattering.

## When to reach for it

Use Interview when progress depends on something only the human can decide:

- the intended outcome or acceptable limitation;
- a product, design, or workflow preference;
- relative priority between competing needs;
- risk, cost, complexity, or compatibility tolerance;
- the meaning of an ambiguous request; or
- recognition-based judgment the human can make once the alternatives are
  concrete.

Invoke [Research](../research/README.md) for facts the agent can discover.
Invoke [Make Tangible](../make-tangible/README.md) when the human needs to
compare, experience, manipulate, inspect, or understand something before
answering honestly. Each returns its bounded evidence or reaction; Interview
retains question dependency, interpretation, and stopping.

## What the collaboration feels like

The agent asks through a small realistic scenario rather than abstract
framework language. It starts with the answer most likely to change scope,
architecture, behavior, or later questions. When it has a supported
recommendation, it gives the recommendation, reason, and consequence of choosing
differently.

A recommendation can also change the answer. When the human is reacting through
recognition—such as choosing a layout, interaction, or tone—the agent collects
the initial reaction before offering its own recommendation. When the human
needs technical evidence or consequences to judge honestly, the agent explains
and recommends first. It keeps the human's preference and its own advice
visibly distinct.

A few concrete options may make a tradeoff easier to see, but they never limit
the answer. The human can combine them, reject them, or describe a better
direction in ordinary language.

After each response, Interview updates its working understanding. It reflects
back only meaning that is new, materially changed, nuanced, or easy to misread,
then asks the next highest-value question. It does not replay settled context or
work through a prepared list.

## Choose adaptive or bundled interaction

Keep the normal Interview conversational and one-at-a-time whenever an answer
could change the next question, recommendation, available option, or required
context. Consequential and dependent questions are adaptive even when placing
them in one form would be faster.

Invoke [Plannotator](../plannotator/README.md)'s bundled interview surface only
when a small set
of questions is independent, already grounded by enough shared context, and
easier for the human to answer together. Interview still owns why those
questions matter and how their answers change the caller's understanding.
Plannotator owns only presentation and returning the response. Temporary JSON
is transport, not a questionnaire record or durable artifact.

Mixed, conditional, tied, uncertain, and possibly biased reactions remain
qualified. Interview asks one discriminating follow-up only when resolving the
qualification would change the caller's record; otherwise it returns the
uncertainty honestly instead of interrogating the human toward artificial
confidence.

The reason for one choice applies to that scenario by default. If a broader
preference would materially change later work, Interview tests the proposed
generalization with one contrasting case. Choosing a sparse operations screen
under time pressure, for example, does not establish a repository-wide
preference for minimal interfaces.

When the human says “I don't know,” Interview distinguishes missing knowledge
from missing preference. It may research a factual gap, create a tangible
reaction surface, teach the missing concept, or safely defer the question
instead of forcing an arbitrary choice.

## Contradictions and changing answers

A later answer is new evidence, not automatic supersession. When it conflicts
with earlier truth, Interview shows the contradiction concretely, explains what
each interpretation would change, recommends a resolution when possible, and
asks the human to reconcile it.

Before declaring a contradiction, Interview tests whether the answers apply to
different actors, situations, or boundaries. Easy recovery for ordinary users
and stricter recovery for administrators may be coherent conditional intent,
not competing universal priorities.

New evidence may change the available choices without changing the human's
preference. Interview preserves what remains valid, explains the changed
condition, and asks the smallest revised question under the new choice set. It
does not reinterpret lost feasibility as a reversed preference.

Working understanding can change freely inside the current conversation.
Changed accepted truth returns to the exact Requirements, Evolution, Issue, or
Plan owner that would need revision and re-gating.

## Unknowns are not a question ledger

Interview does not attempt to enumerate every unknown and resolve them in
sequence. Unknowns may appear, disappear, merge, split, or change shape as the
human and agent learn. Unknown unknowns cannot be listed in advance by
definition.

The optional Unknowns Map is a navigable picture of the current frontier of
understanding. Interview follows the highest-value uncertainty visible now.
Completion means the caller can proceed honestly with any remaining uncertainty
safe to carry; it does not mean every possible question was asked or the Map is
empty.

## It is working when

- Every question asks for human judgment rather than discoverable fact.
- The question uses a realistic case and makes its consequence clear.
- Supported recommendations reduce the reasoning burden without hiding
  alternatives.
- Recognition-based reactions are collected before advice can anchor them;
  evidence-dependent judgments receive enough explanation and recommendation
  to be honest.
- Suggested options remain open to combination, rejection, and reframing.
- Each answer changes the working model and irrelevant follow-ups disappear.
- Qualified reactions remain qualified unless one discriminating question
  would materially change later work.
- Local rationale is not promoted into a general preference without useful
  contrasting evidence.
- Missing factual or experiential context invokes the appropriate support
  instead of producing a forced answer.
- Context-dependent answers are separated before genuine contradictions are
  surfaced and reconciled.
- Changed feasibility produces a revised question rather than a fictional
  change in intent.
- The interview stops as soon as the caller can proceed honestly.

## Return, gates, and persistence

Interview returns clarified meaning, material consequences, safely deferred
uncertainty, and a recommendation when one is honestly supported. When the
evidence supports no direction, it says so and returns the missing evidence or
human judgment rather than manufacturing advice. It owns no broader inquiry,
governing record, route, gate, or authority.

Individual and bundled answers are feedback and do not pass Plannotator gates.
The caller incorporates their useful meaning into its governing record,
foregrounds the resulting record or diff, and invokes
[Plannotator](../plannotator/README.md) for its normal gate only when the
complete judgment is ready.

Do not preserve the transcript unless a named future consumer needs its exact
conversation. Durable work keeps the accepted meaning, evidence, implications,
and relevant uncertainty rather than the interrogation history.

## Where it fits

Interview is an agent-startable supporting skill available to any Praxis
owner. It may begin when the agent notices consequential human-owned
uncertainty or when the human explicitly asks to be interviewed.

Its adaptive procedure and the adaptive-versus-bundled decision belong in
`SKILL.md`. It starts without questionnaire libraries or domain playbooks
because those encourage irrelevant questions. Domain facts come from
[Research](../research/README.md) or the caller; difficult reactions invoke
[Make Tangible](../make-tangible/README.md); a justified bundled interaction
invokes [Plannotator](../plannotator/README.md) and resumes with the returned
feedback. A skill-local reference should be added only if later evidence
reveals a genuinely different reusable interview procedure.

## Research basis

Thariq Shihipar's
[A Field Guide to Fable: Finding your unknowns](https://claude.com/blog/a-field-guide-to-claude-fable-finding-your-unknowns)
describes interviews as an adaptive way to expose ambiguities after blind-spot
passes, research, references, and prototypes have supplied useful context. Its
companion
[Interview example](https://thariqs.github.io/html-effectiveness/unknowns/06-interview.html)
shows one-question-at-a-time interaction ordered by architectural consequence.
Praxis generalizes that method into a supporting skill while preserving its
recursive owner, return, and gate boundaries. For non-trivial comparisons or
qualified reactions, invoke Make Tangible; Interview remains responsible for
recommendation order and the meaning of the human's answer.

## Direct dependencies

### Skills

- [Research](../research/README.md) — resolve an external fact blocking the
  next useful question; return evidence and limits; Interview retains question
  order and human judgment.
- [Make Tangible](../make-tangible/README.md) — construct and verify something
  the human must react to; return reaction and fidelity limits; Interview
  retains interpretation.
- [Plannotator](../plannotator/README.md) — present only a small independent,
  already-grounded question bundle; return answers and annotations; Interview
  retains adaptive flow and stopping.

### Shared references

- None.
