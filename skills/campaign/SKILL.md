---
name: campaign
description: Use when a long-running, multi-session initiative needs durable direction, live uncertainty, rich references, or validated choices promoted without automatically planning or implementing.
---

# Campaign

Campaign is durable initiative truth: accepted direction, rich references, current synthesis, and live uncertainty. Do not create one for direct work, clear bugs, or turn-local uncertainty; explicit multi-session coordination is durable.

When Campaign governs an initiative, read [control flow](../../references/control-flow.md). Campaign owns discovery through its direction gate and hard wait; it never crosses into evolution mapping or planning by itself.

## Discover And Model

Start from the user's familiarity and inspect source, history, docs, and external evidence before asking questions. Bring choices, not environment-answerable facts.

When direction is assumption-heavy, choose the cheapest revealing technique: blind-spot pass, alternatives, prototype, interview, reference, or rubric. Use a diagram or executable mockup when prose cannot make a consequential choice judgeable.

Keep early work technically informed without becoming implementation-shaped. Campaign owns vision, domain truth, actors, responsibilities, system boundaries, observable contracts, accepted risks, and uncertainty. Code inspection and prototypes supply evidence; promote what they prove, not their files, libraries, task order, or incidental mechanics. A technical detail belongs here only when changing it would change the accepted system or contract.

## The Record

Write `.agents/campaigns/YYYY-MM-DD-short-title.md` unless the repository declares a campaign surface:

```markdown
---
type: campaign
created: YYYY-MM-DD
status: active | paused | done
direction: exploring | accepted
---

# Campaign: <Initiative>
## Objective
## Boundaries
## Current Synthesis
## System Model
## Accepted Direction
## Reference Map
## Uncertainty Map
- OQ<n>: <assumption or hypothesis> — Verifier: <source, test, review, user>. Revisit: <condition>.
## Accepted Risks
- AR<n>: <risk with revisit condition.>
## Workstreams
| Stream | Owner | State | Next action |
## Artifact Map
<Linked decisions, specs, issues, plans, evidence.>
```

Keep one current record; rewrite stale statements instead of appending a diary. Link other owning artifacts without copying them. Campaign context never monopolizes routing or grants mutation authority.

## Promote And Gate

Do not promote uncertainty just to make progress. Mark it provisional, state the verifier, and keep the revisit condition visible.

- A validated consequential choice routes to a proposed `decision`.
- Observable behavior routes to a proposed `spec`.
- A counterexample whose proof trail must outlive the campaign routes to durable evidence.

Binding decisions and specifications pass their own file gates. When the visual model, accepted contracts, and uncertainty map are judgeable, run the Campaign direction gate from [control flow](../../references/control-flow.md). Feedback returns to discovery. Approval sets `direction: accepted` and Campaign waits.

Campaign may identify actionable work, but it never invokes Evolve, creates an evolution map, or creates a plan merely because direction is ready. Wait for the user's manual Evolve invocation.

## Refine

Treat contradictions as learning. A counterexample names the candidate and failing case; vague discomfort becomes a verifier or open question.

When evidence breaks a model: supersede the affected artifact with a `supersedes` link pair, pause or rebrief dependent work, and repair the campaign synthesis before downstream work continues. Use `debug` when the model is right and the implementation is broken.
