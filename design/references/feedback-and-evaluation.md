# Feedback and Evaluation

> **Status: accepted conditional shared reference.**

Praxis is a human-steered In-Context Reinforcement Learning harness. Its
owning loops improve their current context through bounded attempts,
environmental evidence, human reaction, causal interpretation, and retained
learning. This reference explains how to design that feedback without reducing
engineering judgment to a score.

The common ownership, authority, return, and stopping rules remain in the core
Praxis model and each runtime skill. Open this reference only when the work
needs a comparison or reaction surface, several evaluators, repeated iteration
against one check, evaluator-disagreement handling, or another non-trivial
feedback design. Ordinary conversation, review, and verification should not
load it merely because feedback exists.

## Keep the feedback types distinct

Praxis may receive:

- **human preference**, which describes what a person wants among the options
  and context they actually experienced;
- **observed evidence**, which records what source, runtime behavior, a tool, or
  an experiment showed;
- **critique**, which interprets a concrete failure mechanism, consequence, or
  design concern;
- **verification**, which tests an exact claim with current falsifiable
  evidence;
- **approval**, which provisionally accepts one complete record as the
  current basis for later judgment; and
- **acceptance**, which judges and closes one delivered result.

One type never silently rewrites another. A preference may remain valid while
current evidence makes one candidate infeasible. A passing check may prove its
claim while Review still identifies consequential structural damage. Approval
and acceptance remain human control acts rather than reward values.

When signals conflict, preserve the conflict, explain its concrete
consequence, and return it to the earliest owner capable of resolving it. An
accepted hard constraint may invalidate a candidate, but Praxis never averages
the constraint with convenience or polish.

## Treat preference as contextual evidence

A selected candidate is better only relative to what the human actually saw
and valued. Preserve a selected, rejected, mixed, tied, uncertain, or
none-of-the-above reaction when that distinction changes later judgment.
Capture the reason only to the precision a receiving owner needs.

For example, if the human selects login flow A but wants recovery behavior from
flow B, the learning is the mixed reaction and its implications. Recording only
“A won” destroys useful information and may incorrectly turn one choice into a
global rejection of B's ideas.

Feedback normally corrects the current candidate. Promote it into a durable
Requirement, repository rule, or skill only when a named future consumer needs
it and repeated evidence, an explicit human statement, or a clear recurring
mechanism supports the broader scope.

## Design comparisons for honest reactions

Use alternatives only when meaningful contrast can reveal a consequential
preference, assumption, or tradeoff. A comparison should:

- present the relevant differences at comparable fidelity and detail;
- state when polish, completeness, data realism, or implementation depth
  differs;
- label sourced fact, inference, proposal, simulation, and placeholder content;
- make ties, mixed reactions, uncertainty, rejection, and reframing easy;
- preserve material rationale and annotations rather than only the selected
  option; and
- interpret the reaction only at the level the surface can support.

Ordering, verbosity, visual polish, framing, latency, and hidden simulation can
change a reaction. Control an obvious bias when practical; otherwise make it
visible and narrow the conclusion. Do not produce artificial alternatives or
equalize harmless detail merely to satisfy a comparison ritual.

## Require useful contrast from exploration

Research probes, prototypes, candidate solutions, implementation attempts, and
delegated agents earn their cost by adding meaningful contrast, disconfirming
evidence, or new information.

Multiple candidates or agents should pursue distinct hypotheses, mechanisms,
or evidence paths. Agreement based on the same assumptions is one evidence
path, not several. Praxis does not use majority voting to erase correlated
blind spots or material disagreement.

If all attempts are equivalent, fail for the same reason, or are unlikely to
change the judgment, converge on the sufficiently supported path, reframe the
question, seek a different evidence class, or stop. Repetition without
informative feedback and retained learning is not learning.

## Bind feedback to its evaluated context

Feedback applies to the candidate, evidence, evaluator context, and material
conditions actually judged. A later change to behavior, constraints, source,
environment, model, harness, or evaluator may invalidate all or part of the
earlier conclusion.

Preserve still-applicable learning rather than discarding feedback merely
because it is old. Revalidate only the affected judgment against the current
state. Old Plans, reviews, tests, and artifacts remain evidence; they are not
authority over a materially changed target.

## Separate process from outcome evaluation

Outcome evaluation asks whether the bounded claim holds. Process and
engineering evaluation asks whether the result was produced through a
coherent, maintainable, specification-faithful implementation.

Verify owns exact outcome claims. Review owns consequential failure mechanisms,
design degradation, specification drift, and honest coverage. TDD, Debug,
steering checkpoints, and causal probes may supply process-level evidence
inside Delivery. Result judgment incorporates every material finding without
pretending that one evaluator performed another's job.

A successful outcome does not cancel a valid process finding. A sound process
does not prove the outcome. Add step-level scrutiny only when the intermediate
decision can hide a meaningful failure; do not score every action.

## Resist proxy over-optimization

Tests, review findings, coverage, issue completion, diff size, evaluator
agreement, human approval, and other signals each observe a limited property.
Praxis never combines them into one universal reward or quality score.

Name the dimensions relevant to the current judgment and preserve hard
constraints as vetoes. Improvement in one proxy cannot compensate for an
authority breach, specification violation, security failure, regression, or
concrete changeability damage.

Evidence used repeatedly to steer an attempt proves only the behavior it can
detect. When iteration could overfit that surface, add proportionate
disconfirming, held-out, perturbed, independent, or human evidence before
accepting a broader claim. This may be a boundary-level test, different input,
existing regression suite, runtime observation, independent review, or human
inspection. Ordinary low-risk work does not require a ceremonial holdout set.

## Judge evaluator independence honestly

Several judgments strengthen confidence only when they add independent
evidence, perspective, or falsification. Reviewers who receive the same
implementer summary and repeat the same assumptions remain correlated.

The owning agent synthesizes multiple evaluators. It preserves decisive
evidence and disagreements, identifies whether one claim is factual or
human-owned, and recommends the smallest resolving probe or judgment.
Evaluator count, confidence language, and repeatability do not replace
independence.

## Return the smallest sufficient learning message

A feedback or learning return contains only what its receiving owner needs to
act honestly:

```text
Feedback {
  target_or_attempt,
  evaluator_context?,
  observation,
  interpretation,
  kind?,
  decisive_evidence?,
  affected_truth?,
  still_valid_truth?,
  uncertainty_or_disagreement?,
  causal_owner?,
  recommendation?
}
```

This is a semantic prompt, not a serialized schema. Omit anything that does not
change the receiving owner's next action. `kind` may distinguish preference,
evidence, critique, verification, approval, or acceptance when confusion is
plausible. Preserve provenance without manufacturing transcripts, scorecards,
reflection diaries, or receipt ledgers.

The receiving owner interprets and promotes the learning. A supporting skill,
tool, evaluator, reviewer, or delegate never grants authority or updates
governing truth by itself.

## Stop when feedback stops teaching

Continue a local loop while another bounded attempt can plausibly change its
judgment. Converge, reframe, return, or stop when:

- the current claim is sufficiently supported for its consequence;
- additional attempts add no meaningful contrast or new evidence;
- the evaluator cannot observe the disputed property;
- the result depends on a human-owned judgment;
- evidence invalidates governing truth and requires causal backtracking; or
- the next action needs authority the current loop does not possess.

Stopping preserves useful learning and returns control. It never silently
promotes the next candidate, Plan, Evolution, Project, mutation, or external
action.

## Research basis

- Nathan Lambert's [Nature of Preferences](https://rlhfbook.com/c/10-preferences),
  [Preference Data](https://rlhfbook.com/c/11-preference-data),
  [Reward Modeling](https://rlhfbook.com/c/05-reward-models),
  [Over-Optimization](https://rlhfbook.com/c/14-over-optimization),
  [Regularization](https://rlhfbook.com/c/15-regularization), and
  [Evaluation](https://rlhfbook.com/c/16-evaluation) explain contextual
  preference data, proxy rewards, process and outcome supervision, constrained
  optimization, evaluator bias, and Goodhart effects.
- [Algorithm Distillation](https://arxiv.org/abs/2210.14215) and
  [Reward Is Enough: LLMs Are In-Context Reinforcement
  Learners](https://arxiv.org/abs/2506.06303) supply the fixed-weight,
  feedback-conditioned learning model.
- [Reflexion](https://arxiv.org/abs/2303.11366),
  [Self-Refine](https://arxiv.org/abs/2303.17651), and
  [Agentic Context Engineering](https://arxiv.org/abs/2510.04618) provide
  adjacent verbal-memory and contextual-learning mechanisms.

Praxis transfers their feedback discipline, not their model-training
architecture. It does not perform policy-gradient updates, compute token-level
KL divergence, train reward models, or optimize a scalar reward.
