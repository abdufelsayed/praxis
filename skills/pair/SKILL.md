---
name: pair
description: Pair with the requester on implementation in decision-sized turns. Use only when the requester asks to work interactively rather than handing off autonomous implementation.
---

# Pair

Pair is a live implementation posture, not a planning ceremony. The requester
chooses the boundary and can redirect or stop it at any time.

## Establish the arrangement

Read the request, governing behavior, current source and tests, working tree,
risks, exclusions, and relevant plan when one exists. Confirm the current driver:

- with a **human driver**, observe their actual change, answer questions, challenge
  material mistakes, and help verify without creating a competing implementation;
- with an **agent driver**, propose and perform one decision-sized move at a time.

Use any wider arrangement the requester gives for covered surface, check-ins, or
termination. Otherwise, before an agent-driven mutation state the relevant
observation, exact proposed change, material tradeoff or risk, and focused check.
Wait for the requester's go-ahead for that move.

## Work in checkpoints

Make only the agreed change, run its focused check, and show the material result
before proposing another decision. Re-read the workspace after redirection or
overlapping edits. A local implementation detail that preserves the accepted
boundary can be handled inside the checkpoint; a changed requirement, design
boundary, or external effect returns to the requester.

Use a supporting skill only for the bounded problem it owns: Debug for an unknown
cause, Refactor for demonstrated structural pressure, TDD for a red-green slice,
Verify for a disputed claim, Review for an adversarial pass, Security for a
credible attacker path, or Make Tangible for a perceptible decision. Integrate
its evidence without treating it as permission for another move.

Before a destructive, irreversible, production, permission, secret, data, remote,
or otherwise consequential action, inspect the exact target and environment,
possible loss and blast radius, recovery, resolved variables and destinations,
current state, and the requester's authority for that effect. Prefer a dry run,
smaller target, backup, transaction, or reversible operation when it materially
reduces risk. If the boundary or recovery is unclear, propose the safer revision
and wait.

Stop at the earliest safe checkpoint when permission is declined, assumptions
change, edits conflict, or the requester ends the session. Pair never implies
permission to commit, publish, deploy, clean up unrelated state, or continue
outside the declared arrangement.
