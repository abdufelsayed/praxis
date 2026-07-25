---
name: design
description: Use when requirements, architecture, APIs, ownership boundaries, or consequential tradeoffs are unclear — including comparing candidate shapes and recommending one — or when pre-decision reasoning must be preserved for another owner or session.
---

# Design

Resolve the smallest decision that makes implementation safe to begin. Skip this skill when the requested behavior and local pattern are already clear.

Inspect the current implementation, callers, tests, and repository constraints before proposing a shape. Separate source-answerable facts from user choices. Ask only for a decision that materially changes behavior or scope.

When Campaign or Evolve governs, read [control flow](../../references/control-flow.md) and design at the current information altitude. Campaign design models actors, responsibilities, boundaries, behavior, and consequential constraints; it may inspect or prototype mechanisms but does not promote file layout, task order, or incidental implementation. Detailed program design belongs to the authorized evolution plan.

Compare alternatives only when more than one remains viable. For each, name the mechanism, consequence, and condition that would make it preferable. Recommend one and define the resulting behavior, interfaces, ownership, compatibility, failure handling, and proof standard. Test the recommendation against the strongest realistic counterexample before accepting it.

The supervisor owns design judgment. Apply [agent roles](../../references/roles.md) only when isolated evidence justifies `scout` or `researcher`, or a consequential decision, drift, or unresolved disagreement justifies `oracle`; role availability alone does not trigger delegation.

Keep ordinary design discussion in conversation. When the user requested discussion only, do not drift into implementation. When pre-decision reasoning must survive for another owner or session, write one exploration to the repository's declared research surface or, by default, `.agents/explorations/YYYY-MM-DD-short-title.md`; do not leave the durable result only in chat or create a decision while the choice remains unaccepted. When no format exists, use:

```markdown
---
type: exploration
created: YYYY-MM-DD
promotes-to: <decision, spec, or plan path when concluded>
---

# <Question>
## Question
## Evidence
## Alternatives
- <option> — mechanism, consequence, and when it is preferable.
## Recommendation
## Open Uncertainty
## Next Decision
```

Route an accepted consequential choice to `decision` and observable behavior to `spec` instead of creating a generic design artifact. Treat legacy `.agents/designs/` records the same way according to their content.

Stop and route to `clarify` when product intent is missing, the choice expands scope, or no option satisfies an accepted constraint. Route stable observable behavior to `spec`, enduring rationale to `decision`, and executable work to `plan`.
