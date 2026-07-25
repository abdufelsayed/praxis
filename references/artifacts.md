# Artifact Lifetime

Choose persistence by the information's lifetime:

- **Turn-local:** alignment, briefs, status, findings, and reproducible checks stay in native messages.
- **Execution state:** source, Git, Campaign, evolution map, plan, or issue carries progress it owns.
- **Durable:** write only when a named future consumer needs information those surfaces cannot reconstruct.

Before a durable write, name the consumer, later action, and otherwise-lost information. Missing one means keep it in conversation. One requested outcome creates at most one owning artifact.

## Delegated Persistence

Every dispatch brief carries one declaration:

- `Persistence: message-only`
- `Persistence: promote to <exact path>; consumer: <name>`

Message-only is the default. A role returns its result but never promotes it, invents another record, or changes persistence mode; the supervisor owns promotion.

## Owners And Paths

- unresolved investigation or recommendation → exploration;
- accepted consequential rationale → decision;
- observable contract → specification;
- executable work and progress → plan or issue;
- approved outcome sequence, current evolution, authority, and learning → evolution map;
- durable review or verification → evidence;
- user-requested transfer of the whole active context → handoff.

| Kind | Default path |
| --- | --- |
| Exploration | `.agents/explorations/YYYY-MM-DD-short-title.md` |
| Decision | `.agents/decisions/YYYY-MM-DD-short-title.md` |
| Specification | `.agents/specs/YYYY-MM-DD-short-title.md` |
| Issue | `.agents/issues/<state>/YYYY-MM-DD-short-title.md` |
| Plan | `.agents/plans/<state>/YYYY-MM-DD-short-title.md` |
| Campaign | `.agents/campaigns/YYYY-MM-DD-short-title.md` |
| Evolution map | `.agents/evolution-maps/YYYY-MM-DD-short-title.md` |
| Handoff | `.agents/handoffs/YYYY-MM-DD-short-title.md` |
| Evidence | `.agents/evidence/YYYY-MM-DD-short-title.md` |

Every artifact starts with:

```markdown
---
type: <kind>
created: YYYY-MM-DD
<typed links as applicable>
---
```

Plans and issues encode state by directory. Decisions and specifications use `proposed | accepted | superseded`; Campaign uses `status: active | paused | done` plus `direction: exploring | accepted`. An evolution map uses `type: evolution-map`, `status: draft | approved | active | done`, `Current evolution: none | E<n>`, `Authorized evolution: none | E<n>`, and `Result gate: none | pending | approved`.

Campaign owns initiative truth; the map owns ordered working outcomes, current authority, and cross-evolution learning; one plan owns executable work for the current evolution. Map approval grants no mutation authority. E1 authorization permits planning; plan approval releases code mutation; result approval clears current authority and forces a stop. Apply [control flow](control-flow.md).

Link related artifacts with `promotes-to`, `promoted-from`, `implements`, `governed-by`, `part-of`, `proves`, `supersedes`, or `blocked-by`. Design and queue execution are activities, not artifact types. Reports, briefs, command transcripts, progress narration, generated exports, caches, and scratch state are not durable kinds.

Durable evidence uses:

```markdown
---
type: evidence
created: YYYY-MM-DD
proves: <subject>
---
# Evidence: <Claim>
## Claim
## Method
## Result
<verified | failed | unverified>
## Findings
## Limits
```
