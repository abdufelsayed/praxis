# Praxis

Praxis is a human-steered way to turn uncertain software work into shared
understanding, bounded authority, and small, reviewable results.

## Availability

This repository contains the Praxis 1.0.0 Codex plugin: 28 assembled runtime
packages, plugin-local references, and host metadata. Install the local release
from the repository marketplace:

```bash
# Run these from the dotfiles repository root. The marketplace manifest lives
# under .agents/plugins, but Codex resolves the local marketplace from its
# repository root.
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
- [Automated evaluations](evals/README.md)
- [Changelog](CHANGELOG.md)
- [License](LICENSE)

## Run the automated evaluations

Run these commands from this plugin directory. The evaluator creates only
disposable fixtures and isolated Codex state; it never mutates the normal
plugin checkout during a run:

```bash
TMPDIR=/private/tmp PYTHONDONTWRITEBYTECODE=1 \
  python3 -m unittest evals.test_runner -v
```
