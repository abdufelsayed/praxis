---
name: finish
description: Use when implementation, a plan, an issue, a branch, or a review cycle appears complete and the agent must verify, update durable state, clean temporary artifacts, and decide whether to commit, PR, keep, or hand off.
---

# Finish

Complete work without pretending.

Read `../workflow/references/lifecycle.md` before marking durable work done, blocked, handed off, deferred, or cancelled.

## Flow

1. Inspect the diff and remove temporary artifacts.
2. Use `praxis:review` when the change deserves an adversarial pass.
3. Use `praxis:verify` for the completion claim.
4. Update plans, issues, checkpoints, or context.
5. If work happened in a worktree, use `praxis:worktree` to decide merge, PR, cleanup, or handoff.
6. Commit or create a PR only when requested or repo convention expects it.
7. Report evidence, remaining risk, and next choices.

If verification fails, do not finish. Return to `praxis:debug` or `praxis:execute`.
