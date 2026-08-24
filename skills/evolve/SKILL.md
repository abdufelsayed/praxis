---
name: evolve
description: Map a large or uncertain destination as a sequence of decision-bearing working advances. Use when the path cannot honestly fit in one specification or implementation context.
---

# Evolve

Create a shared map through uncertainty without pretending the whole route is
already known. The map is an index of decisions and blocking edges, not a second
copy of every specification.

## Bind the destination

Start from one accepted destination, its boundary, current position, relevant
requirements, decisions already made, material uncertainty, and explicit
exclusions. A large issue count alone does not require an evolution map. If the
path is already clear, recommend ordinary issue definition instead.

## Map the frontier

Read [design an Evolution Map](references/design-evolution-map.md) before creating
or materially revising a map. Separate:

- **destination** — what is observably true when the effort succeeds;
- **decisions so far** — stable decisions or pointers to their owning records;
- **decision frontier** — the currently actionable choices and their blocking
  edges;
- **fog of war** — questions deliberately left unresolved until earlier learning;
- **out of scope** — nearby work this map does not own.

Give decisions and working advances stable descriptive IDs independent of their
position. Reordering preserves identity; a changed meaning gets a new identity.
Do not manufacture a second advance when one coherent tracer bullet is enough.

Use the smallest probe that can move the frontier: Research for a factual premise,
Interview for a human-owned choice, Make Tangible for a perceptible design
question, or Design Solution for one consequential technical shape. Integrate the
answer into the affected decision; supporting skills do not choose the route or
the next advance.

## Work one selected advance

Recommend the next frontier decision or working advance and explain why it is now
useful. The requester owns selection. Once selected, read
[define the selected Evolution](references/define-selected-evolution.md) and make
that working form concrete enough for issue definition and proof while leaving
later fog unresolved.

When a delivered result returns, read
[integrate delivered learning](references/integrate-delivered-learning.md).
Distinguish proved coverage from learning. Update only the decisions or future
advances whose meaning, order, or blocking edges actually changed.

## Persist only useful navigation

Keep an ephemeral map in conversation for short work. For cross-session continuity,
persist the current map and selected advance under a relevant `.praxis` effort, or
use an issue tracker when the requester selects it as the shared system. Keep
details in their owning issues and decisions; link rather than duplicate them.

Use Plannotator when the requester wants visual review of a substantial map or
advance. Approval accepts only the reviewed revision and never selects the next
advance or authorizes implementation.

Stop at the current frontier, selected definition, or integrated learning. Do not
start implementation or select subsequent work without explicit authorization.
