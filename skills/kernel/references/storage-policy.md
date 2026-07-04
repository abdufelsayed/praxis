# Praxis Storage Policy

Use the repo's declared tracker and artifact policy first. When none exists, Praxis uses ignored local state under `.agents/`.

## Defaults

```text
.agents/
  context/
  explorations/
  decisions/
  specs/
  issues/{inbox,draft,ready,running,blocked,done}/
  plans/{draft,ready,running,blocked,done}/
  evidence/
  handoffs/
  runtime/
  worktrees/
```

Ensure `.agents/` is ignored before storing private runtime state, worktrees, or local artifacts there.

## External Trackers

Use Linear, GitHub issues, committed docs, or other repo-specific systems when the repo requires them. Do not mirror every item into `.agents/` just for neatness.

Move state between systems only when the audience changes:

- local planning becomes team-visible work;
- team issue needs private execution notes;
- runtime work becomes durable handoff/evidence;
- a decision must become repo documentation.

## Privacy And Durability

- `.agents/` is local operational state by default.
- Do not put secrets, credentials, production data, or personal machine assumptions in committed artifacts.
- Committed docs should be reader-facing; local artifacts should be work-facing.
- Runtime files are temporary controller infrastructure.
