# Reviewing Delivered Results

> **Status: accepted Review reference design; runtime implementation pending.**
>
> Load this reference when the fixed target is a Result claiming that bounded
> Delivery work is complete or explicitly partial. Review retains target
> ownership, finding quality, return, and stopping.

## Reconstruct the claimed outcome

Read the accepted Issues or standalone outcome, the approved Plan, its exact
authority, the integrated working form, and the Result's evidence,
limitations, learning, unresolved questions, and acceptance claim.

Review the Result as Delivery's bounded return message. Do not reduce it to
whether the diff looks reasonable or whether a test command exited
successfully.

## Reconcile claim and coverage

Trace every promised behavior and required proof to current evidence. Check
whether the evidence demonstrates the governing boundary, including material
failure paths and inherited behavior exposed by the change, and whether its
environment and freshness support the claim being made.

Distinguish three cases:

- **Failed behavior:** evidence shows the working form violates the accepted
  outcome.
- **Missing or weak evidence:** the behavior may work, but the Result cannot
  honestly support its claim.
- **Incomplete disclosure:** material limitations, deviations, learning, or
  unresolved questions are absent or understated.

The correction and causal owner differ across these cases, so do not collapse
all three into “tests needed.”

## Judge the returned learning

Check that material implementation discoveries are represented honestly and
returned to the exact owner when they change accepted meaning, proof, risk, or
authority. Routine implementation narration is unnecessary, but omitting a
discovery that invalidates an Issue or Plan makes the Result misleading.

A declared limitation must match the governing contract. It cannot quietly
relabel an unimplemented required behavior as deliberate.

## Compose only missing judgment

Invoke Code Review when the implementation itself has not received the needed
Specification Fidelity or Engineering Integrity judgment. Invoke Verify for a
bounded factual claim whose current proof is missing or disputed. Do not
duplicate either complete procedure merely because their evidence appears in
the Result.

## Return to Review

Return whether the claimed outcome is supported, which coverage is complete,
which claims failed or remain unproved, any undisclosed limitation or learning,
and the exact owner of each correction. Review does not accept the Result,
authorize further work, or convert partial evidence into completion.
