# Cross-Environment and Compatibility Verification

> **Status: accepted semantic source; target runtime projection: `references/compatibility-evidence.md`.**

> Load this reference when a claim spans browsers, platforms, runtime or
> dependency versions, configurations, protocols, or compatibility states.
> Verify retains claim ownership, outcome semantics, return, and stopping.

## Derive the matrix from the contract

Name the environments the governing claim actually promises and the dimensions
that can change behavior: platform, browser or runtime, version, dependency,
configuration, feature state, protocol peer, stored-data version, or another
material condition.

Choose the smallest matrix capable of exposing the relevant differences.
Repository support policies, source branches, dependency behavior, standards,
and known implementation divergence should shape the matrix. Do not test every
Cartesian combination when several cells are materially equivalent, and do not
replace a promised environment with a convenient one.

## Establish equivalence rather than assuming it

Evidence may cover several cells only when their material equivalence is
supported. A shared implementation path, standard, or dependency can justify
fewer probes when the behavior under claim does not cross a divergent branch.
Marketing labels, similar version numbers, or one passing environment do not
establish equivalence.

Keep aliases visible. Three suites using the same browser engine, container
image, fake service, or compatibility layer may remain one correlated evidence
path for the behavior that shared layer controls.

## Exercise the relevant differences

Run the governing behavior at the boundary where compatibility matters and
include failure, fallback, negotiation, upgrade, downgrade, or mixed-state
paths when the accepted contract promises them. Record the exact target,
environment, versions, configuration, dependencies, and observation for each
cell.

An unavailable environment remains `unverified`. Emulation, simulation, or a
compatibility shim may provide useful evidence, but its supported scope must be
stated and it cannot silently stand in for a materially different real target.

## Return to Verify

Return the promised matrix, tested cells, justified equivalence groups,
correlated paths, exact environment evidence, uncovered combinations, and
claim status by supported scope. Do not generalize one passing cell into a
broader compatibility claim or narrow the governing support promise after a
failure.
