# Praxis

Praxis is a human-steered way to turn uncertain software work into shared
understanding, bounded authority, and small, reviewable results.

## Package surfaces

Praxis carries an Agent Plugins v1 portable core surface alongside its
Codex-native package adapter:

```text
plugin.json                 # Agent Plugins v1 portable manifest
skills/<name>/SKILL.md      # portable skill discovery root
references/                 # shared runtime references loaded explicitly
contracts/                  # host-neutral inquiry and action protocol
.codex-plugin/plugin.json   # Codex-native adapter outside the portable core
```

Maintainer contracts are co-located as `skills/<name>/SPEC.md`; they are not
model context. This `docs/` tree is human documentation even though it is
distributed beside the plugin source; runtime files never load either surface.

The portable manifest is intentionally limited to Agent Plugins core fields,
and portable clients discover the standard `skills/` surface. The same source
tree also retains Codex's native `.codex-plugin/` adapter. Because Agent
Plugins v1 requires client-specific files to use a reverse-domain extension
directory, this combined source tree does not claim that the Codex adapter is
part of the portable package contract. A future conforming distribution may
package the portable core separately without changing the Codex installation
path. The portable core currently has no `mcp.json`; the standard allows that
component location to be absent.

See the [Agent Plugins specification](https://agent-plugins.org/) and its
[normative v1.0.0 text](https://github.com/agentplugins/agent-plugins-spec/blob/main/spec/1.0.0.md)
for the portable contract.

## Availability

This repository contains Praxis 1.1.0 with all 28 capability packages, shared
runtime behavior, maintainer contracts, human documentation, and repository
conformance checks.
Install the local plugin from the repository marketplace:

```bash
# Run these from the dotfiles repository root. The marketplace manifest lives
# under .agents/plugins.
codex plugin marketplace add .
codex plugin add praxis@praxis-personal
```

Pi and OpenCode remain separately managed native hosts. Use the dotfiles
entrypoints to synchronize those hosts; their configuration is not a second
Codex marketplace installation.

## What Praxis is

Praxis keeps one active Inquiry around the current question, uses the smallest
useful capabilities inside it, returns evidence and learning, and stops when
the bounded result is complete. The requester keeps consequential product and system
judgment, chooses meaningful transitions, approves proposals, accepts results, and
authorizes effects at their actual boundary.

Clear work can remain direct. Praxis recommends meaningful transitions, and the
requester chooses them. Supporting capabilities answer bounded questions and
return without taking lifecycle control or creating continuation authority.

During product discovery, research remains evidence until its product meaning
is worked through with the requester. Praxis uses concrete scenarios,
recommendations, and adaptive questions to harvest substantial findings into
atomic Requirements and genuine Unknowns. Substantial research automatically
updates a canonical Research Findings record for its named consumer when the
Inquiry persistence policy permits it, but this evidence is never promoted to
accepted product truth automatically. Any additional record type requires a
distinct purpose, consumer, lifecycle, and authority boundary.

Before research becomes product judgment, Praxis presents a compact transition
brief and provisional topic map. The requester selects the first ready
judgment. Praxis uses ASD-STE100 Simplified Technical English in all
communication.

## Start in ordinary language

Tell the agent what you want to understand, decide, change, or prove. If the
work is clear and reversible, it can stay ordinary. The agent establishes or
reconstructs the active Inquiry and recommends a meaningful transition in the
project's language only when one is needed. Ask explicitly for effects or
postures such as Setup, Commit, or Pair.

Invoking the Praxis plugin enters through Using Praxis. The agent reconstructs
the Inquiry's question, position, governing truth, policies, authority, and
next bounded question before loading the smallest useful capability. Directly
invoking a capability can establish the same bounded Inquiry. Supporting
capabilities are invoked internally; the requester is asked only for
consequential judgments, meaningful transitions, effects, approval,
acceptance, or stopping.

Praxis does not require memorizing skill names or beginning with ceremony.
Setup is also explicit: it prepares only the repository-local minimum and the
native integrations you choose.

## The promise

- Recommendations help navigate; they do not grant approval or effect
  authority.
- Approval accepts a named proposal provisionally and starts nothing by itself.
- Implementation authority names the exact action, target, and effect.
- Evidence, limitations, unresolved questions, and causal learning return to
  the receiving Inquiry and exact causal record.
- Learning challenges accepted meaning before revision, exposes a causal impact
  map, and reconciles only affected descendants after requester judgment.
- Proposed effects fail closed when governing revisions, gates, authority, or
  latest direction are missing, stale, withdrawn, or exhausted.
- A request to discuss, pause, not start, or not edit stops effects
  immediately; approval of one judgment authorizes no file edit or adjacent
  workflow.
- Acceptance or exhaustion of a bounded result stops the work; adjacent work
  needs a new decision from you.

## Read next

- [Getting started](docs/guide/getting-started.md)
- [Working with Praxis](docs/guide/working-with-praxis.md)
- [Examples](docs/guide/examples.md)
- [Capability catalog](docs/reference/capabilities.md)
- [Integration contracts](docs/reference/integrations.md)
- [Evidence and influences](docs/reference/evidence.md)
- [Concepts](docs/concepts/premise.md)
- [Maintainer package contract](docs/maintainers/skill-packages.md)
- [Conformance and release](docs/maintainers/conformance-and-release.md)
- [Changelog](CHANGELOG.md)
- [License](LICENSE)
