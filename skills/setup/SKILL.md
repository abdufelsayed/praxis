---
name: setup
description: "Establish the smallest repository-local Praxis setup. Use when the human explicitly asks to set up or repair Praxis, verify Plannotator or a named prerequisite, ask about optional preparation, configure a named integration, prepare Docker for a selected Security audit, or remove or revise Setup-owned state."
---

# Setup

Load [Praxis Control](../../references/control.md).

Begin only when the human asks to establish, repair, verify, remove, or revise
Praxis setup, Plannotator, or one named prerequisite or integration. Existing
tools or directories are not entry.

## Inspect and establish the requested minimum

Bind repository, requested capability, exact target and effect, and whether the
request is complete Praxis setup, offline-only setup, Plannotator readiness, a
named integration, Docker for a selected Security audit, or removal. Inspect
repository instructions, Git state, ignore rules, tracked and untracked
`.praxis/` content, released legacy record roots beneath
`.agents/{initiatives,projects,issues,plans}`, existing Praxis state, and native
integrations. Preserve tracked content and unrelated configuration.

For complete setup, verify the offline minimum plus the harmless Plannotator
surface: version and help for annotation, gates and JSON, local and remote code
review, latest response, sessions/archive recovery, and bundled interview and
facts modes declared by `setup-goal`. Do not require undocumented standalone
`interview` or `facts` help commands. A version string or command existence
alone is not readiness. An
offline-only request may intentionally omit Plannotator and must state that
native interactions remain unavailable.

For project-local state, add only a missing root `/.praxis/` ignore entry when
the request covers it and the directory is genuinely local. Do not create
Projects, records, templates, artifacts, wrappers, services, accounts, or
empty directories. Install or repair the CLI only through a current official
method actually established in the environment; never invent a package
manager, wrapper, hook, or version floor.

Migrate legacy records only when the human explicitly requests migration.
Consider only `.agents/initiatives/`, `.agents/projects/`, `.agents/issues/`,
and `.agents/plans/`; never move or rewrite `.agents/plugins/`,
`.agents/skills/`, configuration, scripts, or another tool's state. Inventory
every source and destination first. Block on duplicate stable IDs, existing
destinations, ambiguous ownership, tracked-state risk, or links that cannot be
updated safely. Otherwise move complete owner bundles to their corresponding
`.praxis/` locations, update affected relative links, and verify content,
identity, parentage, links, Git state, and legacy/canonical discovery. Remove
only empty migrated owner directories; never remove the `.agents/` root.

Leave optional integrations alone unless named. Docker is optional preparation
only for a human-selected Security audit that benefits from isolation; setup
does not run the audit, container, service, scan, or probe.

Before any state change, state exact command, target, effect, network,
privilege, credential, cost, persistence, and recovery. Ordinary contained
changes covered by the request may proceed. Consequential installation,
configuration, permission, secret, remote, or cleanup effects need approved
coverage, exact current authority, and [Check Safety](../check-safety/SKILL.md)
`proceed`.

Preserve the exact Safety result: act only on `proceed`; `revise` or `stop`
returns Setup `blocked` without the effect. Safety supplies no setup authority.

Remove or revise only exact Setup-owned state after inspecting ownership,
tracked status, dependents, recovery, and loss. Never remove records, plugin
content, credentials, or another tool's state. Force or ambiguous cleanup is
`blocked`.

## Verify and stop

Reinspect the repository and tool state after every change. Confirm the exact
condition, command/options and structured surface, ignore behavior,
integration configuration, and limits. A second run must preserve correct
state without duplicate entries, overwrites, placeholders, or environment
drift. Meaning-changing compatibility evidence returns through shared
[learning and return](../../references/learning-return.md) to its owner.

Return `ready`, `already-ready`, `partial`, `blocked`, `failed`, or `stopped`
with requested scope, what changed or was already correct, decisive checks,
unavailable or intentionally unconfigured surfaces, limits, and one useful
recommendation. A migration result also returns every legacy-to-canonical
mapping and every unmoved conflict. Setup grants no authority to use the
capability and starts no other workflow.
