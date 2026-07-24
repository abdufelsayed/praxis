---
name: using-praxis
description: Use when the user invokes Praxis generally, concerns overlap, the right skill is unclear, or durable Praxis state exists.
---

# Using Praxis

Praxis is one loop with optional stations: `EXPLORE → DECIDE → CONTRACT → PLAN → EXECUTE → PROVE → DELIVER`; a campaign optionally wraps repeated loops. Enter at the first station whose question you cannot answer; exit at the last station whose artifact someone needs. Skipping stations is never a violation.

## State Before Activity

- `plans/running/`, `plans/blocked/`, or `plans/ready/` with execution requested: `execute`, reconciling stale state first.
- Active `campaigns/`: `campaign`.
- Nothing durable: the lists below.

## Loop Skills

- `design`: intent, architecture, or tradeoffs unclear.
- `spec`: behavior needs a stable contract.
- `decision`: consequential rationale must survive.
- `clarify`: product intent missing; interview the user.
- `plan`: work needs an executable plan.
- `execute`: run or resume an accepted plan.
- `issues`: work to represent, prioritize, or queue.
- `campaign`: durable direction for a multi-loop initiative.
- `debug`: failure with unknown cause.
- `dispatch`: independent bounded work to delegate.
- `review`: adversarial evaluation of a change or feedback.
- `verify`: a claim needs current proof.
- `tdd`: behavior built test-first.
- `commit`: changes to commit.
- `pr`: a pull request to prepare or update.
- `docs`: standing documentation.
- `worktree`: isolation would reduce collision risk.
- `safety`: a mutation could destroy or broadly alter state.

## Modes

Modes entered by invocation, never by situation.

- `pair`: continuous pairing with user-controlled mutations.
- `evolve`: broad end state grown through complete working forms.
- `orient`: guided understanding of code or a system.

## Utilities

One-shot skills entered by invocation.

- `handoff`: distill the session into a transfer record.

## Links

Artifacts connect by typed header links, never by copying: `Promotes to`, `Promoted from`, `Implements`, `Governed by`, `Part of`, `Proves`, `Supersedes`, `Blocked by`. Promotion writes back: both artifacts record the link.

## Human Gates

A human gate is a mandatory checkpoint with an optional tool:

1. If `command -v plannotator` succeeds, run its gate: `plannotator annotate <file> --gate --json` for a file, `plannotator review` for a diff. `approved` proceeds; `annotated` returns feedback to address before re-gating; `dismissed` stops.
2. Otherwise present it in conversation and require explicit approval.

The gate degrades, never disappears.

## Artifacts

When another owner, session, or system needs a local record, write the artifact under `.agents/`: explorations in `explorations/`, decisions in `decisions/`, specifications in `specs/`, issues in `issues/<state>/`, plans in `plans/<state>/`, campaigns in `campaigns/`, handoffs in `handoffs/`, and durable review or verification evidence in `evidence/`. Use `YYYY-MM-DD-short-title.md` unless the owning skill specifies otherwise.

Every artifact carries a frontmatter envelope, then its kind's fixed sections:

```markdown
---
type: <kind>
created: YYYY-MM-DD
<typed links as applicable>
---
```

High-volume kinds (plans, issues) encode state by directory location; move the file when state changes. Low-volume kinds (decisions, campaigns, specs) carry `status:` in frontmatter. One authoritative artifact per concern; check its directory first. A repository-declared surface owns the record instead; never mirror it. Treat `.agents/` as ignored local state unless the repository commits agent artifacts. Legacy `active/` is `running`; `designs/`, `queues/`, `context/` are classified by content and retired. Current source, fresh evidence, and the latest user instruction outrank saved prose and Praxis itself.
