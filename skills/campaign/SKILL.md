---
name: campaign
description: Use when a long-running, multi-session initiative needs durable direction, live uncertainty, rich references, or validated choices promoted without automatically planning or implementing.
---

# Campaign

Manage evolving truth before work hardens into delivery. A campaign is durable initiative context: it keeps accepted direction, rich references, current synthesis, and live uncertainty so later sessions do not turn "maybe" into "true."

Do not create a campaign for direct work, clear bugs, or uncertainty that dies with the turn. An explicit request to coordinate multi-session work is always a durable record, never a chat answer.

## Discover What Is Unknown

Start from the user's stated familiarity and inspect source, history, docs, and relevant external evidence before asking questions. Bring the user choices, not facts the environment can answer.

When direction is assumption-heavy or the user cannot yet judge it, select the cheapest technique that exposes the unknown: a blind-spot pass, alternative sketches, a prototype, an interview, a code or product reference, or a rubric. Use the smallest useful diagram, executable mockup, or reference when prose cannot make a consequential choice judgeable. These are optional techniques, not stations.

## The Record

Write `.agents/campaigns/YYYY-MM-DD-short-title.md` unless the repository declares a campaign surface:

```markdown
---
type: campaign
created: YYYY-MM-DD
status: active | paused | done
---

# Campaign: <Initiative>
## Objective
<Outcome and measurable finish condition.>
## Boundaries
<Include / exclude.>
## Current Synthesis
<Present-tense truth, not conversation history.>
## Reference Map
<Sources, prototypes, diagrams, or rubrics and what each establishes.>
## Open Questions
- OQ<n>: <assumption or hypothesis> — Verifier: <source, test, review, user>. Revisit: <condition>.
## Accepted Risks
- AR<n>: <risk with revisit condition.>
## Workstreams
| Stream | Owner | State | Next action |
## Artifact Map
<Linked decisions, specs, issues, plans, evidence.>
```

Keep one current record; rewrite stale statements instead of appending a diary. Other owning artifacts retain their detail; link them, never copy. An active campaign supplies context but does not monopolize routing or grant mutation authority.

## Promotion

Do not promote uncertainty just to make progress. Mark it provisional, state the verifier, and keep the revisit condition visible.

- A validated choice routes to `decision` only when accepted as binding.
- Observable behavior routes to `spec`.
- A counterexample whose proof trail must outlive the campaign routes to durable evidence.

Campaign may identify actionable work, but it never invokes Evolve or creates a plan or issue merely because direction is ready. Wait for an explicit user activity; manually invoked Evolve may then consume the accepted direction.

## Refine

Treat contradictions as durable learning, not local failures. A counterexample is concrete: it names the candidate and a case where it fails; vague discomfort becomes a verifier or open question, never an invalidation.

When evidence breaks a model: supersede the affected artifact with a `supersedes` link pair, pause or rebrief dependent work, and repair the campaign synthesis before downstream work continues. Use `debug` when the model is right and the implementation is broken.
