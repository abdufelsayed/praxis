---
name: model
description: Use when naming domain concepts, resolving overloaded terms, changing business rules, recording durable language, or deciding model boundaries that affect future implementation.
---

# Model

Stabilize the language of the system.

## Required Reads

Load `praxis:explore` when current usage or domain meaning is unclear. Load `praxis:decide` before recording durable terminology.

## Flow

1. Identify the domain terms in play.
2. Separate user language from implementation names.
3. Resolve overloaded or conflicting terms.
4. Load `praxis:decide` to record durable decisions when future work depends on them.
5. Keep names aligned across code, specs, plans, and issues.

## Output

- canonical term or model boundary;
- aliases or terms to avoid;
- affected code/docs/spec locations;
- whether the choice needs a durable decision.

Model is a helper for domain language. It should return to `design`, `spec`, `decide`, or `plan`; it should not become a parallel artifact system.

## Next Skills

Load `praxis:spec` or `praxis:plan` when the model unblocks behavior or implementation work.
