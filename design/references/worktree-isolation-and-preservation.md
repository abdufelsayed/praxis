# Worktree Isolation and Preservation

> **Status: accepted semantic source for the accepted Manage Worktree target
> package; no shared runtime reference.**

> Load this reference only when a concrete collision, preservation, rollback,
> parallel-editor, or experiment risk may justify an isolated checkout.

## Purpose and boundary

A Git worktree provides another checkout of the same repository. It can protect
unrelated file state, separate active editors, and make a bounded experiment
easier to abandon. It does not create product authority, isolate external
resources, transfer ownership, authorize Git history changes, or guarantee
rollback.

The calling skill retains the work's governing question, authority,
interpretation, result, and stopping boundary. This reference owns only the
decision to isolate and the safe lifecycle of that checkout.

## Select isolation from a concrete risk

Inspect before recommending a worktree:

- repository and harness instructions;
- the current branch, exact `HEAD`, index, unstaged changes, untracked files,
  and relevant ignored state;
- existing worktrees and branches;
- the intended mutation surfaces;
- active editors, agents, and processes;
- rollback or abandonment needs; and
- experiment and external-state risks.

A dirty checkout does not automatically require isolation. Unrelated state may
pose no meaningful collision, while a clean checkout may still be unsuitable
for a risky experiment or another active editor. Use the current checkout when
inspection exposes no material preservation, collision, or rollback risk. Use
a worktree only when it removes a named risk worth its creation, environment,
handoff, integration, and cleanup cost.

## Explain the preparation and preserve authority

Before creating a worktree, explain the concrete risk being isolated, the
intended base and destination relationship, and the expected lifetime. This is
an engineering recommendation, not a separate permission ceremony.

Creation may proceed under existing work authority when:

- the exact base commit, location, ownership, and intended use are known;
- existing user state will not be moved, stashed, overwritten, deleted, or
  reorganized;
- repository policy permits the chosen checkout and branch shape; and
- the caller already has authority for the work the checkout will contain.

Return for human judgment when the base, destination, location, ownership, or
effect on existing state is ambiguous. Worktree creation never broadens the
Plan, grants product mutation, or implies commit, integration, publication, or
cleanup authority.

## Create one exact isolated checkout

Identify and retain:

- the absolute worktree path;
- the exact starting commit;
- the intended destination branch or checkout;
- the branch or detached state used by the worktree;
- the active mutating owner;
- the reason isolation is useful; and
- whether the worktree is explicitly disposable.

Follow repository or harness conventions first. A disposable probe may use a
detached worktree when no durable history identity is needed. Work that needs
durable handoff or likely later history may use an explicitly intended branch
or a new descriptive task-scoped branch.

Never reuse a branch already checked out elsewhere, silently switch another
checkout, change another worktree's branch, or invent a branch when repository
policy or current authority does not support it. Verify the resulting path,
`HEAD`, branch or detached state, cleanliness, and relationship to the intended
destination before beginning work.

## Reconstruct only the required environment

Worktrees share repository history but do not reproduce another checkout's
ignored dependencies, generated state, local configuration, databases, or
secrets.

Use repository-native setup to reconstruct the minimum required dependencies
and generated state. Reuse or transfer ignored configuration, caches,
databases, credentials, and other local resources only when necessary, safe,
and covered by existing authority. Prefer secure existing mechanisms over
copying, linking, or printing secrets.

Record material environment differences in handoff and verification claims.
Evidence from one checkout or environment does not automatically prove the
other.

## Do not confuse checkout isolation with a sandbox

Identify every consequential resource the work may share:

- databases and data directories;
- containers, volumes, and orchestration state;
- ports and running processes;
- caches and generated outputs outside the checkout;
- credentials and accounts;
- local or remote services; and
- infrastructure or provider state.

Allocate disposable or uniquely named resources when genuine isolation
requires them. Apply the caller's normal authority and Check Safety to
data-affecting, destructive, privileged, secret-handling, production, or
external effects. Never claim containment, rollback, or safe experimentation
from worktree separation alone.

## Coordinate concurrent mutation by actual collision risk

One agent or human should own mutation in a worktree when the work may share
files, the index, generated state, running processes, the environment, or other
resources. Read-only observers may inspect concurrently only when they cannot
alter shared state. Concurrent mutators may share a checkout only after those
resources have been checked and genuine disjointness established; apparent
path non-overlap is not enough when shared state can still collide. If isolation
cannot be established, use separate inspected checkouts.

A handoff reports:

- path, base commit, intended destination, and branch state;
- staged, unstaged, untracked, and relevant ignored state;
- running processes and shared resources;
- completed work and exact evidence;
- limitations, unresolved questions, and destination drift; and
- the next bounded action.

The receiving agent obtains its own authority before mutation. Handoff carries
state and evidence, never authority. Praxis creates no global ownership
registry, worktree ledger, or persistent coordination record.

## Inspect destination drift

The worktree begins from one exact commit while its intended destination may
advance independently. Destination movement does not automatically invalidate
the work.

Before handoff or an integration-ready claim, inspect the current destination
and determine whether drift changes:

- governing truth or accepted behavior;
- implementation or responsible ownership;
- merge or application conflicts;
- environment assumptions; or
- required proof.

Revalidate affected claims or return the impact to the appropriate owner.
Never silently rebase, merge, reset, switch bases, or rewrite history to absorb
drift.

## Preserve the result where it exists

Successful isolated work remains in its worktree until an authorized action
moves it. Report the exact checkout and Git state, proof, limitations, and
relationship to the intended destination.

Commit, merge, cherry-pick, patch application, copying into another checkout,
push, and other integration methods retain their normal authority and safety
boundaries. Select and recommend the method from current repository state, but
do not perform it merely because implementation or verification succeeded.

## Clean up only proven disposable state

An agent may remove a worktree without another permission step only when:

- the agent created it and declared its lifetime and cleanup disposable at
  creation;
- it contains no modified, staged, untracked, ignored, unintegrated, or
  otherwise unique state;
- it contains no unique commit or branch state that a future consumer needs;
- no active process, editor, agent, mount, or external resource depends on it;
  and
- inspection still supports the original cleanup boundary.

Never force worktree removal. A completed implementation worktree remains until
the human chooses integration or abandonment. Every other removal requires
explicit human direction and proportional Check Safety. Branch deletion,
history rewriting, remote cleanup, and external-resource cleanup remain
separate actions with their own authority.

## Return and stop

After creation, handoff, integration, or cleanup, verify the exact resulting
repository and filesystem state. Return the action performed, path, base and
branch identity, preserved user state, decisive checks, environment or drift
limitations, remaining unique state, and recommended next action.

Stop at this local boundary. Worktree use never accepts a result, invokes
another Praxis owner, commits, publishes, integrates, or cleans adjacent state
by implication.
