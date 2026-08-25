# Fixed-Diff Code Review

Load this method when the requester asks Plannotator to show local changes or one
named remote pull or merge request. The interaction supplies human evidence about
the exact diff; it does not accept the result or authorize another action.

## Bind the complete change

Inspect the intended tracked, untracked, generated, and configuration files and
exclude unrelated work. For a remote request, confirm the URL and represented
head revision. If Plannotator cannot represent the complete intended change,
repair the target before asking for judgment.

Inspect current `plannotator review --help` and use the supported local or remote
surface. Add tailnet transport only when the requester explicitly asks for remote
or mobile review and current help exposes it. A transport failure leaves the
review unfinished; do not substitute a public tunnel or a different review
surface.

## Return feedback to its owner

Treat comments as claims to validate:

- implementation defects return to Deliver while accepted behavior and scope
  remain valid;
- changed implementation approach, risk, recovery, or proof returns to Plan;
- changed detailed behavior or blocking edges return to Define Issues;
- changed advancement or effort sequence returns to Evolve; and
- mistaken needs or constraints return to Discover Requirements.

Do not edit the nearest document merely to make a comment disappear. Preserve
disagreement and unsupported feedback for the owning review to judge.

## Bind the reviewed revision

The reaction applies to the exact diff shown. A later source, generated,
configuration, formatting, or implementation change creates a new revision.
When the requester still wants Plannotator review, present the updated diff
again; new verification evidence alone does not change an identical diff.

Return the exact reviewed boundary, native reaction, unresolved comments,
subsequent mutations, and whether the requested review remains current. Stop
before remediation unless the calling request already authorizes it.
