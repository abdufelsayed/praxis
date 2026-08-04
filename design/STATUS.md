# Praxis Status

## Current state

Praxis has a complete maintained design and an assembled, self-contained
runtime candidate under `.agents/plugins/praxis/`. The candidate is still
unreleased.

- All 28 accepted target package designs have corresponding runtime packages.
- Every package carries `SKILL.md`, `SPEC.md`, and `agents/openai.yaml`; optional
  resources exist only where the accepted target package names them.
- The six accepted shared runtime references and Using Praxis's local
  `references/record-navigation.md` projection are present.
- The public, concept, maintainer, reference, and integration documentation
  required by the package contracts is present in the plugin source.
- The manifest, branding, license, and logo remain unchanged as plugin identity
  metadata.

Assembly is not a release. There is no supported installation path, host
compatibility matrix, or public compatibility promise for Codex, Pi, OpenCode,
or another host.

## Source conformance complete

The assembled candidate has passed the whole-plugin source and static
conformance pass. Current evidence covers:

1. exact package trees, frontmatter, host metadata, and accepted optional
   resources;
2. plugin-local links and source basis with no runtime dependency on this design
   directory, history, evidence, or repository-only authoring material;
3. every direct skill call, return mapping, authority boundary, persistence
   declaration, lifetime, and cyclic composition;
4. every accepted shared-reference load point and the Using Praxis local
   navigation projection;
5. consistency among runtime skills, maintainer specifications, public docs,
   integration limits, and the unreleased changelog; and
6. the accepted package checks plus decisive cross-package and static checks.

The pass corrected dependency links, invocation projections, shared-reference
load points, one Formalize entry ambiguity, and stale assembly documentation.
Static inspection does not prove live host loading, model behavior,
Plannotator UI or CLI execution, or Codex, Pi, and OpenCode compatibility.
Those remain release-validation claims and are not implied by source
conformance. The maintained target package designs remain the authority for
behavior; this file records assembly and release state only.

## Explicit release decision remaining

Before release, any claimed host or integration support must be validated in
the corresponding live environment. A human must then explicitly decide
whether to release or publish Praxis. That decision must name the version,
included runtime surface, supported hosts, integration compatibility, and any
migration or installation path. Assembly, verification, or a clean local tree
grants none of that authority. Until that decision is recorded, Praxis remains
an unreleased source candidate.

## Maintained authority

- [`README.md`](README.md) owns the design-to-runtime boundary and system
  overview.
- [`skills/README.md`](skills/README.md) owns the target package contract,
  runtime information placement, composition rules, and conformance baseline.
- [`references/README.md`](references/README.md) owns cross-skill semantic
  ownership and shared-reference placement.
- Each `skills/<skill>/README.md` owns that capability's accepted behavior and
  target package decisions.
- `.agents/plugins/praxis/` owns the distributed runtime source and public
  plugin documentation.
- `evidence/` and `history/` provide provenance and contradiction recovery; they
  do not override maintained owners by themselves.

## Authoring guardrail

**SKILL-CREATOR IS PROHIBITED. DO NOT READ, INVOKE, CITE, FOLLOW, OR USE IT FOR
PRAXIS DESIGN, IMPLEMENTATION, REVIEW, OR VALIDATION.**

[Writing Great Skills](../skills/writing-great-skills/SKILL.md) and its glossary
are the sole skill-authoring method for every agent-readable runtime surface.
