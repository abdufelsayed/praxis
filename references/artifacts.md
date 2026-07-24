# Artifact Lifetime

Choose a record by how long its information must remain authoritative:

- **Turn-local:** alignment, briefs, status, findings, and reproducible check results stay in native messages.
- **Execution state:** an accepted plan, issue, campaign, Git history, and current source carry progress across the work they own.
- **Durable:** write an artifact only when a named future consumer must rely on information that those existing sources cannot reconstruct.

Before a durable write, name the consumer, the later decision or action the record changes, and the information that would otherwise be lost. If one is missing, keep the result in conversation. A durable artifact replaces equivalent chat prose; link it with a short summary.

## Delegated Persistence

Choose persistence before dispatch and include exactly one declaration in the brief:

- `Persistence: message-only` — the role returns a compact native result and creates no operational record.
- `Persistence: promote to <exact path>; consumer: <name>` — the role returns only the information needed for that record; the supervisor writes or updates the named artifact, links it in the final result, and creates no parallel report.

Message-only is the default when the declaration is absent. A role never promotes its own output, invents another record, or changes persistence mode; it returns the unmet need when the declared mode is insufficient. Product files explicitly owned by an implementation task are not operational artifacts.

## Choose The Owner

Choose the artifact by the information it owns, not by who will read it:

- unresolved investigation or a recommendation awaiting acceptance → exploration;
- an accepted consequential choice and its governing rationale → decision;
- observable behavior that must constrain implementation or review → specification;
- executable work and progress → plan or issue;
- approved evolution sequence, current position, and cross-evolution learning → evolution map;
- review findings or verification results that must survive → evidence;
- transfer of the whole active work context to another owner or session → handoff.

A future reader does not make a record a handoff. A recommendation does not make an exploration a decision. Create at most one owning artifact for one requested outcome.

Use the repository's declared surface when one exists. Otherwise use:

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

Plans and issues encode state by directory. Decisions, campaigns, specifications, and evolution maps carry `status:`. An evolution map uses `type: evolution-map`, status `draft | approved | active | done`, and `Current evolution: none | E<n>`. Campaign owns initiative truth, the map owns ordered outcomes and cross-evolution learning, and a plan owns executable work for the current evolution. Map approval grants no mutation authority.

Link related artifacts with `promotes-to`, `promoted-from`, `implements`, `governed-by`, `part-of`, `proves`, `supersedes`, or `blocked-by`, updating both sides when a relationship is promoted.

One artifact owns each concern. Reports, task briefs, review packages, command transcripts, and progress narration are reconstructible execution material, not durable kinds. Intentional records follow the repository's ordinary version-control policy; generated exports, caches, sessions, and scratch state stay ignored.

Design and queue execution are activities, not artifact types. Preserve pre-decision reasoning as an exploration, accepted choices as decisions, observable contracts as specifications, and queue state in its owning issues, plans, or campaign.

When durable review or verification evidence is justified, use:

```markdown
---
type: evidence
created: YYYY-MM-DD
proves: <subject artifact or change>
---

# Evidence: <Claim or Review Target>
## Claim
## Method
## Result
<verified | failed | unverified, with decisive evidence>
## Findings
<severity-ordered, for reviews>
## Limits
<what was not checked>
```
