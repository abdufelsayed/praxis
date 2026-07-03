---
name: issue
description: Use when creating, splitting, triaging, syncing, or processing durable work items in GitHub issues, Linear, a repo tracker, or local `.agents/issues/` markdown. Turns intent into independently verifiable slices.
---

# Issue

Issues hold durable intent. Plans hold execution details.

## Required Reads

Read `../workflow/references/lifecycle.md` before moving local issue state.
Read `../workflow/references/persistence.md` before choosing local issue paths.
Use `../workflow/references/templates/issue.md` for local issue files.

## Flow

1. Use the repo tracker when configured.
2. Otherwise use local markdown under `.agents/issues/`.
3. Write vertical slices with observable acceptance criteria.
4. Make dependencies explicit.
5. Link a plan path or mark `needs plan`.

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
state: inbox | draft | ready | running | blocked | done
next: plan | queue | discuss | stop
evidence: acceptance criteria, dependency, link, or blocker
```

## Next Skills

Load `praxis:plan` when execution details are non-trivial. Load `praxis:queue` when processing multiple ready items.
