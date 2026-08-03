# Pair

> **Design document — not a runtime skill.** Accepted behavioral contract; `SKILL.md` implementation pending.

Pair is literal shared programming inside one approved Delivery Plan. The human
explicitly asks for it when they want to shape implementation with the agent,
exchange ideas, understand the code, and authorize each coherent mutation.

Pair is an implementation posture, not an owning loop, planning method, or
general conversational mode. It begins only after Plan Approval and preserves
the same Requirements, Issues, Plan boundary, Review, Verify, Result
Acceptance, learning, and stopping rules as ordinary Delivery.

Pair is never an agent recommendation. It exists only when the human directly
asks for this way of participating in implementation.

## Enter Pair without granting mutation authority

When the human says “pair with me” or otherwise explicitly selects Pair, begin
collaborative inspection, explanation, and discussion. That invocation selects
the posture but authorizes no product mutation.

Do not infer Pair from a conversational tone, frequent questions, or the
human's interest in the implementation. Do not use it during Requirements
Discovery, Formalization, planning, review-only work, or orientation.

If no approved current Plan exists, explain the missing Delivery boundary and
recommend the appropriate planning step instead of improvising one inside
Pair.

## Work in decision-sized boundaries

Choose the next coherent coding move small enough for the human to understand
and steer, but large enough to produce a useful checkpoint. A boundary might
add one type and its focused tests, change one function's behavior, or wire one
bounded integration.

Before mutating, state only:

- the relevant observation;
- the exact intended change and affected surface;
- why this is the next move;
- a meaningful tradeoff or risk when one exists; and
- the expected check.

Then wait for ordinary-language permission. Do not repeat the whole Plan,
restate every Requirement, narrate commands, or turn each boundary into a
miniature Plan review.

Permission covers the exact described mutation plus its ordinary formatting and
focused verification. It does not cover the rest of the Plan, nearby cleanup,
another behavioral change, or a consequential external action. Read-only
inspection, explanation, and already-bounded evidence gathering require no
separate permission.

After the boundary, show the material result and decisive evidence before
proposing the next move. Do not ask for every keystroke or disappear for a
large autonomous batch.

## Keep one explicit driver

Either the human or the agent drives each mutation boundary.

When the agent drives, it proposes the exact boundary and waits for permission
before editing. When the human drives, the agent does not create a competing
implementation. It watches the resulting source, answers questions, explains
behavior, challenges consequential mistakes, and helps verify the result.

The driver may switch conversationally between boundaries without changing the
Plan. If both parties edit overlapping code unexpectedly, stop, reread the
actual workspace, and re-establish the next boundary instead of overwriting
either version.

## Teach the consequential reasoning

Pair optimizes for shared understanding as well as correct code. Before a
consequential change, explain the current behavior, relevant constraint,
proposed mechanism, and meaningful alternatives at the human's current level.
Afterward, connect the source change and evidence back to that model.

Keep routine mechanics brief. Expand when the human asks, when the choice
changes future implementation, or when misunderstanding would make the next
decision unsafe.

The human may challenge, replace, or combine the proposed approach. Pair follows
that live judgment while remaining inside governing truth and authority.

## Refine implementation without hiding changed meaning

Pair may collaboratively choose a better internal implementation when it
preserves the approved:

- Requirements and Issue behavior;
- compatibility and dependencies;
- Plan result, targets, and scope;
- consequences, exclusions, and risk;
- recovery; and
- required proof.

Explain consequential deviations before mutation and receive permission for
the revised boundary.

If learning changes any governing item, stop the affected Pair work and return
to the exact causal owner. Changed implementation scope or authority returns to
the Plan; changed detailed behavior returns to the Issue; changed high-level
working form returns to the Evolution; changed need, constraint, or accepted
truth returns to Requirements Discovery.

## Compose supporting capabilities without losing Pair

[Debug](../debug/README.md), [Refactor](../refactor/README.md),
[TDD](../tdd/README.md), [Review](../review/README.md),
[Verify](../verify/README.md), [Check Safety](../check-safety/README.md),
[Make Tangible](../make-tangible/README.md), and
[Security](../security/README.md) retain their normal procedures. Pair invokes
them only for bounded questions or evidence and retains its per-mutation
human-permission posture. Every resulting product mutation still returns
through Pair's explanation and human permission.

Pair may invoke [Delegate](../delegate/README.md) for bounded read-only
exploration, research, review, or
verification when a real benefit survives the overhead. It does not delegate
product mutation. If the human explicitly chooses autonomous Worker
implementation for one named boundary, suspend Pair visibly, review the
returned change, and resume only when the human asks.

## Preserve consequential authority

Conversational closeness never broadens authority. Permission to edit code does
not authorize a destructive migration, data mutation, production call, secret
handling, permission change, cross-project action, commit, push, pull request,
merge, deployment, or other external effect.

Those actions retain exact Plan coverage and explicit human authority for the
action. Pair invokes [Check Safety](../check-safety/README.md) for any triggered
action and interprets its scoped result without delegating authority. Pair
creates no exception and no duplicate gate.

## Let the human stop or redirect immediately

Each permission is temporary, scoped, and revocable. It remains valid only
while its described boundary, assumptions, workspace, and human direction
remain intact.

A stop, redirect, conflicting edit, or material discovery revokes permission
immediately. Stop at the earliest safe point, report the exact partial state
and evidence, and let the human choose whether to inspect, revise, preserve, or
undo it. Do not finish, revert, or clean up by assumption.

Approval, successful tests, or praise for one boundary does not exit Pair or
authorize another mutation. Pair remains active until the human explicitly
ends or suspends it. A switch to autonomous Delivery must name the boundary and
remains limited by the approved Plan.

## Finish through ordinary Delivery

When the approved implementation boundary is integrated, invoke the same
proportionate [Review](../review/README.md) and
[Verify](../verify/README.md) work required for autonomous
[Deliver](../deliver/README.md). Return their evidence to Deliver, which owns
the complete result explanation and Result Acceptance.

Per-boundary mutation permissions and conversational reactions do not accept
the Plan result, Evolution, or Project. Result Acceptance remains the human's
separate judgment and exhausts the Plan's authority.

Pair creates no transcript, permission ledger, or durable session record.
Source, tests, the current Plan, and native conversation carry ordinary detail.
Promote lasting learning only through its normal owning record; keep
temporary implementation notes only under Delivery's ordinary lifetime rules.

Pair completes when the human ends the posture, the work returns to an earlier
owner, or the integrated result reaches ordinary Delivery judgment. It does not
commit, publish, begin later work, or infer the next Plan.

## Packaging

Keep the complete live procedure in `SKILL.md`. Pair needs no skill-local
reference, script, driver protocol, or permission ledger initially. Splitting
the method would hide behavior the agent must retain on every conversational
turn.

## Direct dependencies

### Skills

- [Debug](../debug/README.md) — diagnose unexpected behavior with the human;
  return a proved cause; Pair retains the live implementation exchange.
- [Refactor](../refactor/README.md) — improve a named pressure point; return
  preservation evidence; Pair retains decision-sized mutation permission.
- [TDD](../tdd/README.md) — develop the current behavior through an honest
  proving seam; return executable evidence; Pair retains collaboration.
- [Review](../review/README.md) — inspect the integrated change; return
  findings; Pair retains correction discussion.
- [Verify](../verify/README.md) — prove exact claims; return current evidence;
  Pair retains the live result until it returns to Deliver.
- [Check Safety](../check-safety/README.md) — inspect a consequential proposed
  action; return `proceed`, `revise`, or `stop`; Pair retains the human's exact
  permission boundary.
- [Make Tangible](../make-tangible/README.md) — construct and verify something
  needed for live reaction or teaching; return reaction and limits; Pair
  retains the implementation conversation.
- [Security](../security/README.md) — investigate an attacker-focused question
  arising inside a mutation boundary; return validated findings and limits;
  Pair retains the permission boundary and correction discussion.
- [Delegate](../delegate/README.md) — perform bounded read-only investigation;
  return compact evidence; Pair retains the driver, integration, and mutation.

### Shared references

- None.
