# Praxis conformance and release

This document owns whole-plugin assembly after a package has an accepted
target design. It defines implementation order, package and graph acceptance,
cross-surface consistency, forward testing, metadata and integration checks,
progressive commits, and release gates. It is a set of bounded checks, not a
new Praxis lifecycle.

The [package authoring contract](skill-packages.md) owns the shape and
surface-level contract of one package. This document decides when a collection
of accepted packages and plugin surfaces is coherent enough to present as one
release.

## Implementation order

Implementation follows accepted package decisions and the direct-dependency
graph. It does not ask a worker to invent target references, invocation
policies, package boundaries, or missing capabilities.

Use this order:

1. **Plugin foundation.** Implement the public landing page, guides, reference
   lookup, durable concept owners, and maintainer contracts. These documents
   establish the plugin-local owners that package specifications may cite.
2. **Accepted shared references.** Implement or reconcile each accepted shared
   runtime reference at its final path, with its direct consumers and load
   conditions. A shared reference is ready only when it is self-contained and
   does not own behavior, entry, authority, completion, or stopping.
3. **Package leaves.** Implement packages with no unresolved direct skill
   calls, then packages whose direct callees are assembled. Every package is a
   complete sparse tree before it is accepted; do not create placeholders for
   later levels.
4. **Composed packages.** Implement callers with their final direct target
   names, precise triggers, expected returns, and retained ownership. Keep
   transitive calls and references encapsulated by the callee.
5. **Dependency cycles.** Assemble each strongly connected component as one
   coordinated slice, then forward-test the complete component. A cycle is not
   an excuse for a global router, wrapper, automatic progression, or copied
   procedure.
6. **Plugin reconciliation.** Recheck all package surfaces, docs, shared
   references, manifest, host adapters, integrations, version, and changelog
   together before a release decision.

The first four stages may be interleaved only when a concrete accepted
prerequisite requires it. The implementation slice remains one complete
package or one plugin-wide prerequisite at a time. A missing direct target
blocks final assembly of the caller but does not expand that slice or justify a
dummy package.

## Package acceptance

For every package, apply the complete [package acceptance
contract](skill-packages.md#package-acceptance) before treating it as an
assembled node. Verify the frozen package diff, not just a worker's report.
At minimum, acceptance establishes:

- sparse tree, lowercase name, required files, and accepted host schema;
- agreement among behavioral entry, invocation, description, host prompt,
  authority, effects, return, and stopping;
- reconciliation between executable `SKILL.md` and maintainer `SPEC.md`;
- exact plugin-local links and precise conditional load points;
- direct call trigger, return, retained ownership, and missing-authority
  behavior;
- accepted local/shared references and optional resources with representative
  paths;
- distinct blocked, revised, failed, dismissed, and partial states where
  observable; and
- a result containing evidence and limitations that stops without adjacent
  work.

Package-specific cases supplement this baseline. An accepted package remains
independently discoverable and usable when unrelated packages are absent,
except for the direct targets explicitly recorded as assembly dependencies.

## Dependency graph and cycles

Model a direct skill edge as `caller -> callee`. A caller declares only edges
it invokes itself; a shared reference edge is recorded only for a skill that
directly loads that reference. Do not infer an edge from a catalog entry,
transitive behavior, or a callee's own dependencies.

For an acyclic component, assemble callees before callers so every final call
path and return can be checked. For a cyclic component, identify the smallest
strongly connected set and assemble it together. Review the component's
behavior as a bounded network:

- each entry condition is still independently satisfied;
- each edge has one bounded trigger and expected return;
- callers retain meaning, authority, gates, integration, and stopping;
- callees do not advance a caller or silently re-enter it;
- reference pointers terminate at final files rather than forming hidden
  chains; and
- blocked, revised, failed, dismissed, and partial returns remain visible
  across the cycle.

Do not break a cycle by adding a plugin-wide router or lifecycle wrapper. If
the accepted design leaves a direct target unassembled, report that assembly
gap and keep the caller's local behavior complete. Release requires every
target and link to resolve and every cycle to pass the network checks.

## Cross-surface consistency

A release presents one coherent contract across public docs, maintained
concepts, runtime references, package surfaces, host metadata, and plugin
metadata. Check each surface against its owner rather than copying one into
another.

| Surface | Consistency check |
| --- | --- |
| [Landing page](../../README.md) and guides | Availability, ordinary-language starting path, human promise, and stopping claims match the assembled tree. |
| Concept documents | Premise, system, control, context, and work owners are complete, mutually linked, and free of non-shipping source dependencies. |
| [Capability catalog](../reference/capabilities.md) | Entries describe accepted boundaries and results without claiming an absent runtime package or duplicating internal dependency contracts. |
| [Integration contracts](../reference/integrations.md) | Only verified host and tool support is promised; readiness, limits, ownership, and external effects remain accurate. |
| `SKILL.md`, `SPEC.md`, host metadata | Name, invocation, entry, triggers, exclusions, effects, direct calls, resources, return, and stop agree. |
| Shared runtime references | Final filenames, direct consumers, load conditions, and content boundaries match each consumer's package contract. |
| Manifest and assets | Identity, version, package root, presentation, capabilities, and logo paths are valid and agree with public claims. |
| [Changelog](../../CHANGELOG.md) | Public behavior and compatibility changes describe the same version and package set as the release candidate. |

Public documentation is not executable model context. It may link to a
package or reference for a maintainer or reader, but it does not replace a
self-sufficient `SKILL.md` or duplicate a complete runtime reference.

When an accepted meaning changes, update its owner and affected projections;
do not add a second paragraph that competes with it. Recheck neighboring links,
availability statements, direct-consumer lists, and release notes after each
cross-surface change.

## Forward testing

Forward testing asks a fresh agent context to use the assembled plugin as a
user or direct caller would. It tests the process and boundaries, not a fixed
text transcript. Use a clean copy or an equivalent context containing only the
plugin surfaces that a shipped host would load; do not rely on hidden source
or stale conversation.

For each package, exercise representative cases:

1. the intended natural-language request or direct caller reaches the package;
2. a nearby negative request remains with ordinary work or its correct owner;
3. each conditional reference loads only at its named decision point and does
   not send the agent through a reference chain;
4. each direct call returns its named evidence, reaction, or bounded result and
   the caller retains ownership;
5. missing authority, stale boundaries, or missing direct dependencies stop
   before the affected action;
6. revised, blocked, failed, dismissed, and partial outcomes remain distinct;
7. completion returns decisive evidence and limitations, then stops without
   starting another route, package, Plan, commit, publication, or deployment;
8. trivial or already-satisfied work performs no ceremonial extra work; and
9. invocation and host presentation match the package's accepted class.

Add package-specific cases for consequence triggers, record or artifact
lifetime, external effects, secret handling, integration readiness, and any
branch likely to be confused with a neighboring capability. Run forward tests
again for every strongly connected dependency set as a whole. A cycle test
must show that one bounded call returns rather than creating uncontrolled
progress.

Forward testing is evidence for the current package and environment. It does
not create a permanent evaluator, score history, golden transcript, receipt
ledger, or generalized learning file. Preserve a durable finding only when a
named contract, changelog, or future owner needs it.

## Manifest, adapters, and integrations

The plugin manifest at
[`.codex-plugin/plugin.json`](../../.codex-plugin/plugin.json) is the identity
and package-root metadata source. Before release, verify:

- plugin name, description, author, license, and skills root are valid;
- version and interface presentation match the release decision;
- capability and effect labels are truthful for the assembled packages; and
- logo and other asset paths resolve without adding runtime dependencies.

Each package supplies its own host adapter under `agents/`. Validate every
adapter against the host schema it targets, including display fields, concise
interface copy, default prompt, invocation policy, and any explicit launch
allowance. Adapters must not become a global router, wrapper, hook, kernel, or
automatic continuation mechanism. A package is independently discoverable;
host availability does not satisfy behavioral entry or effect authority.

Record only verified host support. A catalog or adapter file is not proof that
the host loads the package. If support is incomplete, retain the truthful
unreleased or unavailable statement in the integration contract and do not
invent an installation path or compatibility matrix.

Plannotator is required only for interactions that select its native review,
annotation, gate, code-review, bundled-facts, or Review Learning surface.
Simple conversational results remain valid. Docker is optional only when a
selected Security audit identifies a concrete need for disposable,
version-pinned isolation; the human chooses preparation and Setup owns
readiness. No other tool becomes a plugin-wide dependency merely because a
package could use it.

An integration's readiness check, installation or update path, ownership,
cost, secret handling, isolation, and cleanup limits belong in its verified
integration contract and the owning package. Readiness authorizes no audit,
probe, mutation, or external effect.

## Version and changelog

Keep version identity, package contents, host projections, and public notes in
one reviewed release slice. The manifest version identifies the candidate;
the changelog records what users can rely on. A version change must state the
runtime packages included, supported host metadata, characterized integration
compatibility, and any migration consequence of changing a package contract,
reference path, host projection, or required integration.

An unreleased tree must say that it is unreleased and incomplete when that is
the current state. Do not turn implementation progress, worker messages,
forward-test transcripts, or check output into changelog entries. The changelog
is a public behavior and compatibility record, not a receipt archive or
implementation diary.

## Progressive commits

Commit the smallest coherent reviewed prerequisite or package slice:

1. inspect the current tree and preserve unrelated user work;
2. review the exact intended paths and their neighboring links;
3. run the narrow checks for that slice;
4. inspect the frozen diff and `git diff --check`; and
5. record one intentional commit only after the slice is accepted.

Stage explicit reviewed paths, never a broad tree. A dependency cycle may be
one coordinated commit when splitting it would leave invalid package targets;
it still needs per-package acceptance and a frozen combined diff. Documentation
foundations, shared references, package leaves, composed packages, and release
metadata may progress in separate commits when each remains usable and
truthful. A commit does not publish, install, merge, deploy, or begin the next
package automatically.

## Lightweight reproducible checks

Use ordinary repository tools and a small, visible command set. The exact
commands can vary with the host, but the checks should cover:

```sh
# Required files and sparse-package shape
find skills -mindepth 2 -maxdepth 3 -type f -print | sort

# Relative links and non-shipping source paths
rg -n '\]\([^)]*\)' README.md docs references skills
rg -n '\]\((/|file:|https?://|\.\./\.\./\.\./)' README.md docs references skills

# Markdown fences and whitespace
git diff --check -- README.md docs references skills .codex-plugin/plugin.json
```

Resolve each Markdown link against the file that contains it; confirm every
target exists, every accepted conditional reference has one direct load point,
and no link reaches outside the shipping plugin. Check fences with a Markdown
parser when one is already available, or with a bounded local inspection; do
not add a permanent validator for this purpose.

Use `rg`, `find`, `git diff --check`, host-provided schema checks, and a few
fresh-context forward passes rather than inventing a Praxis validator CLI,
permanent evaluation machinery, or receipt artifacts. These checks are
reproducible evidence for the current change, not a new product surface.

## Release gates

A release recommendation requires all applicable gates below:

1. **Source closure:** public, concept, maintainer, reference, and package
   files have one owner each; no copied design or non-shipping dependency
   remains in the release tree.
2. **Package closure:** every included package passes its contract and
   package-specific conformance cases.
3. **Graph closure:** every direct target and loaded reference resolves;
   dependency cycles have been assembled and forward-tested together.
4. **Surface closure:** catalog, guides, concepts, integration contracts,
   package surfaces, host adapters, manifest, assets, and changelog agree.
5. **Behavior closure:** fresh-context forward tests cover positive, negative,
   conditional, authority, result, limitation, and stopping behavior.
6. **Integration closure:** each claimed host or tool is verified at the
   required version and readiness boundary, with unsupported paths stated.
7. **Metadata closure:** manifest identity, version, package root, interface,
   capabilities, and assets are valid and reviewed.
8. **Diff closure:** explicit paths are reviewed, whitespace and link checks
   pass, and unrelated work remains untouched.
9. **Human release choice:** a human explicitly decides whether to publish,
   install, tag, or otherwise release. Passing checks never authorizes an
   external action.

If a gate is not met, return the exact gap, affected owner, decisive evidence,
and the smallest next bounded action. Do not quietly widen scope, create a
placeholder, or continue to an adjacent package. Once a release or package
result is accepted, stop; publication and later work require their own human
choice.
