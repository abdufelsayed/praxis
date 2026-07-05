# Praxis Delivery Gates

Delivery turns verified work into a clean stopping point, commit, PR, merge, cleanup, or handoff.

## Readiness Dashboard

Before delivery, summarize:

- scope completed;
- review status;
- verification evidence;
- changed files or commit range;
- state/artifacts updated;
- open risks or unverified claims;
- required next action: stop, commit, PR, merge, cleanup, or handoff.

## Delivery Blockers

Do not call work complete when:

- verification failed or did not run for a claim being made;
- critical or important review findings are unresolved;
- runtime-only state contains information future work needs;
- unrelated dirty work is mixed into the commit surface;
- the branch/worktree state is ambiguous;
- the next owner cannot continue from the available context.

## Commit And PR

Use `praxis:commit` for staging and commit-message craft. Use `praxis:pr` for PR title/body/readiness.

Commit/PR delivery should not invent evidence. It should cite review and verification already performed, or say what remains unverified.

## Worktree And Branch Disposition

Before merge, PR, cleanup, or discard:

- identify base branch, current branch, worktree path, dirty state, and unpushed commits;
- verify or name gaps for the result being delivered;
- preserve worktrees for open PRs, active handoffs, or user-requested iteration;
- remove only clean, merged worktrees unless `praxis:safety` approves loss.

## Handoff

Use `praxis:handoff` when work stops before done, ownership changes, compaction risk is high, or a future session needs restart instructions.
