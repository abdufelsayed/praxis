---
name: address-review
description: Use when review feedback must be understood and checked against current source before suggestions are accepted, rejected, or implemented.
---

# Address Review

## Overview

Treat review comments as technical claims to evaluate. Confirm the problem, clarify ambiguity, then implement verified findings in a safe order.

## Evaluate Before Editing

1. Read every comment completely and group comments that depend on the same underlying decision.
2. Restate the requested change in concrete behavior.
3. Inspect the cited code, callers, tests, and current branch state.
4. Decide whether the comment identifies a real defect, a preference, stale context, or a conflict with accepted requirements.
5. Clarify all ambiguous or interacting comments before implementing any of them.

Do not perform agreement. Acknowledge correct feedback by describing the correction; challenge incorrect feedback with source-backed reasoning.

## Respond By Situation

| Situation | Response |
| --- | --- |
| Clear defect with local fix | Confirm it and implement the focused correction |
| Comment depends on missing context | Ask one precise question before editing |
| Suggestion conflicts with requirements | Cite the conflict and ask which should govern |
| Reviewer appears to use stale code | Point to the current behavior or diff and request reassessment |
| Suggestion adds unrequested generality | Apply a YAGNI check and ask for the concrete use case |
| Several comments share one root cause | Fix the cause once, then re-evaluate all comments |

## Implement Confirmed Findings

Work in dependency order: correctness and safety first, then structural changes, then minor cleanup. Run the focused check after each coherent fix so a regression is attributable. When comments interact, verify the combined result before resolving them.

Reply in the original review thread when the platform supports it. State what changed and the evidence; do not mark a thread resolved merely because code was edited.

## Push Back Precisely

Useful: “This caller intentionally accepts an empty list because `parseFilters()` uses it to represent no filtering; rejecting it here would break `search.test.ts:88`. Should the public behavior change?”

Not useful: “I disagree” or “the current approach is cleaner.”

If your earlier pushback was wrong, correct it plainly and implement the verified change.

Use `verify` before claiming all review feedback is resolved.
