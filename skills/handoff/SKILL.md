---
name: handoff
description: Use when another agent, person, task, or future session will take ownership of active work and needs a compact package of current state, evidence, risks, and next action.
---

# Handoff

## Overview

Transfer ownership without requiring the next worker to replay the conversation. A handoff points to authoritative artifacts and names what changed since they were written.

## Gather Current State

Inspect the latest user request, working tree, branch or worktree, linked issue or plan, relevant source, verification output, and active blockers. Resolve obvious contradictions before writing the handoff.

## Write For The Next Owner

Include:

- objective and stop condition;
- exact repository, branch, worktree, or task location;
- completed work and current diff or commit state;
- decisions and constraints that still govern the work;
- fresh verification and known failures;
- blockers, risks, and one concrete next action.

Link to plans, issues, decisions, specifications, pull requests, and evidence. Do not copy entire artifacts or include a transcript of attempted commands.

Use the destination's native message or task mechanism when one exists. Create a handoff file only when the user requests one or no reliable destination can carry the information. Adapt [references/handoff-template.md](references/handoff-template.md) when a durable file is appropriate.

## Check The Transfer

Before sending, verify that paths, hashes, commands, and states still match the workspace. Distinguish facts from hypotheses and name anything the next owner must re-verify. A handoff does not mark unfinished work complete.

Use `preserve-context` instead when ownership is not changing and the same session merely needs a recovery record.
