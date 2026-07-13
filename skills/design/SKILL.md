---
name: design
description: Use when requirements, architecture, APIs, ownership boundaries, or consequential tradeoffs remain unclear enough that implementation would require guessing.
---

# Design

Resolve the smallest decision that makes implementation safe to begin. Skip this skill when the requested behavior and local pattern are already clear.

Inspect the current implementation, callers, tests, and repository constraints before proposing a shape. Separate source-answerable facts from user choices. Ask only for a decision that materially changes behavior or scope.

Compare alternatives only when more than one remains viable. For each, name the mechanism, consequence, and condition that would make it preferable. Recommend one and define the resulting behavior, interfaces, ownership, compatibility, failure handling, and proof standard.

Keep ordinary design discussion in conversation. Create a durable design only when another owner or future session must rely on it, using the repository's existing convention. Preserve the chosen behavior, relevant evidence, and rejected alternatives that prevent likely mistakes; omit brainstorming history.

Stop and return to the user when product intent is missing, the choice expands scope, or no option satisfies an accepted constraint. Route stable observable behavior to `spec`, enduring rationale to `record-decision`, and executable work to `plan`.
