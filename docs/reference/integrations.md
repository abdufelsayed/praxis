# Integration contracts

This page states current support boundaries. It does not promise an install
path that the source tree does not provide.

## Praxis host availability

Praxis is currently an unreleased plugin source tree containing all 28 runtime
package directories and their host projections. They form an assembled
candidate, not an accepted release. Inspect the current `skills/` tree for the
source packages. No supported Codex, Pi, OpenCode, or other-host installation
path or compatibility matrix is published.

Runtime packages carry their own executable `SKILL.md`, maintainer `SPEC.md`,
and host metadata. Source presence is not evidence of installation, release,
or host compatibility; a catalog entry or design contract does not establish
those claims either.

## Plannotator

Plannotator is the required external dependency only for Praxis interactions
that select its native surface: annotations and reaction review, record or
result gates, fixed-diff code review, bundled facts/interview surfaces, or
scoped Review Learning. Simple standalone result acceptance may remain in
conversation and does not require it.

The contract is native CLI use. Praxis does not require a host plugin, automatic
Stop hook, wrapper, or automatic context-improvement hook. Setup owns explicit
installation, repair, and compatibility characterization; the Plannotator
capability owns one interaction, response interpretation, and return to its
caller. A quiet browser session means the human may still be reviewing; do not
open a second session.

No fixed minimum version is claimed here. Readiness means that the commands,
options, and structured results required by the selected interaction are
available in the current environment. A failed required interaction stops at
that boundary and reports the affected judgment; it does not manufacture an
approval or substitute an unverified surface.

## Docker

Docker is the only Praxis-wide optional recommendation, and only for a
selected Security audit that genuinely benefits from disposable, version-pinned
isolation. Security recommends it; the human chooses whether to prepare it;
Setup owns readiness or installation. Docker is not required for ordinary
Praxis work, and preparing it authorizes no scan, container run, or probe.

Security and Check Safety retain their own effect, authority, isolation, cost,
secret, and cleanup boundaries. Other tools are not Praxis dependencies or
recommendations merely because a capability could use them.

## Limits and ownership

Setup establishes readiness and reports limitations. Plannotator presents the
selected native interaction. Make Tangible constructs a missing artifact or
reaction surface before Plannotator is called. Security owns whether optional
isolation improves a particular audit. No integration grants workflow entry,
approval, mutation authority, acceptance, or continuation.
