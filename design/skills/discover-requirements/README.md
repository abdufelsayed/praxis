# Discover Requirements

> **Design document — not a runtime skill.** Accepted behavioral contract and target package design; runtime implementation pending.

## What it does

Discover Requirements owns the live inquiry when consequential uncertainty
makes an honest route, specification, or contained edit impossible. It learns
what the human needs and what the territory permits, integrates bounded probes,
and turns useful learning into Requirements that later work can trust.

Its leading idea is **learn enough to propose honestly**. It does not eliminate
all uncertainty, run a mandatory preliminary phase, or manufacture a complete
requirements document for every request. Clear work skips it.

## When to reach for it

Use Discover Requirements when progress depends on:

- consequential unstated intent or ambiguous outcome;
- an unfamiliar domain or code area;
- assumptions whose truth materially changes the work;
- tacit preferences the human may recognize only through examples;
- unproved feasibility or important system constraints; or
- blind spots the human may not yet know to ask about.

Formalization or Delivery may return to Discover Requirements when later
evidence changes a need, constraint, accepted preference, relevant truth, or the
problem itself. Return only to the exact affected Requirements truth rather than
restarting the whole Project.

## Establish the starting point

Begin with the request, current source, and available References. Infer what
they already reveal before asking the human to repeat it.

Clarify only context that changes the collaboration: the intended outcome,
relevant experience, recognized uncertainty, what the human knows they care
about, and where they need teaching or stronger involvement. This is a
proportionate starting point, not an intake form.

When both the human and agent are unfamiliar with consequential territory, run
a blind-spot pass. Inspect enough of the domain and codebase to surface the few
missing considerations most likely to change the inquiry, then recommend the
next useful probe. Do not produce an exhaustive risk inventory.

## Own one adaptive inquiry

Discover Requirements chooses the cheapest method capable of changing current
understanding:

- Research for discoverable factual claims;
- Interview for human-owned intent, preference, priority, tolerance, or
  judgment;
- Orient, after the human accepts a bounded suggestion, when settled domain or
  system truth must be understood before the human can answer the actual
  Requirements question;
- Make Tangible when comparison, experience, manipulation, navigation, or
  annotation makes reaction possible;
- rich References when existing source or behavior carries more useful detail
  than a verbal description; and
- ordinary source inspection, brainstorming, explanation, or teaching when
  those are sufficient.

These are instruments rather than stages. They may recur, compose, or make one
another unnecessary. The supporting skill answers its bounded question and
returns; Discover Requirements keeps ownership of the inquiry and decides what
the learning changes.

Orient teaches settled background; it does not ask what should become true.
Discover Requirements owns every question whose answer may change a need,
preference, constraint, desired outcome, or other problem truth. Never turn an
orientation answer or misunderstanding into a Requirement by implication.

Invoke [Security](../security/README.md) when an attacker-focused unknown could
materially change a Requirement, constraint, accepted risk, or required proof.
Security returns validated findings and coverage limits; Discover Requirements
decides what that evidence changes in Requirements truth.

When a probe produces no discriminating feedback, change the evidence class or
safely defer the uncertainty. If verbal questions keep producing “I would need
to see it,” use a reference comparison or tangible surface instead of
rephrasing the same interview and calling repetition learning.

Its local rhythm is recursive:

```text
explore -> make tangible -> react -> synthesize -> judge
    ^                                           |
    +---------------- refine -------------------+
```

Each turn returns the smallest useful learning unit: a discovery and its
consequence, the evidence or artifact needed for judgment, one better question,
or a supported next move. When no honest recommendation exists, state the
missing evidence or human judgment instead of inventing direction.

## Unknowns are a live landscape

The optional Unknowns Map is an evolving picture of where understanding is
incomplete, not a backlog of questions. Unknowns may appear, disappear, merge,
split, or change shape, and unknown unknowns cannot be listed in advance.

Probe one highest-value area of uncertainty at a time: the area most likely to
change the need, constraint, system boundary, route, authority, required proof,
or usefulness of later questions. Investigate a prerequisite first when it
controls several downstream judgments. Completion does not require an empty
Map.

## Interpret References

A Reference is more than a link. Preserve:

- the exact source, version, commit, or path;
- the behavior, structure, or quality the human values or rejects;
- the evidence or reaction already obtained; and
- the Requirement or later judgment it informs.

Prefer working source and observable behavior when they carry the semantics
more precisely than screenshots or descriptions. A Reference guides inquiry;
it does not become governing truth merely because it exists.

## Synthesize continuously

After each material probe, update the working Requirements, interpreted
References, artifact reactions, uncertainty, and current understanding. Show
the human the small semantic change when it affects the inquiry, but do not
replay the research process or ask for approval after every working edit.

Promote feedback only after causal interpretation: what the human or
environment observed, what likely produced the result, what the probe's
fidelity could test, and which governing truth actually changed. A rejected
prototype may reveal a problem with its simulated data rather than rejection of
the underlying workflow, so raw selections and outcomes remain evidence until
their meaning is supported.

Promote only truth later work must respect:

- human needs and constraints;
- accepted preferences and choices; and
- relevant findings about the actual territory, including known volatility or
  accepted future direction when it materially changes solution judgment.

Each Requirement preserves provenance, why it matters, and its consequence for
Formalization. Promote the underlying need or constraint at the narrowest
supported scope; preserve a literal preference only when the preference itself
governs later judgment. “Operators must scan twenty records quickly” carries
more useful truth than the overgeneralized “the user likes compact tables.”
Supporting facts remain evidence or References unless they themselves govern
later work. Preserve concrete change pressure and why it matters rather than
guessing how every possible future should be implemented.

Desired experience, factual feasibility, and hard constraints remain distinct
signals. When they conflict, preserve the tension and run the smallest probe or
human discussion capable of finding a valid Requirement boundary. A preferred
frictionless recovery flow does not erase a security constraint, and the
constraint does not erase the desired experience.

Discover Requirements may explore candidate solutions to expose uncertainty,
but it does not commit Evolution or Issue behavior, interfaces, failure
semantics, or implementation approach. Those formal commitments belong to
Formalization.

Discover Requirements invokes [Make Tangible](../make-tangible/README.md) when
a question needs a concrete reaction artifact. When
[Plannotator](../plannotator/README.md) can carry that verified artifact
faithfully, Make Tangible invokes its Reaction Review and returns the exact
reaction and fidelity limits. Plannotator creates no Reference, prototype,
diagram, Requirement, or governing meaning.

When several observable behaviors or acceptance criteria are already grounded
but easier for the human to edit together, Discover Requirements may invoke
[Plannotator](../plannotator/README.md)'s optional facts surface. Those edits
are feedback to synthesize
into Requirements. They create no `Fact` record and never replace Requirements
Alignment.

## Convergence and Requirements Alignment

Converge when Formalization can make precise proposals without guessing about
the Project Outcome or required human truth. Remaining uncertainty may continue
when it cannot undermine a required Requirement and is safe to carry to a
known later owner or consumer, or is irrelevant to the next judgment. Record
why carrying it is safe and where it becomes relevant again.

Before Requirements Alignment, revalidate consequential governing findings
whose source or material conditions may have changed during the inquiry.
Refresh only the affected truth; stable human needs and still-applicable
evidence do not require ceremonial rediscovery.

When synthesized Requirements will become the provisional basis for
Formalization, Delivery, or durable cross-session work, present:

- the synthesized Project Brief and Requirements;
- material uncertainty that is safe to carry and why; and
- links to only the References or tangible artifacts needed for judgment.

Invoke [Plannotator](../plannotator/README.md)'s Record Gate for that complete stable
Requirements target. Requirements Alignment provisionally accepts that current
truth. It starts no Formalization or Delivery activity and grants no mutation authority.
After approval, the agent explains what was accepted, recommends one
proportional route, and waits for the human's conversational choice.

After Alignment, editorial corrections and provenance-only additions may
continue without another gate because they do not change accepted meaning. A
change to a Requirement's meaning, strength, scope, or downstream obligation is
a semantic revision: present the Plannotator diff from the accepted version and
repeat Requirements Alignment before affected forward work continues.

Pure understanding, rejection, abandonment, short clarification, or accepted
conversational truth sufficient for a standalone Issue or Plan may conclude
without Requirements Alignment. The agent still explains the current truth,
visible uncertainty, and recommended next human choice.

## Persistence and authority

Keep short discovery conversational. Create or extend a Project bundle only
when another session or owner needs continuity, concrete artifacts or
References must survive, the inquiry becomes substantial, or the human asks for
durable records. Files remain lazy; an empty Unknowns Map or artifact directory
is not useful continuity.

When continuity is useful, the Project Brief is the compact entry point;
Requirements hold governing meaning; the optional Unknowns Map exposes
substantial live uncertainty; the References Index preserves exact sources and
their interpretation; `references/` retains unstable or inaccessible source
material; and `artifacts/` retains native reaction surfaces or experiment
results. Raw research narration and interview transcripts are not deliverables.
Translate their valuable evidence, reactions, needs, constraints, and
uncertainty into the owning records.

When no Project is useful, pass the accepted outcome, constraints, evidence,
and visible uncertainty conversationally into a standalone Issue or Plan.
Never create a Project only because a later durable record needs an artificial
parent.

Read-only inquiry and isolated disposable reaction artifacts may proceed
proportionately. A product-mutating or externally consequential experiment
requires explicit authority for its question, boundary, exclusions, stopping
signal, cleanup, and retained evidence. Discovery authority never becomes
product implementation authority; experiment approval grants only that
experiment.

## It is working when

- Clear work passes without discovery ceremony.
- The starting point is inferred before the human is questioned.
- Blind-spot work surfaces a few consequential omissions rather than an
  inventory.
- Every probe has a reason and returns to one live inquiry.
- A non-discriminating probe changes evidence class or stops instead of being
  repeated.
- Supporting skills never take over ownership or route selection.
- References preserve interpretation and relevance rather than links alone.
- Probe outcomes are causally interpreted before promotion.
- Working Requirements change as evidence and human reaction change.
- Desired experience, feasibility, and hard constraints remain distinct when
  they conflict.
- Requirements preserve the underlying need at the narrowest supported scope.
- Consequential governing findings are current at Alignment.
- Known change pressure is visible without speculative future Requirements.
- Findings and artifacts remain evidence until promoted into governing truth.
- Formal solution commitments remain in Formalization.
- Convergence means honest next judgment, not complete certainty.
- Alignment presents synthesis rather than raw research material.
- Approval stops before any next route or mutation.

## Skill structure

The complete inquiry, probe selection, synthesis, convergence, Alignment, and
stopping procedure belongs in `SKILL.md`. Two conditional skill-local
references deepen:

- [Blind-Spot Discovery](references/blind-spot-discovery.md) when
  unfamiliar consequential territory may hide the questions that matter; and
- [Interpreting References](references/interpreting-references.md)
  when rich existing source or behavior carries more useful meaning than a
  verbal description.

Unknowns Map semantics remain in this package. Make Tangible owns artifact
fidelity and lifetime. The local references deepen selected methods; they
never inherit inquiry ownership, synthesis, route selection, gates, authority,
or stopping.

The runtime skill invokes [Research](../research/README.md),
[Interview](../interview/README.md), [Orient](../orient/README.md),
[Make Tangible](../make-tangible/README.md),
[Design Solution](../design-solution/README.md),
[Security](../security/README.md), and
[Plannotator](../plannotator/README.md) when their owned questions or
interactions appear. Discover Requirements interprets every return and retains
inquiry ownership, synthesis, Requirements meaning, Alignment consequences,
and stopping.

## Research basis

Thariq Shihipar's
[A Field Guide to Fable: Finding your unknowns](https://claude.com/blog/a-field-guide-to-claude-fable-finding-your-unknowns)
provides the unknown taxonomy, starting-point disclosure, blind-spot passes,
Research, Interview, References, prototypes, explainers, and implementation
learning that Praxis turns into one adaptive inquiry.

Anthropic's
[Effective context engineering for AI agents](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents)
supports progressive disclosure and high-signal context rather than loading
everything up front. HumanLayer's
[Advanced Context Engineering](https://github.com/humanlayer/advanced-context-engineering-for-coding-agents/blob/main/ace-fca.md)
supplies the brownfield repository-research emphasis and the need to understand
the territory before consequential implementation. Discover Requirements
invokes Research, Make Tangible, Security, or another owning capability when
non-trivial evidence or feedback design is required.

## Direct dependencies

### Skills

- [Research](../research/README.md) — resolve a bounded codebase, domain, or
  empirical question; return evidence and uncertainty; Discover Requirements
  retains synthesis.
- [Interview](../interview/README.md) — resolve human-owned needs, preferences,
  and reactions; return scoped judgments; Discover Requirements retains the
  Requirements model.
- [Orient](../orient/README.md) — teach one settled background model after the
  human accepts the suggestion; return comprehension and uncertainty; Discover
  Requirements retains elicitation and Requirements meaning.
- [Make Tangible](../make-tangible/README.md) — construct and verify a
  prototype, comparison, navigation aid, or other reaction surface; return
  artifact, reaction, and limits; Discover Requirements retains interpretation.
- [Design Solution](../design-solution/README.md) — explore a consequential
  solution question needed to understand requirements; return a solution
  shape; Discover Requirements retains problem truth.
- [Security](../security/README.md) — investigate a security unknown that could
  change Requirements; return validated findings and limits; Discover
  Requirements retains promotion into Requirements truth.
- [Plannotator](../plannotator/README.md) — present a faithful existing target,
  facts surface, or Requirements Alignment; return exact reaction or decision;
  Discover Requirements retains gate meaning and stopping.

### Shared references

- [Learning and Return](../../references/learning-and-return.md) — interpret
  discoveries and revise the exact Requirements truth they affect.
- [Records: Core](../../references/records/core.md) and
  [Requirements Discovery](../../references/records/discovery.md) — create,
  revise, place, and validate the Project discovery bundle.

## Target runtime package

> **Status: accepted target package design; runtime implementation pending.**
> This section is not implementation authority.

### Invocation and host projection

Discover Requirements is model-invoked because any Praxis owner may need it
when consequential unknowns make honest progress impossible.

```yaml
---
name: discover-requirements
description: "Discover consequential Requirements truth. Use when unknown needs, outcomes, constraints, assumptions, feasibility, or blind spots block an honest route, specification, or contained edit; exclude isolated factual questions and human-only judgments."
---
```

```yaml
interface:
  display_name: "Discover Requirements"
  short_description: "Turn consequential unknowns into Requirements"
  default_prompt: "Use $discover-requirements to resolve the unknowns blocking trustworthy Requirements."
policy:
  allow_implicit_invocation: true
```

### Information hierarchy and references

`SKILL.md` keeps starting-point inference, one adaptive inquiry, probe
selection, live Unknowns Map semantics, continuous synthesis, convergence,
Requirements Alignment, authority, return, and stopping inline. The inquiry is
complete when the next governing judgment is honest, not when uncertainty is
exhausted.

| Decision point | Target reference | Load when | Keep inline when | Semantic ownership | Source material | Direct consumers | Gaps |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Unfamiliar blind area | `references/blind-spots.md` | Consequential unfamiliar territory may hide questions the current inquiry cannot name. | Known unknowns already bound the inquiry. | Discover Requirements | [Blind-Spot Discovery](references/blind-spot-discovery.md) | Discover Requirements | None. |
| Rich existing source | `references/reference-interpretation.md` | An implementation, product, document, image, or behavior must be interpreted as evidence. | A simple source fact can be handled by Research. | Discover Requirements | [Interpreting References](references/interpreting-references.md) | Discover Requirements | None. |
| Causal learning | `../../references/learning-return.md` | Evidence changes accepted Requirements or an earlier governing premise. | Working discovery truth is still unaccepted. | Cross-skill | [Learning and Return](../../references/learning-and-return.md) | Discover Requirements | None. |
| Record lifecycle | `../../references/records/foundations.md` | A durable Project discovery bundle is created, moved, materially revised, or retired. | Conversation remains sufficient. | Cross-skill | [Records Core](../../references/records/core.md) | Discover Requirements | None. |
| Discovery record bodies | `../../references/records/discovery.md` | Authoring or validating Brief, Requirements, Unknowns, or interpreted References. | No durable record is needed. | Cross-skill | [Requirements Discovery Records](../../references/records/discovery.md) | Discover Requirements | None. |

Local references contain only their selected inquiry method; entry, synthesis,
calls, gates, authority, and stopping remain inline. The existing calls and
returns are accepted. Effects are conversational discovery, authorized records,
and artifacts owned by Make Tangible. There are no scripts, assets, fixtures,
templates, or required integrations. Target files add only the two named local
references to the required package files.

`SPEC.md` adds cases for clear-work no-op, inferred starting point, blind-spot
pass, rich source interpretation, human judgment, factual research, experiential
probe, nondiscriminating probe, false premise, changing Requirements, safe
uncertainty, durable versus conversational discovery, Alignment revision, and
approval stopping. No package decision remains unresolved.
