# Setup

> **Design document — not a runtime skill.** Accepted behavioral contract; `SKILL.md` implementation pending.

## What it does

Setup establishes or repairs the smallest repository-local environment needed
to use Praxis. It protects existing repository state, ensures the required
native Plannotator interface is operational, owns readiness for the optional
Docker integration when a concrete audit needs it, configures a selected
integration, verifies the result, and stops.

Its leading idea is **establish the required minimum, recommend optional setup
only for a concrete capability, then prepare only what the human chooses**.
Installing Praxis does not create Projects,
templates, empty directories, service accounts, wrappers, or remote
dependencies.

Ordinary repository-local Setup changes clearly contained in the explicit
request do not require an Implementation Plan or Check Safety merely because
they mutate setup state. Every external effect still requires exact human
authority for its actual action, target, and effect.

## When to reach for it

Setup is an explicitly invoked workflow. Use it when the human clearly asks to:

- set up Praxis in the current repository;
- repair an incomplete Praxis setup;
- install, repair, or verify Plannotator;
- ask about optional preparation for future capabilities, including Docker for
  disposable Security audits;
- verify or prepare Docker when a chosen Security audit needs disposable
  isolation;
- configure one named optional integration;
- verify whether an expected Praxis prerequisite is available; or
- remove or revise setup that Setup itself owns.

Do not invoke Setup merely because Praxis is installed, `/.agents/` exists,
Docker is available, or a later capability could use an integration.

The affected gate owner notifies the human when Plannotator is unavailable.
Security owns the runtime recommendation when a selected audit needs Docker.
In both cases, the owner explains what setup enables and what remains
unproven; Setup receives the human's explicit setup choice and does not
originate or silently execute the request.

## Establish the exact request

Identify the repository, its instructions, current ignore and Praxis state,
the requested capability, and whether the human wants minimal offline setup or
one named integration. Preserve existing choices unless the request explicitly
changes them.

When the request is ambiguous enough to alter repository state or configure an
external tool, explain the concrete alternatives and ask one focused question.
Do not turn Setup into a general environment audit.

## Keep offline setup minimal

For an ordinary project repository, ensure `/.agents/` is ignored before
creating durable Praxis records. Inspect the current ignore rules first, add
only the narrow missing entry, and preserve unrelated lines and user state.

A tracked `.agents/` directory may be plugin source or intentional repository
configuration, as it is in this dotfiles repository. Never hide, delete, move,
or reinterpret tracked content merely because project-local Praxis state is
normally ignored.

Offline Praxis needs no account, service, daemon, CLI wrapper, generated
Project, placeholder artifact, or empty directory hierarchy. Durable files are
created lazily by their owning work only when they have real content and a
future consumer.

Plannotator is the external Praxis tool for selected native interactions.
Inspect the current native installation first, install or repair it through its
current official method when missing, and confirm that its command and
gate-capable interface are available without opening a gate or creating a
record. Compatibility is established by checking the commands, options, and
structured results Praxis needs rather than by enforcing a minimum version.
A simple standalone conversational Result Acceptance does not require it.
Install only the CLI. Praxis drives it explicitly and does not require a Codex
Stop hook, Claude Code plugin, OpenCode plugin, Pi extension, or upstream
standalone Plannotator skills. Later owners use the Plannotator skill for
interaction, versioning, decisions, and revision diffs.

## Recommended optional integration

Docker is the only Praxis-recommended optional integration. Security may
recommend Setup when a selected audit genuinely benefits from disposable,
version-pinned isolation. Setup reports the capability, installation effect,
and limits; the human chooses whether to prepare Docker. Docker is not needed
for ordinary Praxis work, and setup authorizes no audit or probe by itself.

During initial Setup, after establishing Plannotator, Setup may proactively
mention Docker as an optional preparation for future Security audits. This is
only a recommendation: Setup does not install Docker unless the human chooses
it, and Security still owns any later audit-specific request.

Other tools are not Praxis dependencies or recommendations. A concrete caller
may still name an external tool, but it owns the question and must explain its
effect, authority, and limits rather than turning the tool into a Praxis-wide
assumption.

## Configure only a selected integration

An explicitly requested integration, or Docker after the human chooses the
Security recommendation, receives the smallest native setup needed for that
capability. Setup may, for example:

- verify Docker for later disposable evidence tools; or
- verify the native environment needed by the selected integration.

Configuration is not use. Docker setup authorizes no container run. Each later
tool invocation keeps its own trigger, effect-based authority, cost boundary,
and Check Safety requirements.

Do not add Praxis wrappers around native tools or configure available
integrations opportunistically. Keep temporary Dockerfiles, Compose files, and
tool configuration in private disposable state unless the human explicitly
requests repository integration. A new integration earns a skill-local
reference only when its setup procedure becomes substantial enough to justify
the context hop.

## Announce state-changing setup

Before any install, repair, or configuration that changes environment or
repository state, tell the human the capability being enabled, the exact
change, and any network, privilege, credential, cost, or persistence
consequence. Wait for the human's explicit setup choice when the action needs
authority. A recommendation or readiness report never silently installs a
tool, changes a path, or substitutes a different integration.

## Verify idempotently

Read current repository and tool state after the change. Confirm the exact
requested condition and ensure another Setup run would not duplicate ignore
entries, overwrite a valid local choice, regenerate placeholders, or create a
different environment.

If a prerequisite remains unavailable, report the precise limitation and the
smallest next action. Do not claim partial configuration as complete or begin
installing unrelated dependencies.

## Authority and stopping

Setup may edit only the repository configuration and native integration state
covered by the explicit request. Ordinary local setup changes clearly
contained in that request need no Plan or Check Safety merely because they
mutate state. Every external effect still requires exact human authority for
its actual action, target, and effect. When an installation or configuration
mutation's actual consequence triggers Check Safety, it first returns to an
approved Implementation Plan and separate Implementation Authorization; only
then does Setup invoke [Check Safety](../check-safety/README.md) for the exact
action and use its `proceed`, `revise`, or `stop` result without transferring
Setup ownership.

Setup creates no governing Praxis record and starts no Requirements
Discovery, Formalization, Delivery, scan, delegation, or product mutation.

Complete by reporting:

- what was configured;
- what was already correct;
- decisive verification;
- anything unavailable or intentionally left unconfigured; and
- one useful recommendation, when a next choice exists.

Then stop.

## It is working when

- Setup begins only from an explicit request.
- The repository's existing state is inspected and preserved.
- The required Plannotator dependency is distinguished from optional Docker
  setup.
- Plannotator is installed and its native interface is operational.
- Its required direct-command surface is compatible with the characterized
  minimum without opening a browser review.
- Offline Praxis remains fully usable without optional services.
- `/.agents/` is ignored only where it represents project-local Praxis state.
- No empty Project or artifact structure is generated.
- Optional integrations are configured only by name.
- Every state-changing setup action is announced before it runs.
- Docker is prepared only when Security's selected audit and the human's
  explicit setup choice put it in scope.
- Configuration grants no authority to use the configured capability.
- Re-running Setup preserves an already-correct environment.
- The agent reports the exact result and starts nothing else.

## Skill structure

Keep invocation, repository-state inspection, offline minimum, integration
selection, authority separation, idempotent verification, and stopping in
`SKILL.md`. Setup needs no tool-specific search reference, script, generated
template, or skill-local reference. Plannotator installation and availability
are part of the core Setup path; its later interaction semantics live in the
Plannotator skill and its focused references.

## Direct dependencies

### Skills

- [Check Safety](../check-safety/README.md) — inspect a consequential
  installation or configuration effect; return `proceed`, `revise`, or `stop`;
  Setup retains the explicit setup request and exact change.

### Shared references

- [Learning and Return](../../references/learning-and-return.md) — return
  tool-readiness findings, installation limits, and native capability gaps to
  Setup without creating a generic tool-state ledger.
