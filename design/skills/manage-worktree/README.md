# Manage Worktree

> **Design document — not a runtime skill.** The accepted behavioral contract
> and target package design remain here; runtime assembly status is tracked in
> [Praxis Status](../../STATUS.md).

## What it does

Manage Worktree decides whether one named repository collision, preservation,
rollback, parallel-editor, or experiment risk justifies an isolated Git
checkout. It inspects the real repository and shared environment, prepares the
smallest safe checkout when useful, preserves its state through handoff, and
cleans up only state already proved disposable.

Its leading idea is **isolate one concrete risk without inventing authority**.
A worktree separates checkout state; it does not sandbox databases, services,
credentials, processes, containers, or remote effects and does not authorize
mutation, history changes, integration, publication, or cleanup.

## When to reach for it

Another skill invokes Manage Worktree only after naming a concrete risk that a
separate checkout may remove. Current callers are Deliver, Delegate, Research,
Make Tangible, and Refactor. A dirty tree, large task, agent presence, or desire
for tidiness is not enough.

The caller retains its governing question, authority, work, interpretation,
result, and stopping. Manage Worktree owns only the checkout decision and
lifecycle.

## Inspect and decide

Bind the intended work, exact base, destination relationship, mutation
surfaces, current authority, expected lifetime, and named isolation risk. Then
inspect the current branch and `HEAD`, index, modified and untracked state,
relevant ignored state, existing worktrees and branches, active editors and
processes, repository instructions, and consequential resources outside the
checkout.

Use the current checkout when inspection exposes no material risk that a
worktree removes. Return a blocker when the base, destination, location,
ownership, authority, or effect on existing state is ambiguous. Prepare a
worktree only when its protection is worth its setup, handoff, integration, and
cleanup cost.

This decision is complete when the caller receives one evidence-backed result:
safe current checkout, isolated checkout warranted, or blocker.

## Prepare and verify

Before creation, state the isolated risk, exact base, path, branch or detached
shape, intended destination, active mutating owner, and lifetime. Follow
repository and harness conventions. A disposable probe may use detached state;
durable handoff may use an already-intended or permitted task branch.

Preserve all existing user state. Never move, stash, overwrite, switch, reset,
delete, or reorganize it to make the worktree convenient. Never reuse a branch
checked out elsewhere or invent a branch when policy or authority does not
support it.

After creation, verify absolute path, `HEAD`, branch or detached state,
cleanliness, base, destination relationship, and the minimum reconstructed
environment. Record material differences. Checkout isolation makes no claim
about shared databases, ports, processes, caches, credentials, services,
containers, or infrastructure.

Preparation is complete only when the caller can enter the exact checkout
without reconstructing its identity, safety boundary, or known limitations.

## Preserve, hand off, and clean up

One mutating owner uses a checkout unless inspected shared state proves genuine
disjointness. A handoff returns path, base, destination, branch state, modified
state, running processes and shared resources, completed work, evidence,
limits, destination drift, and next bounded action. It transfers no authority.

Before an integration-ready claim, inspect destination drift and revalidate
only affected assumptions and proof. Preserve successful work where it exists.
Commit, merge, rebase, cherry-pick, patch application, copying, push, and other
integration remain separately authorized work owned by their normal caller.

Remove a worktree without another human instruction only when Manage Worktree
created it as explicitly disposable and current inspection proves it has no
modified, staged, untracked, relevant ignored, unique commit, unique branch,
active process, editor, agent, mount, external-resource, or future-consumer
state. Every other cleanup returns for explicit direction and proportional
Check Safety. Force removal is outside the package.

## Return and stop

Return one of:

- **current checkout safe** — evidence shows no material isolation benefit;
- **worktree ready** — exact prepared path, identity, environment, and limits;
- **handoff ready** — preserved worktree and destination-drift state;
- **cleanup complete** — exact proven-disposable state removed and verified;
- **blocked** — ambiguity, authority, collision, unique state, or environment
  prevents a safe lifecycle action; or
- **stopped** — the human or caller ended the work.

Stop after the bounded checkout action. Manage Worktree does not continue the
caller's work or imply integration, commit, publication, acceptance, or
adjacent cleanup.

## Direct dependencies

### Skills

- [Check Safety](../check-safety/README.md) — preflight a consequential
  cleanup, external-resource action, permission change, or other triggered
  effect; return `proceed`, `revise`, or `stop`; Manage Worktree retains the
  exact checkout action and lifecycle.

### Shared references

- None.

## Target runtime package


### Invocation and host projection

Manage Worktree is model-invoked because other skills call it. Its description
requires a named repository risk, preventing ordinary Git inspection or a dirty
tree from triggering it.

```yaml
---
name: manage-worktree
description: "Manage one Git worktree for a named collision, preservation, rollback, parallel-editor, or repository-experiment risk. Use when that concrete risk may require checkout isolation."
---
```

```yaml
interface:
  display_name: "Manage Worktree"
  short_description: "Prepare and preserve isolated Git checkouts"
  default_prompt: "Use $manage-worktree to resolve this named repository risk with an appropriate checkout."
policy:
  allow_implicit_invocation: true
```

No host tool dependency is declared. The skill uses available Git and
filesystem tools and follows repository-specific policy.

### Information hierarchy and resources

`SKILL.md` keeps the five common decisions inline: bind risk and authority,
inspect current state, choose isolation, prepare and verify, preserve or clean
up, then return and stop. Every step uses the completion criterion stated in
this design. Shared-resource limits and authority stay inline because they are
required before any safe branch choice.

The semantic source is [Worktree Isolation and
Preservation](../../references/worktree-isolation-and-preservation.md). It is
condensed into the main skill; there are no local or shared runtime references,
scripts, assets, fixtures, templates, or required integrations.

Target runtime files are exactly:

```text
skills/manage-worktree/
|-- SKILL.md
|-- SPEC.md
`-- agents/openai.yaml
```

### Effects, composition, and conformance

Ordinary authorized effects are inspection, worktree creation, permitted
branch creation, minimum local environment reconstruction, and cleanup only
under the proven-disposable rule. Existing state mutation, history rewriting,
integration, remote actions, secret copying, and external-resource changes
retain separate authority. The Direct dependencies section is the accepted
call contract.

In addition to the all-package baseline, `SPEC.md` covers: dirty checkout with
no material risk; clean checkout with experiment risk; ambiguous base or path;
detached disposable probe; intended branch handoff; ignored environment
differences; external resources that remain shared; concurrent mutation
collision; destination drift; unique state preventing cleanup; verified
disposable cleanup; and an integration request remaining unauthorized.

The package has no unresolved design decision. Release requires its final links
and fresh-context effect-boundary cases to pass.
