---
name: improve-architecture
description: Survey a codebase for evidence-backed deepening opportunities, present a visual report, and help the user choose one pressure to design or refactor.
---

# Improve Architecture

This is a read-only architecture survey. It finds pressures; it does not refactor
the codebase.

## Choose where to look

Use the scope the requester names. Otherwise inspect a useful stretch of Git
history for code that changes repeatedly, then read the current source, tests,
domain vocabulary, repository guidance, and relevant ADRs around those hot spots.

Look for observable friction:

- understanding one concept requires bouncing through many shallow modules;
- an interface exposes almost as much complexity as its implementation;
- policy or invariants are copied across callers;
- changes scatter across owners or tests reach through internals;
- a missing stable seam prevents meaningful regression proof.

Apply the deletion test: deleting a useful module should force callers to absorb
meaningful policy, not merely remove a forwarding layer. Prefer opportunities
that improve leverage, locality, ownership, and the public test surface. Treat
future extensibility as evidence only when current change pressure supports it.

## Present candidates

Produce a small ranked set with files and owning concepts, the demonstrated
pressure, a plausible deepened seam, benefits, risks, evidence, and recommendation
strength. Read [HTML report](references/html-report.md) when a visual report would
materially improve comparison; write the report outside the repository unless the
requester wants it retained.

Each visual should make current scattering or shallowness and the proposed
concentration easy to compare. Use project domain language and mark conflicts with
accepted ADRs.

Recommend one candidate and ask which, if any, the requester wants to explore.
For the selected candidate, use Design Solution when multiple serious interfaces
remain or Refactor when the responsible seam and preservation boundary are
already demonstrated.
