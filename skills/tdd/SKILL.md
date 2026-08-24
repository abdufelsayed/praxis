---
name: tdd
description: "TDD develops one settled behavior test-first. Use when the requester requests it, Delivery needs a red-first feedback seam, or Debug returns a diagnosed regression."
---

# TDD

Load [Praxis Control](../../references/control.md).

TDD is a supporting capability inside the active Inquiry. It may run the
authorized behavior-sized feedback loop autonomously, but it does not select a
lifecycle position, meaningful transition, gate, authority, or continuation.
A direct TDD request may establish one bounded Inquiry.

TDD owns one behavior-sized feedback loop. The caller retains product meaning,
the implementation boundary, authority, acceptance, and stopping.

## Bind behavior, seam, and evidence

Read the accepted behavior, current authorized implementation boundary, source,
tests, and proof boundary. Name one observable behavior or concrete risk, its
independent expectation source, and the narrowest stable public seam that can
prove it. Return `needs-owner` if behavior is unsettled.

If an observed failure has an unknown cause, call [Debug](../debug/SKILL.md)
unless `debug` already appears in the active assurance path. Consume its causal
evidence, but still require a valid red; otherwise return `already-covered` or
`blocked` honestly.

Debug `diagnosed` supplies causal evidence; `corrected` still requires a valid
red or becomes `already-covered`; `unreproduced` or `blocked` blocks the cycle;
`needs-owner` returns to that owner; and `stopped` stops.

Use the Plan's seam when a Plan governs. Otherwise prefer a domain or service interface
for contained behavior and a public API or integration seam for a contract
crossing components. A test that mocks away the governing behavior is too
narrow; a full end-to-end seam is unnecessary when a smaller stable seam proves
the same contract.

Load [examples and oracles](references/examples-and-oracles.md) when choosing a
discriminating case or independent oracle needs judgment. Load
[test doubles](references/test-doubles.md) only for a true boundary that is
slow, unstable, unsafe, or unavailable. Load shared
[evaluation guidance](../../references/evaluation.md) only for a broad,
adaptive, stochastic, or evaluator-sensitive evidence space.

## Red, green, refactor

Write one focused test through the selected seam. Derive its expected result
independently from the accepted contract, example, standard, fixture, or
oracle. Run it. Repair evaluator failures before implementation. If it is
already green, find a valid missing behavior or return `already-covered`; do
not claim red-first work.

Once it fails for the intended reason, implement only enough vertical behavior
to make that same test pass. Never weaken the expectation. Unknown causal
failures return through Debug when that path is not already active; changed
meaning or authority returns to its owner.

While green, make only evidence-backed local structural repairs. Call
[Refactor](../refactor/SKILL.md) when the pressure needs preservation evidence,
ownership reconstruction, or a consequential seam change. Rerun all materially
affected tests after a successful refactor.

Refactor `analyzed`, `relieved`, or `partial` supplies bounded structural
evidence; `needs-design`, `needs-owner`, `blocked`, or `stopped` leaves the
cycle incomplete.

Select the next unproved accepted behavior or concrete risk from what the
cycle taught. Add a contrast only when one example could pass through a
credible wrong shortcut. Stop when the assigned boundary is proved; do not
chase coverage percentages or speculative branches.

Experiential or externally unverifiable claims may call
[Make Tangible](../make-tangible/SKILL.md) or [Verify](../verify/SKILL.md).
Neither expands TDD authority. Do not re-enter an owner already present in the
active assurance path.

Make Tangible `no-op`, `constructed`, or `revised` supplies only the governing
reaction and fidelity evidence; `blocked` or `stopped` remains exact. Verify
`verified` supplies scoped non-TDD evidence; `failed` returns `needs-owner`;
`unverified` is `unsuitable`; and `stopped` stops.

Remove temporary evaluators, probes, fixtures, generated inputs, services, and
environments. Unsafe or incomplete cleanup is `blocked` with the residual
state and recovery condition.

## Return and stop

Return behavior and seam, independent oracle, red observation, implementation,
green and refactor evidence, temporary-state cleanup, remaining unproved
behavior, limits, and authority. Use `cycle-complete`, `complete`,
`already-covered`, `needs-owner`, `unsuitable`, `blocked`, or `stopped` as the
evidence warrants. TDD grants no authority to commit, publish, deploy, or
continue beyond the caller's boundary.
