---
name: interview
description: "Resolve one bounded set of human-owned decisions. Use for intent, preference, priority, tolerance, ambiguous meaning, or recognition-based reaction that evidence alone cannot decide."
---

# Interview

Help the requester settle decisions that only they can own. Facts are the
agent's job; choices, priorities, tolerances, and meaning remain the requester's.

## Map the decision tree

State the decision, why it matters, accepted context, known constraints, and
what changes with each plausible answer. Map dependent decisions as a tree. Its
frontier is every question whose prerequisites are already settled.

Use [Research](../research/SKILL.md) for a factual prerequisite. Do not ask the
requester to look up something available from the repository, tools, or primary
sources. Use [Make Tangible](../make-tangible/SKILL.md) when the decision needs
something to compare, manipulate, experience, or see.

This step is complete when every open question is either on the current
frontier or blocked by a named prerequisite.

## Ask consequential questions

Ask only questions whose answers can change behavior, scope, architecture,
compatibility, cost, risk, or acceptance. In ordinary conversation, ask one
consequential question at a time. When the requester asks to be grilled or to
resolve a large design tree, ask the whole independent frontier as a numbered
round and give your recommended answer for each question.

Lead with the actual question and enough concrete context to judge it. Offer
materially different options only when they expose a real choice, and allow the
requester to combine, reject, qualify, defer, or reframe them. For
recognition-based reaction, collect the first response before recommending. For
technical tradeoffs, explain the evidence and recommend a choice without
presenting advice as preference.

When the requester asks for [Plannotator](../plannotator/SKILL.md), use it for an
independent bundle of already-grounded questions. Otherwise keep the interview in
conversation. Dependent questions remain in later rounds.

After each answer, reflect only meaning that is new, conditional, changed, or
easy to misread. Recompute the frontier. Preserve "I don't know" by separating
missing fact, missing experience, unresolved model, and safely deferred choice.

This step is complete when the frontier is empty, the caller can proceed with
named uncertainty, or the requester pauses the interview.

## Return the decisions

Return the settled and deferred decisions, conditions, recommendations,
evidence limits, contradictions, and remaining prerequisites. Keep them
conversational unless the requester asks for persistence or names a future
consumer. Stop before acting on the decisions unless the same request already
authorized that work.

When the requester needs to collect decisions or facts from someone else
asynchronously, read [prepare a questionnaire](references/questionnaire.md).
Interview still owns the decision gap; the document is only its chosen exchange
surface.
