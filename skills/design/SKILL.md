---
name: design
description: Use when intent, requirements, architecture, APIs, boundaries, or consequential tradeoffs are unclear enough that implementation would require guessing.
---

# Design

## Overview

Turn an unclear request into an explicit decision about behavior and boundaries. A design is finished when implementation can proceed without inventing product intent.

Use this for competing architectural approaches, public API changes, ambiguous product behavior, cross-component boundaries, or proposals the user wants challenged. Skip it when the expected change and local pattern are already obvious.

## Shape The Decision

1. State the decision in one sentence and explain what a wrong choice would affect.
2. Inspect the current implementation, callers, tests, and repository constraints before proposing a new pattern.
3. Separate facts from preferences and assumptions. Resolve source-answerable facts directly.
4. Ask one question at a time only when different answers would materially change the result.
5. Compare two or three viable approaches when there is a real choice. Lead with a recommendation, then explain how it behaves and what it costs.
6. Define the chosen behavior, interfaces, ownership boundaries, failure handling, compatibility, and proof standard.
7. Test the design against the strongest realistic counterexample.

For a small choice, this may fit in a paragraph. A public API or storage boundary may need examples, rejected alternatives, and a durable document.

## Make Tradeoffs Concrete

Weak: “Option A is simpler, but option B is more scalable.”

Useful: “Option A keeps retries inside the client, so callers see one request API, but every transport must accept the same retry policy. Option B exposes retries to callers, which preserves transport independence but duplicates timeout and backoff decisions. Choose A because all current transports already share those rules.”

Name the mechanism and consequence. Do not fill space with generic advantages.

## Durable Designs

Keep ordinary design discussion in the conversation. Save a design only when another implementer, reviewer, or future session must rely on it. Follow an existing repository location; ask before introducing a new committed convention.

A durable design should contain the problem, success condition, relevant evidence, chosen behavior, interfaces, rejected alternatives that prevent likely mistakes, risks, and verification approach. Update that document when evidence changes rather than appending a second status document.

## Common Mistakes

- Designing a greenfield abstraction without reading the nearest working code.
- Asking several broad questions when one blocking choice would unlock progress.
- Preserving every brainstormed alternative instead of the few that explain the decision.
- Drifting into implementation when the user requested discussion only.
- Writing implementation steps before the behavior and interfaces are settled.
