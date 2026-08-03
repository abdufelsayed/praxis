# Authorization and Access Control

> **Status: research candidate; accepted design, comparative evaluation
> pending.**
>
> This document specifies what a useful candidate reference must teach and how
> it must earn runtime inclusion. It is not yet a runtime Security reference or
> a mandatory review checklist.

## The question it helps answer

Authorization asks whether a known actor may perform a specific action on a
specific resource under the current tenant, role, ownership, delegation, state,
and policy context.

Authentication mechanics belong to Authentication and Session Security except
when identity provenance changes the authorization decision. Authorization
does not ask merely whether a check exists. It asks whether the system enforces
the actual governing policy across every consequential path.

## Reconstruct the governing policy

Identify the authoritative policy and the inputs that determine its answer
before judging local code. A condition such as `role == admin` is protective
only when it implements the real policy; it is not proof when the repository
actually grants the action through tenant-scoped capabilities, ownership,
delegation, resource state, or another rule.

Reconstruct:

- the actor and the provenance of its identity;
- the requested action or function;
- the exact resource identity and ownership;
- the tenant, role, capability, delegation, and state inputs;
- the authoritative policy and its decision;
- the boundary responsible for enforcing that decision; and
- the side effects that must not occur before enforcement.

Prove authorization at the responsible boundary rather than inferring it from
one guarded caller.

## Trace the full attack path

Follow actor, action, resource identity, policy inputs, decision, enforcement,
and consequential side effects through every relevant entry path. Look beyond
the obvious endpoint when the same behavior is reachable through:

- another transport or route;
- bulk or batch operations;
- background jobs and queues;
- caches or precomputed decisions;
- internal services and service-to-service calls;
- delegated or impersonated calls; or
- another path that resolves the resource or performs the effect.

The investigation should use whichever of these lenses can generate a
plausible hypothesis:

- object identity and ownership;
- action and function permission;
- tenant isolation;
- field-level or data-subset access;
- role and capability semantics;
- delegation and confused-deputy behavior;
- lifecycle and revocation;
- alternate entry paths; and
- stale or time-dependent decisions.

These are reasoning lenses, not a coverage claim or a checklist that must run
against every target.

## Treat authority as time-dependent when the system does

Trace how authorization state is captured, cached, delegated, transferred, and
revoked. A worker, signed URL, cache, or long-lived session may continue using
authority that was valid when captured but is no longer valid when the effect
occurs.

Judge freshness against the accepted policy and consequence. A bounded
snapshot may be correct for one action, while a sensitive or irreversible
effect may require revalidation at execution time. Do not impose universal
freshness rules that the governing requirements do not support.

## Require evidence before calling a defect

Confirm:

1. a reachable entry path;
2. attacker-controlled input, identity, or authority;
3. the governing authorization property;
4. the effective enforcement across the full path;
5. a missing, misplaced, stale, or bypassable protection; and
6. an observable unauthorized consequence.

Validate the claim with the narrowest safe source proof, focused reproduction,
or executable probe that distinguishes the vulnerable behavior from a close
safe implementation. A suspicious identifier, missing nearby condition, or
scanner match is only a hypothesis.

## Teach mechanisms through contrasting cases

Each major mechanism should use paired vulnerable and close safe or mitigated
cases that differ in one load-bearing fact, such as:

- whether the attacker controls the resource identifier;
- whether resource resolution is tenant-scoped;
- whether the policy receives the correct ownership or delegation input;
- whether enforcement occurs before the consequential side effect;
- whether every alternate path reaches the enforcement boundary; or
- whether captured authority remains valid when the effect executes.

Use examples from several architectures or frameworks when that demonstrates
the mechanism. Do not teach syntax signatures as though they were security
properties.

## Earn runtime inclusion

Evaluate the same capable model with and without this candidate against paired
vulnerable and safe or mitigated cases. The corpus should exercise different
authorization mechanisms and architectures, including tenant confusion,
indirect object access, stale delegation, alternate entry paths, and bulk or
background behavior. Obvious missing-middleware cases alone are insufficient.

Judge whether the candidate materially improves:

- true vulnerability discovery;
- rejection of close false positives;
- reconstruction of the governing policy;
- causal attack-path and enforcement tracing;
- validation quality;
- recommended enforcement placement; and
- honest coverage and explanation.

No fixed case count substitutes for mechanism diversity. Admit the candidate
as a runtime reference only when its improvement justifies its context cost.

### Build a mixed corpus

Use two complementary case forms:

- minimal paired fixtures that isolate one load-bearing authorization fact; and
- realistic multi-file cases that require policy reconstruction and
  enforcement tracing through actual application structure.

Start with paired cases for:

- tenant-scoped object resolution;
- ownership and indirect object access;
- role versus capability-based actions;
- field-level or data-subset exposure;
- delegation and confused-deputy behavior;
- stale authority after revocation;
- alternate routes, bulk operations, and background jobs;
- enforcement before versus after a consequential effect; and
- a safe centralized boundary that looks locally unchecked.

Use both forms where the mechanism benefits from them. These families seed the
corpus; they do not close the Authorization domain or impose a fixed case
count.

### Preserve a fair comparison

Keep model, prompt, tools, context budget, and repository access identical
between baseline and reference conditions. Hide expected outcomes from the
evaluated agent and from any evaluator judging the outputs. Develop the
reference examples and evaluation cases separately, then use held-out
frameworks, names, control flow, and architectures to test whether the
reasoning transfers beyond its demonstrations.

Run multiple independent trials under fixed conditions. Choose the eventual
trial count from observed pilot variance rather than one arbitrary universal
number. Preserve individual failures and regressions instead of reporting only
an average.

### Score the reasoning that supports the verdict

Score these dimensions separately:

- ground-truth vulnerability classification;
- rejection of close false positives;
- reconstruction of the governing policy;
- causal attack-path and enforcement tracing;
- validation quality;
- remediation-boundary accuracy; and
- honest coverage and limitations.

Verbosity, finding count, and unsupported confidence earn nothing. Before the
held-out run, set material-improvement thresholds from pilot variance for the
dimensions the reference claims to improve. Admission requires repeatable
improvement on realistic cases, no material regression in classification,
false-positive rejection, or policy fidelity, and a gain that justifies the
reference's context cost. Do not collapse these judgments into one score.

### Evaluate tools separately

First compare baseline and reference conditions with identical ordinary source
navigation and repository-native tests. Then evaluate evidence tools as
separate additions so their value is not confused with the reference's value.

Evaluate any candidate analyzer separately from ordinary source navigation and
project tests. Admit a tool recommendation only when it improves attack-path
discovery or falsification without materially increasing noise or false
confidence. Tool output remains a lead, never policy or exploitability proof.

Do not create a universal Authorization image. Static cases use ordinary source
inspection. Executable cases use each fixture's pinned project-native
environment with synthetic data and restricted effects. Add a disposable tool
image only when a separately evaluated tool genuinely requires one.
