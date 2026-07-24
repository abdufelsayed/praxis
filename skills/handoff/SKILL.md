---
name: handoff
description: Use when the user invokes handoff to distill the current conversation into a transfer record for another session, fork, or owner.
---

# Handoff

Distill the conversation into a record someone else can continue from. Handoff forks the work: the new session resumes from the record, not from this conversation.

Resume within the same work is carried by the owning artifacts — plans, campaigns, and issues hold their own state — never by a separate recovery record. Write a handoff only when the user asks for one. When the window approaches the smart zone (see `execute`), prefer forking with a good record over pushing a degraded session with full history.

Before writing, verify cited paths, hashes, commands, branch state, and external status against current reality. Write to the repository's declared handoff surface or, by default, `.agents/handoffs/YYYY-MM-DD-short-title.md`, then send or link the record through the destination's native message surface.

```markdown
---
type: handoff
created: YYYY-MM-DD
part-of: <campaign or none>
---

# Handoff: <Outcome>
- Location: <repository, branch, worktree, or task>
- Objective: <outcome and stop condition>
- Completed: <verified result>
- Pending: <remaining result>
- Evidence: <commands, commits, or links>
- Constraints: <consequential constraints>
- Blocker or risk: <exact signal or none>
- Next action: <one concrete action>
- Suggested skills: <Praxis skills the next session will need>
```

Reference existing artifacts by path instead of duplicating their content. Redact sensitive information. A handoff is not proof that unfinished work is complete.
