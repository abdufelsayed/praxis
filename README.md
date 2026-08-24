# Praxis

Praxis is a small software-engineering skill plugin. It gives an agent strong
methods for discovery, design, planning, implementation, review, security, and
collaboration without forcing every task through a control protocol.

Clear contained work stays direct. A skill is loaded when its method can change
the result.

## Lifecycle

Most product work can move through this path:

```text
Discover Requirements
  -> Make Tangible or Design Solution when needed
  -> Formalize
  -> Define Issues
  -> Plan
  -> Deliver
  -> Commit / Prepare PR when requested
```

Every step is optional. A small fix can go straight to Debug or Deliver. A large
foggy destination can use Evolve. Pair is available when the requester wants to
work interactively.

Use `$ask-me` when you want help choosing the smallest useful path.

## Persistence

Praxis keeps ordinary work in conversation. It writes under `.praxis/` only
when the requester asks or a named future consumer needs cross-session
continuity—for example an accepted specification, evolution map, shared
initiative brief, or consequential decision.

The map is navigation, not a duplicate database. Issues, decisions, plans, and
evidence remain in their owning artifacts or tracker.

## Plannotator

Plannotator is optional. Use it for a visual review of a substantial artifact,
plan, result, questionnaire, or code diff. Native approval accepts only the
presented target; it does not authorize implementation, commits, publication, or
deployment.

## Skills

The plugin includes:

- discovery and design: Discover Requirements, Interview, Research, Make
  Tangible, Domain Modeling, Design Solution, Formalize, and Evolve;
- planning and delivery: Define Issues, Plan, Deliver, Pair, TDD, Debug,
  Refactor, Verify, Review, Security, and Check Safety;
- collaboration: Ask Me, Coordinate Initiative, Delegate, Manage Worktree,
  Plannotator, and Write Docs;
- repository utilities: Commit, Prepare PR, Resolve Conflicts, Triage, Improve
  Architecture, Wizard, and Setup My Skills.

Each skill carries its own entry criteria and conditional references. There is no
always-loaded Praxis constitution.

## Install

From the dotfiles repository root:

```bash
codex plugin marketplace add .
codex plugin add praxis@praxis-personal
```

Use the dotfiles synchronization scripts for other managed agent hosts. Run
`$setup-my-skills` when you want the agent to inspect or repair a particular
installation.

Praxis is licensed under the [MIT License](LICENSE).
