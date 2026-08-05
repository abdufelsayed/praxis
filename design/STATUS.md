# Praxis Status

## Current state

Praxis 1.0.0 has a recovered design/reference snapshot and an assembled,
self-contained runtime under `.agents/plugins/praxis/`. This snapshot is not
current runtime authority.

- All 28 accepted target package designs have corresponding runtime packages.
- Every package carries `SKILL.md`, `SPEC.md`, and `agents/openai.yaml`; optional
  resources exist only where the accepted target package names them.
- The six accepted shared runtime references and Using Praxis's local
  `references/record-navigation.md` projection are present.
- The public, concept, maintainer, reference, and integration documentation
  required by the package contracts is present in the plugin source.
- The manifest, branding, license, and logo remain unchanged as plugin identity
  metadata.

The release surface is the Codex plugin. Pi and OpenCode remain separately
managed native hosts with their own dotfiles synchronization and verification;
no cross-host plugin-install promise is implied.

## Source conformance complete

The assembled runtime has passed the whole-plugin source and static conformance
pass. Current evidence covers:

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
conformance. The target package designs are a comparison baseline, not runtime
authority; current implementation decisions require explicit adjudication
against the assembled plugin and observed behavior. This file records
assembly and release state only.

## Release decision

The human release decision is `1.0.0`: the Codex plugin is installed from the
repository-local `praxis-personal` marketplace. Pi and OpenCode remain native
dotfiles-managed hosts with their own synchronization and verification paths;
they are not treated as Codex marketplace installations. Assembly and host
checks do not grant authority for unrelated external effects or future releases.

## Reference ownership within this snapshot

- [`README.md`](README.md) describes the design-to-runtime comparison boundary
  and system overview.
- [`skills/README.md`](skills/README.md) describes the candidate target package
  contract, runtime information placement, composition rules, and conformance
  baseline.
- [`references/README.md`](references/README.md) describes candidate cross-skill
  semantic ownership and shared-reference placement.
- Each `skills/<skill>/README.md` describes that capability's candidate
  behavior and target package decisions.
- `.agents/plugins/praxis/` owns the current distributed runtime source and
  public plugin documentation.
- `evidence/` and `history/` provide provenance and contradiction recovery; they
  do not override maintained owners by themselves.

## Authoring guardrail

**SKILL-CREATOR IS PROHIBITED. DO NOT READ, INVOKE, CITE, FOLLOW, OR USE IT FOR
PRAXIS DESIGN, IMPLEMENTATION, REVIEW, OR VALIDATION.**

[Writing Great Skills](../skills/writing-great-skills/SKILL.md) and its glossary
are the sole skill-authoring method for every agent-readable runtime surface.
