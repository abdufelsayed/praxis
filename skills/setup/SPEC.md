# Setup — Maintainer Contract

This is the acceptance contract for the shipping
[Setup owner](SKILL.md). It is not runtime
context, and the owner must not link to or depend on it.


## Purpose

Every setup effect first binds and validates the shared Proposed Action
envelope against current record, gate, authority, latest-direction, and inquiry
policy projections. Local setup checks refine but never replace that
fail-closed decision.

Setup establishes or repairs the smallest repository-local environment needed
for the requester's named Praxis capability. It preserves existing repository
state, establishes the offline minimum, installs or repairs the native
Plannotator CLI for a complete setup or named readiness request, prepares one
selected optional integration, revises only named Setup-owned state, verifies
the exact result idempotently, and stops. It does not start a workflow merely
because a prerequisite is available.

## Invocation, inputs, and exclusions

Setup is internally reachable so an explicit natural-language readiness request can
reach the capability without requiring a magic skill name. Behavioral entry is
still human-owned: the requester must clearly request Praxis setup, repair,
verification, removal, Plannotator installation or repair, one named
prerequisite or integration, optional-preparation guidance, or Docker
preparation for a selected Security audit.

Inputs are the current repository and applicable instructions; Git and ignore
state; tracked, untracked, and existing project-local Praxis state in canonical
`.praxis/` and released legacy `.agents/{initiatives,projects,issues,plans}`
roots; the named capability; the exact target and effect; native Plannotator
command state and requested interaction surface; selected integration context;
and the current human authority, Plan, and implementation authorization when an
effect is consequential.

Setup excludes automatic readiness checks, lifecycle routing, record or
Project creation, templates, placeholder directories, wrappers, daemons,
accounts, services, scans, probes, audits, product mutation, delegation,
Requirements Discovery, Formalization, Delivery, native Plannotator
interactions, and use of any configured capability. A generic Docker presence
or request without a selected Security audit is not enough to prepare it.
Setup does not promise a fixed installer, package manager, Plannotator minimum
version, host plugin, hook, or compatibility matrix.

## Behavioral entry and ownership

The package begins only after one setup boundary is explicit. Model selection,
an existing `.praxis/` directory, an available command, or a later skill's
possible need does not satisfy entry. Setup identifies the repository,
requested capability, target, effect, and whether the request concerns the
complete Praxis setup, an explicitly offline-only minimum, Plannotator, one
named integration, selected Docker preparation, or removal/revision. A plain
"set up Praxis" request includes both the offline minimum and required native
Plannotator readiness unless the requester explicitly narrows it to offline-only.
Ambiguity that could change repository or external state is returned with one
focused question before mutation.

Setup owns inspection of current repository and native integration state;
minimal local ignore/configuration changes; native CLI installation, repair,
and compatibility characterization; selected integration readiness;
pre-mutation announcement; direct safety composition; verification;
interpretation of setup results; and stopping. Security owns whether a
particular audit benefits from Docker. Plannotator owns later native
presentation and interaction. The caller retains the governing question,
workflow route, audit or tool use, product meaning, acceptance, and
continuation.

## Invariants

1. Entry is an explicit human setup request for one named capability and
   current repository or integration boundary; autonomous availability is not
   entry.
2. Applicable repository instructions, branch and Git state, ignore rules,
   tracked and untracked `.praxis/` content, released legacy record roots,
   existing Praxis state, and the selected native integration are inspected
   before choosing a change.
3. Tracked or intentionally configured `.praxis/` content is preserved. A
   root `/.praxis/` ignore entry is added only when it represents project-local
   Praxis state, is missing, and the request covers that setup.
4. Offline setup creates no records, Projects, templates, artifacts, wrappers,
   daemons, accounts, services, empty directories, or generated configuration.
5. Complete Plannotator readiness characterizes the native executable plus
   top-level, annotate, review, annotate-last or last, sessions, archive, and
   setup-goal help; the `interview` and `facts` modes declared by setup-goal;
   file/folder/HTML/text/URL annotation; gate and JSON options; local and remote
   change review; latest-response annotation; recovery; and bundled
   interview/facts primitives. Undocumented standalone `interview` or `facts`
   help is not required. A narrower named-prerequisite check proves only that
   surface. A version string or executable alone is never a compatibility
   claim.
6. Setup opens no Plannotator browser session, gate, annotation, code review,
   Review Learning interaction, audit, scan, probe, or container.
7. Native Plannotator installation or repair uses the current official method
   available in the environment; the package invents no fixed package manager,
   wrapper, host hook, or minimum version.
8. An integration is inspected or configured only when the requester names it.
   Docker preparation requires a selected Security audit that benefits from
   disposable, version-pinned isolation and the requester's setup choice.
9. Configuration and readiness do not authorize use of Docker, Plannotator,
   an audit, a probe, a scan, a service, or any later workflow.
10. Every install, repair, configuration, ignore, permission, secret, remote,
    or cleanup mutation is announced with its exact command or installer
    invocation, target, change, and network, privilege, credential, cost,
    persistence, recovery, or other material consequence before it runs.
11. An ordinary local setup effect clearly contained in the exact request may
    proceed without a Plan or Check Safety. A consequential effect requires an
    approved Plan and separate current exact Implementation Authorization
    before the action is eligible for preflight.
12. [Check Safety](../check-safety/SPEC.md) is invoked only for one eligible
    consequential action. `proceed` permits Setup's branch; `revise` or
    `stop` returns without performing the action. Check Safety grants no
    authority and Setup retains the effect boundary and interpretation.
13. Missing Plan coverage or exact authority is returned before invoking Check
    Safety. Setup never calls it to manufacture a missing boundary.
14. Temporary integration configuration stays private and disposable unless
    repository integration is explicitly requested. External, credentialed,
    privileged, paid, persistent, remote, shared, or destructive effects keep
    their normal authority and recovery requirements.
15. Verification re-reads repository and native integration state after each
    approved change and proves the exact requested condition. Re-running Setup
    does not duplicate ignore entries, overwrite valid choices, regenerate
    placeholders, or create a different environment.
16. A local setup result remains conversational unless a named future owner
    needs durable promotion. A readiness or compatibility finding that changes
    another capability's contract returns only the smallest causal learning.
17. A result distinguishes ready, already-ready, partial, blocked, failed,
    and stopped conditions and never claims readiness for unavailable,
    unconfigured, dismissed, or failed state.
18. Completion reports changed and already-correct state, decisive checks,
    unavailable or intentionally unconfigured capability, limitations, and one
    supported recommendation, then stops without adjacent work.
19. Legacy record migration occurs only on an explicit human request and only
    from `.agents/initiatives/`, `.agents/projects/`, `.agents/issues/`, and
    `.agents/plans/` to corresponding `.praxis/` locations. Duplicate stable
    IDs, singleton owners, destinations, ambiguous ownership, tracked-state
    risk, or unsafe link updates block before movement.
20. A successful migration moves complete owner bundles, preserves identity
    and parentage, updates affected relative links, verifies content and Git
    state, reports every mapping, and removes only empty migrated owner
    directories. It never removes `.agents/` or touches plugins, skills, host
    configuration, scripts, or another tool's state.

## Branches and observable outcomes

### Offline minimum

When project-local Praxis state is in scope, Setup inspects and, if needed,
adds only the repository-root `/.praxis/` ignore entry. It leaves a tracked or
intentional `.praxis/` tree unchanged and explains that decision. It creates
no durable record or directory merely to demonstrate readiness. A plain
complete setup request continues into required native Plannotator readiness;
only an explicitly offline-only request may stop after this minimum and
report Plannotator as unconfigured.

### Plannotator readiness

Setup inspects the native executable and harmless help or option surfaces for
the full Praxis baseline during complete setup, or the explicitly named
surface during a narrower prerequisite check. The complete baseline covers
top-level, annotate, review, annotate-last or last, sessions, archive, and
setup-goal help; the `interview` and `facts` modes declared by setup-goal; and
the required annotation targets, gate/JSON options, local and remote review,
recovery, and bundled primitives. It does not require undocumented standalone
`interview` or `facts` commands. It may install or repair the CLI only when the
human's request and authority cover that exact effect. It reports unsupported
commands, options, structured results, or transport as a capability limit; it
never opens the interaction to prove readiness.

### Named integration

Setup configures only the smallest native state needed by one explicitly named
integration. It does not add wrappers, Praxis-wide defaults, opportunistic
configuration, or repository files unless the request names that integration
explicitly. A new integration does not become a Praxis-wide dependency by
being configured here.

### Selected Docker preparation

During an initial complete Setup, after required Plannotator readiness, Setup
may mention Docker once as optional preparation for a future Security audit
without installing or configuring it. It may also explain the option when the
human explicitly asks about optional preparation, but does not repeat it during
later named-prerequisite verification or repair.
Security may identify a concrete audit whose evidence benefits from
disposable, version-pinned Docker isolation. Setup may inspect or prepare
Docker only after the requester chooses that exact preparation. It reports
availability, installation effect, and limits; it runs no container, audit,
scan, probe, service, or cleanup beyond the named readiness action.

### Removal or revision

Setup may remove or revise only repository configuration or native integration
state that Setup itself owns and that the explicit request names. It first
resolves tracked content, dependents, recovery, and actual effect. It never
deletes Praxis records or unrelated user state merely because setup is being
revised.

### Explicit legacy-record migration

When the requester explicitly asks to migrate released Praxis records, Setup first
inventories the four supported legacy roots and every canonical destination.
It returns `blocked` without moving anything when identities or destinations
collide, ownership is ambiguous, tracked state would be hidden or lost, or
affected links cannot be updated safely. Otherwise it moves complete owner
bundles to corresponding `.praxis/` paths, updates affected relative links,
and verifies byte content, stable IDs, parents, links, Git state, and discovery
from the canonical tree. The result lists each source-to-destination mapping
and any unmoved item. Only empty migrated owner directories may be removed;
the `.agents/` root and all unrelated content remain.

### Missing or unsafe boundary

An ambiguous target, absent human choice, missing Plan, missing exact
Implementation Authorization, unavailable official method, or unsupported
native surface returns the smallest blocker before the affected mutation.
When a consequential action is otherwise eligible, a Check Safety `revise` or
`stop` is returned without substitution or an invented approval.

Use exactly one outcome:

- `ready` — every condition inside the exact requested scope is established
  and evidenced;
- `already-ready` — every condition inside the exact requested scope was
  already satisfied and no mutation was needed;
- `partial` — some requested condition is established but another requested
  capability remains unavailable or intentionally unconfigured;
- `blocked` — a human choice, boundary, authority, official method, or native
  capability prevents an honest setup action;
- `failed` — an attempted setup action or decisive verification failed; or
- `stopped` — the requester ended the bounded setup and current state is reported.

An explicitly offline-only `ready` or `already-ready` result names that narrow
scope, reports Plannotator as intentionally unconfigured, and states that
native interactions remain unavailable; it never claims complete Praxis
readiness. Each return identifies the exact requested scope, repository,
capability, target and effect, changed state, already-correct state, decisive
verification, unavailable or unconfigured state, limitations, and a
recommendation only when evidence supports a next choice. `partial`, `blocked`,
`failed`, and `stopped` never carry a complete-readiness claim.

## Effects, authority, persistence, and lifetime

Permitted effects are read-only repository and native-tool inspection; a
minimal root ignore change; an explicitly requested, conflict-checked legacy
record migration; native Plannotator installation or repair; and the smallest
explicitly selected integration configuration or removal. Ordinary contained
local setup can rely on the exact human request. Network, privilege,
credentials, cost, remote state, shared state, persistent installation,
destructive cleanup, or other consequential effects require exact human
authority proportionate to their actual consequence.

An approved Plan and separate Implementation Authorization are prerequisites
for a consequential effect. Check Safety supplies an action-scoped
`proceed`, `revise`, or `stop` judgment and never expands Setup's authority.
Setup does not execute an action on `revise` or `stop`, and does not ask Check
Safety to compensate for missing Plan coverage or authority.

Git, ignore state, native tool output, and the conversational return preserve
Setup evidence. Persist another record only when it has a distinct purpose,
consumer, lifecycle, and authority boundary. Promote a readiness limitation
only when a named future owner needs the causal meaning.

## Composition and resources

Direct calls carry the callee's required brief and preserve its exact return: one complete
brief, lossless returns, and no authority transfer. Each callee's own contract
owns its intake fields and outcome names. Setup's caller policy is:

### Direct skill

| Target | Trigger and bounded question | Return | Retained ownership |
| --- | --- | --- | --- |
| [Check Safety](../check-safety/SPEC.md) | One install, repair, configuration, permission, secret, remote, cleanup, or other setup effect has a credible consequential effect, and exact Plan coverage plus current authority already make that one action eligible. | Preserve its exact `proceed`, `revise`, or `stop` result and limits; act only on `proceed`, and map `revise` or `stop` to Setup's `blocked` boundary without performing the action. | Setup retains the setup request, exact effect, interpretation, result, and stopping. |

Setup does not invoke Plannotator. It characterizes the native CLI so a later
owner can invoke the assembled Plannotator package for its selected interaction.
It calls no other Praxis skill and declares no transitive dependency.

### Shared runtime references

| Target | Load condition | Ownership |
| --- | --- | --- |
| [Praxis Control](../../references/control.md) | Every owner entry. | Universal runtime control. |
| [Learning and Return](../../references/learning-return.md) | A readiness, installation, or compatibility finding changes the requesting capability's contract or exposes a Praxis contract gap. | Cross-skill causal return; Setup retains local setup interpretation and stopping. |

The reference is not loaded for an ordinary local readiness report. It does
not choose entry, grant authority, invoke a skill, or continue Setup.

There are no local references, scripts, assets, fixtures, templates, MCP
dependencies, host hooks, wrappers, generated resources, or required
integration packages. The exact runtime tree is:

```text
skills/setup/
├── SKILL.md
├── SPEC.md
└── agents/
    └── openai.yaml
```

## Invocation and host projection

Frontmatter and host metadata are internally reachable and agree on one explicit
setup capability without adding authority or a new dependency:

```yaml
---
name: setup
description: "Establish the smallest repository-local Praxis setup. Use when the requester explicitly asks to set up or repair Praxis, verify Plannotator or a named prerequisite, ask about optional preparation, configure a named integration, prepare Docker for a selected Security audit, or remove or revise Setup-owned state."
---
```

```yaml
interface:
  display_name: "Setup"
  short_description: "Prepare repository-local Praxis readiness"
  default_prompt: "Use $setup for this explicitly requested Praxis setup."
policy:
  allow_implicit_invocation: false
```

The host prompt is launch copy only. It cannot start setup without behavioral
entry, widen the target or effect, install an unrequested integration, or
continue into a later workflow.

## Source basis


This contract is maintained against the plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work and routes](../../docs/concepts/work.md)
owners, plus the current [integration contracts](../../docs/reference/integrations.md).
Its executable projection follows the [skill-package contract](../../docs/maintainers/skill-packages.md)
and [conformance and release contract](../../docs/maintainers/conformance-and-release.md).
Its direct safety composition is the assembled [Check Safety](../check-safety/SPEC.md)
contract, composed through its caller-local direct-call rules; its conditional
causal return is the shared
[Learning and Return](../../references/learning-return.md) reference. These
plugin-local files are the complete maintainer source basis; the declared skill
surface and runtime references are the complete runtime. No non-plugin
material is required to use, review, validate, or maintain this package.

## All-package conformance baseline

1. Explicit setup requests reach this internally reachable package; model selection,
   existing state, and possible future need do not start it.
2. Repository instructions, Git and ignore state, tracked and untracked
   `.praxis/` content, released legacy record roots, and selected native
   integration state are inspected before mutation, and intentional tracked
   content remains untouched.
3. The offline minimum creates no records, Projects, templates, artifacts,
   wrappers, services, accounts, daemons, or empty directories. A complete
   "set up Praxis" request also establishes required native Plannotator
   readiness; only an explicitly offline-only request may leave it unconfigured.
4. Complete Plannotator readiness characterizes the full top-level, annotation,
   gate/JSON, review, latest-response, session/archive, interview, and facts
   baseline through harmless command/help inspection; a narrower prerequisite
   check claims only its selected surface. No gate, review, annotation, browser
   session, scan, or probe opens.
5. A named integration is the only configured integration. Setup may mention
   Docker once during initial complete Setup after Plannotator readiness, or in
   response to an explicit optional-preparation question, but not during later
   verification or repair. Actual Docker preparation requires a selected
   Security audit and a separate human setup choice.
6. Description, host prompt, body, direct call, shared reference, outcomes,
   authority, and stop agree on internal reachability and exact scope.
7. A consequential effect cannot run without Plan coverage, current exact
   authority, and an applicable Check Safety `proceed`; missing boundaries
   return before the call.
8. Every mutation is announced with its exact command or installer invocation,
   target, effect, and relevant consequence; only Check Safety `proceed` may
   release an eligible consequential action. A `revise` or `stop` result, a
   failed action, or a human stop means the action is not performed and Setup
   returns its own typed boundary without substitution.
9. Post-change verification proves the requested condition and a second run is
   idempotent; version or command existence alone does not prove compatibility.
10. Local readiness results remain conversational unless a named owner needs
    promotion; causal learning uses its shared causal owner.
11. `ready`, `already-ready`, `partial`, `blocked`, `failed`, and `stopped`
    remain distinct and preserve unavailable or intentionally unconfigured
    state. Offline-only readiness is explicitly scope-qualified and never
    claims complete Praxis readiness.
12. Completion returns evidence and limitations, grants no use or continuation
    authority, and stops without audit, scan, probe, delegation, or workflow.

## Package-specific conformance cases

1. **Explicit entry:** an existing `.praxis/` directory or available
   Plannotator command alone performs no setup; an explicit readiness request
   establishes one boundary before inspection.
2. **Tracked `.praxis/`:** a repository with tracked Praxis records does not
   receive a broad ignore entry or hidden state; Setup reports the preserved
   intentional content.
3. **Minimal offline setup:** a project-local unignored `/.praxis/` receives
   only the narrow root ignore entry, with unrelated ignore rules preserved;
   no records, templates, artifacts, or empty directories are generated.
4. **Complete setup:** a plain explicit "set up Praxis" request establishes
   required native Plannotator readiness in addition to the offline minimum;
   only an explicitly offline-only request may leave Plannotator unconfigured,
   return scope-qualified readiness, and state that native interactions remain
   unavailable.
5. **Already correct:** an ignored project-local state and compatible selected
   native command return `already-ready` without duplicate edits or reinstall.
6. **Plannotator characterization:** a complete setup checks top-level,
   annotate, review, annotate-last or last, sessions, archive, and setup-goal
   help; confirms that setup-goal declares `interview` and `facts`; and checks
   annotation targets, gate/JSON, local/remote review, recovery, and bundled
   primitives. It does not require undocumented standalone `interview` or
   `facts` help. A narrower prerequisite check claims only its named surface.
   Setup never opens `annotate`, `review`, `last`, a gate, or a browser.
7. **Missing Plannotator:** an unavailable CLI returns `blocked` or `partial`
   with the exact affected interaction and official-install choice needed; no
   fabricated version or compatibility claim is made.
8. **Announced installation:** a requested install states exact command,
   target, network, privilege, credential, cost, and persistence effects before
   execution; a declined or missing human choice returns `stopped` or
   `blocked` without mutation.
9. **Unsupported surface:** a command, option, or structured result needed by
   the selected interaction is absent; Setup reports the limitation and does
   not substitute a different surface.
10. **Optional Docker recommendation:** during initial complete Setup after
    required Plannotator readiness, or in response to an explicit optional-
    preparation question, Setup may mention Docker as future Security
    preparation without installing or configuring it; later verification or
    repair does not repeat the recommendation.
11. **Generic Docker:** a Docker request without a selected Security audit
   returns the missing selection and prepares no Docker state.
12. **Selected Docker:** after Security names a disposable audit and the requester
   chooses preparation, Setup verifies or installs only Docker readiness; no
   container, scan, probe, audit, or service runs.
13. **Named integration:** one explicit integration receives only its minimal
   native configuration; unrelated tools and available integrations remain
   unchanged.
14. **Consequential setup effect:** missing Plan or exact authority returns
   before Check Safety; with both boundaries, Setup calls Check Safety for
   one exact action, mutates only on `proceed`, and otherwise returns
   `blocked` with the exact boundary without performing it.
15. **Idempotence:** re-running after a successful ignore, install, repair, or
   configuration preserves the same state and produces no duplicate,
   overwrite, placeholder, or environment drift.
16. **Capability learning:** a readiness limit that changes another skill's
    contract loads Learning and Return, routes the smallest causal message,
    and follows the shared record-ownership rule.
17. **Partial or failed setup:** an attempted install/configuration or decisive
   verification failure returns exact current state and limitation, never
   `ready` or `already-ready`.
18. **Removal or revision:** only Setup-owned, explicitly named state is
   changed after inspecting dependents, recovery, target, command, authority,
   and applicable safety; tracked Praxis records and unrelated repository state
   are not deleted or hidden, and the result is re-read after mutation.
19. **Legacy read compatibility:** supported legacy records remain readable in
   place when no canonical counterpart exists; Setup does not migrate them
   merely because it inspected or repaired repository readiness.
20. **Migration conflict:** a duplicate identity, singleton owner, canonical
   destination, ambiguous bundle, tracked-state risk, or unsafe link update
   returns `blocked` before movement and reports every conflict.
21. **Successful migration:** an explicit migration moves only complete bundles
   from the four supported legacy roots, updates affected links, verifies
   identity, parentage, content, discovery, and Git state, reports every
   mapping, and preserves `.agents/` plus all unrelated content.
22. **Stop boundary:** after reporting changed, already-correct, unavailable,
   and limited state, Setup starts no audit, probe, scan, delegation,
   Requirements Discovery, Formalization, Delivery, or product mutation.

The package is accepted only with this exact three-file tree, resolving
plugin-local links, a valid host projection, and runtime behavior that keeps
native readiness separate from native interaction and later workflow entry.
