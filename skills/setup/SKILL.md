---
name: setup
description: "Establish the smallest repository-local Praxis setup. Use when the human explicitly asks to set up or repair Praxis, verify Plannotator or a named prerequisite, ask about optional preparation, configure a named integration, prepare Docker for a selected Security audit, or remove or revise Setup-owned state."
---

# Setup

Establish or repair only the repository-local Praxis readiness the human
requested. Preserve existing state, characterize the native Plannotator CLI,
prepare a named optional integration only when it is selected, report the
result, and stop.

## 1. Bind the request

Begin only after a clear human request to establish, repair, verify, remove,
or revise Praxis setup; install or repair Plannotator; configure one named
prerequisite or integration; ask about optional Praxis preparation; or prepare
Docker for a selected Security audit. Model selection, an existing `.agents/`
directory, an available tool, or a later capability's possible need is not
entry.

Identify the repository, the requested capability, the exact target and
effect, and whether the request is the complete Praxis setup, an explicitly
offline-only minimum, Plannotator readiness, a named integration, Docker for a
selected Security audit, or a removal/revision. A plain "set up Praxis"
request includes the offline minimum and required native Plannotator
readiness; narrow it only when the human explicitly asks for offline-only
setup. Inspect repository instructions and current state before choosing any
change. If the request would alter repository or external state but its target
or effect is ambiguous, explain the concrete alternatives, ask one focused
question, and stop.

This step is complete only when one requested setup boundary and its current
human authority are explicit, or the missing choice is returned.

## 2. Inspect and preserve current state

Read the repository's applicable instructions, Git status and branch, ignore
rules, tracked and untracked `.agents/` content, existing Praxis state, and
the current native integration state. Treat tracked `.agents/` content as
intentional repository content: do not hide, delete, move, or reinterpret it
because project-local Praxis records are normally ignored.

For project-local Praxis state, determine whether the repository root's
`/.agents/` is already ignored. Preserve unrelated ignore lines and user
choices. Inspect the native `plannotator` command without opening a review or
gate. A plain complete setup characterizes this full harmless Praxis baseline:

```text
plannotator --version
plannotator --help
plannotator annotate --help
plannotator review --help
plannotator last --help
plannotator sessions --help
plannotator archive --help
plannotator setup-goal --help
plannotator setup-goal interview --help
plannotator setup-goal facts --help
```

Confirm file, folder, HTML, text, and URL annotation; `--gate` and `--json`;
local Git and remote PR or MR review; latest-response annotation; sessions and
archive recovery; and interview and facts primitives. A request for one named
prerequisite may characterize only that exact surface but cannot claim complete
Praxis readiness. A version string or executable alone is evidence, not a
compatibility promise.

Before any state-changing branch, name the exact command or installer
invocation, target, intended change, and network, privilege, credential, cost,
persistence, recovery, or other material consequence. If the current official
method or exact command cannot be established, return `blocked`. An ordinary
contained change already covered by the explicit request may proceed. A
consequential install, repair, configuration, permission, secret, remote, or
cleanup effect first needs an approved Plan and separate exact Implementation
Authorization. Then invoke [Check Safety](../check-safety/SKILL.md) for that
one action. Check Safety returns `proceed`, `revise`, or `stop` to Setup; mutate
only on `proceed`, and return `revise` or `stop` without performing the action.
If Plan coverage or authority is missing, return `revise` without invoking it.

This step is complete when the existing repository state, required native
surface, every relevant limitation, and any state-changing command's exact
authority and safety disposition are recorded for the requested boundary.

## 3. Establish the offline minimum

For project-local Praxis state, add only a missing root `/.agents/` ignore
entry when the directory is genuinely project-local and the request covers
that setup. Do not create records, Projects, templates, artifacts, wrappers,
daemons, accounts, services, empty directories, or generated configuration.
If `.agents/` is tracked or intentionally configured, leave it unchanged and
report why.

Offline readiness requires no account, service, remote dependency, or optional
integration. A complete "set up Praxis" request also establishes the required
native Plannotator readiness; an explicitly offline-only request may leave it
unconfigured and report that limit. Install or repair only the native CLI
through the current official method available in the environment; do not
invent a fixed package manager, wrapper, host hook, or minimum version.
Use only the exact announced and authorized command, then characterize the
complete baseline or explicitly requested narrower surface. Setup opens no
browser session, gate, review, annotation, scan, or probe.

This step is complete when the requested offline or native readiness is
established, already correct, or has an explicit blocker and no unrelated
state was created.

## 4. Prepare only a selected integration

Leave integrations alone unless the human names one. During an initial complete
Setup, after required Plannotator readiness, Setup may mention Docker once as
optional preparation for a future Security audit; it may also explain that
option when the human explicitly asks about optional preparation. Do not repeat
the recommendation during a later named prerequisite verification or repair,
and do not install or configure Docker by mentioning it. Docker is the only
Praxis-wide optional recommendation: Security may
identify a selected audit that genuinely benefits from disposable,
version-pinned isolation, and the human must choose that preparation. A
generic Docker request without that selected audit is missing the required
boundary; explain it and ask for the specific choice.

For a selected Docker preparation or one named integration, inspect its native
availability and configure the smallest capability-specific state. Announce
and authorize its exact command through the Step 2 boundary before it runs.
Keep temporary files and configuration private and disposable unless
repository integration is explicitly requested. Configuration establishes
readiness only: it does not run a container, scan, probe, audit, service, or
later workflow.

This step is complete only when the selected integration is ready, already
correct, intentionally unconfigured, or blocked with the exact missing choice
or authority; no integration has been used merely because it is available.

## 5. Remove or revise only owned setup

Enter this branch only when the request names exact repository configuration or
native integration state that Setup owns. Establish its path or native target,
tracked status, current dependents, preserved user state, recovery, and the
effect of removal or revision. Never remove or hide Praxis records, tracked
plugin content, governing artifacts, unrelated configuration, credentials, or
another tool's state merely because Setup created nearby readiness.

Announce and authorize the exact non-interactive command through the Step 2
boundary. Apply only the named change, preserve all unrelated content, and
verify the target's resulting absence or revision plus every affected
dependent. A missing owner, ambiguous target, unavailable recovery, unsafe
dependent, or required force/destructive path returns `blocked` or `revise`
without mutation.

This step is complete only when the exact Setup-owned target is safely revised
or removed and its dependents are verified, or the current preserved state and
blocker are returned.

## 6. Verify idempotently

Inspect the repository and native tool state again after every approved
change. Confirm the exact requested condition, command/options and structured
result surface, ignore behavior, selected integration configuration, and
remaining limits. A second Setup run must preserve a valid ignore rule, local
choice, installation, and configuration without duplicate entries,
overwrites, placeholders, or a different environment.

Do not claim readiness from a version string, command existence, or partial
configuration when the required baseline or selected surface remains
unavailable. If a
readiness or compatibility finding changes the requesting capability's
contract or exposes a Praxis contract gap, load [Learning and
Return](../../references/learning-return.md) and send the smallest causal
message to its owner. Keep a local setup result conversational when no future
owner needs durable promotion.

This step is complete when every requested condition is evidenced or the
return names the precise failed, partial, blocked, or unavailable condition;
no material limitation is silent.

## 7. Return and stop

Return one compact Setup result containing:

```text
Setup Result {
  outcome,
  requested_scope,
  repository,
  requested_capability,
  requested_target_and_effect,
  configured,
  already_correct,
  decisive_verification,
  unavailable_or_unconfigured,
  limitations,
  recommendation?
}
```

Use `ready` when every condition inside the exact requested scope is
established, and `already-ready` when that scope was already satisfied. An
explicitly offline-only request may return scope-qualified readiness while
listing Plannotator as intentionally unconfigured and stating that native
interactions remain unavailable; it is not complete Praxis readiness. Use
`partial` when some requested work is established but another requested
condition remains unavailable, `blocked` when a human choice, authority, or
boundary is missing, `failed` when an attempted action or verification failed,
and `stopped` when the human ended the bounded work. Never turn an unavailable,
unconfigured, dismissed, or failed condition inside the requested scope into
readiness.

State what changed, what was already correct, the decisive checks, what was
left unavailable or intentionally unconfigured, and one useful recommendation
only when a next choice exists. Setup creates no governing record, starts no
audit, probe, scan, delegation, Requirements Discovery, Formalization,
Delivery, or product mutation. It grants no authority to use a configured
capability. Return control to the human and stop immediately.
