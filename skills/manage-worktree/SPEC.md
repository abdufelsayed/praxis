# Manage Worktree — Maintainer Contract

This is the acceptance contract for the shipping
[Manage Worktree owner](SKILL.md). It is not runtime
context, and the owner must not link to or depend on it.


## Purpose

Every worktree effect first binds and validates the shared Proposed Action
envelope against current record, gate, authority, latest-direction, and inquiry
policy projections. Local repository checks refine but never replace that
fail-closed decision.

Manage Worktree decides whether one named repository collision, preservation,
rollback, parallel-editor, or repository-experiment risk justifies an isolated
Git checkout. It inspects the real checkout and the resources around it,
prepares the smallest useful worktree when warranted, preserves its state for
handoff, and removes only state proved disposable.

The capability isolates checkout state without inventing authority. A worktree
does not sandbox databases, services, credentials, processes, containers,
remote effects, or infrastructure; it does not authorize mutation, history
changes, integration, publication, acceptance, or cleanup. The caller retains
the governing question, work, authority, interpretation, result, and stopping
rule.

## Behavioral entry, inputs, and exclusions

Manage Worktree is internally reachable because bounded callers may need it when a
concrete checkout risk appears. The model-facing description and host
projection are part of this contract. Model selection alone is not behavioral
entry.

Entry requires a caller or human to name one concrete collision, preservation,
rollback, parallel-editor, or repository-experiment risk that a separate
checkout may remove. A dirty tree, large task, another agent, or tidiness
preference alone does not enter the capability.

The caller supplies or makes discoverable:

- the intended work and governing question;
- exact base commit and intended destination relationship;
- mutation surfaces and current authority;
- candidate absolute location and branch or detached shape;
- expected lifetime and explicit disposable status when preparation or cleanup
  is in scope; and
- known environment, shared-resource, rollback, abandonment, or handoff
  concerns.

The capability may inspect repository and harness instructions, Git state,
worktrees, branches, processes, and relevant external resources. Missing or
ambiguous base, destination, location, ownership, authority, or effect on
existing state is a blocked input, not a reason to guess.

The package excludes product or system judgment, route selection, planning,
implementation, debugging, testing, review, integration, commit, merge,
rebase, cherry-pick, patch application, copy into another checkout, push,
publication, deployment, branch deletion, history rewriting, remote cleanup,
external-resource cleanup, and force removal. It also excludes claims that a
worktree alone provides rollback, sandboxing, or resource isolation.

## Ownership and lifecycle

The capability owns only the checkout decision and lifecycle: inspect, choose,
prepare, verify, preserve, hand off, or remove within its exact boundary. The
caller retains the governing question, accepted meaning, effect authority,
interpretation, integration method, acceptance, persistence promotion, and
stopping rule. Handoff carries state and evidence, never authority.

The lifecycle is deliberately proportional:

1. bind the named risk and exact boundary;
2. inspect checkout state and shared environment;
3. choose the current checkout or an isolated checkout;
4. prepare and verify one exact checkout;
5. preserve it, hand it off, or clean it under the proven-disposable rule; and
6. return one bounded outcome and stop.

The current checkout is the result when evidence shows that no material named
risk is removed by isolation. Preparation is justified only when its
protection is worth setup, environment reconstruction, handoff, integration,
and cleanup cost. A blocker is returned when safe identity, ownership,
authority, collision, or resource boundaries cannot be established.

## Invariants

1. Entry names one concrete isolation risk. Dirty state, task size, agent
   presence, and tidiness are not triggers by themselves.
2. The exact caller, work, authority, base commit, destination relationship,
   mutation surfaces, location, branch shape, lifetime, and disposable boundary
   are known before preparation; missing or ambiguous values block the action.
3. Inspection covers repository and harness instructions; branch and `HEAD`,
   index, staged and unstaged changes, untracked and relevant ignored state;
   existing worktrees and branches; intended mutation surfaces; active editors,
   agents, and processes; destination state; candidate-path identity,
   ownership, contents, mounts, and collision risk; and material resources
   outside the checkout.
4. A worktree separates checkout state only. Databases, data directories,
   containers, volumes, orchestration, ports, processes, caches, generated
   outputs, credentials, services, accounts, and infrastructure remain shared
   unless the caller separately establishes safe and authorized isolation.
5. Existing user state is preserved. The package never moves, stashes,
   overwrites, switches, resets, deletes, or reorganizes another checkout,
   branch, index, or file to make isolation convenient.
6. One mutating owner uses a checkout when files, index, generated state,
   processes, or shared resources may overlap. Concurrent mutation requires
   inspected genuine disjointness; read-only observers must not alter shared
   state.
7. A worktree uses an exact absolute path, exact starting commit, declared
   branch or detached state, intended destination, active mutating owner, and
   lifetime. The caller's current authority covers the work the checkout will
   contain. Existing checked-out branches are not reused, another checkout is
   not silently switched, and unsupported branches are not invented.
8. A disposable probe may use detached state. Durable handoff may use an
   already-intended or newly descriptive task branch only when repository policy
   and current authority support it.
9. Preparation verifies absolute path, `HEAD`, branch or detached state,
   cleanliness, base, destination relationship, minimum reconstructed
   environment, and material shared-resource differences before handoff.
10. Secret handling uses the least revealing necessary presence, identity,
    scope, expiry, or bounded probe. Secrets are not copied into prompts,
    reports, handoffs, artifacts, durable records, routine output, or
    unnecessary delegates.
11. Checkout creation or environment reconstruction never widens product,
    mutation, history, integration, publication, external, or cleanup
    authority. External-resource, permission, secret, or other consequential
    lifecycle actions retain their normal authority and recovery boundaries.
12. A consequential lifecycle action is eligible for [Check
    Safety](../check-safety/SKILL.md) only after an approved Plan and current
    exact authority cover that exact action. The package does not invoke Check
    Safety to manufacture missing authority; it acts only on `proceed`, and
    retains the lifecycle decision and interpretation.
13. Handoff reports path, base, destination, branch state, staged, unstaged,
    untracked and relevant ignored state, running processes and shared
    resources, completed work, evidence, limitations, destination drift, and
    the next bounded action. It transfers no authority; the receiving owner
    obtains its own current authority before mutation.
14. Destination drift is inspected before an integration-ready claim. Only
    affected assumptions and proof are revalidated; drift is never silently
    absorbed by rebasing, merging, resetting, switching, or history rewrite.
15. Unconditional cleanup is limited to a worktree created by this capability
    as explicitly disposable whose current inspection proves no modified,
    staged, untracked, relevant ignored, unintegrated, unique commit, unique
    branch, active process, editor, agent, mount, external-resource, or
    future-consumer state.
16. Force removal, branch deletion, history rewrite, remote cleanup, and
    external-resource cleanup are never implied by a disposable declaration.
    Every cleanup outside the proven-disposable boundary returns for explicit
    direction and proportional safety handling.
17. The return names exact identity, decisive evidence, preserved state,
    environment and shared-resource limits, destination drift, unresolved
    state, and the next bounded action. It never claims integration, acceptance,
    or continuation.

## Outcomes and observable return

The package returns exactly one of these outcomes:

- `current checkout safe`: inspection shows no material isolation benefit;
- `worktree ready`: one exact checkout was prepared and verified;
- `handoff ready`: a preserved checkout and destination-drift state are ready
  for the next bounded owner;
- `cleanup complete`: one exact checkout was removed under either the
  proven-disposable rule or exact authorized human cleanup direction, and the
  resulting state was verified;
- `blocked`: ambiguity, missing authority, collision, unique state, shared
  resource, or environment prevents a safe lifecycle action; or
- `stopped`: the requester or caller ended the bounded action.

The return contains, when applicable:

```text
Manage Worktree Result {
  outcome,
  named_risk,
  checkout_identity { path, base, destination, branch_state },
  preserved_state,
  environment_and_shared_resources,
  safety_result?,
  evidence,
  limitations,
  destination_drift,
  next_bounded_action
}
```

`current checkout safe` includes the inspected checkout and the evidence that
the named risk does not justify isolation. `worktree ready` includes the exact
path, base, branch or detached identity, reconstructed environment, and shared
limits. `handoff ready` includes preserved state, destination drift, and the
next bounded action. `cleanup complete` includes the proven-disposable checks
or exact human direction, authority, accepted treatment of preserved state,
applicable safety result, and verified absence of the worktree. `blocked`
identifies the missing boundary, collision, unique state, authority, or
environmental fact. When Check Safety returns `revise` or `stop`, `blocked`
also preserves that exact `safety_result`, every checkout already created, its
identity, current state, and limits, and performs no cleanup. `stopped`
identifies the requester or caller stop and preserves any state already created.

Every outcome states that the caller retains governing meaning, authority,
integration, acceptance, and stopping. The capability returns and stops after
the bounded checkout action; it does not continue the caller's work or perform
adjacent cleanup.

## Effects, authority, persistence, and lifetime

Permitted effects are read-only inspection; creation of the exact worktree;
repository-native reconstruction of the minimum required local environment;
and non-force removal under the proven-disposable rule or exact human cleanup
direction. Each effect is classified before it occurs. Any networked or
privileged setup, data or secret access or transfer, container or service
action, external-resource or permission change, cleanup outside the
proven-disposable rule, remote-state effect, or other credible consequence
needs exact Plan coverage, current authority, and Check Safety before that
action. History, another checkout's state, force removal, branch deletion, and
separately owned external cleanup remain outside the package.

Worktree creation does not require a new permission ceremony when the caller's
current authority already contains the ordinary local setup and exact checkout
boundary. A missing, stale, nearby, or preparation-only authority returns a
blocker. A consequential lifecycle action requires exact Plan coverage and
current exact authority before the package invokes Check Safety.

Preserve handoff and environment state in the conversational return unless a
named caller-owned future consumer needs a bounded projection. Any additional
durable record requires a distinct purpose, consumer, lifecycle, and authority
boundary.
The worktree remains until its authorized next action, caller-directed
abandonment, or proven-disposable cleanup. Successful implementation remains
in place; completion never makes it disposable automatically.

## Composition and resources

Direct calls carry the callee's required brief and preserve its exact return: one complete
brief, lossless returns, and no authority transfer. Each callee's own contract
owns its intake fields and outcome names. Manage Worktree's caller policy is:

### Direct skill

| Direct target | Trigger and bounded question | Return | Retained ownership |
| --- | --- | --- | --- |
| [Check Safety](../check-safety/SKILL.md) | One cleanup, external-resource, permission, secret, or other lifecycle action has a credible consequential effect, and approved Plan coverage plus current exact authority already cover that exact action. | Preserve its exact `proceed`, `revise`, or `stop` result and limits; map `revise` or `stop` to this package's `blocked` outcome with any created checkout preserved. | Manage Worktree retains the checkout lifecycle, action choice, interpretation, authority boundary, and stopping. |

The package calls no other skill. It does not call Check Safety when the
caller already knows that Plan coverage or exact authority is missing; it
returns the missing boundary instead. Check Safety never authorizes cleanup or
integration and never advances the caller's route.

### Runtime references and optional resources

There are no package-local runtime references, scripts, assets, fixtures,
templates, MCP dependencies, host hooks, wrappers, or automatic integrations.
Shared [Praxis Control](../../references/control.md) loads at owner entry.
Direct-call brief and exact-return rules remain inline. All branch-common
checkout, shared-resource,
authority, cleanup, return, and stopping rules are inline in `SKILL.md`. The
package tree is exactly:

```text
skills/manage-worktree/
├── SKILL.md
├── SPEC.md
└── agents/
    └── openai.yaml
```

## Invocation and host projection

The package is internally reachable because bounded callers need autonomous reach
after they name a concrete risk. Its model description contains the same
named-risk trigger and does not claim authority or generic Git management:

```yaml
---
name: manage-worktree
description: "Manage one Git worktree for a named collision, preservation, rollback, parallel-editor, or repository-experiment risk. Use when that concrete risk may require checkout isolation."
---
```

The host projection is presentation and launch copy only:

```yaml
interface:
  display_name: "Manage Worktree"
  short_description: "Prepare and preserve isolated Git checkouts"
  default_prompt: "Use $manage-worktree to resolve this named repository risk with an appropriate checkout."
policy:
  allow_implicit_invocation: false
```

No host tool dependency is declared. Git and filesystem access remain ordinary
tools subject to the caller's authority and repository policy.

## Source basis


This contract is maintained against the plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work and routes](../../docs/concepts/work.md)
owners. Its executable projection follows the [skill-package contract](../../docs/maintainers/skill-packages.md)
and [conformance and release contract](../../docs/maintainers/conformance-and-release.md).
The direct safety contract is [Check Safety](../check-safety/SKILL.md), composed
through its caller-local direct-call rules. These plugin-local files are the
complete maintainer source basis; the declared skill surface and package-local
runtime references are the complete
runtime. No non-plugin material is
required to use, review, validate, or maintain this package.

## All-package conformance baseline

1. The named-risk entry is genuine; a dirty tree, task size, agent presence,
   or tidiness alone performs no worktree lifecycle.
2. `SKILL.md`, `SPEC.md`, and host metadata agree on internal reachability, trigger,
   exclusions, effects, return, and stop.
3. Every material invariant maps to an executable instruction or an intentional
   runtime absence; shared Praxis Control is the only runtime reference and no
   hidden chain is required.
4. Current checkout, isolated checkout, and blocker choices are evidence-backed
   and preserve existing user state.
5. Shared databases, services, ports, processes, caches, credentials,
   containers, and infrastructure are not claimed to be isolated by a
   worktree.
6. One mutating owner is enforced when actual shared-state collision exists;
   read-only concurrency never mutates shared state.
7. Preparation verifies exact path, base, branch state, cleanliness,
   destination relationship, environment, and limits.
8. Handoff reports all required state and destination drift without transferring
   authority; integration remains separate.
9. Cleanup is automatic only for explicitly disposable state proven free of
   every listed unique, active, ignored, external, and future-consumer state;
   force removal remains outside.
10. Consequential lifecycle actions use Check Safety only with exact Plan and
    authority coverage, and only its `proceed` result permits the action. Its
    `revise` or `stop` maps to `blocked` with the exact safety result and any
    created checkout preserved and reported.
11. Blocked, stopped, safe-current, ready, handoff, and cleanup outcomes remain
    distinct and preserve limitations rather than implying success.
12. Every return supplies evidence and limits, then stops without commit,
    publication, integration, acceptance, or adjacent work.

## Package-specific conformance cases

1. **Dirty checkout, no material risk:** inspect the dirty state, explain why
   isolation removes no named risk, return `current checkout safe`, and do not
   create a worktree.
2. **Clean checkout, experiment risk:** a clean checkout still receives an
   isolated disposable probe when rollback or abandonment risk is concrete;
   verify detached identity and environment before handoff.
3. **Ambiguous base or path:** return `blocked` before creation when base,
   absolute location, destination, ownership, or effect on existing state is
   not exact.
4. **Candidate path collision:** inspect an existing candidate path's identity,
   ownership, contents, and mounts; block rather than overwrite a file,
   non-empty directory, foreign mount, or state not proven safe for native
   creation.
5. **Detached disposable probe:** create only from the exact base, declare the
   lifetime and disposable boundary, verify no unique state, and remove only
   after the proven-disposable checks pass.
6. **Intended branch handoff:** use an already-intended or policy-supported
   task branch, never reuse a branch checked out elsewhere, and return identity
   and handoff state without committing or integrating.
7. **Ignored environment differences:** identify reconstruction during
   inspection, classify every effect before acting, reconstruct only the
   minimum required ignored or generated state, record differences, and never
   expose secret values in prompts, reports, handoffs, durable state, routine
   output, or unnecessary delegates.
8. **External resources remain shared:** report databases, containers, ports,
   processes, caches, credentials, services, and infrastructure as shared
   unless separately isolated and authorized.
9. **Concurrent mutation collision:** keep one mutating owner when files,
   index, generated state, processes, or external resources may overlap; use
   separate inspected checkouts when genuine isolation is needed.
10. **Destination drift:** inspect the destination before an integration-ready
   claim, revalidate affected assumptions and proof, and never silently rebase,
   merge, reset, switch, or rewrite history.
11. **Unique state prevents cleanup:** modified, staged, untracked, relevant
    ignored, unintegrated, unique commit or branch, active process/editor/
    agent, mount, external-resource, or future-consumer state returns `blocked`
    for explicit direction.
12. **Verified disposable cleanup:** only a worktree created by this package as
    explicitly disposable and currently free of every unique or active state is
    removed; the exact resulting absence is verified.
13. **Explicit non-disposable cleanup:** with exact human direction, target,
    authority, and accepted treatment of preserved state, apply Check Safety
    when the actual effect is consequential, perform only non-force removal,
    and verify the result; without those boundaries, return `blocked` without
    cleanup.
14. **Consequential setup, cleanup, or resource action:** with exact Plan and
    authority coverage, call Check Safety for one action and honor `proceed`,
    `revise`, or `stop`; map `revise` or `stop` to `blocked`, preserve and
    report any created checkout, and perform no cleanup. With a missing
    boundary, return before calling it.
15. **Integration request:** a request to commit, merge, rebase, cherry-pick,
    copy, push, publish, or otherwise integrate remains unauthorized by
    checkout preparation and is returned to its normal owner.
16. **Caller stop:** preserve any created checkout and state, return
    `stopped`, and do not infer abandonment, cleanup, or continuation.

The package has no unresolved design decision. Release requires the exact
three-file tree, final plugin-local links, surface reconciliation, and fresh
context behavior for the cases above.
