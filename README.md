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

This repository contains Praxis 1.0.0 with all 28 owner packages, shared
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

Praxis helps an agent navigate uncertainty, propose a proportionate path, work
inside an explicit boundary, return evidence and learning, and stop when that
bounded result is complete. The human keeps consequential product and system
judgment, chooses forward work, approves proposals, accepts results, and
authorizes effects at their actual boundary.

Praxis is not a mandatory lifecycle, autonomous project manager, hidden global
router, workflow receipt system, or permission to continue by momentum. Clear
work can remain direct; supporting capabilities answer bounded questions and
return to the owner that called them.

## Start in ordinary language

Tell the agent what you want to understand, decide, change, or prove. If the
work is clear and reversible, it can stay ordinary. If uncertainty or existing
Praxis context changes the right owner, the agent recommends one useful path in
your project’s language. Choose a forward activity when one is proposed; ask
explicitly when you want a workflow such as Setup, Commit, or Pair.

Invoking the Praxis plugin enters through Using Praxis. The agent reconstructs
the current owner, governing truth, authority boundary, and next bounded
question before leaf work. Directly invoking a named owner bypasses the
navigator and enters that owner's own boundary. Inside an owner the agent
invokes required supporting capabilities itself; you should be asked only for
judgments, forward choices, effects, approval, acceptance, or stopping that
Praxis genuinely leaves to you.

Praxis does not require memorizing skill names or beginning with ceremony.
Setup is also explicit: it prepares only the repository-local minimum and the
native integrations you choose.

## The promise

- Recommendations help navigate; they do not grant approval or effect
  authority.
- Approval accepts a named proposal provisionally and starts nothing by itself.
- Implementation authority names the exact action, target, and effect.
- Evidence, limitations, unresolved questions, and causal learning return to
  the owner that can act on them.
- Acceptance or exhaustion of a bounded result stops the work; adjacent work
  needs a new human choice.

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
