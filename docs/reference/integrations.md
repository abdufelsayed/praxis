# Integration contracts

This page states current support boundaries. It does not promise an install
path that the source tree does not provide.

## Praxis host availability

Praxis 1.0.0 is a local Codex plugin containing all 28 runtime packages, their
host projections, shared runtime behavior, and conditional references.
From the dotfiles repository root, install it with `codex plugin marketplace
add .` and `codex plugin add praxis@praxis-personal`.

The same source tree includes an Agent Plugins v1 `plugin.json` at its root and
exposes skills at the standard `skills/` location. That portable core is
additive, while current Codex local installation still consumes the native
`.codex-plugin/plugin.json` adapter. Because that adapter uses Codex's native
non-namespaced directory, the combined source tree does not claim the adapter
as an Agent Plugins v1 client extension or a fully portable distribution.

Codex host policy exposes Using Praxis for implicit navigation and keeps leaf
owners explicitly selectable and internally reachable without ambient
injection. Agent Plugins v1 standardizes discovery, not how clients expose
skills to models or users, so other clients may present the portable catalog
differently.

Pi and OpenCode are separate native hosts in the dotfiles. Their configuration
and skill surfaces are synchronized by `scripts/pi.sh` and
`scripts/opencode.sh`; they do not consume Codex's marketplace cache or imply a
cross-host plugin-install contract.

Runtime packages carry executable `SKILL.md` and host metadata. Maintainer
contracts are source for conformance and are never agent context. A successful
Codex marketplace installation establishes availability
for that Codex installation only; it does not establish semantic behavior or
Pi/OpenCode compatibility beyond separate observed checks.

## Plannotator

Plannotator is the required external dependency only for Praxis interactions
that select its native surface: annotations and reaction review, record or
result gates, fixed-diff code review, bundled facts/interview surfaces, or
scoped Review Learning. Simple standalone result acceptance may remain in
conversation and does not require it.

The contract is native CLI use. Praxis does not require a host plugin, automatic
Stop hook, wrapper, or automatic context-improvement hook. Setup owns explicit
installation, repair, and compatibility characterization; Plannotator owns one
presentation, native transport, exact reaction capture, failure, and recovery.
The caller interprets the reaction and owns its gate. A quiet browser session
means the human may still be reviewing; do not open a second session.

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
