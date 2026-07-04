---
name: issue
description: Use when creating, splitting, triaging, syncing, or processing durable work items in GitHub, Linear, repo trackers, or local issue markdown.
---

# Issue

Issues hold durable intent. Plans hold execution details.

## Required Reads

Use `../kernel/references/templates/issue.md` for local issue files.
Read `../kernel/references/state-machine.md` only when moving local issue state.
Read `../kernel/references/storage-policy.md` only when the repo has no established tracker or issue path.

## Flow

1. Use the repo tracker when configured.
2. Otherwise use local markdown under `.agents/issues/`.
3. Triage messy input into one or more vertical slices.
4. Write each slice with observable acceptance criteria.
5. Make dependencies explicit.
6. Link a plan path or mark `needs plan`.

## Splitting

- One issue should have one owner, one outcome, and one verification story.
- Split when acceptance criteria can complete independently or can run in parallel.
- Keep related cleanup as follow-up unless it is required for the slice.
- Block instead of inventing missing product requirements.

## Output

An issue is ready only when it has scope, acceptance criteria, dependencies, status, and links to related specs, plans, branches, PRs, or evidence.

## Contract

- Intent or problem.
- Scope.
- Acceptance criteria.
- Dependencies.
- Status.
- Links to spec, plan, branch, PR, or evidence.

## Local States

```text
.agents/issues/inbox/
.agents/issues/draft/
.agents/issues/ready/
.agents/issues/running/
.agents/issues/blocked/
.agents/issues/done/
```

Do not invent product requirements. Block with the smallest question when acceptance criteria are missing.

## Transition

```text
output: issue path, tracker issue, or issue summary
lane: <current lane>
state: inbox | draft | ready | running | blocked | done
result: issue-created | issue-updated | triaged
next: plan | queue | discuss | stop
evidence: acceptance criteria, dependency, link, or blocker
```

## Next Skills

Load `praxis:plan` when execution details are non-trivial. Load `praxis:queue` when processing multiple ready items.
