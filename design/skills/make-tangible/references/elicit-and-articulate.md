# Elicit and Articulate

> **Status: accepted semantic source; target runtime projection: `references/elicit-and-articulate.md`.**

> Load this reference only after Make Tangible selects Elicit and Articulate as
> the artifact's primary pattern.

## The judgment it supports

Elicit and Articulate helps a human express latent requirements, preferences,
constraints, corrections, and contextual knowledge that are difficult to state
without seeing or manipulating something concrete.

It is useful for unknown knowns: meaning the human recognizes in context but
has not yet verbalized. The result is an inspectable expression for the calling
loop to interpret, not governing truth created by a control or form submission.

## Preserve the boundary with Interview

Interview owns conversational question selection, recommendation, human
exchange, and interpretation. Elicit and Articulate owns a concrete reaction
surface when prose alone cannot expose or express the missing human knowledge.

Interview or another owner may invoke this pattern. The surface does not replace
its caller, decide where the answer belongs, or promote a reaction into
Requirements, an Evolution, an Issue, a Plan, or another governing record.

Use ordinary conversation when the human can answer clearly without a tangible
context. Use this pattern when the question depends on seeing behavior,
comparing situated consequences, manipulating a value, or reacting to exact
evidence.

## Ask only consequential contextual questions

Each question should materially change the owning judgment. Place it beside the
behavior, evidence, or choice it concerns and explain the consequence of the
answer.

When the agent has a supported view, state a recommendation and why. Still
allow the human to:

- select a credible offered response;
- combine parts;
- supply custom wording;
- correct the premise;
- preserve uncertainty;
- defer the answer; or
- reject every offered framing.

Order dependent questions so earlier answers simplify later ones. Do not turn
the surface into a survey of cosmetic details or ask questions whose answers
cannot affect the caller's work.

## Recommend without steering invisibly

Keep the agent's recommendation explicit in words rather than encoding it
through a preselected control, unequal polish, loaded wording, or selective
description.

Present credible responses fairly and show material consequences for each.
Keep custom correction available. Visually and semantically distinguish:

- accepted or sourced context;
- the agent's recommendation;
- the human's actual response;
- a simulated or placeholder choice; and
- unanswered or invalidated meaning.

The goal is to articulate human knowledge, not collect agreement with the
surface designer.

## Preserve contextual meaning

Bind each material response to:

- the exact artifact version and visible state;
- the question that was asked;
- relevant conditions and audience;
- qualifications, mixtures, and exceptions;
- human corrections to the premise; and
- remaining uncertainty.

Do not generalize a contextual reaction prematurely. “Use a dense layout for
the internal operations queue” does not establish a global preference for dense
interfaces. The owning loop may promote a broader preference only when it has
evidence that the meaning generalizes.

## Reopen dependent meaning when context changes

If a revised answer, artifact state, or later reaction changes the basis of a
dependent question, reopen that question. Preserve unaffected answers and
foreground the semantic diff.

Never export stale answers formed against an earlier state as if they still
apply. Mark unanswered, deferred, and invalidated questions accurately rather
than filling them with agent assumptions.

## Compose supporting patterns proportionately

Elicit and Articulate may use:

- Explore and Discover when the human is discovering criteria while reacting;
- Compare and Choose when understood options need a contextual decision;
- Experience or Simulate when behavior must be felt before it can be expressed;
- Manipulate and Export when edited state carries the response;
- Inspect and Annotate when reaction attaches to exact evidence; and
- Teaching Surface when unfamiliar context prevents informed
  expression.

It remains primary when the purpose is helping the human state latent meaning
rather than exploring possibilities or selecting among already-understood
alternatives.

## Verify before presenting

Check that:

- every question can materially affect the owning judgment;
- questions refer to the currently visible artifact state;
- consequences and recommendations are supported and stated fairly;
- no hidden default, unequal presentation, or loaded wording substitutes for a
  recommendation;
- custom, mixed, qualified, uncertain, and corrective responses remain
  possible;
- dependent questions and answers reopen when their basis changes;
- recommendations and human responses remain distinct;
- unanswered, deferred, and invalidated questions are represented accurately;
  and
- export preserves the exact context and meaning of every consequential
  response.

## Return to the caller

Return the exact artifact version together with:

- the human's expressed requirements, preferences, constraints, and
  corrections;
- the context and conditions under which each applies;
- the recommendation presented and the human response to it;
- invalidated, deferred, or still-uncertain questions;
- any newly discovered criterion or false premise; and
- the implication for the owning question.

The caller interprets the result, promotes only supported meaning, and decides
whether to continue, revise an earlier owner, or invoke another bounded
capability.

## Worked compositions

Thariq Shihipar's
[interactive interview](https://github.com/ThariqS/html-effectiveness/blob/main/unknowns/06-interview.html)
places consequential questions beside their architectural consequences and
exports the resulting answers. The
[annotation-toolbar mock](https://github.com/ThariqS/html-effectiveness/blob/main/unknowns/04-toolbar-mock.html)
uses situated A/B questions and a generated reply, while the
[design-directions surface](https://github.com/ThariqS/html-effectiveness/blob/main/unknowns/03-design-directions.html)
captures element-level keep and reject reactions. They are examples of
elicitation mechanics, not fixed questionnaires.
