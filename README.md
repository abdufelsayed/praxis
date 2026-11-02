# Praxis

Praxis is a small software-engineering skill plugin. Each skill owns one kind of
question and can be used independently. Together they form an optional recursive
workflow:

```text
Clarify -> Shape -> Slice -> Build -> Prove -> Publish
   ^         |         |        |        |
   +---------+---------+--------+--------+
        new evidence returns to its question owner
```

This is a mental map, not persisted lifecycle state. Every part is optional. A
clear fix can go straight to Debug or Deliver; a large uncertain effort can use
Evolve; a commit or pull request happens only when requested.

Use `$using-praxis` when you want one recommendation for the smallest useful
method.

## Skills

Clarify and understand:

- Discover Requirements owns outcomes, constraints, boundaries, and meaning.
- Interview owns human preference, priority, tolerance, and judgment.
- Research owns factual claims and evidence.
- Make Tangible owns perceptible, interactive, comparative, and executable
  questions.
- Orient explains an existing system without changing or documenting it.
- Domain Modeling sharpens terminology, invariants, relationships, and state
  transitions in conversation.

Shape and slice:

- Design Solution compares consequential technical shapes.
- Evolve maps an effort's destination, frontier, fog, and useful advances.
- Write Spec synthesizes already-settled meaning for a named reader or future
  activity.
- Define Issues creates vertical tracer bullets and real implementation blocking
  edges.
- Plan chooses the approach, sequence, risks, recovery, and proof for one result.

Build and prove:

- Deliver implements one authorized result.
- TDD, Debug, Refactor, Security, Check Safety, and Manage Worktree are bounded
  engineering methods used when their conditions appear.
- Verify tests exact claims; Review challenges a fixed target.

Communicate and collaborate:

- Write Docs owns durable product documentation. The separate personal Writing
  for Agents skill owns skills and agent-instruction files.
- Commit and Prepare PR own explicitly requested Git messages and publication
  surfaces.
- Pair, Delegate, and Plannotator are explicitly selected collaboration modes.
- Setup Praxis owns installation and repository adapter configuration.

Using Praxis, Pair, Delegate, Plannotator, and Setup Praxis require explicit user
invocation. The remaining skills are model-invoked methods. Model invocation
selects a method; it never grants a new effect or advances to another activity.

## Efforts and persistence

Ordinary work stays in conversation. `.praxis/<effort>/` is an optional workspace
used only when the requester asks or a named future consumer needs the work to
survive the conversation. An effort may contain a map, specification, local
issues, or retained artifacts, but none is mandatory.

There are no gates, record kinds, required statuses, parent hierarchy,
reconciliation protocol, or synthetic conversation logs. Source, tests,
configuration, Git, and runtime observations remain implementation truth. Maps
and documents link to their owners instead of becoming a duplicate database.

## Plannotator

Plannotator is an optional interaction surface for an exact artifact, plan,
result, questionnaire, or code diff. Its native reaction returns to the skill
that owns the question. Approval accepts only the presented target and does not
authorize implementation, commit, publication, or deployment.

## Install

Each skill in `skills/` is a self-contained folder with a `SKILL.md`, so any
agent that supports skills can load it. Clone the repository and link the skills
into your agent's skills directory:

```bash
git clone https://github.com/abdufelsayed/praxis.git
cd praxis
for skill in skills/*/; do ln -s "$PWD/$skill" ~/.claude/skills/; done
```

Use `~/.claude/skills` for Claude Code, `~/.pi/agent/skills` for Pi, or
`~/.agents/skills` for hosts that read the shared agent skills directory. The
repository also includes a Codex plugin manifest in `.codex-plugin/`. Invoke
`$setup-praxis` when you want Praxis installed, repaired, removed, or configured
for an existing local Markdown, GitHub, GitLab, or explicitly described
repository workflow.

Praxis is licensed under the [MIT License](LICENSE).
