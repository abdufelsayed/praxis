---
name: discover-requirements
description: "Discover consequential Requirements truth. Use when unknown needs, outcomes, constraints, assumptions, feasibility, or blind spots block an honest route, specification, or contained edit; exclude isolated factual questions and human-only judgments."
---

# Discover Requirements

Load [Praxis Control](../../references/control.md).

Work in the inquiry's `understand` and `accept_meaning` positions. Use this
capability when uncertainty could change a need, outcome, constraint,
feasibility, route, authority boundary, or proof. Clear work skips it. A
bounded factual question belongs to [Research](../research/SKILL.md); a solely
human judgment belongs to [Interview](../interview/SKILL.md).
Load [Product Discovery Collaboration](../../references/collaboration.md) when
the inquiry needs paired product, domain, package, API, or developer-experience
judgment.

## Establish the inquiry

Read the request, current source, References, an existing Project bundle, and
artifacts before asking the requester to repeat context. Infer the intended outcome
and actor, current system and domain truth, stated needs and exclusions,
accepted choices, and assumptions that could change the next judgment. Load
[blind spots](references/blind-spots.md) only when consequential territory is
unfamiliar enough that a bounded omission pass could change the inquiry.

If this already supports an honest route, return `no-op` with sufficient truth,
evidence, limits, and the recommended next choice.

## Run one evidence-to-Requirements loop

Maintain one live frontier: the current unknown, candidate interpretations,
what each would change, evidence and reactions, and uncertainty safe to carry.
Keep it in conversation or, when substantial uncertainty needs durable
navigation, in the Project's Unknowns Map.

Supporting owners are probes, not stages. Do not run Research, then Interview,
or any other fixed sequence by default. Repeat this loop only while the current
inquiry needs it:

1. Name the one uncertainty most likely to change governing meaning or the
   usefulness of later questions.
2. Choose the cheapest evidence class able to resolve or sharpen it.
3. Consume that probe's exact return before choosing another.
4. Separate what the return establishes from what it implies for this Project.
5. Reflect the changed working interpretation and either promote supported
   truth, name the next question, carry uncertainty safely, or converge.

Choose the cheapest capable evidence class. Load
[reference interpretation](references/reference-interpretation.md) when an
existing implementation, document, image, or behavior carries richer meaning
than a verbal description. Otherwise use ordinary source inspection or the
smallest supporting owner:

- [Research](../research/SKILL.md) for a discoverable fact;
- [Interview](../interview/SKILL.md) for a human-owned choice;
- [Orient](../orient/SKILL.md) for a settled model, only after the requester accepts
  that teaching interaction;
- [Make Tangible](../make-tangible/SKILL.md) when a perceptible surface is the
  cheapest faithful probe;
- Design Solution only when an accepted Requirements baseline already constrains
  the comparison; then call [Design Solution](../design-solution/SKILL.md) for
  that one consequential shape choice. Without an accepted Requirements
  baseline, explore solution-shaped evidence through Reference interpretation,
  Research, or Make Tangible; keep it as evidence and do not recommend or
  select an architecture;
- [Security](../security/SKILL.md) for an attacker-focused unknown that could
  change a constraint, accepted risk, or proof obligation;
- [Plannotator](../plannotator/SKILL.md) bundled facts only for a small set of
  already-grounded independent observable statements.

Consume each result immediately as evidence, reaction, or local judgment.
The dependency never revises Requirements, passes a gate, or chooses the route.
Do not invoke a second dependency after a blocking or stopped return. Bundled
facts retain stable IDs, source, exact edits/removals/comments, and verification
choices; they create no Fact or Goal record and are not Alignment.

## Integrate before the next probe

Classify every usable return before continuing:

- **Evidence:** what the source, behavior, artifact, or human answer directly
  establishes, with provenance and limits.
- **Project interpretation:** what that evidence means for the current Outcome,
  boundary, actor, or problem model, still distinct from the evidence itself.
- **Candidate Requirement:** the narrow supported need or constraint that later
  work must respect and why it matters.
- **Remaining uncertainty:** the unresolved fact, human judgment, conflict, or
  safe-to-carry condition and its owner.
- **Solution implication:** a possible later shape that is neither a Requirement
  nor a selection.

Keep preference, observed feasibility, and hard constraint distinct. Raw
selections, prototype reactions, scans, and hypotheses remain evidence until
their cause, fidelity, and governing consequence are understood.

Use this promotion chain: `Evidence -> supported Project interpretation ->`
`consequential need or constraint -> candidate Requirement`.
Call Interview only when a link depends on human intent, preference, priority,
tolerance, or recognition; do not interview merely because Research returned.
When the requester's judgment or a useful update is needed, tell them only what
changed, what remains inference or uncertainty, and the one next question when
one is needed. Do not interrupt internally resolvable probes with status or
routing narration. Expose internal state only when it changes the requester's
decision or authority.

## Apply the loop to a concrete case

Suppose Research maps a reference product and finds typed events, context,
redaction, sampling, and multiple destinations. A source feature map does not
establish the target Project boundary. Preserve the feature map as evidence,
interpret whether those capabilities appear to form one coherent experience,
and ask through Interview only if the target's intended ownership is still a
human judgment. A clarified ownership answer may support a narrow candidate
Requirement; it does not select the package architecture. If the requester
cannot judge from prose, use Make Tangible; if a factual premise remains, use
Research. Integrate either return through the same checkpoint.

Project dependency results once and without flattening: integrate Research
`answered` or sufficient `no-op`, Interview `clarified`, scoped `qualified` or
`no-op`, Orient `explained`, `understanding-observed`, or
`understanding-unconfirmed`, Make Tangible `no-op`, `constructed` or
meaning-preserving `revised`, Design Solution `recommended`, `selected`,
`qualified` or `no-choice`, Security `no-op`, `findings`, or
`no-high-confidence-findings`, and a complete bundled
facts reaction. Changed governing meaning is `revised`; unresolved human
judgment—including `deferred` or `conflicting`—is `needs-human-judgment`;
`needs-evidence`, `unverified`, `needs-verification`, `refused`,
`orientation-blocked`, or `misconception-unresolved` blocks when required;
any dependency dismissal or `stopped` becomes top-level `stopped` with
`dependency-stopped`. Preserve exact evidence, limits,
partial state, owner, and revisit condition.

Promote only the narrowest supported truth later work must respect, with
provenance, why it matters, and its consequence. Meaning-changing evidence
returns through shared
[learning and return](../../references/learning-return.md) to the earliest
owner and reopens only affected acceptance.

## Harvest substantial research with the requester

Research expands visibility; it does not establish what the product should
own. When substantial research exposes features, alternatives, blind spots, or
new vocabulary, do not copy the report into Requirements or turn every finding
into an Unknown. Build the next decision frame from:

1. the direct question the requester must answer;
2. one concrete product or package-consumer scenario;
3. what the evidence establishes and does not establish;
4. a recommendation and why it fits the accepted direction; and
5. real alternatives or stakes only when they change the judgment.

Before the first product judgment, present the compact transition brief from
Product Discovery Collaboration. Show a provisional topic map, dependency
order, and recommended first topic. Wait for the requester to select that
transition. Research completion does not select it.

Use Interview for the human-owned link. Work through dependent judgments in
conversation; use Plannotator only for a small independent grounded bundle.
After a coherent topic closes, classify relevant findings as promoted through
accepted meaning into an atomic Requirement, retained for later design or
formalization, a genuine unresolved product question, rejected for the current
boundary, or incidental. Apply these dispositions to the records that own the
resulting meaning.

When durability is needed, preserve the factual report through
[Research Findings records](../../references/records/research.md) and persist
the coherent closeout together: atomic Requirements, the redrawn Unknowns Map,
research and reference links, and compact Brief navigation. Never create a
new record type unless it has a distinct purpose, consumer, lifecycle, and
authority boundary.

## Converge and align when durable

Converge when Formalization can propose precise behavior without guessing.
Uncertainty may remain when it is safe for a named later owner. Revalidate only
volatile governing findings before Alignment.

Keep short discovery conversational. Do not persist after each small answer.
Create or extend a Project bundle only for cross-session continuity,
substantial inquiry, retained evidence, or an explicit human request, and only
inside an authorized persistence boundary. Then load
[record foundations](../../references/records/foundations.md) and
[discovery records](../../references/records/discovery.md). Requirements state
one independently understandable obligation each; split obligations that can
be accepted, revised, falsified, or formalized independently.

At topic closeout, reconcile accepted meaning, corrections and rejections,
research dispositions, Requirements, and genuine remaining uncertainty before
moving to a new topic. Present the complete stable Project Brief,
Requirements, material uncertainty, and judgment-relevant References, links
to Research Findings, and artifacts through one Plannotator Record Gate.
Approval
accepts only that revision; semantic feedback revises affected Requirements
and repeats Alignment. Denial or dismissal stops; transport failure blocks
without a conversational substitute.

Return `discovered`, `aligned`, `revised`, `needs-human-judgment`, `blocked`,
`stopped`, or `no-op` with current truth, Requirements and provenance,
retained references or artifacts, safe-to-carry uncertainty, material probes,
gate state when used, causal owner, and recommendation. Do not start
Formalization, Delivery, mutation, or publication.
