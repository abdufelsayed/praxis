---
name: manage-worktree
description: "Manage one Git worktree for a named collision, preservation, rollback, parallel-editor, or repository-experiment risk. Use when that concrete risk may require checkout isolation."
---

# Manage Worktree

Isolate one named repository risk when a separate Git checkout would remove a
real collision, preservation, rollback, parallel-editor, or experiment risk.
Manage Worktree owns only the checkout decision and lifecycle. The caller keeps
the governing question, work, authority, interpretation, integration,
acceptance, and stopping rule.

## 1. Bind the risk and boundary

Begin only when the caller has named the concrete risk that checkout isolation
may remove. A dirty tree, a large task, another agent, or a desire for tidiness
is not a risk by itself. Capture the caller, intended work, exact base commit,
destination relationship, mutation surfaces, and current authority. Capture an
expected lifetime or disposable intent when already known, but do not require a
cleanup decision merely to judge whether the current checkout is safe.

Return `blocked` before changing anything when the base, destination, location,
ownership, authority, or effect on existing state is ambiguous. Creation never
widens the caller's authority or implies product mutation, history change,
integration, publication, or cleanup.

This step is complete when the named risk, caller, authority, base,
destination, and mutation surfaces are explicit enough for the isolation
decision, or the missing decision boundary is returned.

## 2. Inspect the checkout and shared environment

Read repository and harness instructions, then inspect the current branch and
`HEAD`, index, staged and unstaged changes, untracked files, relevant ignored
state, existing worktrees and branches, intended mutation surfaces, active
editors, agents, and processes, the intended destination, and rollback or
abandonment needs. When a candidate worktree path exists, inspect its absolute
identity, ownership, contents, and whether repository-native creation can use
it without overwriting state; block on an unsafe file, directory, mount, or
ownership collision. Inspect
consequential resources outside the checkout that the work may touch:
databases and data directories, containers and volumes, ports and processes,
caches and generated outputs, local configuration, credentials and accounts,
services, and infrastructure.

Treat checkout isolation as file and checkout separation only. It does not
isolate databases, services, ports, processes, caches, credentials, containers,
or remote state. Identify the minimum environment reconstruction that would be
required, but perform no reconstruction, transfer, install, service action, or
external-resource mutation during inspection. Use least-revealing presence,
identity, scope, expiry, or bounded-probe checks for credentials. Never put
secret values in prompts, reports, handoffs, artifacts, durable records,
routine output, or unnecessary delegates, and never copy or print them merely
to make the checkout look complete.

Use one mutating owner per checkout when files, the index, generated state,
processes, or other resources may overlap. Allow concurrent mutation only after
inspection proves genuine disjointness of those resources. Read-only observers
may inspect concurrently only when they cannot alter shared state.

This step is complete when the inspection accounts for current state,
collisions, external resources, secret boundaries, and material unknowns, or
returns the evidence-backed blocker.

## 3. Choose the smallest safe lifecycle

Use the current checkout and return `current checkout safe` when inspection
shows no material named risk that a worktree would remove. Prepare a worktree
only when its protection is worth its setup, environment reconstruction,
handoff, integration, and cleanup cost. Return `blocked` when a collision,
authority boundary, location, ownership, branch, or shared resource cannot be
made safe.

Before preparation, state the isolated risk, exact base and destination
relationship, absolute path, branch or detached shape, active mutating owner,
intended use, lifetime, and whether it is explicitly disposable. Creation also
requires the caller's existing authority to cover the work the checkout will
contain. A disposable probe may use detached state. Durable handoff may use the
already-intended branch or a new descriptive task branch only when repository
policy and current authority permit it. Never reuse a
branch checked out elsewhere, silently switch another checkout, or invent a
branch that the boundary does not support.

This step is complete when the caller has one evidence-backed choice—current
checkout, an exact isolated checkout, or a blocker—and the chosen lifecycle is
within current authority.

## 4. Prepare and verify one checkout

Preserve every existing user state. Do not move, stash, overwrite, switch,
reset, delete, or reorganize another checkout, its index, or its files to make
the worktree convenient. Recheck that the candidate absolute path is absent or
safe for repository-native creation and that its ownership and contents cannot
be overwritten.

Before each effect, classify its actual consequence. Ordinary contained
worktree creation and repository-local reconstruction already covered by the
caller's authority may proceed. Any networked or privileged setup, secret or
data access or transfer, container or service action, external-resource or
permission change, cleanup outside the proven-disposable rule, or other
credible consequential effect first needs an approved Plan and current exact
Implementation Authorization for that one action. Then invoke
[Check Safety](../check-safety/SKILL.md). Use
Give it the
one exact action, target, and current evidence required by its intake.
Check Safety returns `proceed`, `revise`, or `stop` to Manage Worktree; act only
on `proceed`, and otherwise return the bounded safety outcome without
performing the effect. Map `revise` or `stop` to `blocked` with the exact
`safety_result`, preserve and report any checkout already created, and perform
no cleanup. If Plan coverage or authority is missing, return `blocked` without
invoking it.

Create the exact absolute path from the exact base, with the declared branch or
detached state and destination relationship, following repository and harness
conventions. Reconstruct only the minimum required environment through
repository-native setup after its effects pass the same authority and safety
classification. Reuse ignored configuration, caches, data, or credentials only
when necessary and covered; preserve the secret-output boundary from
inspection.

After creation, verify the absolute path, `HEAD`, branch or detached state,
cleanliness, starting base, destination relationship, and minimum reconstructed
environment. Record material environment differences and all resources that
remain shared. Allocate disposable or uniquely named external resources only
through the caller's normal authority; a worktree alone never makes a resource
safe to mutate, roll back, or abandon.

This step is complete only when the caller can enter the exact checkout without
reconstructing its identity, safety boundary, environment limitations, or
shared-resource risks.

## 5. Preserve, hand off, or clean up

Keep one active mutating owner and preserve successful work in the checkout
until an authorized action moves it. A handoff reports the absolute path, base
commit, intended destination, branch state, staged/unstaged/untracked and
relevant ignored state, running processes and shared resources, completed work
and evidence, limitations, destination drift, and the next bounded action.
Handoff transfers state and evidence, never authority; the receiving owner
obtains its own current authority before mutation.

Before an integration-ready claim, inspect the current destination and
revalidate only assumptions and proof affected by destination drift. Preserve
the work where it exists; do not silently rebase, merge, reset, switch, or
rewrite history. Commit, merge, rebase, cherry-pick, patch application, copy,
push, publication, and other integration remain separately authorized work
owned by their normal caller.

Remove a worktree without another human instruction only when Manage Worktree
created it as explicitly disposable and current inspection proves it has no
modified, staged, untracked, relevant ignored, unintegrated, unique commit,
unique branch, active process, editor, agent, mount, external-resource, or
future-consumer state. Verify the resulting repository and filesystem state.

For any other worktree cleanup, return `blocked` only when exact human
direction, target, authority, or accepted treatment of preserved state is
missing. With exact direction, re-inspect the checkout and candidate loss,
apply the Step 4 authority and Check Safety boundary before a consequential
effect, perform only non-force worktree removal, and verify the resulting
repository and filesystem state. Force removal is outside this skill. Branch
deletion, history rewriting, remote cleanup, and external-resource cleanup are
separate actions with their own authority.

This step is complete when the checkout is preserved for its next bounded
owner, handed off with complete state and drift evidence, or removed only under
the proven-disposable rule or exact authorized cleanup direction and verified
afterward.

## 6. Return and stop

Return exactly one outcome:

- `current checkout safe` — evidence shows no material isolation benefit;
- `worktree ready` — exact prepared path, identity, environment, and limits;
- `handoff ready` — preserved worktree and destination-drift state;
- `cleanup complete` — exact state removed and verified under either the
  proven-disposable rule or exact authorized human cleanup direction;
- `blocked` — ambiguity, authority, collision, unique state, or environment
  prevents a safe lifecycle action; or
- `stopped` — the human or caller ended the bounded action.

On `blocked` after a Check Safety `revise` or `stop`, and on `stopped`, preserve
every created checkout and its current state, perform no cleanup, and report
the exact preserved identity and limits.

Use this return shape and omit fields that do not apply:

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

Name the exact state, decisive checks, remaining unique or shared resources,
and any missing human judgment. State that the caller retains governing
meaning, authority, integration, acceptance, and stopping. Stop after this
bounded checkout action; do not continue the caller's work or imply commit,
publication, integration, acceptance, or adjacent cleanup.
