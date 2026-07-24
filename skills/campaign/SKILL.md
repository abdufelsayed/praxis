---
name: campaign
description: Use when a long-running, multi-session initiative with evolving truth needs durable direction, live uncertainty tracking, or promotion of validated work into decisions, specs, and plans.
---

# Campaign

Manage evolving truth before work hardens into plans. A campaign is the root artifact for long-running, assumption-heavy work: it keeps the current synthesis and live uncertainty durable so later sessions do not turn "maybe" into "true."

Do not create a campaign for direct work, clear bugs, or uncertainty that dies with the turn.

## The Record

Write `.agents/campaigns/YYYY-MM-DD-short-title.md` unless the repository declares a campaign surface:

```markdown
# Campaign: <Initiative>
Status: active | paused | done
## Objective
<Outcome and measurable finish condition.>
## Boundaries
<Include / exclude.>
## Current Synthesis
<Present-tense truth, not conversation history.>
## Open Questions
- OQ<n>: <assumption or hypothesis> — Verifier: <source, test, review, user>. Revisit: <condition>.
## Accepted Risks
- AR<n>: <risk with revisit condition.>
## Workstreams
| Stream | Owner | State | Next action |
## Artifact Map
<Linked decisions, specs, issues, plans, evidence.>
```

Keep one current record; rewrite stale statements instead of appending a diary. Issues and plans retain executable detail; link them, never copy.

## Promotion

Do not promote uncertainty into a decision or plan just to make progress. Mark it provisional, state the verifier, and keep the revisit condition visible.

- A validated choice routes to `decision` only when accepted as binding.
- Observable behavior routes to `spec`.
- Bounded work with known acceptance routes to `issues` or `plan`.
- A counterexample whose proof trail must outlive the campaign routes to durable evidence.

## Refine

Treat contradictions as durable learning, not local failures. A counterexample is concrete: it names the candidate and a case where it fails; vague discomfort becomes a verifier or open question, never an invalidation.

When evidence breaks a model: supersede the affected artifact with a `Supersedes` link pair, pause or rebrief dependent work, and repair the campaign synthesis before downstream work continues. Use `debug` when the model is right and the implementation is broken.
