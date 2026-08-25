---
name: setup-praxis
description: Install, update, repair, verify, remove, or configure Praxis on a named host or repository. Use only when the user explicitly asks to set up Praxis.
disable-model-invocation: true
---

# Setup Praxis

Inspect first, then change only the requested installation or repository
surface. A second run should preserve correct state without duplicate entries,
overwrites, placeholders, or configuration drift.

## Bind the setup request

Identify the current host and repository, requested capability, exact target,
and whether the request covers installation, update, repair, removal,
repository workflow, Plannotator, or another named integration. Distinguish host
installation from project configuration; neither implies the other.

Inspect repository instructions, Git state, tracked and untracked content,
ignore rules, current agent configuration, discovered skills, tool help, and
native plugin support. Preserve repository conventions, unrelated configuration,
machine-local runtime state, and user-owned files.

## Make the smallest idempotent change

For host installation, use the repository's declared host adapter or the current
official native plugin method. Install, update, repair, or remove only the named
Praxis target.

For a repository workflow, read [configure a repository](references/repository-workflow.md).
Support an existing GitHub or GitLab issue tracker, local Markdown work, or a
different workflow the requester describes. Preserve existing conventions and
make the chosen adapter available to the Praxis skills that need durable issues,
maps, or specifications. Refuse unrelated files or links.

Expose Praxis to Pi or OpenCode only when that host is requested. Configure
Plannotator only when named. Add a root `/.praxis/` ignore entry only when the
request covers disposable local Praxis artifacts, no shared Praxis configuration
will live there, and the entry is genuinely missing. Do not create empty trees,
trackers, labels, hooks, wrappers, templates, services, or accounts.

Before a consequential installation, permission, credential, network, cleanup,
or remote effect, establish the exact command, target, cost, persistence,
recovery, and authority. Use [Check Safety](../check-safety/SKILL.md) when that
preflight can change the decision.

## Verify the requested capability

Reinspect after each change. Verify source discovery, the exact installed or
linked target, skill invocation where the host permits a safe probe, ignore
behavior, integration configuration, and meaningful command options. A version
string alone is not proof.

Report what changed or was already correct, decisive checks, intentionally
unconfigured surfaces, limitations, and the explicit command for any deferred
live action. Setup does not authorize using the installed capability or taking
another external action.
