# Changelog

This file records public behavior and compatibility, not implementation diary
entries.

## Unreleased

No unreleased changes.

## 1.0.0 - 2026-08-05

Praxis 1.0.0 is the first assembled release of the 28-package Codex plugin.
It includes the plugin-local concept owners, maintainer specifications,
runtime references, host metadata, integration boundaries, and the reconciled
authority, dependency, safety, Pair, and routing contracts.

- Codex installation is provided through the repository-local
  `praxis-personal` marketplace.
- Pi and OpenCode remain separately managed native hosts; their dotfiles
  entrypoints synchronize their own configuration and skill surfaces rather
  than sharing Codex's marketplace cache.
- Plannotator remains conditional: it is required only for selected native
  annotation, gate, code-review, bundled-facts, or Review Learning interactions.
- No migration is required for the plugin source tree; the design snapshot is
  comparison material and is not a runtime dependency.
